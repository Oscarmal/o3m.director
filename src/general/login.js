$(document).ready(function(){
	$("#txtUsuario").focus();
	scriptJs_Enter(); //Carga detección de ENTER
	reloj('txtReloj');
});

function btnSubmit(){
	var usuario = $('#txtUsuario').val();
	var clave = $('#txtClave').val();
	var msj = '';
	if(usuario == ''){
		ico = '<i class="fa fa-exclamation-triangle"></i> ';
		txt = ico+'Ingrese su Usuario, por favor...';
		msj = build_mensaje(txt);
		$("#mensajes").html(msj);
		$("#txtUsuario").focus();
		return false;
	}
	if(clave == ''){
		ico = '<i class="fa fa-exclamation-triangle"></i> ';
		txt = ico+'Ingrese su Clave, por favor...';
		msj = build_mensaje(txt);
		$("#mensajes").html(msj);
		$("#txtClave").focus();
		return false;
	}	
	login(usuario, clave);
}

function login(usuario, clave){	
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val();
	var raiz = raizPath();
	var ajax_url = raiz+"src/"+modulo+"/login.php";
	var objData = formData('#form_login');
	$.ajax({
		type: 'POST',
		url: ajax_url,
		dataType: "json",
		data: {      
			auth : 1,
			modulo : modulo,
			s : seccion,
			accion : 'login',
			usuario : usuario, 
			clave : clave
		}
		,beforeSend: function(){
			ico = '<i class="fa fa-cog fa-spin"></i> ';
		    msj = build_mensaje('Espere un momento por favor... ',3,ico+'Validando!');
		    $("#mensajes").html(msj);
		}
		,success: function(respuesta){ 
			setTimeout(function(){
				if(respuesta.success){
						ico = '<i class="fa fa-thumbs-up"></i> ';
						msj = build_mensaje('Entrando a sistema...','success',ico+'Éxito!');
						$("#mensajes").html(msj);
						$(location).attr('href', respuesta.url)	
				}else{
					ico = '<i class="fa fa-times-circle"></i> ';
					msj = build_mensaje('Sus credenciales no son válidas.','danger',ico+'Error!');
					$("#mensajes").html(msj);
				}
			}, 2000);
		}
		// ,complete: function(){    			
		//     $("#mensajes").empty();
		// }
    });
}


function modal_open(){
	
	// var modal = '<span id="modal_link" data-toggle="ajaxModal" onclick="http://localhost/iglesia/director/src/modal/modal.php?accion=modal">gdfgdfgdfgdfgdfgdf</span>';
	// $('#modal').html(modal);
	// $("#modal_link").click(function() {
	//   alert(modal);
	// });

	// var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	// var seccion = $("#sec").val();
	// var raiz = raizPath();
	// var ajax_url = raiz+"src/"+modulo+"/modal.php";
	// var objData = formData('#form_login');
	// $.ajax({
	// 	type: 'POST',
	// 	url: ajax_url,
	// 	dataType: "json",
	// 	data: {      
	// 		auth : 1,
	// 		modulo : modulo,
	// 		s : seccion,
	// 		accion : 'modal_ok',
	// 		objData : objData
	// 	},
	// 	beforeSend: function(){    
	// 		// txt = "Validando credenciales, por favor espere...";
	// 	    // msj = "<img src='"+raiz+"common/img/loader2.gif' width='40' height='30' valign='middle' align='center'>&nbsp";
	// 	    // popup('Autentificando',msj,0,0,3);  		    

	// 	    $(location).attr('href', ajax_url+'?accion=modal_wait')
	// 	},
	// 	success: function(respuesta){ 
	// 		// setTimeout(function(){	$(location).attr('href', respuesta.url)	}, 2000);
	// 	},
	// 	complete: function(){    			
	// 	    // $("#popups-alerts").empty();
	// 	}
 //    });
}