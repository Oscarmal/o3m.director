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
	$filtro .= ($searchbox)?"AND (esc.categoria LIKE '%$searchbox%'
								OR esc.escala LIKE '%$searchbox%'
								OR esc.grado1 LIKE '%$searchbox%'
								OR esc.grado2 LIKE '%$searchbox%'
								OR esc.grado3 LIKE '%$searchbox%'
								OR esc.grado4 LIKE '%$searchbox%'
								OR esc.grado5 LIKE '%$searchbox%'
								OR esc.grado6 LIKE '%$searchbox%'
								OR esc.grado7 LIKE '%$searchbox%'
								OR esc.armadura LIKE '%$searchbox%'
							)":'';
	$sql = "SELECT esc.id_escala, CONCAT(esc.grado1,' - ', esc.escala) as combo
						,esc.escala
						,esc.categoria
						,esc.grado1
						,esc.grado2
						,esc.grado3
						,esc.grado4
						,esc.grado5
						,esc.grado6
						,esc.grado7
						,esc.armadura
			FROM $db[tbl_escalas] esc 
			WHERE 1 AND esc.activo = 1 $filtro
			GROUP BY esc.grado1 ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_escalas($data=array()){
	global $db;
	$sql="INSERT INTO $db[tbl_escalas]
			SET 
				escala 		= '$data[categoria]',
				categoria 	= '$data[escala]',
				grado1 		= '$data[grado1]',
				grado2 		= '$data[grado2]',
				grado3 		= '$data[grado3]',
				grado4 		= '$data[grado4]',
				grado5 		= '$data[grado5]',
				grado6 		= '$data[grado6]',
				grado7 		= '$data[grado7]',
				armadura 	= '$data[armadura]'
			;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_escalas($data=array()){
	global $db;	
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_escalas]
				SET  $updateFields
				WHERE id_escala='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}

// NOTAS
function select_notas($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (nota.nota_en LIKE '%$searchbox%'
								OR nota.nota_es LIKE '%$searchbox%'
								OR nota.alteracion LIKE '%$searchbox%') ":'';
	$sql = "SELECT nota.id_nota, CONCAT(
							 IF(nota.nota_en!='',CONCAT(nota.nota_en,' | '),'')
							,IF(nota.nota_es!='',CONCAT(nota.nota_es,' | '),'')
							,nota.alteracion
						) as nota, nota.nota_en, nota.nota_es
			FROM $db[tbl_notas] nota 
			WHERE 1 AND nota.activo = 1 $filtro
			GROUP BY nota.nota_en ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_notas($data=array()){
	global $db;
	$sql="INSERT INTO $db[tbl_notas]
		  	SET 
				nota_es 	= '$data[nota_es]',
				nota_en 	= '$data[nota_en]' ,
				alteracion 	= '$data[alteracion]' 
			;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_notas($data=array()){
	global $db;	
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_notas]
				SET  $updateFields
				WHERE id_nota='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}

// COMPASES
function select_compases($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (comp.compas LIKE '%$searchbox%')":'';
	$sql = "SELECT comp.id_compas, comp.compas
			FROM $db[tbl_compases] comp 
			WHERE 1 AND comp.activo = 1 $filtro
			GROUP BY comp.compas ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_compases($data=array()){
	global $db;
	$sql="INSERT INTO $db[tbl_compases]
			SET compas = '$data[compas]' ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_compases($data=array()){
	global $db;	
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_compases]
				SET  $updateFields
				WHERE id_compas='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}

//---- RITMOS
function select_ritmos($searchbox=false){
	global $db, $usuario;	
	$filtro .= ($searchbox)?"AND (ritm.ritmo LIKE '%$searchbox%')":'';
	$sql = "SELECT ritm.id_ritmo, ritm.ritmo
			FROM $db[tbl_ritmos] ritm 
			WHERE 1 AND ritm.activo = 1 $filtro
			GROUP BY ritm.ritmo ;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_ritmos($data=array()){
	global $db;
	$sql="INSERT INTO $db[tbl_ritmos]
			SET ritmo = '$data[ritmo]' ;";
	$id = (SQLDo($sql))?true:false;
	$resultado = ($id)?$id:false;
	return $resultado;
}

function update_ritmos($data=array()){
	global $db;	
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_ritmos]
				SET  $updateFields
				WHERE id_ritmo='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
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
	$id = ($data[id])?$data[id]:false;
	unset($data[id]);
	foreach($data as $campo => $valor){
		$campos[] = $campo."='".$valor."'";
	}
	$updateFields = implode(',', $campos);
	if($id && $updateFields){
		$sql="UPDATE $db[tbl_categorias]
				SET  $updateFields
				WHERE id_categoria='$id'
				LIMIT 1;";
		$resultado = (SQLDo($sql))?true:false;
		return $resultado;
	}else{return false;}
}
/*O3M*/
?>