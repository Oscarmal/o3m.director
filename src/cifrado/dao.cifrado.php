<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/**
* 				Funciones "DAO"
* Descripcion:	Ejecuta consultas SQL y devuelve el resultado.
* Creación:		2015-11-30
* @author 		Oscar Maldonado
*/
// ALBUMS

// CIFRADOS
function select_ver_cifrado($id=false){
	global $db, $usuario;	
	$filtro .= ($id)?" AND cif.id_cifrado='$id'":'';
	$sql = "SELECT cif.id_cifrado, 
					cant.canto, 
					cant.anio as canto_anio, 
					cant.alias, 
					cant.interprete, 
					cant.autor, 
					cant.num_pista,
					alb.album, 
					alb.subtitulo,
					alb.pistas,
					alb.discos,
					alb.anio, 
					alb.portada,
					art.artista,
					art.iglesia,
					art.ministerio,
					art.pais,
					(SELECT CAST(GROUP_CONCAT(DISTINCT categoria SEPARATOR ',') AS CHAR(1000)) from $db[tbl_categorias] WHERE FIND_IN_SET(id_categoria,cant.id_categorias)) as categorias,
					esc.grado1 as escala, 
					var.grado1 as variacion, 
					(SELECT CAST(GROUP_CONCAT(DISTINCT nota_en SEPARATOR ',') AS CHAR(1000)) from $db[tbl_notas] WHERE FIND_IN_SET(id_nota,cif.acordes)) as acordes,
					rit.ritmo,
					cif.tempo,
					comp.compas,
					cif.cifrado,
					cif.piano,
					cif.trompeta,
					cif.sax,
					cif.comentarios
			FROM $db[tbl_cifrados] cif 
			LEFT JOIN $db[tbl_cantos] cant ON cant.id_canto=cif.id_canto
			LEFT JOIN $db[tbl_albums] alb ON cant.id_album=alb.id_album
			LEFT JOIN $db[tbl_artistas] art ON alb.id_artista=art.id_artista
			LEFT JOIN $db[tbl_escalas] esc ON esc.id_escala=cif.id_escala
			LEFT JOIN $db[tbl_escalas] var ON var.id_escala=cif.id_variacion
			LEFT JOIN $db[tbl_ritmos] rit ON rit.id_ritmo=cif.id_ritmo
			LEFT JOIN $db[tbl_compases] comp ON comp.id_compas=cif.id_compas
			WHERE 1 AND cif.activo = 1 $filtro;";
			// dump_var($sql);
	$resultado = SQLQuery($sql,1);
	$resultado = ($resultado) ? $resultado : false ;
	return $resultado;
}

/*O3M*/
?>