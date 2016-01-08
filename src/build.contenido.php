<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'dao.perfiles.php');
require_once($Path[src].'catalogos/dao.catalogos.php');
require_once($Path[src].'catalogos/build.contenido.catalogos.php');
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
	$data   	= ($params['data'])?$params['data']:'';
	$name   	= ($params['name'])?$params['name']:'';
	$event   	= ($params['event'])?$params['event']:'';
	$selected   = ($params['selected'])?$params['selected']:'';
	$value      = ($params['value'])?$params['value']:false;
	$text   	= ($params['text'])?$params['text']:'';
	$class      = ($params['class'])?$params['class']:'';
	$disabled   = ($params['disabled'])?$params['disabled']:'';
	$requerido  = ($params['requerido'])?'data-required="true"':'';
	$multiple   = ($params['multiple'])?$params['multiple']:'';
	$title   	= ($params['title'])?$params['title']:'';
	$width 		= ($params['width'])?'style="width:'.$params['width'].'px;"':'';

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
	    $opc='<select name="'.$name.'" id="'.$name.'" '.$multiple.' class="chosen-select '.$class.'" onchange="'.$event.'" data-campo="'.$name.'" '.$requerido.' title="'.$title.'" '.$width.'>
	            <option value="">'.$leyenda.'</option>
	            '.$select.'
	          </select>';
    }else{
    	$opc='<select name="'.$name.'" id="'.$name.'" class="chosen-select '.$class.'" onchange="'.$event.'">
	            <option value="">Sin contenido</option>
	          </select>';
    }
    // dump_var($opc);
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
	return '<span id="ico-eliminar_'.$id.'" class="ico eliminar" title="'.$dic[ico][baja].'" onclick="'.$onclick.'" ><i class="fa fa-times"></i></span>';
}
function ico_reactivar($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico reactivar" title="'.$dic[ico][reactivar].'" onclick="'.$onclick.'" ><i class="fa fa-check"></i></span>';
}
function ico_editar($id=false,$onclick=false,$idData=false){
	global $dic;
	return '<span id="'.$id.'" data-pk="'.$idData.'" class="ico editar" title="'.$dic[ico][editar].'" onclick="'.$onclick.'" ><i class="fa fa-pencil-square-o"></i></span>';
}
function ico_imprimir($id=false,$onclick=false){
	global $dic;
	return '<span id="'.$id.'" class="ico imprimir" title="'.$dic[ico][imprimir].'" onclick="'.$onclick.'" ><i class="fa fa-print"></i></span>';
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
function dropdown_escalas($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_escalas';
	$value = ($data[value])?$data[value]:'id_escala';
	$text = ($data[text])?$data[text]:'escala';
	$lst_data = select_escalas();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> $value,
				'text'  	=> $text,
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_escalas]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_notas($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_notas';
	$value = ($data[value])?$data[value]:'id_nota';
	$text = ($data[text])?$data[text]:'nota';
	$lst_data = select_notas();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> $value,
				'text'  	=> $text,
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_notas]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_compases($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_compases';
	$lst_data = select_compases();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_compas',
				'text'  	=> 'compas',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_compases]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_ritmos($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_ritmos';
	$lst_data = select_ritmos();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_ritmo',
				'text'  	=> 'ritmo',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_ritmo]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_albums($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_albums';
	$lst_data = select_albums();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_album',
				'text'  	=> 'album',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_albums]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_artistas($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_artistas';
	$lst_data = select_artistas();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_artista',
				'text'  	=> 'artista',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_artistas]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_cantos($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_cantos';
	$lst_data = select_cantos();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_canto',
				'text'  	=> 'cantos',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_cantos]
			);
	return drop_down_select($dataDropdown);
}

function dropdown_categorias($data=array()){
	global $dic;
	$requerido = ($data[requerido])?true:false;
	$name = ($data[name])?$data[name]:'lts_categorias';
	$lst_data = select_categorias();
	$dataDropdown = array(
				'data' 		=> $lst_data,
				'name' 		=> $name,
				'value' 	=> 'id_categoria',
				'text'  	=> 'categorias',
				'requerido' => $requerido,
				'class' 	=> '',
				'width' 	=> '200',
				'selected' 	=> $data[id_selected],
				'title' 	=> $dic[tooltips][lst_categorias]
			);
	return drop_down_select($dataDropdown);
}
?>