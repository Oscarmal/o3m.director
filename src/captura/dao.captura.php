<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2015-11-30
* @author 		Oscar Maldonado
*/
// ALBUMS
function select_albums($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (alb.album LIKE '%$searchbox%')":'';
	$sql = "SELECT alb.id_album, alb.album 
			FROM $db[tbl_albums] alb 
			WHERE 1 AND alb.activo = 1 $filtro
			GROUP BY alb.album ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// ARTISTAS
function select_artistas($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (CONCAT(art.artista,' - ',art.iglesia,' - ',art.ministerio,' - ',art.pais) LIKE '%$searchbox%')":'';
	$sql = "SELECT art.id_artista
					,CONCAT(IFNULL(art.artista,''),' - ',IFNULL(art.iglesia,''),' - ',IFNULL(art.ministerio,''),' - ',IFNULL(art.pais,'')) as combo
					,art.artista
					,art.iglesia
					,art.ministerio
					,art.pais
			FROM $db[tbl_artistas] art 
			WHERE 1 AND art.activo = 1 $filtro
			GROUP BY art.artista, art.iglesia, art.ministerio, art.pais;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// CANTOS
function select_cantos($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (cant.canto LIKE '%$searchbox%'
								OR cant.alias LIKE '%$searchbox%'
								OR cant.autor LIKE '%$searchbox%'
							)":'';
	$sql = "SELECT cant.id_canto, cant.canto, cant.alias, cant.autor
			FROM $db[tbl_cantos] cant 
			WHERE 1 AND cant.activo = 1 $filtro
			GROUP BY cant.canto, cant.autor ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}
/*O3M*/
?>