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
	if($success = update_categorias(array(id_categoria =>$id, categoria => strtoupper($valor)))){
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
	if($success = activate_categorias(array(id_categoria =>$id, activo => $activo)) ){
		$data = array(success => true, id => $id, message => 'El registro con ID: '.$id.' ha sido desactivado.');
	}else{
		$data = array(success => false, id => $id, message => 'ERROR al desactivar registro.');
	}
	return json_encode($data);
}

/*O3M*/
?>