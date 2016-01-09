<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'captura/dao.captura.php');
function tooltips_captura(){
	global $dic;
	$tooltips = array(
		 tooltip_nombre 	=> $dic[tooltips][captura_nombre]
		,tooltip_alias 		=> $dic[tooltips][captura_alias]
		,tooltip_canto		=> $dic[tooltips][captura_canto]
		,tooltip_album		=> $dic[tooltips][captura_album]
		,tooltip_artista	=> $dic[tooltips][captura_artista]
		,tooltip_iglesia	=> $dic[tooltips][captura_iglesia]
		,tooltip_ministerio	=> $dic[tooltips][captura_ministerio]
		,tooltip_pais 		=> $dic[tooltips][captura_pais]
		);
	return $tooltips;
}

function txt_labels_captura(){
	global $dic;
	$labels = array(
		 txt_form 			=> $dic[captura][cantos_txt_form]
		,txt_nombre 		=> $dic[captura][cantos_txt_nombre]
		,txt_alias 			=> $dic[captura][cantos_txt_alias]
		,txt_canto 			=> $dic[captura][cantos_txt_canto]
		,txt_album 			=> $dic[captura][cantos_txt_album]
		,txt_artista 		=> $dic[captura][cantos_txt_artista]
		,txt_iglesia 		=> $dic[captura][cantos_txt_iglesia]
		,txt_ministerio 	=> $dic[captura][cantos_txt_ministerio]
		,txt_pais 			=> $dic[captura][cantos_txt_pais]

		,txt_guardar 		=> $dic[comun][guardar]
		,txt_agregar 		=> $dic[comun][agregar]
		);
	return $labels;
}

function textos_captura(){
	$labels 	= txt_labels_captura();
	$tooltips	= tooltips_captura();
	$textos = array_merge($labels, $tooltips);
	return $textos;
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
	$html = array_merge(textos_captura(), $data);
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
	$html = array_merge(textos_captura(), $data);
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
			$seccion 	= 'artistas';
			$id 		= $row[id_artista];
			$valor 		= $row[artista];
			$tblData[$y] = $row;
			unset($tblData[$y][combo]);
			$tblData[$y][artista] 		= '<span class="editar campo-editable" data-name="artista" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][iglesia] 		= '<span class="editar campo-editable" data-name="iglesia" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[iglesia];
			$tblData[$y][ministerio] 	= '<span class="editar campo-editable" data-name="ministerio" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[ministerio];
			$tblData[$y][pais] 			= '<span class="editar campo-editable" data-name="pais" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[pais];
			$tblData[$y][quitar] 		= ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}
?>