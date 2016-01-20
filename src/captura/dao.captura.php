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
	$filtro .= ($searchbox)?"AND ( alb.id_album LIKE '%$searchbox%'
						OR alb.album LIKE '%$searchbox%'
						OR CONCAT(IFNULL(art.artista,''),' - ',IFNULL(art.iglesia,''),' - ',IFNULL(art.pais,''),' - ',IFNULL(art.ministerio,'')) LIKE '%$searchbox%'
						OR alb.anio LIKE '%$searchbox%'
						OR alb.subtitulo LIKE '%$searchbox%'
				)":'';
	$sql = "SELECT alb.id_album, 
					alb.album, 
					alb.subtitulo, 
					alb.id_artista,
					CONCAT(IFNULL(art.artista,''),' - ',IFNULL(art.iglesia,''),' - ',IFNULL(art.pais,''),' - ',IFNULL(art.ministerio,'')) as artista,
					alb.anio, 
					alb.pistas, 
					alb.discos,
					alb.portada
			FROM $db[tbl_albums] alb 
			LEFT JOIN $db[tbl_artistas] art on alb.id_artista=art.id_artista
			WHERE 1 AND alb.activo = 1 $filtro
			GROUP BY alb.album ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function select_album_unico($data=array()){
	global $db, $usuario;	
	$id 	 = ($data[id])?$data[id]:false;
	$filtro .= ($id)?" AND id_album='$id'":'';
	$sql = "SELECT *
			FROM $db[tbl_albums]  
			WHERE 1 AND activo = 1 $filtro 
			GROUP BY id_album;";
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
	$id = SQLDo($sql);
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
function select_cantos($data=array()){
	global $db, $usuario;	
	$searchbox 	= ($data[searchbox])?$data[searchbox]:false;
	$id 		= ($data[id])?$data[id]:false;
	$filtro .= ($searchbox)?"AND (cant.canto LIKE '%$searchbox%'
								OR cant.alias LIKE '%$searchbox%'
								OR cant.autor LIKE '%$searchbox%'
							)":'';
	$filtro .= ($id)?" AND cant.id_canto='$id'":'';
	$sql = "SELECT cant.id_canto, 
					CONCAT(IFNULL(cant.canto,''),' - ',IFNULL(alb.album,'')) as combo,
					cant.canto, cant.alias, cant.autor, cant.interprete, cant.anio, cant.num_pista as pista,
					alb.album, alb.portada
			FROM $db[tbl_cantos] cant 
			LEFT JOIN $db[tbl_albums] alb ON cant.id_album=alb.id_album
			WHERE 1 AND cant.activo = 1 $filtro
			GROUP BY cant.canto, cant.autor ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function select_canto_unico($data=array()){
	global $db, $usuario;	
	$id 	 = ($data[id])?$data[id]:false;
	$filtro .= ($id)?" AND cant.id_canto='$id'":'';
	$sql = "SELECT cant.*
			FROM $db[tbl_cantos] cant 
			WHERE 1 AND cant.activo = 1 $filtro 
			GROUP BY cant.id_canto;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_cantos($data=array()){
	global $db, $usuario;
	$timestamp = timestamp();
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	$sql="INSERT INTO $db[tbl_cantos]	SET  $updateFields ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_cantos($data=array()){
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
		$sql="UPDATE $db[tbl_cantos]
				SET  $updateFields
				WHERE id_canto='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}

// CIFRADOS
function select_cifrados($data=array()){
	global $db, $usuario;	
	$searchbox 	= ($data[searchbox])?$data[searchbox]:false;
	$id 		= ($data[id])?$data[id]:false;
	$filtro .= ($searchbox)?"AND (cant.canto LIKE '%$searchbox%'
								OR cant.alias LIKE '%$searchbox%'
								OR alb.album LIKE '%$searchbox%'
								OR esc.grado1 LIKE '%$searchbox%'
							)":'';
	$filtro .= ($id)?" AND cant.id_canto='$id'":'';
	$sql = "SELECT cif.id_cifrado, 
					cant.canto, 
					cant.alias, 
					alb.album, 
					esc.grado1 as escala, 
					(SELECT CAST(GROUP_CONCAT(DISTINCT nota_en SEPARATOR ',') AS CHAR(1000)) from $db[tbl_notas] WHERE FIND_IN_SET(id_nota,cif.acordes)) as acordes,
					alb.portada
			FROM $db[tbl_cifrados] cif 
			LEFT JOIN $db[tbl_cantos] cant ON cant.id_canto=cif.id_canto
			LEFT JOIN $db[tbl_albums] alb ON cant.id_album=alb.id_album
			LEFT JOIN $db[tbl_escalas] esc ON esc.id_escala=cif.id_escala
			WHERE 1 AND cif.activo = 1 $filtro;";
			// dump_var($sql);
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function select_cifrado_unico($data=array()){
	global $db, $usuario;	
	$id 	 = ($data[id])?$data[id]:false;
	$filtro .= ($id)?" AND cif.id_cifrado='$id'":'';
	$sql = "SELECT cif.*
			FROM $db[tbl_cifrados] cif 
			WHERE 1 AND cif.activo = 1 $filtro 
			GROUP BY cif.id_cifrado;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_cifrados($data=array()){
	global $db, $usuario;
	$timestamp = timestamp();
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$campos[] = "id_usuario = '$usuario[id_usuario]'";
	$campos[] = "timestamp 	= '$timestamp'";
	$updateFields = implode(',', $campos);
	$sql="INSERT INTO $db[tbl_cifrados]	SET  $updateFields ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_cifrados($data=array()){
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
		$sql="UPDATE $db[tbl_cifrados]
				SET  $updateFields
				WHERE id_cifrado='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}

/*O3M*/
?>