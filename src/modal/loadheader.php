<?php session_name('o3m_fw_director'); session_start(); 
if(!$_SESSION[user][id_usuario]){
	header('Content-Type: text/html; charset=utf-8');
	// Detección de ruta y definicion de paths de trabajo
	require_once('../../common/php/inc.path.php');
	$Raiz[local] = $_SESSION[RaizLoc];
	$Raiz[url] = $_SESSION[RaizUrl];
	$Raiz[sitefolder] = $_SESSION[SiteFolder];
	// Parsea archivo.cfg y crea $cfg[], $db[], $var[]
	require_once($Raiz[local].'common/php/inc.parse-cfg.php');
	load_vars($Raiz[local].'common/cfg/system.cfg');
	if($cfg[server_prod]){error_reporting(E_ERROR);}
	// Establece variables
	$Path[url]		= $Raiz[url];
	$Path[php] 		= $Raiz[local].$cfg[path_php];
	$Path[tpl]		= $Raiz[url].$cfg[path_tpl];
	$Path[js]		= $Raiz[url].$cfg[path_js];
	$Path[css]		= $Raiz[url].$cfg[path_css];
	$Path[img]		= $Raiz[url].$cfg[path_img];
	$Path[log]		= $Raiz[local].$cfg[path_log];
	$Path[docs]		= $Raiz[local].$cfg[path_docs];
	$Path[docsurl]	= $Raiz[url].$cfg[path_docs];
	$Path[tmp]		= $Raiz[local].$cfg[path_tmp];
	$Path[tmpurl]	= $Raiz[url].$cfg[path_tmp];
	$Path[html]		= $Raiz[local].$cfg[path_html];
	$Path[src]		= $Raiz[local].$cfg[path_src];
	$Path[srcjs]	= $Raiz[url].$cfg[path_src];
	$Path[site]		= $Raiz[local].$cfg[path_site];
	// Prepara archivos de apoyo
	require_once($Raiz[local].$cfg[php_functions]);
	require_once($Raiz[local].$cfg[php_mysql]);
	require_once($Raiz[local].$cfg[php_postgres]);
	require_once($Raiz[local].$cfg[php_tpl]);
	require_once($Raiz[local].$cfg[path_php].'inc.constructHtml.php');
	// Parametros de URL encriptados o legibles
	if($cfg[encrypt_onoff]){ $parm = $var; }else{ foreach($var as $llave => $valor){$parm[$llave] = strtolower($llave);} }
	// Parsea parámetros obtenidos por URL y los pone en arrays: $in[] y $ins[]
	parseFormSanitizer($_GET, $_POST); # $ins[]
	parseForm($_GET, $_POST); # $in[]
	# Diccionario de idioma
	$idioma = (!isset($_SESSION[idioma]))?strtoupper($cfg[idioma]):strtoupper($_SESSION[idioma]);
	if($idioma=='EN'){
		$dicFile = $cfg[path_dic_en];
	}else{
		$dicFile = $cfg[path_dic_es];
	}
	diccionario($Raiz[local].$dicFile);
}else{
	include_once($_SESSION['header_path']);
}
?>