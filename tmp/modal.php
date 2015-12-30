<?php require_once('loadheader.php');
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
function modal($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> view()
			,VIEW_CANCELAR 	=> view()
			,VIEW_SI 		=> view()
			,VIEW_NO 		=> view()
			,TXT_CANCELAR 	=> $dic[modal][txt_cancelar]
			,TXT_SI 		=> $dic[modal][txt_si]
			,TXT_NO 		=> $dic[modal][txt_no]
			,CANCELAR_LINK 	=> '#'
			,SI_LINK 		=> '#'
			,NO_LINK 		=> '#'
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	$modalHTML 	= contenidoHtml('system/modal.html', $htmlData);
	$data = array(success => true, html => $modalHTML);
	// dump_var($data);
	return json_encode($data);
}

function view($val=true){
	return (!$val)?'none':'block';
}
/*O3M*/
?>