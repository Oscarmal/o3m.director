<?php
session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);

function actualizar_usuario($pass,$id_usuario){
	$password=md5($pass);
	global $db;
			$sql= "UPDATE 
						$db[tbl_usuarios]
					SET
						clave	 	=	'$password'
					 WHERE 
					 	id_usuario 	= $id_usuario;";
				//echo $sql;
				return $resultado = SQLDo($sql);
}
?>