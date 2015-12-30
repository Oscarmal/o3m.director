<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
/** 
* Descripción:	Crea las opciones del MENU principal del sistema
* @author:		Oscar Maldonado - O3M
* Creación: 	2013-02-16
* Modificación:	2015-10-14;
**/

function buildMenuLateral($id_menu){
	global $cfg, $Path, $usuario, $dic;
	#Extraccion de datos de la DB-tabla de menú
	$menuData = array(id_menu => $id_menu, id_grupo=> false, nivel =>false);
	$menus = select_menus_lateral($menuData);

	if($menus){
		$menus = (!is_array($menus[0]))?array($menus):$menus;		
		#Construcción de menu
		foreach($menus as $menu_element){
			#Link
			$e = explode('/', $menu_element[link]);
			$enlace = ($cfg[encrypt_onoff])?encrypt(strtoupper($e[0]),1).'/'.encrypt(strtoupper($e[1]),1):strtolower($menu_element[link]);
			$link 	= $Path['url'].$enlace;
			#Texto
			$texto  = ($dic[menulateral][$menu_element[texto]]);			
			#Imagen
			$imagen = (!empty($menu_element[ico]))?'<img src="'.$Path[img].$menu_element[ico].'" alt="'.utf8_encode($menu_element[texto]).'" class="icono_dos"/>':'';
			#onClick
			$onclick = (!empty($menu_element[link]))?'onclick="location.href=\''.$link.'\';"':'';					
			#Elemento final			
			$html 	= $margen.$imagen.$texto;		
			$menu_array [] = array(
						id_menu 	=> $menu_element[id_menu], 
						id_grupo 	=> $menu_element[id_grupo], 
						menu 		=> $menu_element[menu],
						texto 		=> $menu_element[texto], 
						nivel 		=> $menu_element[nivel], 
						html 		=> $html, 
						onclick 	=> $onclick
					);
		}		
		$menu_html = build_ul_menu($menu_array);
		return $menu_html;
	}else{return false;}
}
function build_ul_menu($array=array()){
// MENÚ - Construye una lista HTML a partir de un arreglo recibido:  <ul><li>[datos]</li>/ul>
	if($array){
	  	$html = "\n".'<ul>';
		foreach($array as $elemento){
			$html.= "\n";
			$html_link 	= '<a href="#" '.$elemento[onclick].'>'.$elemento[html].$flecha.'</a>'.$input;
			$html.= ($elemento[subs])?'<li>'.$html_link.build_ul_menu($elemento[subs]).'</li>':'<li>'.$html_link.'</li>';			
	  	} 
	  	$html .= "\n".'</ul>'; 
	  	return $html;
	}else{ return false;}
}
function select_menus_lateral($data=array()){
// Regresa listado de la tabla de mené del sistema
	global $db, $usuario;
	$visible = (!$visible)?$usuario[accesos][visible_submenu]:$visible;
	$invisible = (!$invisible)?$usuario[accesos][invisible_submenu]:$invisible;
	$visible 	= ($visible)?"AND FIND_IN_SET(a.id_menu_lateral, '".$visible."')":'';
	$invisible 	= ($invisible)?"AND (NOT FIND_IN_SET(a.id_grupo, '".$invisible."') AND NOT FIND_IN_SET(a.id_menu_lateral, '".$invisible."'))":'';
	$id_menu		= ($data[id_menu])?$data[id_menu]:false;
	$id_grupo 		= ($data[id_grupo])?$data[id_grupo]:false;
	$nivel 			= ($data[nivel])?$data[nivel]:false;
	$filtro .= ($id_menu)?" AND a.id_menu='$id_menu'":'';
	$filtro .= ($id_grupo)?" AND a.id_grupo='$id_grupo'":'';
	$filtro .= ($nivel)?" AND a.nivel='$nivel'":'';
	$sql = "SELECT a.*, b.menu as pertenece, c.menu as superior
			FROM $db[tbl_menus_lateral] a
			LEFT JOIN $db[tbl_menus_lateral] b ON a.id_grupo=b.id_menu_lateral AND b.nivel=1 
			LEFT JOIN $db[tbl_menus_lateral] c ON a.id_superior=c.id_menu_lateral
			WHERE 1 AND a.activo=1 $visible $invisible $filtro
			ORDER BY a.id_menu, a.id_grupo, a.nivel, a.orden ASC;";
			// dump_var($sql);
	$resultado = SQLQuery($sql);
	$resultado = ($resultado[0]) ? $resultado : false ;
	return $resultado;
}

/*O3M*/
?>