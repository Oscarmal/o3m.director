<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'captura/dao.captura.php');
function tooltips_captura(){
	global $dic;
	$tooltips = array(
		 tooltip_click 		=> $dic[tooltips][captura_click]
		,tooltip_nombre 	=> $dic[tooltips][captura_nombre]
		,tooltip_alias 		=> $dic[tooltips][captura_alias]
		,tooltip_canto		=> $dic[tooltips][captura_canto]
		,tooltip_album		=> $dic[tooltips][captura_album]
		,tooltip_artista	=> $dic[tooltips][captura_artista]
		,tooltip_iglesia	=> $dic[tooltips][captura_iglesia]
		,tooltip_ministerio	=> $dic[tooltips][captura_ministerio]
		,tooltip_pais 		=> $dic[tooltips][captura_pais]
		,tooltip_cifrado	=> $dic[tooltips][captura_cifrado]
		);
	return $tooltips;
}

function txt_labels_captura(){
	global $dic;
	$labels = array(
		 txt_form 			=> $dic[captura][cantos_txt_form]
		,txt_form_edit		=> $dic[captura][cantos_txt_form_edit]
		,txt_nombre 		=> $dic[captura][cantos_txt_nombre]
		,txt_alias 			=> $dic[captura][cantos_txt_alias]
		,txt_canto 			=> $dic[captura][cantos_txt_canto]
		,txt_album 			=> $dic[captura][cantos_txt_album]
		,txt_artista 		=> $dic[captura][cantos_txt_artista]
		,txt_iglesia 		=> $dic[captura][cantos_txt_iglesia]
		,txt_ministerio 	=> $dic[captura][cantos_txt_ministerio]
		,txt_pais 			=> $dic[captura][cantos_txt_pais]
		,txt_subtitulo 		=> $dic[captura][cantos_txt_subtitulo]
		,txt_anio 			=> $dic[captura][cantos_txt_anio]
		,txt_pistas 		=> $dic[captura][cantos_txt_pistas]
		,txt_pista 			=> $dic[captura][cantos_txt_pista]
		,txt_discos 		=> $dic[captura][cantos_txt_discos]
		,txt_portada 		=> $dic[captura][cantos_txt_portada]
		,txt_escala 		=> $dic[captura][cantos_txt_escala]
		,txt_variacion 		=> $dic[captura][cantos_txt_variacion]
		,txt_compas 		=> $dic[captura][cantos_txt_compas]
		,txt_ritmo 			=> $dic[captura][cantos_txt_ritmo]
		,txt_tempo 		 	=> $dic[captura][cantos_txt_tempo]
		,txt_acordes 		=> $dic[captura][cantos_txt_acordes]
		,txt_categorias 	=> $dic[captura][cantos_txt_categorias]
		,txt_autor 			=> $dic[captura][cantos_txt_autor]
		,txt_interprete 	=> $dic[captura][cantos_txt_interprete]
		,txt_cifrado 	 	=> $dic[captura][cantos_txt_cifrado]
		,txt_piano 			=> $dic[captura][cantos_txt_piano]
		,txt_trompeta 	 	=> $dic[captura][cantos_txt_trompeta]
		,txt_sax 		 	=> $dic[captura][cantos_txt_sax]
		,txt_comentarios 	=> $dic[captura][cantos_txt_comentarios]

		,txt_guardar 		=> $dic[comun][guardar]
		,txt_agregar 		=> $dic[comun][agregar]
		,txt_cancelar 		=> $dic[comun][cancelar]
		,txt_actualizar		=> $dic[comun][actualizar]
		);
	return $labels;
}

function textos_captura(){
	$labels 	= txt_labels_captura();
	$tooltips	= tooltips_captura();
	$textos = array_merge($labels, $tooltips);
	return $textos;
}

// CANTOS
function build_formulario_cantos(){
// Construye formulario
	$data		= array(
					 lst_albums 	=> dropdown_albums(array(requerido => true))
					,lst_categorias	=> dropdown_categorias(array(requerido => true, multiple => true))
					,GRID 			=> build_listado_cantos()
				);
	$html = array_merge(textos_captura(), $data);
	return $html;
}
function build_listado_cantos(){
// Grid de cantos
	global $ins, $dic, $Path;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_cantos(array(searchbox=>$searchbox));
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'cantos';
			$id 		= $row[id_canto];
			$valor 		= $row[canto];
			$tblData[$y] = $row;
			unset($tblData[$y][combo]);
			$tblData[$y][canto] 		= '<span class="editar campo-editable" data-name="canto" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][alias] 		= '<span class="editar campo-editable" data-name="alias" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[alias];
			$tblData[$y][autor] 		= '<span class="editar campo-editable" data-name="autor" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[autor];
			$tblData[$y][interprete]	= '<span class="editar campo-editable" data-name="interprete" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[interprete];
			$tblData[$y][anio] 			= '<span class="editar campo-editable" data-name="anio" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[anio];
			$tblData[$y][pista] 		= '<span class="editar campo-editable" data-name="num_pista" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[pista];
			$tblData[$y][portada]		= '<span style="text-align:center; vertical-align:middle;">'.'<img class="img-zoom" src="'.$Path[coversurl].$row[portada].'" data-zoom-image="'.$Path[coversurl].$row[portada].'" width="50%"/></span>';
			$tblData[$y][acciones] 		= ico_editar('ico-editar_'.$row[id_canto],'editar_canto('.$row[id_canto].');').'  '
										 .ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');			
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

function build_formulario_cantos_edit(){
// Construye formulario de edición
	global $Path, $ins, $dic;
	if($ins[id]){
		$sqlData = select_canto_unico(array(id=>$ins[id]));
		// dump_var($sqlData);
		$data		= array(
						 val_id 		=> utf8_encode($sqlData[0][id_canto])
						,val_nombre 	=> utf8_encode($sqlData[0][canto])
						,val_alias 		=> utf8_encode($sqlData[0][alias])
						,val_autor 		=> utf8_encode($sqlData[0][autor])
						,val_interprete => utf8_encode($sqlData[0][interprete])
						,val_anio 		=> utf8_encode($sqlData[0][anio])
						,lst_albums 	=> dropdown_albums(array(requerido => true, id_selected=>$sqlData[0][id_album]))
						,lst_categorias	=> dropdown_categorias(array(requerido => true, multiple => true, id_selected=>'8,9'))
						,GRID 			=> build_listado_cantos()
					);
		$html = array_merge(textos_captura(), $data);
		return $html;
	}else{
		return header('location: '.$Path[url].'captura/cantos/');
	}
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

// ALBUMS
function build_formulario_albums(){
// Construye formulario
	$data = array(
					 lst_artistas 	=> dropdown_artistas(array(name=>'id_artista'))
					,GRID 			=> build_listado_albums()
				);
	$html = array_merge(textos_captura(), $data);
	return $html;
}
function build_listado_albums(){
// Grid de artistas
	global $ins, $Path;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_albums($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'albums';
			$id 		= $row[id_album];
			$valor 		= $row[album];
			$tblData[$y] = $row;
			unset($tblData[$y][id_artista]);
			$tblData[$y][album] 		= '<span class="editar campo-editable" data-name="artista" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][subtitulo]		= '<span class="editar campo-editable" data-name="subtitulo" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[subtitulo];
			// $tblData[$y][artista] 		= '<span class="editar campo-editable" data-name="artista" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[artista];
			$tblData[$y][anio] 			= '<span class="editar campo-editable" data-name="anio" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[anio];
			$tblData[$y][pistas] 		= '<span class="editar campo-editable" data-name="pistas" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[pistas];
			$tblData[$y][discos] 		= '<span class="editar campo-editable" data-name="discos" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[discos];
			$tblData[$y][portada]		= '<span class="editar campo-editable" data-type="file" data-name="portada" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.'<img class="img-zoom" src="'.$Path[coversurl].$row[portada].'" data-zoom-image="'.$Path[coversurl].$row[portada].'" width="50%"/></span>';
			$tblData[$y][quitar] 		= ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// CIFRADOS
function build_formulario_cifrados(){
// Construye formulario
	$data = array(
					 lst_cantos 	=> dropdown_cantos(array(requerido => true, text=>'combo', leyenda => '--Canto - Album--'))
					,lst_escalas 	=> dropdown_escalas(array(requerido => true, text=>'combo'))
					,lst_variacion 	=> dropdown_escalas(array(name=>'lst_variacion',text=>'combo'))
					,lst_compases 	=> dropdown_compases(array(requerido => true, text=>'combo'))
					,lst_ritmos 	=> dropdown_ritmos(array(requerido => true, text=>'combo'))
					,lst_acordes	=> dropdown_acordes(array(requerido => true, multiple => true))
					,GRID 			=> build_listado_cifrados()
				);
	$html = array_merge(textos_captura(), $data);
	return $html;
}
function build_listado_cifrados(){
// Grid de artistas
	global $ins, $Path;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_cifrados($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'cifrados';
			$id 		= $row[id_cifrado];
			$tblData[$y] = $row;
			// unset($tblData[$y][id_cifrado]);
			$tblData[$y][portada]		= '<span style="text-align:center; vertical-align:middle;">'.'<img class="img-zoom" src="'.$Path[coversurl].$row[portada].'" data-zoom-image="'.$Path[coversurl].$row[portada].'" width="50%"/></span>';
			$tblData[$y][acciones] 		= ico_detalle('ico-cifrado_'.$id,'ver_cifrado('.$id.');').'  '
										 .ico_editar('ico-editar_'.$id,'editar_cifrado('.$id.');').'  '
										 .ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}
function build_formulario_cifrados_edit(){
// Construye formulario de edición
	global $Path, $ins, $dic;
	if($ins[id]){
		$sqlData = select_cifrado_unico(array(id=>$ins[id]));
		// dump_var($sqlData);
		$data		= array(
						 val_id 		=> utf8_encode($sqlData[0][id_canto])
						,lst_cantos 	=> dropdown_cantos(array(requerido => true, text=>'combo', leyenda => '--Canto - Album--', id_selected=>$sqlData[0][id_canto]))
						,lst_albums 	=> dropdown_albums(array(requerido => true, id_selected=>$sqlData[0][id_album]))
						,lst_escalas 	=> dropdown_escalas(array(requerido => true, text=>'combo', id_selected=>$sqlData[0][id_escala]))
						,lst_variacion 	=> dropdown_escalas(array(name=>'lst_variacion',text=>'combo', id_selected=>$sqlData[0][id_variacion]))
						,lst_compases 	=> dropdown_compases(array(text=>'combo', id_selected=>$sqlData[0][id_compas]))
						,lst_ritmos 	=> dropdown_ritmos(array(text=>'combo', id_selected=>$sqlData[0][id_ritmo]))
						,lst_acordes	=> dropdown_acordes(array(multiple => true, id_selected=>$sqlData[0][acordes]))
						,tempo 			=> utf8_encode($sqlData[0][tempo])
						,cifrado 		=> utf8_encode($sqlData[0][cifrado])
						,piano 			=> utf8_encode($sqlData[0][piano])
						,trompeta 		=> utf8_encode($sqlData[0][trompeta])
						,sax 			=> utf8_encode($sqlData[0][sax])
						,comentarios	=> utf8_encode($sqlData[0][comentarios])
						,GRID 			=> build_listado_cantos()
					);
		$html = array_merge(textos_captura(), $data);
		return $html;
	}else{
		return header('location: '.$Path[url].'captura/cantos/');
	}
}

?>