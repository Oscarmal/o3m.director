<?php session_name('o3m_fw_director'); session_start(); if(isset($_SESSION['header_path'])){include_once($_SESSION['header_path']);}else{header('location: '.dirname(__FILE__));}
// Define modulo del sistema
define(MODULO, $in[modulo]);
// Archivo DAO
require_once($Path[src].MODULO.'/dao.empresas.php');
require_once($Path[src].'catalogos/dao.entidades.php');
require_once($Path[src].'catalogos/dao.municipios.php');
require_once($Path[src].'build.contenido.php');
require_once($Path[src].'views.vars.'.MODULO.'.php');
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
function detalle($in){
	global $dic;
	$data = array(success => true, message => 'llega');
	return json_encode($data);
}

function select_entidad($in){
	global $dic;
	$data_slq = array('condicion' => $in[id_pais]);
	$data_enditades = select_listado_entidades($data_slq);
	$data = array(
				'data' 		=> $data_enditades,
				'name' 		=> 'lts_entidades',
				'value' 	=> 'id_entidad',
				'text'  	=> 'entidad',
				'event' 	=> 'select_municipio(this.value)',
				'requerido' => 'requerido',
				'class' => 'dropdown-select',
				'title' => $dic[tooltips][entidad]

			);
	$lst_entidades = drop_down_select($data);
	//dump_var($lst_entidades);
	return json_encode($lst_entidades);
}

function select_municipio($in){
	global $dic;
	$data_slq = array('condicion'  => true,
					  'id_pais'    => $in[id_pais],
					  'id_entidad' => $in[id_entidad]);
	$data_municipio = select_listado_municipio($data_slq);
	$data = array(
				'data' => $data_municipio,
				'name' => 'lst_municipios',
				'value' => 'id_municipio',
				'text'  => 'municipio',
				'requerido'  => 'requerido',
				'class' => 'dropdown-select',
				'title' => $dic[tooltips][municipio]

			);
	$lst_municipios = drop_down_select($data);
	return json_encode($lst_municipios);
}

function insert($in){
	global $dic;
	$objData = $in[objData];
	if($objData[incomplete]<=0){
		$sql=array(
				'nombre_comercial' 	=> $objData['nombre_comercial'],
				'rfc' 				=> $objData['rfc'],
				'razon_social'		=> $objData['razon_social'],
				'lts_pais'		 	=> $objData['lts_pais'],
				'lts_entidades'		=> $objData['lts_entidades'],
				'lst_municipios'	=> $objData['lst_municipios'],
				'direccion'		 	=> $objData['direccion'],
				'colonia' 			=> $objData['colonia'],
				'telefono'		 	=> $objData['telefono'],
				'lts_sectores'		=> $objData['lts_sectores'],
				'lts_zonas'		    => $objData['lts_zonas'],
				'tamanio'		 	=> $objData['lst_tamanio'],
				'sitioweb'		 	=> $objData['sitioweb'],
				'contacto_paga'		=> $objData['contacto_paga']
			);
		$insert = insert_prospectos($sql);
		if($insert){
				$array_respuesta = array(
										'success' => true,
										'msg' 	  => $dic[msj][exito_insert],
										'id' 	  => $insert
									);
		}else{
			$array_respuesta = array(
										'success' => false,
										'msg' 	  => $dic[msj][error_sql]
									);
		}	
	}else{
		$array_respuesta = array(
									'success' => false,
									'msg' 	  => $dic[msj][requeridos]
								);
	}
	return json_encode($array_respuesta);
}

function update($in){
	global $dic;
	$objData = $in[objData];
	if($objData[incomplete]<=0){
		$sql=array(
				'id_cliente' 		=> $objData['id_cliente'],
				'nombre_comercial' 	=> $objData['nombre_comercial'],
				'rfc' 				=> $objData['rfc'],
				'razon_social'		=> $objData['razon_social'],
				'lts_pais'		 	=> $objData['lts_pais'],
				'lts_entidades'		=> $objData['lts_entidades'],
				'lst_municipios'	=> $objData['lst_municipios'],
				'direccion'		 	=> $objData['direccion'],
				'colonia' 			=> $objData['colonia'],
				'telefono'		 	=> $objData['telefono'],
				'lts_sectores'		=> $objData['lts_sectores'],
				'lts_zonas'		    => $objData['lts_zonas'],
				'tamanio'		 	=> $objData['lst_tamanio'],
				'sitioweb'		 	=> $objData['sitioweb'],
				'contacto_paga'		=> $objData['contacto_paga']
			);
		$insert = update_prospectos($sql);
		if($insert){
				$array_respuesta = array(
										'success' => true,
										'msg' 	  => $dic[msj][exito_insert],
										'id' 	  => $insert
									);
		}else{
			$array_respuesta = array(
										'success' => false,
										'msg' 	  => $dic[msj][error_sql]
									);
		}	
	}else{
		$array_respuesta = array(
									'success' => false,
									'msg' 	  => $dic[msj][requeridos]
								);
	}
	return json_encode($array_respuesta);
}

function estatus_baja($in){
	global $dic;
	$success = update_estatus_baja(array(id_cliente => $in[id]));
	$data = array(success => $success, message => 'Status BAJA to: '.$in[id]);
	return json_encode($data);
}

function estatus_prospecto($in){
	global $dic;
	$success = update_estatus_prospecto(array(id_cliente => $in[id]));
	$data = array(success => $success, message => 'Status PROSPECTO to: '.$in[id]);
	return json_encode($data);
}

function estatus_cliente($in){
	global $dic;
	$success = update_estatus_cliente(array(id_cliente => $in[id]));
	$data = array(success => $success, message => 'Status CLIENTE to: '.$in[id]);
	return json_encode($data);
}

function estatus_suspendido($in){
	global $dic;
	$success = update_estatus_suspendido(array(id_cliente => $in[id]));
	$data = array(success => $success, message => 'Status SUSPENDIDO to: '.$in[id]);
	return json_encode($data);
}

function asignar_contacto($in){
	global $dic;
	$success = update_cliente_contacto(array(id_contacto => $in[id_contacto], id_cliente => $in[id_cliente], asignar => $in[asignar]));
	$data = array(success => $success, message => 'Status ASIGNAR CONTACTO to: '.$in[id]);
	return  json_encode($data);
}

function borrar_cliente($in){
	global $dic;
	$success = update_cliente_activo(array(id_cliente => $in[id]));
	$data = array(success => $success, message => 'La empresa con ID: '.$in[id].' ha sido eliminada del sistema.');
	return json_encode($data);
}

/*O3M*/
?>