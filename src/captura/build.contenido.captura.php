<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'captura/dao.captura.php');
function tooltips_captura(){
	global $dic;
	$tooltips = array(
		 tooltips_nombre 	=> $dic[tooltips][nombre_comercial]
		,tooltips_razon		=> $dic[tooltips][razon]
		,tooltips_rfc 		=> $dic[tooltips][rfc]
		,tooltips_direccion	=> $dic[tooltips][direccion]
		,tooltips_pais		=> $dic[tooltips][pais]
		,tooltips_entidad 	=> $dic[tooltips][entidad]
		,tooltips_municipio => $dic[tooltips][municipio]
		,tooltips_colonia 	=> $dic[tooltips][colonia]
		,tooltips_zona 		=> $dic[tooltips][zona]
		,tooltips_sector 	=> $dic[tooltips][sector]
		,tooltips_telefono 	=> $dic[tooltips][telefono]
		,tooltips_sitioweb 	=> $dic[tooltips][sitioweb]
		);
	return $tooltips;
}

function build_acordes(){
	$chord = new guitarTabs();
	$letra = '[Am]///A su Majestad, [(Am-G)]
				[F]Bienvenido Rey, [(F/F#)]
					Inicio [E7]uno dos tres cuatro cinco seis [F]siete ocho nueve diez once [F#]doce
				[G]A su Majestad, daré la [E]honra y el ho[Am]nor/// ';
	$chord->titulo='A su Majestad';
	$chord->autor='Pastor Luis Villavicencio';
	$chord->canta='Palabra Miel Washington, USA';
	$chord->album='A su Majestad';
	$chord->anio='2012';
	$chord->escala='Am';
	$chord->compas='4/4';
	$chord->ritmo='Rápido';
	$chord->tempo='165 beats';
	$chord->categoria='Alabanza, Majestad';
	$chord->cancion($letra);
	$cifrado = '<div style="margin-left:auto; margin-right:auto; width:70%;">'.$chord->html(1).$chord->txt().'</div>';
	return $cifrado;
}


// CANTOS
function build_formulario_cantos(){
// Construye formulario
	$data		= array(
					 lst_albums 	=> dropdown_albums(array(requerido => true))
					,lst_escalas 	=> dropdown_escalas(array(requerido => true, text=>'combo'))
					,GRID 			=> build_listado_cantos()
				);
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_cantos(){
// Grid de cantos
	global $ins;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_cantos($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$tblData[$y] = $row;
			$tblData[$y][acciones] = ico_editar('ico-editar_'.$row[id_canto],'editar('.$row[id_canto].');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// ARTISTAS
function build_formulario_artistas(){
// Construye formulario
	$data = array(GRID => build_listado_artistas());
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_artistas(){
// Grid de artistas
	global $ins;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_artistas($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$tblData[$y] = $row;
			unset($tblData[$y][combo]);
			$tblData[$y][acciones] = ico_editar('ico-editar_'.$row[id_canto],'editar('.$row[id_canto].');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}
?>