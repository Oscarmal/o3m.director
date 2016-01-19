<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
// Define modulo del sistema
define(MODULO, $in[modulo]);
// Archivo DAO
require_once($Path[src].MODULO.'/dao.captura.php');
// Validación de controlador
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
	if($success = update_artistas(array(id =>$id, $in[name] => $in[value]))){
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
	global $dic, $Path;	
	if(!$in[objData]) $in[objData] = $in;
	$arrData = array(
				 album 			=> strtoupper($in[objData][album])
				,subtitulo 		=> strtoupper($in[objData][subtitulo])
				,id_artista 	=> $in[objData][id_artista]
				,anio 			=> strtoupper($in[objData][anio])
				,pistas			=> strtoupper($in[objData][pistas])
				,discos			=> strtoupper($in[objData][discos])
				,portada		=> $in[objData][portada]
			);
	if($success = insert_albums($arrData)){
		if(is_uploaded_file($_FILES['file']['tmp_name'])){
		// Guardado de imagen		
			$e 		= explode('.', $in[objData][filename]);
			array_map('unlink', glob($Path[covers].'cover_'.$success.".*")); #Borra duplicados
			$imagen = 'cover_'.$success.'.'.$e[count($e)-1];
			if(copy($_FILES['file']['tmp_name'], $Path[covers].$imagen)){
				unlink($_FILES['file']['tmp_name']);
				resize_image($Path[covers].$imagen);
				$img = "Imagen guardada.";
				update_albums(array(id =>$success, portada => $imagen));
			}else{ $img = false; return;}
		}
		$data = array(success => $success, img => $img, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_captura_albums($in){
	global $dic, $Path;	
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($in[pk] && $in[name]){
		$arrData = array(
					 id			=> $in[pk]
					,$in[name]	=> $in[value]
				);
	}else{
		$arrData = array(
					 id			=> $in[objData][id]
					,album 		=> $in[objData][album]
					,subtitulo  => $in[objData][subtitulo]
					,id_artista => $in[objData][lts_artistas]
					,anio		=> $in[objData][anio]
					,pistas		=> $in[objData][pistas]
					,discos		=> $in[objData][discos]
					// ,portada	=> $in[objData][portada]
				);
	}
	if(is_uploaded_file($_FILES['file']['tmp_name'])){
	// Guardado de imagen				
		$e 		= explode('.', $in[value]);
		array_map('unlink', glob($Path[covers].'cover_'.$id.".*")); #Borra duplicados
		$cover  = 'cover_'.$id.'.'.$e[count($e)-1];
		if(copy($_FILES['file']['tmp_name'], $Path[covers].$cover)){
			unlink($_FILES['file']['tmp_name']);
			resize_image($Path[covers].$cover);
			$img = "Imagen guardada.";
		}else{ $img = false; return;}
		$arrData[portada] = $cover;
	}	
	if($success = update_albums($arrData)){		
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

// CANTOS
function insert_captura_cantos($in){
	global $dic;	
	$arrData = array(
				 canto 		=> $in[objData][nombre]
				,alias 		=> $in[objData][alias]
				,autor 		=> $in[objData][autor]
				,interprete	=> $in[objData][interprete]
				,anio		=> $in[objData][anio]
				,num_pista	=> $in[objData][pista]
				,id_album	=> $in[objData][lts_albums]
				,id_categorias => $in[objData][lts_categorias]
			);
	if($success = insert_cantos($arrData)){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_captura_cantos($in){
	global $dic;
	if(!$in[objData]) $in[objData] = $in;	
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($in[pk] && $in[name]){
		$arrData = array(
					 id			=> $in[pk]
					,$in[name]	=> $in[value]
				);
	}else{
		$arrData = array(
					 id			=> $in[objData][id]
					,canto 		=> $in[objData][nombre]
					,alias 		=> $in[objData][alias]
					,autor 		=> $in[objData][autor]
					,interprete	=> $in[objData][interprete]
					,anio		=> $in[objData][anio]
					,num_pista	=> $in[objData][pista]
					,id_album	=> $in[objData][lts_albums]
					,id_categorias => $in[objData][lts_categorias]
				);
	}
	if($success = update_cantos($arrData)){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_captura_cantos($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_cantos(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

// CIFRADOS
function insert_captura_cifrados($in){
	global $dic;	
	$arrData = array(
				 id_canto	=> $in[objData][lts_cantos]
				,id_escala	=> $in[objData][lts_escalas]
				,id_variacion => $in[objData][lts_variacion]
				,id_compas	=> $in[objData][lts_compases]
				,tempo 		=> $in[objData][tempo]
				,id_ritmo	=> $in[objData][lts_ritmos]
				,acordes	=> $in[objData][lts_acordes]
				,cifrado	=> $in[objData][cifrado]
				,piano		=> $in[objData][piano]
				,trompeta	=> $in[objData][trompeta]
				,sax		=> $in[objData][sax]
				,comentarios=> $in[objData][comentarios]
			);
	if($success = insert_cifrados($arrData)){
		$data = array(success => $success, message => 'El registro con ID: '.$success.' ha sido agregado.');
	}else{
		$data = array(success => false, message => 'ERROR al insertar datos.');
	}
	return json_encode($data);
}
function update_captura_cifrados($in){
	global $dic;
	if(!$in[objData]) $in[objData] = $in;	
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	if($in[pk] && $in[name]){
		$arrData = array(
					 id			=> $in[pk]
					,$in[name]	=> $in[value]
				);
	}else{
		$arrData = array(
					 id			=> $in[objData][id_cifrado]
					,id_canto	=> $in[objData][lts_cantos]
					,id_escala	=> $in[objData][lts_escalas]
					,id_variacion => $in[objData][lst_variacion]
					,id_compas	=> $in[objData][lts_compases]
					,tempo 		=> $in[objData][tempo]
					,id_ritmo	=> $in[objData][lts_ritmos]
					,acordes	=> $in[objData][lts_acordes]
					,cifrado	=> $in[objData][cifrado]
					,piano		=> $in[objData][piano]
					,trompeta	=> $in[objData][trompeta]
					,sax		=> $in[objData][sax]
					,comentarios=> $in[objData][comentarios]
				);
	}
	if($success = update_cifrados($arrData)){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido actualizado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al actualizar datos.');
	}
	return json_encode($data);
}
function activate_captura_cifrados($in){
	global $dic;
	$id 	= (!$in[pk])?$in[objData][id]:$in[pk];
	$activo = ($in[objData][activo])?1:0;
	if($success = update_cifrados(array(id =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}
/*O3M*/
?>