<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2015-11-30
* @author 		Oscar Maldonado
*/

// ESCALAS
function select_escalas($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (CONCAT(esc.grado1,' - ', esc.escala) LIKE '%$searchbox%')":'';
	$sql = "SELECT esc.id_escala, CONCAT(esc.grado1,' - ', esc.escala) as escala
			FROM $db[tbl_escalas] esc 
			WHERE 1 AND esc.activo = 1 $filtro
			GROUP BY esc.grado1 ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// NOTAS
function select_notas($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (CONCAT(nota.nota_en,' -> ', nota.nota_es) LIKE '%$searchbox%')":'';
	$sql = "SELECT nota.id_nota, CONCAT(nota.nota_en,' -> ', nota.nota_es) as nota
			FROM $db[tbl_notas] nota 
			WHERE 1 AND nota.activo = 1 $filtro
			GROUP BY nota.nota_en ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// COMPASES
function select_compases($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (comp.compas LIKE '%$searchbox%')":'';
	$sql = "SELECT comp.id_compas, comp.compas
			FROM $db[tbl_compases] comp 
			WHERE 1 AND nota.activo = 1 $filtro
			GROUP BY comp.compas ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// RITMOS
function select_ritmos($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (ritm.ritmo LIKE '%$searchbox%')":'';
	$sql = "SELECT ritm.id_rimo, ritm.ritmo
			FROM $db[tbl_ritmos] ritm 
			WHERE 1 AND ritm.activo = 1 $filtro
			GROUP BY ritm.ritmo ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

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
	$sql = "SELECT art.id_artista, CONCAT(art.artista,' - ',art.iglesia,' - ',art.ministerio,' - ',art.pais) as artista 
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
	$filtro .= ($searchbox)?"AND (CONCAT(IFNULL(cant.canto,''),' - ',IFNULL(cant.autor,'')) LIKE '%$searchbox%')":'';
	$sql = "SELECT cant.id_canto, CONCAT(IFNULL(cant.canto,''),' - ',IFNULL(cant.autor,'')) as canto
			FROM $db[tbl_cantos] cant 
			WHERE 1 AND cant.activo = 1 $filtro
			GROUP BY cant.canto, cant.autor ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

// CATEGORIAS
function select_categorias($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (categ.categoria LIKE '%$searchbox%')":'';
	$sql = "SELECT categ.id_categoria, categ.categoria
			FROM $db[tbl_categorias] categ 
			WHERE 1 AND categ.activo=1 $filtro
			GROUP BY categ.categoria ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_categorias($data=array()){
	global $db;
	$sql="INSERT INTO $db[tbl_categorias]
			SET categoria = '$data[categoria]' ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_categorias($data=array()){
	global $db;
	$sql="UPDATE $db[tbl_categorias]
			SET categoria = '$data[categoria]' 
			WHERE id_categoria='$data[id_categoria]'
			LIMIT 1;";
	$resultado = (SQLDo($sql))?true:false;
	return $resultado;
}
/*O3M*/
?>