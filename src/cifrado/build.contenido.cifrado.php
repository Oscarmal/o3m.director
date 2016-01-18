<?php session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
/* 
* Crea el contenido HTLM y envia los datos a AJAX
* 
*/
require_once($Path[src].'cifrado/dao.cifrado.php');
function tooltips_cifrado(){
	global $dic;
	$tooltips = array(
		 tooltip_click 		=> $dic[tooltips][captura_click]
		);
	return $tooltips;
}

function txt_labels_cifrado(){
	global $dic;
	$labels = array(
		 txt_sin_formato	=> $dic[cifrado][txt_sin_formato]
		,txt_con_formato	=> $dic[cifrado][txt_con_formato]		

		,txt_guardar 		=> $dic[comun][guardar]
		,txt_agregar 		=> $dic[comun][agregar]
		,txt_cancelar 		=> $dic[comun][cancelar]
		,txt_actualizar		=> $dic[comun][actualizar]
		,txt_regresar		=> $dic[comun][regresar]
		);
	return $labels;
}

function textos_cifrado(){
	$labels 	= txt_labels_cifrado();
	$tooltips	= tooltips_cifrado();
	$textos = array_merge($labels, $tooltips);
	return $textos;
}

function build_acordes(){
	$chord = new guitarTabs();
	$letra = '[Am]///A su Majestad, [(Am-G)]
				[F]Bienvenido Rey, [(F/F#)]
					Inicio [E7]uno dos tres cuatro cinco seis [F]siete ocho nueve diez once [F#]doce
				[G]A su Majestad, daré la [E]honra y el ho[Am]nor/// ';
	$chord->titulo='A su Majestad';
	$chord->autor='Pastor Luis Villavicencio';
	$chord->canta='Palabra Miel Washington, USA';
	$chord->album='A su Majestad';
	$chord->anio='2012';
	$chord->escala='Am';
	$chord->compas='4/4';
	$chord->ritmo='Rápido';
	$chord->tempo='165 beats';
	$chord->categoria='Alabanza, Majestad';
	$chord->cancion($letra);
	$cifrado = '<div style="margin-left:auto; margin-right:auto; width:70%;">'.$chord->html(1).$chord->txt().'</div>';
	return $cifrado;
}

function build_cifrado($id=false){
	if($id){
		$data = select_ver_cifrado($id);
		// dump_var($data);
			if($data){
			$chord = new guitarTabs();
			$letra 				= utf8_encode($data[0][cifrado]);
			$chord->titulo 		= utf8_encode($data[0][canto]);
			$chord->autor 		= utf8_encode($data[0][autor]);
			$chord->canta 		= utf8_encode($data[0][interprete]);
			$chord->album 		= utf8_encode($data[0][album]);
			$chord->anio 		= utf8_encode($data[0][anio]);
			$chord->escala 		= utf8_encode($data[0][escala]);
			$chord->compas 		= utf8_encode($data[0][compas]);
			$chord->ritmo 		= utf8_encode($data[0][ritmo]);
			$chord->tempo 		= utf8_encode($data[0][tempo]);
			$chord->categoria 	= utf8_encode($data[0][categorias]);
			$chord->cancion($letra);
			$cifrado[web] = '<div style="margin-left:auto; margin-right:auto; width:70%;">'.$chord->html(1).'</div>';
			$cifrado[txt] = '<div style="margin-left:auto; margin-right:auto; width:70%;">'.$chord->txt().'</div>';
			return $cifrado;
		}else{return false;}
	}else{return false;}
}

// CIFRADO
function build_view_cifrado(){
// Construye formulario
	global $ins, $in;
	$cifrado = build_cifrado($ins[id]);	
	$data = array(
					 WEB 	=> $cifrado[web]
					,TXT 	=> $cifrado[txt]
				);
	$html = array_merge(textos_cifrado(), $data);
	return $html;
}

?>