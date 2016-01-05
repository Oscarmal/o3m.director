<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'captura/dao.captura.php');
function tooltips(){
	global $dic;
	$tooltips = array(
		 tooltip_nombre 	=> $dic[tooltips][captura_nombre]
		,tooltip_alias 		=> $dic[tooltips][captura_alias]
		,tooltip_canto		=> $dic[tooltips][captura_canto]
		,tooltip_album		=> $dic[tooltips][captura_album]
		,tooltip_artista	=> $dic[tooltips][captura_artista]
		,tooltip_escala		=> $dic[tooltips][captura_escala]
		,tooltip_nota		=> $dic[tooltips][captura_nota]
		,tooltip_compas		=> $dic[tooltips][captura_compas]
		,tooltip_ritmo		=> $dic[tooltips][captura_ritmo]
		,tooltip_categoria	=> $dic[tooltips][captura_categoria]
		);
	return $tooltips;
}

function txt_labels(){
	global $dic;
	$labels = array(
		 txt_form 			=> $dic[captura][cantos_txt_form]
		,txt_nombre 		=> $dic[captura][cantos_txt_nombre]
		,txt_alias 			=> $dic[captura][cantos_txt_alias]
		,txt_canto 			=> $dic[captura][cantos_txt_canto]
		,txt_album 			=> $dic[captura][cantos_txt_album]
		,txt_artista 		=> $dic[captura][cantos_txt_artista]
		,txt_escala 		=> $dic[captura][cantos_txt_escala]
		,txt_nota 			=> $dic[captura][cantos_txt_nota]
		,txt_compas 		=> $dic[captura][cantos_txt_compas]
		,txt_ritmo 			=> $dic[captura][cantos_txt_ritmo]
		,txt_categoria 		=> $dic[captura][cantos_txt_categoria]
		,txt_guardar 		=> $dic[comun][guardar]
		,txt_agregar 		=> $dic[comun][agregar]
		);
	return $labels;
}

function build_formulario_cantos(){
// Construye formulario
	$labels 	= txt_labels();
	$tooltips	= tooltips();
	$data		= array(
					 lst_albums 	=> dropdown_albums(array(requerido => true))
					,lst_escalas 	=> dropdown_escalas(array(requerido => true))
					,GRID 			=> build_listado_cantos()
				);
	$html = array_merge($labels, $tooltips, $data);
	return $html;
}

function build_formulario_categorias(){
// Construye formulario
	$labels 	= txt_labels();
	$tooltips	= tooltips();
	$data		= array( GRID 	=> build_listado_categorias() );
	$html = array_merge($labels, $tooltips, $data);
	return $html;
}

function build_listado_categorias(){
// Grid de categorias
	global $ins;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_categorias($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$tblData[$y] = $row;
			$tblData[$y][acciones] = ico_editar('ico-editar_'.$row[id_categoria],'editar('.$row[id_categoria].');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
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
?>