<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
/** 
* Descripción:	Crea las opciones del MENU principal del sistema
* @author:		Oscar Maldonado - O3M
* Creación: 	2013-02-16
* Modificación:	2015-10-14;
**/

function buildMenu($visible=false, $invisible=false){
	global $cfg, $Path, $usuario, $dic;
	#Extraccion de datos de la DB-tabla de menú
	$menus = select_menus(false,false,$visible,$invisible);
	if($menus){
		$menus = (!is_array($menus[0]))?array($menus):$menus;
		#Deteccion de total de elementos por grupo
		foreach($menus as $elm){$grupos [] = $elm[id_grupo]; $subgrupos [] = $elm[id_superior];}
		$grupos = array_count_values($grupos);
		$subgrupos = array_count_values($subgrupos);
		$subgrupos = array_diff_key($subgrupos, $grupos);
		foreach ($subgrupos as $subgrupo => $sub) {
			$grupos[$subgrupo] = $sub;
		}
	    $menu_array[grupos] = $grupos;	    
		#Construcción de menu				
		foreach($menus as $menu_element){
			#Link
			$e = explode('/', $menu_element[link]);
			$enlace = ($cfg[encrypt_onoff])?encrypt(strtoupper($e[0]),1).'/'.encrypt(strtoupper($e[1]),1):strtolower($menu_element[link]);
			$link 	= $Path['url'].$enlace;
			#Texto
			$texto  = ($dic[menutop][$menu_element[texto]]);						
			#Construccion de arreglo
			switch ($menu_element[nivel]) {
				case 0: $subs =& $menu_array; break;
				case 1: $subs =& $menu_array; break;
				case 2: $subs =& $menu_array[$menu_element[id_grupo]][subs]; break;
				case 3: $subs =& $menu_array[$menu_element[id_grupo]][subs][$menu_element[id_superior]][subs]; $margen='&nbsp;&nbsp'; break;
			}
			#Elemento final		
			$subs [$menu_element[id_menu]] = array(
						id_menu 	=> $menu_element[id_menu], 
						id_grupo 	=> $menu_element[id_grupo], 
						menu 		=> $menu_element[menu],
						texto 		=> $texto, 
						nivel 		=> $menu_element[nivel], 
						ico 		=> $menu_element[ico],
						link 		=> $link,
						subs 		=> array()
					);
			unset($subs, $margen);
		}		
		$menu_html = build_ul_menu($menu_array);	
		// dump_var($menu_html);
		return $menu_html;
	}else{return false;}
}
function select_menus($id_grupo=false, $nivel=false, $visible=false, $invisible=false){
// Regresa listado de la tabla de mené del sistema
	global $db, $usuario;
	$visible = (!$visible)?$usuario[accesos][visible]:$visible;
	$invisible = (!$invisible)?$usuario[accesos][invisible]:$invisible;
	$visible 	= ($visible)?"AND FIND_IN_SET(a.id_menu, '".$visible."')":'';
	$invisible 	= ($invisible)?"AND (NOT FIND_IN_SET(a.id_grupo, '".$invisible."') AND NOT FIND_IN_SET(a.id_menu, '".$invisible."'))":'';
	$filtro .= ($id_grupo)?"AND a.id_grupo='$id_grupo'":'';
	$filtro .= ($nivel)?"AND a.nivel='$nivel'":'';
	$sql = "SELECT a.*, b.menu as pertenece, c.menu as superior
			FROM $db[tbl_menus] a
			LEFT JOIN $db[tbl_menus] b ON a.id_grupo=b.id_menu AND b.nivel=1 
			LEFT JOIN $db[tbl_menus] c ON a.id_superior=c.id_menu
			WHERE 1 AND a.activo=1 $visible $invisible $filtro
			ORDER BY a.id_grupo, a.nivel, a.orden ASC;";
			// dump_var($sql);
	$resultado = SQLQuery($sql);
	$resultado = ($resultado[0]) ? $resultado : false ;
	return $resultado;
}

function build_ul_menu($array=array()){
// MENÚ - Construye una lista HTML a partir de un arreglo recibido:  <ul><li>[datos]</li>/ul>
	if($array){
		#Grupos
		if(array_key_exists('grupos', $array)){
			$grupos = $array[grupos];
			unset($array[grupos]);
		}			
		#Inicio de lista
	  	$html .= '<ul class="nav dk" data-ride="collapse">';
		foreach($array as $elemento){
			#HTML 
			if(is_array($elemento)){
				if($elemento[subs]){		
					$elemento[subs][nivel] = $elemento[nivel];
					$elemento[grupos] = $grupos;
					$html.= '<li>';
					$html.= '<a href="#" class="auto">';
					$html.= '<span class="pull-right text-muted"> 
		                        <i class="fa fa-angle-left text"></i> 
		                        <i class="fa fa-angle-down text-active"></i> 
		                    </span>';
					$html.= '<i class="'.$elemento[ico].'"></i>';
					$html.= '<span class="font-bold">'.$elemento[texto].'</span>';
					$html.= build_ul_menu($elemento[subs]);
					$html.= '</a></li>';
				}else{
					if($elemento[nivel]==0){
						$html.= '<li class="hidden-nav-xs padder m-t m-b-sm text-xs text-muted"> '.$elemento[texto].' </li>';
					}else{
						$html.= '<li>';
						$html.= '<a href="'.$elemento[link].'" class="auto">';
						$html.= '<i class="'.$elemento[ico].'"></i>';
						$html.= '<span class="font-bold">'.$elemento[texto].'</span>';
						$html.= '</a></li>';
					}				
				}
			}
	  	} 
	  	$html .= '</ul>'; 
	  	return $html;
	}else{ return false;}
}
/*O3M*/
?>