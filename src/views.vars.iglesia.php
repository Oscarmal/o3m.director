<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'IGLESIA');
global $vistas, $contenidos, $icono;
$icono = $var[ico_03];
require_once($Path[src].strtolower(MODULO).'/dao.'.strtolower(MODULO).'.php');
require_once($Path[src].'build.contenido.php');
# Vistas
$vistas = array(
			 IGLESIA 		=> 'iglesia.html'
			,CONTACTO 		=> 'contacto.html'
			,UBICACION 		=> 'ubicacion.html'
			,FACEBOOK 		=> 'facebook.html'
			,TWITTER 		=> 'twitter.html'
			,YOUTUBE 		=> 'youtube.html'
			,ERROR 			=> 'error.html'
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
	if($cmd == 'IGLESIA'){
		$vars = vars_iglesia($cmd, $urlParams);
	}elseif($cmd == 'CONTACTO'){
		$vars = vars_contacto($cmd,$urlParams);
	}elseif($cmd == 'UBICACION'){
		$vars = vars_ubicacion($cmd,$urlParams);
	}elseif($cmd == 'FACEBOOK'){
		$vars = vars_facebook($cmd,$urlParams);
	}elseif($cmd == 'TWITTER'){
		$vars = vars_twitter($cmd,$urlParams);
	}elseif($cmd == 'YOUTUBE'){
		$vars = vars_youtube($cmd,$urlParams);
	}else{
		$vars = vars_error($cmd);
	}
	return $vars;
}

#############
// Funciones para asignar variables a cada vista
// $negocio => Logica de negocio; $texto => Mensajes de interfaz

function vars_iglesia($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 		= $dic[iglesia][iglesia_titulo];
	$contenido 		= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/iglesia.js')
				,MODULE 	=> strtolower(MODULO)
				,SECTION 	=> $seccion			
				,ICONO 		=> $icono
				,TITULO		=> $titulo
				,CONTENIDO 	=> $contenido
				,IMAGEN 	=> $Path[img].'iglesia_frente.png'
			);
	$texto = array();
	$data = array_merge($negocio, $texto);
	return $data;
}

function vars_contacto($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 		= $dic[iglesia][contacto_titulo];
	$data_contenido = array(CONTENIDO=>build_acordes());
	$contenido 		= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[tpl].'js/parsley/parsley.min.js')
				 			  .incJs($Path[tpl].'js/parsley/parsley.extend.js')
				,MODULE 	=> strtolower(MODULO)
				,SECTION 	=> $seccion			
				,ICONO 		=> $icono
				,TITULO		=> $titulo
				,CONTENIDO 	=> $contenido				
			);
	$texto = array();
	$data = array_merge($negocio, $texto);
	return $data;
}

function vars_ubicacion($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 		= $dic[iglesia][ubicacion_titulo];
	$contenido 		= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/iglesia.js')
				,MODULE 	=> strtolower(MODULO)
				,SECTION 	=> $seccion			
				,ICONO 		=> $icono
				,TITULO		=> $titulo
				,CONTENIDO 	=> $contenido				
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