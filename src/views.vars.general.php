<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* O3M
* Manejador de Vistas y asignación de variables
* 
*/
// Modulo Padre
define(MODULO, 'GENERAL');
global $vistas, $contenidos, $icono;
$icono = $var[ico_01];
# Vistas
$vistas = array(
			 LOGIN 	=> 'login.html'
			,INICIO => 'inicio.html'
			,DETALLE_USUARIO => 'detalle_usuario.html'
			,ERROR 	=> 'error.html'
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
	if($cmd == 'LOGIN'){
		$vars = vars_login($urlParams);
	}elseif($cmd == 'INICIO'){
		$vars = vars_inicio($cmd,$urlParams);
	}
	elseif($cmd == 'DETALLE_USUARIO'){
		$vars = vars_detalle_usuario($cmd,$urlParams);
	}
	else{
		$vars = vars_error($cmd);
	}
	return $vars;
}

#############
// Funciones para asignar variables a cada vista
// $negocio => Logica de negocio; $texto => Mensajes de interfaz

function vars_login($urlParams){
	global $Path, $dic, $cfg;
	define(SECCION, 'LOGIN');	
	$modulo = strtolower(MODULO).'/';
	$seccion = encrypt(SECCION,1);
	## Logica de negocio ##
	// Mensajes via URL	
	switch ($urlParams[e]) {
		case 1: $msj = $dic[login][msj_noauth];
				break;
		case 2: $msj = $dic[login][msj_salir];
				break;			
		default:$msj = $dic[login][msj_entrar];
				break;
	}

	## Envio de valores ##
	$negocio = array(
				 MORE 		=> incJs($Path[srcjs].$modulo.'login.js')
				,MODULE 	=> strtolower(MODULO)
				,SECTION 	=> strtolower($seccion)	
				,FOLDER 	=> $cfg[app_folder]		
			);
	$texto = array(
				 APP_TITLE 			=> $cfg[app_title]
				,login 				=> $dic[comun][login]
				,usuario 			=> $dic[comun][usuario]
				,clave 				=> $dic[comun][clave]
				,txt_entrar 		=> $dic[comun][entrar]
				,txt_olvido_clave 	=> $dic[login][olvido_clave]
				,MSJ 				=> $msj
				,txt_footer 		=> $cfg[app_own]
				,ANIO 				=> '2009-'.date('Y')
			);	
	$data = array_merge($negocio, $texto);	
	return $data;
}
function vars_inicio($seccion, $urlParams){
	global $var, $Path, $icono, $dic, $db, $ins, $vistas;
	define(SECCION, $seccion);
	## Logica de negocio ##
	$titulo 		= $dic[general][titulo];
	$data_contenido	= array(CONTENIDO => $dic[general][msj_inicio]);
	$contenido 		= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
	## Envio de valores ##
	$negocio = array(
				 MORE 		=> ''	
				,MODULE 	=> strtolower(MODULO)
				,SECTION 	=> ($seccion)			
				,ICONO 		=> $icono
				,TITULO		=> $titulo
				,CONTENIDO 	=> $contenido
			);
	$texto = array();
	$data = array_merge($negocio, $texto);
	return $data;
}
function vars_detalle_usuario($seccion, $urlParams){
		global $cfg, $var, $Path, $dic, $vistas;
		define(SECCION, $seccion);
		## Logica de negocio ##
		$data_contenido = array();
		$contenido 	= contenidoHtml(strtolower(MODULO).'/'.$vistas[strtoupper($seccion)], $data_contenido);
		## Envio de valores ##
		$negocio = array(
					 MORE 		=> incJs($Path[srcjs].strtolower(MODULO).'/config_user.js')	
					,MODULE 	=> strtolower(MODULO)
					,SECTION 	=> ($seccion)
				);
		$texto = array(
					 ICONO 				=> $var[ico_cons_05]
					,TITULO				=> $dic[general][config]
					,CONTENIDO 			=> $contenido				
					,numero 			=> $dic[consultores][numero]
					,perfil 			=> $dic[consultores][perfil]
					,supervisor 		=> $dic[consultores][supervisor]
					,ejecutivo 			=> $dic[consultores][ejecutivo]
					,nombre 			=> $dic[consultores][nombre]
					,apellido_paterno	=> $dic[consultores][apellido_paterno]
					,apellido_materno	=> $dic[consultores][apellido_materno]
					,puesto				=> $dic[consultores][puesto]
					,email				=> $dic[consultores][email]
					,pais				=> $dic[consultores][pais]
					,entidad			=> $dic[consultores][entidad]
					,ciudad				=> $dic[consultores][ciudad]
					,region				=> $dic[consultores][region]
					,telefono			=> $dic[consultores][telefono]
					,telefono_movil		=> $dic[consultores][telefono_movil]
					,guardar			=> $dic[consultores][guardar]
					,select_paises 		=> $select_paises
					,select_regiones 	=> $select_regiones					
				);
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