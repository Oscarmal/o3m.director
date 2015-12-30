<?php require_once('loadheader.php');
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
function modal($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> view()
			,VIEW_CERRAR 	=> view()
			,VIEW_SI 		=> view()
			,VIEW_NO 		=> view()
			,TXT_CERRAR 	=> $dic[modal][txt_cerrar]
			,TXT_SI 		=> $dic[modal][txt_si]
			,TXT_NO 		=> $dic[modal][txt_no]
			,CERRAR_LINK 	=> '#'
			,SI_LINK 		=> '#'
			,NO_LINK 		=> '#'
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_wait($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> view(0)
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_confirm($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> view()
			,VIEW_CERRAR 	=> view()
			,VIEW_SI 		=> view()
			,VIEW_NO 		=> view()
			,TXT_CERRAR 	=> $dic[modal][txt_cerrar]
			,TXT_SI 		=> $dic[modal][txt_si]
			,TXT_NO 		=> $dic[modal][txt_no]
			,CERRAR_LINK 	=> '#'
			,SI_LINK 		=> '#'
			,NO_LINK 		=> '#'
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_ok($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> 'TITULO DE MODAL'
			,VIEW_BOTONES 	=> view()
			,VIEW_CERRAR 	=> view()
			,VIEW_SI 		=> view(0)
			,VIEW_NO 		=> view(0)
			,TXT_CERRAR 	=> $dic[modal][txt_cerrar]
			,CERRAR_LINK 	=> '#'
			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function view($val=true){
	return (!$val)?'none':'';
}
/*O3M*/
?>