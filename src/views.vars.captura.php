<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'CAPTURA');
global $vistas, $contenidos, $icono;
$icono = $var[ico_03];
require_once($Path[src].strtolower(MODULO).'/dao.'.strtolower(MODULO).'.php');
require_once($Path[src].'build.contenido.php');
# Vistas
$vistas = array(
			 LISTADO 		=> 'listado.html'
			,CATEGORIAS 	=> 'categorias.html'
			,COMPASES 		=> 'compases.html'
			,ESCALAS 		=> 'escalas.html'
			,NOTAS 			=> 'notas.html'
			,RITMOS 		=> 'ritmos.html'
			,ALBUMS 		=> 'albums.html'
			,ARTISTAS 		=> 'artistas.html'
			,CANTOS 		=> 'cantos.html'
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
	}elseif($cmd == 'NUEVO'){
		$vars = vars_nuevo($cmd,$urlParams);
	}elseif($cmd == 'PROSPECTOS'){
		$vars = vars_prospectos($cmd,$urlParams);
	}elseif($cmd == 'CLIENTES'){
		$vars = vars_clientes($cmd,$urlParams);
	}elseif($cmd == 'DETALLE'){
		$vars = vars_detalle($cmd,$urlParams);
	}elseif($cmd == 'EDITAR'){
		$vars = vars_editar($cmd,$urlParams);
	}elseif($cmd == 'CONTACTOS'){
		$vars = vars_contactos($cmd,$urlParams);
	}
	else{
		$vars = vars_error($cmd);
	}
	return $vars;
}

#############
// Funciones para asignar variables a cada vista
// $negocio => Logica de negocio; $texto => Mensajes de interfaz

function vars_listado($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 	= $dic[captura][listado_titulo];
	$contenido = build_acordes();
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/captura.js')		
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
function vars_nuevo($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins,$vistas;
	define(SECCION, $seccion);	 
	## Logica de negocio ##
	$titulo 	= $dic[empresas][nuevo_titulo];
	## Envio de valores ##
	$data_contenido = build_nueva_empresa();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	$negocio = array(
				 MORE 				=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.js')
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
function vars_prospectos($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 	= $dic[empresas][prospectos_titulo];
	$contenido = build_listado_prospectos();
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.listado.js')	
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
function vars_clientes($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 	= $dic[empresas][clientes_titulo];
	$contenido = build_listado_clientes();
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.listado.js')
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
function vars_detalle($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 	= $dic[empresas][detalle_titulo];
	$data_contenido = build_detalle_empresas();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.listado.js')
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
function vars_editar($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins,$vistas;
	define(SECCION, $seccion);
	 //dump_var($seccion);
	## Logica de negocio ##
	$titulo 	= $dic[empresas][editar_titulo];

	$data_contenido = build_editar_empresa();

	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.js')		
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
function vars_contactos($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 	= $dic[empresas][contactos_titulo];
	$data_contenido = build_detalle_empresas_contactos();
	$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/empresas.contactos.js')	
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