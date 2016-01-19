<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'CAPTURA');
global $vistas, $contenidos, $icono;
$icono = $var[ico_03];
require_once($Path[src].'build.contenido.php');
# Vistas
$vistas = array(
			 LISTADO 		=> 'listado.html'
			,ALBUMS 		=> 'albums.html'
			,ALBUMS_EDIT	=> 'albums_edit.html'
			,ARTISTAS 		=> 'artistas.html'
			,CANTOS 		=> 'cantos.html'
			,CANTOS_EDIT	=> 'cantos_edit.html'
			,CIFRADOS 		=> 'cifrados.html'
			,CIFRADOS_EDIT	=> 'cifrados_edit.html'
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
	if($cmd == 'LISTADO'){
		$vars = vars_listado($cmd, $urlParams);
	}elseif($cmd == 'ALBUMS'){
		$vars = vars_albums($cmd,$urlParams);
	}elseif($cmd == 'ALBUMS_EDIT'){
		$vars = vars_albums_edit($cmd,$urlParams);
	}elseif($cmd == 'ARTISTAS'){
		$vars = vars_artistas($cmd,$urlParams);
	}elseif($cmd == 'CANTOS'){
		$vars = vars_cantos($cmd,$urlParams);
	}elseif($cmd == 'CANTOS_EDIT'){
		$vars = vars_cantos_edit($cmd,$urlParams);
	}elseif($cmd == 'CIFRADOS'){
		$vars = vars_cifrados($cmd,$urlParams);
	}elseif($cmd == 'CIFRADOS_EDIT'){
		$vars = vars_cifrados_edit($cmd,$urlParams);
	}else{
		$vars = vars_error($cmd);
	}
	return $vars;
}

#############
// Funciones para asignar variables a cada vista
// $negocio => Logica de negocio; $texto => Mensajes de interfaz
function vars_listado($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][listado_titulo];
	## Envio de valores ##
	$data_contenido = array(CONTENIDO => build_acordes());
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/captura.js')
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

function vars_albums($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][albums_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_albums();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/albums.js')
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/file-editable.js')
				 					   .incJs($Path[js].'/jquery.elevatezoom.min.js')
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

function vars_albums_edit($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][albums_edit_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_albums_edit();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/albums_edit.js')
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

function vars_artistas($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][artistas_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_artistas();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/captura.js')
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

function vars_cantos($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][cantos_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_cantos();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/cantos.js')
				 					   .incJs($Path[js].'/jquery.elevatezoom.min.js')
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

function vars_cantos_edit($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][cantos_edit_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_cantos_edit();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/cantos_edit.js')
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

function vars_cifrados($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][cifrados_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_cifrados();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/cifrados.js')
				 						.incJs($Path[js].'/jquery.elevatezoom.min.js')

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

function vars_cifrados_edit($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][cifrados_edit_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_cifrados_edit();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/cifrados_edit.js')
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

function vars_cifrado($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][cifrado_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_cifrado();
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