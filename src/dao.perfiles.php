<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2015-11-30
* @author 		Oscar Maldonado
*/

function select_acceso_ids($data=array()){
// Regresa una cadena serializada con los ID's de los id_personal permitidos
	global $db, $usuario;
// dump_var($usuario[id_grupo]);
	$max_supervisores = 2;
	$id_personal 	= ($usuario[id_personal])?$usuario[id_personal]:false;
	switch ($usuario[id_grupo]) {
		#Root
		case $usuario[id_grupo]==0:
			return false;
			break;
		#Administradores
		case $usuario[id_grupo]==1:
			return false;
			break;
		#Supervisores
		case $usuario[id_grupo]==2:
			$id_ejecutivos = "CONCAT(per.id_personal,',',sup.id_ejecutivos)";
			break;
		#Ejecutivos
		case $usuario[id_grupo]==3: 
			$id_ejecutivos = "per.id_personal";
			break;
		default: #Ejecutivos
			$id_ejecutivos = "per.id_personal";
			break;
	}	
	$filtro 		.= ($id_personal)?" AND per.id_personal='$id_personal'":'';
	$sql = "SELECT $id_ejecutivos as id_ejecutivos
			FROM sis_personal per
			LEFT JOIN (SELECT 
					 per.id_personal as id_supervisor
					,CONCAT(IFNULL(per.nombre,''),' ',IFNULL(per.paterno,''),' ',IFNULL(per.materno,'')) AS nombre_completo
					,usu.id_usuario
					,usu.usuario
					,usu.id_perfil
					,gru.grupo		
					,asign.id_ejecutivos
					FROM $db[tbl_personal] per
					LEFT JOIN $db[tbl_usuarios] usu ON per.id_personal=usu.id_personal
					LEFT JOIN $db[tbl_perfiles] perf ON usu.id_perfil=perf.id_grupo
					LEFT JOIN $db[tbl_grupos] gru ON perf.id_grupo=gru.id_grupo		
					LEFT JOIN (SELECT 
						IF(a.id_supervisor IS NULL, a.id_personal ,a.id_supervisor) AS id_supervisor
						,CAST(GROUP_CONCAT(DISTINCT a.id_personal SEPARATOR ',') AS CHAR(1000)) as id_ejecutivos
						FROM $db[tbl_personal] a		
						LEFT JOIN $db[tbl_usuarios] b ON a.id_personal=b.id_personal
						GROUP BY a.id_supervisor
					) AS asign ON per.id_personal=asign.id_supervisor OR per.id_supervisor=asign.id_supervisor
					WHERE 1 AND perf.id_grupo<='$max_supervisores'
			) AS sup ON sup.id_supervisor=IF(per.id_supervisor IS NULL, per.id_personal, per.id_supervisor)
			WHERE 1 $filtro ;";
			// dump_var($sql);
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado[0][id_ejecutivos] : false ;
	return $resultado;
}
/*O3M*/
?>