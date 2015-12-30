$(document).ready(function(){
	$("#txtUsuario").focus();
	scriptJs_Enter(); //Carga detección de ENTER
});

function btnSubmit(){
	var usuario = $('#txtUsuario').val();
	var clave = $('#txtClave').val();
	var msj = '';
	if(usuario == ''){
		msj = 'Ingrese su Usuario, por favor...';
		// popup('Usuario',msj,0,0,1,'txtUsuario');
		alert(msj);
		$("#txtUsuario").focus();
		return false;
	}
	if(clave == ''){
		msj = 'Ingrese su Clave, por favor...';
		// popup('Clave',msj,0,0,1,'txtClave');
		alert(msj);
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
		},
		beforeSend: function(){    
			txt = "Validando credenciales, por favor espere...";
		    msj = "<img src='"+raiz+"common/img/loader2.gif' width='40' height='30' valign='middle' align='center'>&nbsp";
		    // popup('Autentificando',msj,0,0,3);  		    
		    $("#popups-alerts").html(msj);
		},
		success: function(respuesta){ 
			$("#popups-alerts").empty();
			setTimeout(function(){	$(location).attr('href', respuesta.url)	}, 2000);
		},
		complete: function(){    			
		    $("#popups-alerts").empty();
		}
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