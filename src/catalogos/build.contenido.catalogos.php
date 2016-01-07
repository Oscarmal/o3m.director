<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'catalogos/dao.catalogos.php');
function tooltips_catalogos(){
	global $dic;
	$tooltips = array(
		 tooltip_nombre 	=> $dic[tooltips][captura_nombre]
		,tooltip_alias 		=> $dic[tooltips][captura_alias]
		,tooltip_canto		=> $dic[tooltips][captura_canto]
		,tooltip_album		=> $dic[tooltips][captura_album]
		,tooltip_artista	=> $dic[tooltips][captura_artista]
		,tooltip_escala		=> $dic[tooltips][captura_escala]
		,tooltip_nota_es	=> $dic[tooltips][captura_nota_es]
		,tooltip_nota_en	=> $dic[tooltips][captura_nota_en]
		,tooltip_alteracion	=> $dic[tooltips][captura_alteracion]
		,tooltip_compas		=> $dic[tooltips][captura_compas]
		,tooltip_ritmo		=> $dic[tooltips][captura_ritmo]
		,tooltip_categoria	=> $dic[tooltips][captura_categoria]
		,tooltip_armadura	=> $dic[tooltips][captura_armadura]
		);
	return $tooltips;
}

function txt_labels_catalogos(){
	global $dic;
	$labels = array(
		 txt_form 			=> $dic[captura][cantos_txt_form]
		,txt_nombre 		=> $dic[captura][cantos_txt_nombre]
		,txt_alias 			=> $dic[captura][cantos_txt_alias]
		,txt_canto 			=> $dic[captura][cantos_txt_canto]
		,txt_album 			=> $dic[captura][cantos_txt_album]
		,txt_artista 		=> $dic[captura][cantos_txt_artista]
		,txt_escala 		=> $dic[captura][cantos_txt_escala]
		,txt_compas 		=> $dic[captura][cantos_txt_compas]
		,txt_ritmo 			=> $dic[captura][cantos_txt_ritmo]
		,txt_categoria 		=> $dic[captura][cantos_txt_categoria]
		,txt_nota_es		=> $dic[captura][cantos_txt_nota_es]
		,txt_nota_en		=> $dic[captura][cantos_txt_nota_en]
		,txt_alteracion		=> $dic[captura][cantos_txt_alteracion]
		,txt_grado1			=> $dic[captura][cantos_txt_grado1]
		,txt_grado2			=> $dic[captura][cantos_txt_grado2]
		,txt_grado3			=> $dic[captura][cantos_txt_grado3]
		,txt_grado4			=> $dic[captura][cantos_txt_grado4]
		,txt_grado5			=> $dic[captura][cantos_txt_grado5]
		,txt_grado6			=> $dic[captura][cantos_txt_grado6]
		,txt_grado7			=> $dic[captura][cantos_txt_grado7]
		,txt_armadura		=> $dic[captura][cantos_txt_armadura]

		,txt_guardar 		=> $dic[comun][guardar]
		,txt_agregar 		=> $dic[comun][agregar]
		);
	return $labels;
}

function textos(){
	$labels 	= txt_labels_catalogos();
	$tooltips	= tooltips_catalogos();
	$textos = array_merge($labels, $tooltips);
	return $textos;
}


// CATEGORIAS
function build_formulario_categorias(){
// Construye formulario
	$data		= array( GRID 	=> build_listado_categorias() );
	$html = array_merge(textos(), $data);
	return $html;
}

function build_listado_categorias(){
// Grid de categorias
	global $ins, $dic;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_categorias($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'categorias';
			$id 		= $row[id_categoria];
			$valor 		= $row[categoria];
			$tblData[$y] = $row;
			$tblData[$y][categoria] = '<span class="editar campo-editable" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][quitar] = ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// RITMOS
function build_formulario_ritmos(){
// Construye formulario
	$data = array( GRID 	=> build_listado_ritmos() );
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_ritmos(){
// Grid de ritmos
	global $ins, $dic;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_ritmos($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'ritmos';
			$id 		= $row[id_ritmo];
			$valor 		= $row[ritmo];
			$tblData[$y] = $row;
			$tblData[$y][ritmo] = '<span class="editar campo-editable" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][quitar] = ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// COMPASES
function build_formulario_compases(){
// Construye formulario
	$data = array( GRID 	=> build_listado_compases() );
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_compases(){
// Grid de ritmos
	global $ins, $dic;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_compases($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'compases';
			$id 		= $row[id_compas];
			$valor 		= $row[compas];
			$tblData[$y] = $row;
			$tblData[$y][compas] = '<span class="editar campo-editable" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][quitar] = ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// ESCALAS
function build_formulario_escalas(){
// Construye formulario
	$data = array( 
				 GRID 		=> build_listado_escalas() 
				,lst_grado1 => dropdown_notas(array(name=>grado1, value=>'nota_en', requerido=>true))
				,lst_grado2 => dropdown_notas(array(name=>grado2, value=>'nota_en'))
				,lst_grado3 => dropdown_notas(array(name=>grado3, value=>'nota_en'))
				,lst_grado4 => dropdown_notas(array(name=>grado4, value=>'nota_en'))
				,lst_grado5 => dropdown_notas(array(name=>grado5, value=>'nota_en'))
				,lst_grado6 => dropdown_notas(array(name=>grado6, value=>'nota_en'))
				,lst_grado7 => dropdown_notas(array(name=>grado7, value=>'nota_en'))
			);
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_escalas(){
// Grid de escalas
	global $ins, $dic;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_escalas($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'escalas';
			$id 		= $row[id_escala];
			$valor 		= $row[escala];
			$tblData[$y] = $row;
			$tblData[$y][escala] = '<span class="editar campo-editable" data-name="escala" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[escala].'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][categoria] = '<span class="editar campo-editable" data-name="categoria" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[categoria];
			$tblData[$y][grado1] = '<span class="editar campo-editable" data-name="grado1" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado1];
			$tblData[$y][grado2] = '<span class="editar campo-editable" data-name="grado2" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado2];
			$tblData[$y][grado3] = '<span class="editar campo-editable" data-name="grado3" data-name="escala" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado3];
			$tblData[$y][grado4] = '<span class="editar campo-editable" data-name="grado4" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado4];
			$tblData[$y][grado5] = '<span class="editar campo-editable" data-name="grado5" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado5];
			$tblData[$y][grado6] = '<span class="editar campo-editable" data-name="grado6" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado6];
			$tblData[$y][grado7] = '<span class="editar campo-editable" data-name="grado7" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[grado7];
			$tblData[$y][armadura] = '<span class="editar campo-editable" data-name="armadura" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$row[armadura];
			$tblData[$y][quitar] = ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// NOTAS
function build_formulario_notas(){
// Construye formulario
	$data = array( GRID 	=> build_listado_notas() );
	$html = array_merge(textos(), $data);
	return $html;
}
function build_listado_notas(){
// Grid de escalas
	global $ins, $dic;
	$searchbox 	= ($ins['searchbox'])?$ins['searchbox']:false;
	$sqlData = select_notas($searchbox);
	$y=0;
	if($sqlData){
		foreach ($sqlData as $row) {
			$seccion 	= 'notas';
			$id 		= $row[id_nota];
			$valor 		= $row[nota];
			$tblData[$y] = $row;
			$tblData[$y][nota] = '<span class="editar campo-editable" data-type="datos" data-pk="'.$id.'" data-title="'.$dic[ico][editar].'" title="'.$dic[ico][editar].'">'.$valor.'</span> <span id="frm-msj_'.$id.'"></span>';
			$tblData[$y][quitar] = ico_eliminar($id,"activate('frm-captura-".$seccion."','".$seccion."',".$id.');');
			$y++;
		}
	}
	return build_grid_paginado($tblData,$titulos);
}

// CANTOS
function build_formulario_cantos(){
// Construye formulario
	$data		= array(
					 lst_albums 	=> dropdown_albums(array(requerido => true))
					,lst_escalas 	=> dropdown_escalas(array(requerido => true))
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
?>