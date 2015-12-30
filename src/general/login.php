<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
// Define modulo del sistema
define(MODULO, $in[modulo]);
// Archivo DAO
require_once($Path[src].strtolower(MODULO).'/dao.login.php');
require_once($Path[src].'views.vars.'.strtolower(MODULO).'.php');
require_once($Path[src].'build.menu.php');
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
function login($in){
	global $Path, $parm;
	if(!empty($in[usuario]) && !empty($in[clave])){
		if($usuario = select_user($in[usuario], md5($in[clave]))){
			llena_sesion($usuario);
			$modulo = $parm[GENERAL];
			$seccion = $parm[INICIO];
			$url = $Path['url']."$modulo/$seccion";
			$success = true;
		}else{
			$modulo = $parm[GENERAL];
			$seccion = $parm[ERROR];
			$url = $Path['url']."$modulo/$seccion";
			$success = false;		
		}
		$data = array(success => $success, url => $url);
	}else{
		$data = array(success => false, msj => 'ERROR AL AUTENTICAR CREDENCIALES');
	}
	return json_encode($data);
}
function llena_sesion($usuario=array()){
	$_SESSION[user]['id_usuario'] 		= $usuario[id_usuario];
	$_SESSION[user]['usuario'] 			= $usuario[usuario];
	$_SESSION[user]['activo'] 			= $usuario[activo];
	$_SESSION[user]['id_perfil']		= $usuario[id_perfil];
	$_SESSION[user]['id_grupo']			= $usuario[id_grupo];
	$_SESSION[user]['grupo']			= $usuario[grupo];
	$_SESSION[user]['id_personal']		= $usuario[id_personal];
	$_SESSION[user]['nombre']			= $usuario[nombreCompleto];
	$_SESSION[user]['empleado_num']  	= $usuario[empleado_num]; 
	$_SESSION[user]['email'] 			= $usuario[email];
	$_SESSION[user]['id_empresa'] 		= $usuario[id_empresa];		
	$_SESSION[user]['id_empresa_nomina']= $usuario[id_empresa_nomina];	
	$_SESSION[user]['empresa'] 			= $usuario[empresa];
	$_SESSION[user]['pais'] 			= $usuario[pais];
	$_SESSION[user]['id_pais'] 			= $usuario[id_pais];
	$_SESSION[user]['id_region'] 		= $usuario[id_region];
	$_SESSION[user]['nombre_usuario']	= $usuario[nombre];
	$_SESSION[user]['grupo'] 			= $usuario[grupo];
	#Accesos en menú GROUP
	$visible_group 		= array_filter(preg_split("/[\s,;|*]+/", $usuario[visible_group]));
	$invisible_group	= array_filter(preg_split("/[\s,;|*]+/", $usuario[invisible_group]));
	$invisible_group 	= array_diff($invisible_group, $visible_group);
	#Accesos en menú USER
	$visible_user 		= array_filter(preg_split("/[\s,;|*]+/", $usuario[visible_user]));
	$invisible_user		= array_filter(preg_split("/[\s,;|*]+/", $usuario[invisible_user]));
	#Accesos en menú FINAL
	#USER tiene preferencia a GROUP
	$visible_final		= array_diff(array_unique(array_merge($visible_group, $visible_user)),$invisible_user);
	$invisible_final	= array_unique(array_merge($invisible_group, $invisible_user));
	$invisible_final 	= array_diff($invisible_final, $visible_final);
	$_SESSION[user]['accesos']['visible']			= implode(',',$visible_final);
	$_SESSION[user]['accesos']['invisible']			= implode(',',$invisible_final);
	#Menú
	$_SESSION[user]['menu'] 			= buildMenu($_SESSION[user]['accesos']['visible'],$_SESSION[user]['accesos']['invisible']);

	#Accesos en submenú GROUP
	$visible_group_submenu	= array_filter(preg_split("/[\s,;|*]+/", $usuario[visible_submenu_group]));
	$invisible_group_submenu= array_filter(preg_split("/[\s,;|*]+/", $usuario[invisible_submenu_group]));
	$invisible_group_submenu= array_diff($invisible_group_submenu, $visible_group_submenu);
	#Accesos en submenú USER
	$visible_user_submenu	= array_filter(preg_split("/[\s,;|*]+/", $usuario[visible_submenu_user]));
	$invisible_user_submenu	= array_filter(preg_split("/[\s,;|*]+/", $usuario[invisible_submenu_user]));
	#Accesos en submenú FINAL
	#USER tiene preferencia a GROUP
	$visible_final_submenu	= array_diff(array_unique(array_merge($visible_group_submenu, $visible_user_submenu)),$invisible_user_submenu);
	$invisible_final_submenu= array_unique(array_merge($invisible_group_submenu, $invisible_user_submenu));
	$invisible_final_submenu= array_diff($invisible_final_submenu, $visible_final_submenu);
	$_SESSION[user]['accesos']['visible_submenu']			= implode(',',$visible_final_submenu);
	$_SESSION[user]['accesos']['invisible_submenu']			= implode(',',$invisible_final_submenu);
	#Submenú
	// $_SESSION[user]['submenu'] 			= buildMenu($_SESSION[user]['accesos']['visible_submenu'],$_SESSION[user]['accesos']['invisible_submenu']);
	// dump_var($_SESSION[user]);
	return true;
}
/*O3M*/
?>