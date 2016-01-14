<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
// Define modulo del sistema
define(MODULO, $in[modulo]);
// Archivo DAO
require_once($Path[src].MODULO.'/dao.catalogos.php');
// Validación de controlador
o3mcontrolador($in[accion],$ins);
// Declaración de Controladores

// CATEGORIAS
function insert_catalogos_categorias($in){
	global $dic;	
	if($success = insert_categorias(array(categoria => strtoupper($in[objData][categoria])))){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_categorias($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$valor 	= (!$in[value])?$in[objData][categoria]:$in[value];
	if($success = update_categorias(array(id =>$id, categoria => strtoupper($valor)))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_categorias($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_categorias(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// RITMOS
function insert_catalogos_ritmos($in){
	global $dic;	
	if($success = insert_ritmos(array(ritmo => strtoupper($in[objData][ritmo])))){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_ritmos($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$valor 	= (!$in[value])?$in[objData][ritmo]:$in[value];
	if($success = update_ritmos(array(id =>$id, ritmo => strtoupper($valor)))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_ritmos($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_ritmos(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// COMPASES
function insert_catalogos_compases($in){
	global $dic;	
	if($success = insert_compases(array(compas => strtoupper($in[objData][compas])))){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_compases($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$valor 	= (!$in[value])?$in[objData][compas]:$in[value];
	if($success = update_compases(array(id =>$id, compas => strtoupper($valor)))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_compases($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_compases(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// ESCALAS
function insert_catalogos_escalas($in){
	global $dic;	
	$arrData = array(
				 categoria 		=> $in[objData][categoria]
				,escala 		=> $in[objData][escala]
				,grado1 		=> $in[objData][grado1]
				,grado2 		=> $in[objData][grado2]
				,grado3 		=> $in[objData][grado3]
				,grado4 		=> $in[objData][grado4]
				,grado5 		=> $in[objData][grado5]
				,grado6 		=> $in[objData][grado6]
				,grado7 		=> $in[objData][grado7]
				,armadura 		=> $in[objData][armadura]
			);
	if($success = insert_escalas($arrData)){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_escalas($in){	
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($success = update_escalas(array(id =>$id, $in[name] => $in[value]))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_escalas($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_escalas(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// NOTAS
function insert_catalogos_notas($in){
	global $dic;	
	if($success = insert_notas(array(
				nota_es 	=> $in[objData][nota_es],
				nota_en 	=> $in[objData][nota_en],
				alteracion 	=> strtoupper($in[objData][alteracion])
			))){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_notas($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($in[pk]){
		$nota_es 	= $in[value][nota_es];
		$nota_en 	= $in[value][nota_en];
		$alteracion = $in[value][alteracion];
	}else{
		$nota_es 	= $in[objData][nota_es];
		$nota_en 	= $in[objData][nota_en];
		$alteracion = $in[objData][alteracion];
	}
	$arrData = array(
				id 			=> $id, 
				nota_es 	=> $nota_es,
				nota_en 	=> $nota_en,
				alteracion 	=> $alteracion
			);
	if($success = update_notas($arrData)){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_notas($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_notas(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// ACORDES
function insert_catalogos_acordes($in){
	global $dic,$Path;
	if(!$in[objData]) $in[objData] = $in;
	$id_img = explode(',', $in[id_img]);
	$arrData = array(
				tipo 		=> strtoupper($in[objData][tipo]),
				acorde 		=> $in[objData][acorde],
				notas 		=> $in[objData][lts_notas],
				img_guitar 	=> $in[objData][img_guitar],
				img_piano 	=> $in[objData][img_piano],
				img_bass 	=> $in[objData][img_bass]
			);
	if($success = insert_acordes($arrData)){
		foreach($id_img as $idimg){ #Recorre archivos recibidos
			switch ($idimg) {
				case 0: $prefix = '_guitar'; break;		
				case 1: $prefix = '_piano'; break;		
				case 2: $prefix = '_bass'; break;		
				default: $prefix = ''; break;
			}
			$idfile = 'file-'.$idimg;			
			if(is_uploaded_file($_FILES[$idfile]['tmp_name'])){
			// Guardado de imagen		
				$e 		= explode('.', $in[objData]['filename'.$idimg]);
				array_map('unlink', glob($Path[chords].'acorde_'.$success.$prefix.".*")); #Borra duplicados
				$imagen = 'acorde_'.$success.$prefix.'.'.$e[count($e)-1];
				if(copy($_FILES[$idfile]['tmp_name'], $Path[chords].$imagen)){
					unlink($_FILES[$idfile]['tmp_name']);
					resize_image($Path[chords].$imagen);
					$img = "Imagen guardada.";
					update_acordes(array(id =>$success, 'img'.$prefix => $imagen));
				}else{ $img = false; return;}
			}
		}
		$data = array(success => $success, img => $img, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_catalogos_acordes($in){
	global $dic, $Path;
	// dump_var($in);
	$id = (!$in[pk])?$in[objData][id]:$in[pk];	
	if(is_uploaded_file($_FILES['file']['tmp_name'])){
	// Guardado de imagen		
		$e 		= explode('.', $in[value]);
		switch ($in[name]) {
			case 'img_guitar': 	$prefix = '_guitar'; break;		
			case 'img_piano': 	$prefix = '_piano'; break;		
			case 'img_bass': 	$prefix = '_bass'; break;		
			default: 			$prefix = ''; break;
		}
		array_map('unlink', glob($Path[chords].'acorde_'.$id.$prefix.".*")); #Borra duplicados
		$imagen = 'acorde_'.$id.$prefix.'.'.$e[count($e)-1];
		if(copy($_FILES['file']['tmp_name'], $Path[chords].$imagen)){
			unlink($_FILES['file']['tmp_name']);
			resize_image($Path[chords].$imagen);
			$img = "Imagen guardada.";
		}else{ $img = false; return;}
		$in[value] = $imagen;
	}

	if($success = update_acordes(array(id =>$id, $in[name] => $in[value]))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_catalogos_acordes($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_acordes(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

/*O3M*/
?>