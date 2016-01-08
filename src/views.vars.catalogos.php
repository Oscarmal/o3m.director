<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'CATALOGOS');
global $vistas, $contenidos, $icono;
$icono = $var[ico_03];
require_once($Path[src].'build.contenido.php');
# Vistas
$vistas = array(
			 LISTADO 		=> 'listado.html'
			,CATEGORIAS 	=> 'categorias.html'
			,COMPASES 		=> 'compases.html'
			,ESCALAS 		=> 'escalas.html'
			,NOTAS 			=> 'notas.html'
			,RITMOS 		=> 'ritmos.html'
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
	}elseif($cmd == 'CATEGORIAS'){
		$vars = vars_categorias($cmd,$urlParams);
	}elseif($cmd == 'COMPASES'){
		$vars = vars_compases($cmd,$urlParams);
	}elseif($cmd == 'ESCALAS'){
		$vars = vars_escalas($cmd,$urlParams);
	}elseif($cmd == 'NOTAS'){
		$vars = vars_notas($cmd,$urlParams);
	}elseif($cmd == 'RITMOS'){
		$vars = vars_ritmos($cmd,$urlParams);
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
	$data_contenido = array(CONTENIDO => '');
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
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

function vars_categorias($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][categorias_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_categorias();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=>  include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
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

function vars_compases($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][compases_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_compases();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=>  include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
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

function vars_escalas($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][escalas_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_escalas();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=>  include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
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

function vars_notas($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][notas_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_notas();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=>  include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/notas-editable.js')
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

function vars_ritmos($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[captura][ritmos_titulo];
	## Envio de valores ##
	$data_contenido = build_formulario_ritmos();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=>  include_editable()
				 					   .incJs($Path[srcjs].strtolower(MODULO).'/catalogos.js')
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