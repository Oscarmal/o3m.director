<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
// Define modulo del sistema
define(MODULO, $in[modulo]);
// Archivo DAO
require_once($Path[src].MODULO.'/dao.captura.php');
// Validación de controlador
// dump_var($_FILES);
// dump_var($in);
o3mcontrolador($in[accion],$in);
// Declaración de Controladores

// ARTISTAS
function insert_captura_artistas($in){
	global $dic;	
	$arrData = array(
				 artista 		=> $in[objData][artista]
				,iglesia 		=> $in[objData][iglesia]
				,ministerio 	=> $in[objData][ministerio]
				,pais 			=> $in[objData][pais]
			);
	if($success = insert_artistas($arrData)){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_captura_artistas($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($success = update_artistas(array(id =>$id, $in[name] => strtoupper($in[value])))){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_captura_artistas($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_artistas(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// ALBUMS
function insert_captura_albums($in){
	global $dic;	
	$arrData = array(
				 album 			=> strtoupper($in[objData][album])
				,subtitulo 		=> strtoupper($in[objData][subtitulo])
				,id_artista 	=> $in[objData][id_artista]
				,anio 			=> $in[objData][anio]
				,pistas			=> $in[objData][pistas]
				,discos			=> $in[objData][discos]
				,portada		=> $in[objData][portada]
			);
	if($success = insert_albums($arrData)){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_captura_albums($in){
	global $dic, $Path;	
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$cover 	= 'cover_'.$id.'.jpg';
	if(is_uploaded_file($_FILES['file']['tmp_name'])){
	// Guardado de imagen		
		if(copy($_FILES['file']['tmp_name'], $Path[covers].$cover)){
			unlink($_FILES['file']['tmp_name']);
			resize_image($Path[covers].$cover);
			$img = "Imagen guardada.";
		}else{ $img = false; return;}
		$in[value] = $cover;
	}	
	if($success = update_albums(array(id =>$id, $in[name] => $in[value]))){		
		$data = array(success => true, id => $id, image => $img, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, image => $img, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_captura_albums($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_albums(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

/*O3M*/
?>