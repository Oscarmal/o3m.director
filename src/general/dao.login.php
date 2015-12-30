<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2014-08-27
* @author 		Oscar Maldonado
*/
function select_user($usuario, $clave){
	global $db;
	$sql = "SELECT 
				 a.id_usuario
				,a.usuario
				,a.id_perfil
				,d.id_grupo
				,d.grupo
				,a.activo
				,a.login
				,b.id_personal
				,CONCAT(b.nombre,' ',IFNULL(b.paterno,''),' ',IFNULL(b.materno,'')) as nombreCompleto
				,b.empleado_num
				,b.email
				,c.nombre as empresa
				,c.id_empresa as id_empresa
				,c.id_nomina as id_empresa_nomina
				,e.pais
				,perf.visible as visible_group
				,perf.invisible as invisible_group
				,CONCAT(IFNULL(a.visible,''),',',(SELECT CAST(GROUP_CONCAT(DISTINCT id_grupo SEPARATOR ',') AS CHAR(1000)) FROM $db[tbl_menus] WHERE FIND_IN_SET(id_menu, CONCAT(IFNULL(perf.visible,''),',',IFNULL(a.visible,'')))  GROUP BY '')) as visible_user
				,a.invisible as invisible_user
				,perf.visible_submenu as visible_submenu_group
				,perf.invisible_submenu as invisible_submenu_group
				,CONCAT(IFNULL(a.visible_submenu,''),',',(SELECT CAST(GROUP_CONCAT(DISTINCT id_grupo SEPARATOR ',') AS CHAR(1000)) FROM $db[tbl_menus_lateral] WHERE FIND_IN_SET(id_menu_lateral, CONCAT(IFNULL(perf.visible_submenu,''),',',IFNULL(a.visible_submenu,'')))  GROUP BY '')) as visible_submenu_user
				,a.invisible_submenu as invisible_submenu_user
				,COUNT(a.id_personal) as perfiles
				FROM $db[tbl_usuarios] a
				LEFT JOIN $db[tbl_personal] b USING(id_personal)
				LEFT JOIN $db[tbl_empresas] c USING(id_empresa)
				LEFT JOIN $db[tbl_perfiles] perf ON a.id_perfil=perf.id_grupo				
				LEFT JOIN $db[tbl_grupos] d ON perf.id_grupo=d.id_grupo
				LEFT JOIN $db[tbl_paises] e ON e.id_pais=a.id_pais
				WHERE a.usuario='$usuario' and a.clave='$clave' and a.activo=1 and b.activo=1 AND c.activo=1 AND d.activo=1
				GROUP BY a.id_personal;";
				// dump_var($sql);
	$resultado = SQLQuery($sql);
	$resultado = ($resultado) ? $resultado[0] : false ;
	return $resultado;
}
/*O3M*/
?>