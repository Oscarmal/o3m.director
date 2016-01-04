<?php require_once('loadheader.php');
// Validación de controlador
o3mcontrolador($in[accion],$in);
// Declaración de Controladores
// function modal($in){
// 	global $dic;
// 	$htmlData 	= array(			
// 			 MODAL_ID 		=> 'modal-form'
// 			,MODAL_TITULO 	=> 'TITULO DE MODAL'
// 			,VIEW_BOTONES 	=> view(true)
// 			,VIEW_CERRAR 	=> view(true)
// 			,VIEW_SI 		=> view(true)
// 			,VIEW_NO 		=> view(true)
// 			,TXT_CERRAR 	=> $dic[modal][txt_cerrar]
// 			,TXT_SI 		=> $dic[modal][txt_si]
// 			,TXT_NO 		=> $dic[modal][txt_no]
// 			,CERRAR_LINK 	=> '#'
// 			,SI_LINK 		=> '#'
// 			,NO_LINK 		=> '#'
// 			,MODAL_CONTENIDO => 'CONTENIDO DEL MODAL'
// 		);
// 	return contenidoHtml('system/modal.html', $htmlData);
// }

function modal($in){
	global $dic;
	$link_cerrar 	= (!$in[link_cerrar])?false:$in[link_cerrar];
	$link_si 		= (!$in[link_si])?'#':$in[link_si];
	$link_no 		= (!$in[link_no])?'#':$in[link_no];
	$txt_cerrar 	= (!$in[txt_cerrar])?$dic[modal][txt_cerrar]:$in[txt_cerrar];
	$txt_si 		= (!$in[txt_si])?$dic[modal][txt_si]:$in[txt_si];
	$txt_no 		= (!$in[txt_no])?$dic[modal][txt_no]:$in[txt_no];
	$act_cerrar		= ($link_cerrar)?true:false;
	$act_si 		= ($link_si!='#')?true:false;
	$act_no 		= ($link_no!='#')?true:false;
	$act_all 		= (!$in[botones])?false:true;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> $in[titulo]
			,VIEW_BOTONES 	=> view($act_all)
			,VIEW_CERRAR 	=> view($act_cerrar)
			,VIEW_SI 		=> view($act_si)
			,VIEW_NO 		=> view($act_no)
			,TXT_CERRAR 	=> $txt_cerrar
			,TXT_SI 		=> $txt_si
			,TXT_NO 		=> $txt_no
			,CERRAR_LINK 	=> $link_cerrar
			,SI_LINK 		=> $link_si
			,NO_LINK 		=> $link_no
			,MODAL_CONTENIDO => $in[contenido]
		);
	// dump_var($htmlData);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_wait($in){
	global $dic;
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> $in[titulo]
			,VIEW_BOTONES 	=> view(false)
			,MODAL_CONTENIDO => $in[contenido]
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_confirm($in){
	global $dic;
	$link_cerrar 	= (!$in[link_cerrar])?'#':$in[link_cerrar];
	$link_si 		= (!$in[link_si])?'#':$in[link_si];
	$link_no 		= (!$in[link_no])?'#':$in[link_no];
	$txt_cerrar 	= (!$in[txt_cerrar])?$dic[modal][txt_cerrar]:$in[txt_cerrar];
	$txt_si 		= (!$in[txt_si])?$dic[modal][txt_si]:$in[txt_si];
	$txt_no 		= (!$in[txt_no])?$dic[modal][txt_no]:$in[txt_no];
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> $in[titulo]
			,VIEW_BOTONES 	=> view(true)
			,VIEW_CERRAR 	=> view(true)
			,VIEW_SI 		=> view(true)
			,VIEW_NO 		=> view(true)
			,TXT_CERRAR 	=> $txt_cerrar
			,TXT_SI 		=> $txt_si
			,TXT_NO 		=> $txt_no
			,CERRAR_LINK 	=> $link_cerrar
			,SI_LINK 		=> $link_si
			,NO_LINK 		=> $link_no
			,MODAL_CONTENIDO => $in[contenido]
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function modal_ok($in){
	global $dic;
	$link_cerrar 	= (!$in[link_cerrar])?'#':$in[link_cerrar];
	$txt_cerrar 	= (!$in[txt_cerrar])?$dic[modal][txt_cerrar]:$in[txt_cerrar];
	$htmlData 	= array(			
			 MODAL_ID 		=> 'modal-form'
			,MODAL_TITULO 	=> $in[titulo]
			,VIEW_BOTONES 	=> view(true)
			,VIEW_CERRAR 	=> view(true)
			,VIEW_SI 		=> view(false)
			,VIEW_NO 		=> view(false)
			,TXT_CERRAR 	=> $txt_cerrar
			,CERRAR_LINK 	=> $link_cerrar
			,MODAL_CONTENIDO => $in[contenido]
		);
	return contenidoHtml('system/modal.html', $htmlData);
}

function view($val=false){
	return (!$val)?'none':'';
}
/*O3M*/
?>