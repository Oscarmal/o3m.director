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
	$sql = "SELECT alb.id_album, 
					alb.album, 
					alb.subtitulo, 
					alb.id_artista, 
					alb.anio, 
					alb.pistas, 
					alb.discos,
					alb.portada
			FROM $db[tbl_albums] alb 
			WHERE 1 AND alb.activo = 1 $filtro
			GROUP BY alb.album ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_albums($data=array()){
	global $db, $usuario;
	$timestamp = timestamp();
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	$sql="INSERT INTO $db[tbl_albums]	SET  $updateFields ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_albums($data=array()){
	global $db, $usuario;	
	$timestamp = timestamp();
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_albums]
				SET  $updateFields
				WHERE id_album='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
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

function insert_artistas($data=array()){
	global $db, $usuario;
	$timestamp = timestamp();
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	$sql="INSERT INTO $db[tbl_artistas]	SET  $updateFields ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_artistas($data=array()){
	global $db, $usuario;	
	$timestamp = timestamp();
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_artistas]
				SET  $updateFields
				WHERE id_artista='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
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