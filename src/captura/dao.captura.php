<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2015-11-30
* @author 		Oscar Maldonado
*/
function select_listado_empresas($searchbox=false){
	global $db, $usuario;
	$id_ejecutivos 	= select_id_ejecutivos();
	$filtro 	 	= ($id_ejecutivos)?" AND (FIND_IN_SET(asign.id_personal,'$id_ejecutivos') OR asign.id_personal IS NULL)":'';
	$filtro 	.= ($searchbox)?"AND (clie.id_cliente LIKE '%$searchbox%' 
					or clie.nombre_comercial LIKE '%$searchbox%' 
				   	or clie.razon_social LIKE '%$searchbox%'
				   	or clie.rfc LIKE '%$searchbox%'
				   	or pais.clave LIKE '%$searchbox%'
				   	or sect.sector LIKE '%$searchbox%'
				   	or zona.zona LIKE '%$searchbox%'
				   	or clie.estatus LIKE '%$searchbox%'
				)":'';
	$sql = "SELECT 
				 clie.id_cliente
				,clie.nombre_comercial
				,clie.razon_social
				,clie.rfc
				,pais.clave as pais
				,sect.sector
				,zona.zona
				,clie.estatus
			FROM $db[tbl_clientes] clie 
			LEFT JOIN $db[tbl_paises] pais on clie.id_pais=pais.id_pais
			LEFT JOIN $db[tbl_entidades] ent on clie.id_pais=ent.id_pais and clie.id_entidad=ent.id_entidad
			LEFT JOIN $db[tbl_municipios] mun on clie.id_pais=mun.id_pais and clie.id_entidad=mun.id_entidad and clie.id_municipio=mun.id_municipio
			LEFT JOIN $db[tbl_sectores] sect on clie.id_sector=sect.id_sector
			LEFT JOIN $db[tbl_zonas] zona on clie.id_zona=zona.id_zona
			LEFT JOIN $db[tbl_clientes_asignados] asign on clie.id_cliente=asign.id_cliente 
			WHERE 1 AND clie.activo = 1 $filtro 
			GROUP BY clie.id_cliente;";
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

function insert_prospectos($data=array()){
	$timestamp = timestamp();
	global $db;
	$sql="INSERT INTO
			$db[tbl_clientes]
			SET 
				nombre_comercial = '$data[nombre_comercial]',
				razon_social 	 = '$data[razon_social]',
				rfc 		 	 = '$data[rfc]',
				id_pais 		 =  $data[lts_pais],
				id_entidad 		 =  $data[lts_entidades],
				id_municipio     =  $data[lst_municipios],
				direccion		 = '$data[direccion]',
				colonia		 	 = '$data[colonia]',
				telefono 		 = '$data[telefono]',
				id_sector 		 =  $data[lts_sectores],
				id_zona 		 =  $data[lts_zonas],
				tamanio 		 = '$data[tamanio]',
				sitioweb 		 = '$data[sitioweb]',
				timestamp 		 = '$timestamp';";
	//	dump_var($sql);
	$resultado = (SQLDo($sql))?true:false;
	return $resultado;
}
function update_prospectos($data=array()){
	global $db;
	$sql="UPDATE 
				$db[tbl_clientes]
			SET 
				nombre_comercial = '$data[nombre_comercial]',
				razon_social 	 = '$data[razon_social]',
				rfc 		 	 = '$data[rfc]',
				id_pais 		 = '$data[lts_pais]',
				id_entidad 		 = '$data[lts_entidades]',
				id_municipio     = '$data[lst_municipios]',
				direccion		 = '$data[direccion]',
				colonia		 	 = '$data[colonia]',
				telefono 		 = '$data[telefono]',
				id_sector 		 = '$data[lts_sectores]',
				id_zona 		 = '$data[lts_zonas]',
				tamanio 		 = '$data[tamanio]',
				sitioweb 		 = '$data[sitioweb]'
			WHERE
				id_cliente  	= '$data[id_cliente]';";
	$resultado = (SQLDo($sql))?true:false;
	return $resultado;
}
/*O3M*/
?>