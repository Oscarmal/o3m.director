<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'CIFRADO');
global $vistas, $contenidos, $icono;
$icono = $var[ico_03];
require_once($Path[src].'build.contenido.php');
# Vistas
$vistas = array(
			 VER 		=> 'ver.html'
			,ERROR 		=> 'error.html'
			);

# Comandos
function vistas($cmd){
	global $vistas;
	$modulo = strtolower(MODULO).'/';
	$comando = strtoupper(enArray($cmd,$vistas));	
	if(array_key_exists($comando,$vistas)){
		$html = $modulo.$vistas[$comando];
	}else{
		$html = $vistas[ERROR];
	}
	return $html;
}

# Variables
function tpl_vars($cmd, $urlParams=array()){
	global $vistas;
	$cmd = strtoupper(enArray($cmd,$vistas));
	if($cmd == 'VER'){
		$vars = vars_cifrado($cmd,$urlParams);
	}else{
		$vars = vars_error($cmd);
	}
	return $vars;
}

#############
// Funciones para asignar variables a cada vista
// $negocio => Logica de negocio; $texto => Mensajes de interfaz
function vars_cifrado($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[cifrado][ver_titulo];
	## Envio de valores ##
	$data_contenido = build_view_cifrado();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/cifrado.js')
				,MODULE 			=> strtolower(MODULO)
				,SECTION 			=> $seccion			
				,ICONO 				=> $icono
				,TITULO				=> $titulo
				,CONTENIDO 			=> $contenido								
			);
	$texto = array();
	$data = array_merge($negocio, $texto);	
	return $data;
}

function vars_error($cmd){
	global $dic;
	## Envio de valores ##
	$data = array(MENSAJE => $dic[error][mensaje].': '.$cmd);
	return $data;
}
?>