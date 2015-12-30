<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'dao.perfiles.php');
require_once($Path[src].'captura/build.contenido.captura.php');
//**FUNCIONES GENERALES******************************************************************
function build_grid_paginado($arrayData=array(), $arrayHeaders=array()){
// Construye un listado paginado con el arreglo recibido
	$tableData = (is_array($arrayData[0])) ? $arrayData : array($arrayData);
	if(!$arrayHeaders && $tableData[0]){
		$tblHeaders = array_keys($tableData[0]);
		foreach ($tblHeaders as $titulo) {
			$arrayHeaders[] = ucfirst(str_replace('_',' ',$titulo));
		}
	}
	$tbl = new Paginador;
	return $tbl->paginar($tableData,$arrayHeaders);
}
function drop_down_select($params = array()){
	$data   	= (isset($params['data']))?$params['data']:'';
	$name   	= (isset($params['name']))?$params['name']:'';
	$event   	= (isset($params['event']))?$params['event']:'';
	$selected   = (isset($params['selected']))?$params['selected']:'';
	$value      = (isset($params['value']))?$params['value']:false;
	$text   	= (isset($params['text']))?$params['text']:'';
	$class      = (isset($params['class']))?$params['class']:'';
	$disabled   = (isset($params['disabled']))?$params['disabled']:'';
	$requerido  = (isset($params['requerido']))?$params['requerido']:'';
	$multiple   = (isset($params['multiple']))?$params['multiple']:'';
	$title   	= (isset($params['title']))?$params['title']:'';
	$width 		= (isset($params['width']))?'style="width:'.$params['width'].'px;"':'';

    $leyenda    = (array_key_exists('leyenda' ,$params))?$params['leyenda']: '-----';
    if(is_array($data)){
    	foreach ($data as $key => $values) {
    		$option_selected='';
    		if($selected){
    			if($values[$value]==$selected){
    				$option_selected='selected';	
    			}	
    		}
    		$select.='<option value="'.$values[$value].'"'.$option_selected.'>'.utf8_encode($values[$text]).'</option>';	
	    }
	    $opc='<select name="'.$name.'" id="'.$name.'" '.$multiple.' class="chosen-select '.$class.' '.$requerido.'" onchange="'.$event.'" data-campo="'.$name.'" title="'.$title.'" '.$width.'>
	            <option value="0">'.$leyenda.'</option>
	            '.$select.'
	          </select>';
    }else{
    	$opc='<select name="'.$name.'" id="'.$name.'" class="chosen-select '.$class.'" onchange="'.$event.'">
	            <option value="0">Sin contenido</option>
	          </select>';
    }
    return $opc;
}
function strtoupper_sting($string){
	$strtoupper = strtoupper($string);
	return $strtoupper;
}
function convertir_fecha_for_mysql($string){
	$date  = explode('/',$string);
	/*dump_var($date);*/
	return $date[2].'-'.$date[1].'-'.$date[0];

}
function convertir_fecha_for_vista($string){
	$date  = explode('-',$string);
	//dump_var($string);
	return $date[2].'/'.$date[1].'/'.$date[0];

}
#Iconos 
function ico_detalle($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico detalle" title="'.$dic[ico][detalle].'" onclick="'.$onclick.'" ><i class="fa fa-search-plus"></i></span>';
}
function ico_eliminar($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico eliminar" title="'.$dic[ico][baja].'" onclick="'.$onclick.'" ><i class="fa fa-times"></i></span>';
}
function ico_reactivar($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico reactivar" title="'.$dic[ico][reactivar].'" onclick="'.$onclick.'" ><i class="fa fa-check"></i></span>';
}
function ico_editar($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico editar" title="'.$dic[ico][editar].'" onclick="'.$onclick.'" ><i class="fa fa-pencil-square-o"></i></span>';
}
function ico_imprimir($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico imprimir" title="'.$dic[ico][imprimir].'" onclick="'.$onclick.'" ><i class="fa fa-print"></i></span>';
}
function ico_visita($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico visita" title="'.$dic[ico][visita].'" onclick="'.$onclick.'" ><i class="fa fa-male"></i></span>';
}
function ico_llamada($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico llamada" title="'.$dic[ico][llamada].'" onclick="'.$onclick.'" ><i class="fa fa-phone"></i></span>';
}
function ico_propuesta($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico propuesta" title="'.$dic[ico][propuesta].'" onclick="'.$onclick.'" ><i class="fa fa-line-chart"></i></span>';
}
function ico_cierre($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico cierre" title="'.$dic[ico][cierre].'" onclick="'.$onclick.'" ><i class="fa fa-thumbs-o-up"></i></span>';
}
function ico_contactos($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico contactos" title="'.$dic[ico][contactos].'" onclick="'.$onclick.'" ><i class="fa fa-users"></i></span>';
}
function ico_empresas($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico empresas" title="'.$dic[ico][empresas].'" onclick="'.$onclick.'" ><i class="fa fa-hospital-o"></i></span>';
}
function ico_ejecutivos($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico ejecutivos" title="'.$dic[ico][ejecutivos].'" onclick="'.$onclick.'" ><i class="fa fa-user-secret"></i></span>';
}
function ico_asignar_contacto($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico asignar" title="'.$dic[ico][asignar].'" onclick="'.$onclick.'" ><i class="fa fa-user-plus"></i></span>';
}
function ico_deasignar_contacto($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico deasignar" title="'.$dic[ico][deasignar].'" onclick="'.$onclick.'" ><i class="fa fa-user-times"></i></span>';
}
function ico_borrar($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico borrar" title="'.$dic[ico][baja].'" onclick="'.$onclick.'" ><i class="fa fa-trash-o"></i></span>';
}

function toggle_button($params=array()){
	$id 	= ($params['id'])?$params['id']:false;
	$class 	= ($params['class'])?$params['class']:false;
	$h 		= ($params['h'])?$params['h']:22;
	$w 		= ($params['w'])?$params['w']:70;
	$style 	= ($params['style'])?$params['style']:false;
	$btn 	= '<input type="checkbox" id="'.$id.'" name="'.$id.'" checked data-campo="'.$id.'" disabled="disabled" style="display:none;" >';
	$btn 	.= '<div id="'.$id.'_toggle" class="toggle toggle-light '.$class.'" style="height: '.$h.'px; width: '.$w.'px; '.$style.'"></div>';
	return $btn;
}

function create_list($dataArray=false, $class=false){
	$dataHTML = (is_array($dataArray))?$dataArray:explode(',',$dataArray);
	$listHTML = '<ul class="'.$class.'">';
	foreach ($dataHTML as $elemento) {
		$listHTML .= '<li>'.$elemento.'</li>';
	}
	$listHTML .= '</ul>';
	return $listHTML;
}
/*FIN GENERALES*/
?>