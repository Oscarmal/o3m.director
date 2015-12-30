<?php #session_name('o3m_fw_director'); session_start(); include_once($_SESSION['header_path']);
require_once('../../common/php/inc.header.php');
// Define modulo del sistema
// define(MODULO, $in[modulo]);
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
function modal($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> 'block'
			,VIEW_CANCELAR 	=> 'block'
			,VIEW_SI 		=> 'block'
			,VIEW_NO 		=> 'block'
			,TXT_CANCELAR 	=> $dic[modal][txt_cancelar]
			,TXT_SI 		=> $dic[modal][txt_si]
			,TXT_NO 		=> $dic[modal][txt_no]
			,CANCELAR_LINK 	=> '#'
			,SI_LINK 		=> '#'
			,NO_LINK 		=> '#'
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	$modalHTML 	= contenidoHtml('system/modal.html', $htmlData);
	// $data = array(success => true, html => $modalHTML);
	// dump_var($data);
	// return json_encode($data);
	return $modalHTML;
}
/*O3M*/
?>