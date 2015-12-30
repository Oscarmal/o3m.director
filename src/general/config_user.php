<?php
session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);

if ($in[auth]){
	global $db,$usuario;
	// Define modulo del sistema
	define(MODULO, $in[modulo]);
	require_once($Path[src].$in[modulo].'/dao.config_user.php');
	
	// Archivo DAO
	if($in[opcion]=='actualizar_datos'){
		$success = actualizar_usuario($in[pass],$usuario[id_usuario]);
			
		$msj = ($success)?'Guardado':'No guardó';
		$data = array(success => $success, message => $msj);
		echo json_encode($data);
	}
	
}
else{
	$success = false;
	$error=array(error => 'Sin accion');
	echo json_encode($error);
}


?>