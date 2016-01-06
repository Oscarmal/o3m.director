$(document).ready(function(){
	// scriptJs_Enter(); //Carga detección de ENTER
	editar($("#sec").val().toLowerCase());
});

function editar(accion){
// Establece los campos editables para hacer UPDATE
	// $('#username').editable('http://www.example.com/save.php');
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val().toLowerCase();
	var raiz = raizPath();
	var ajax_url = raiz+"src/"+modulo+"/catalogos.php";
	// Generales
	$.fn.editable.defaults.mode = 'inline'; // popup | inline
	$.fn.editable.defaults.ajaxOptions = {type: 'POST', dataType: 'json'};
	// Campos
	$('#editar').editable({
		type: "text", 
		url: ajax_url,
        params:{
        	modulo : modulo,
			seccion : seccion,
			accion : 'update_catalogos_'+accion
        }
        ,success: function(respuesta) {
	        setTimeout(function(){
				if(respuesta.success){							 	
					ico = '<i class="fa fa-thumbs-up"></i> ';
					msj = build_mensaje('La información ha sido guardada correctamente.','success',ico+'Éxito!');
					$("#mensajes").html(msj).slideDown("fast");
					setTimeout(function(){$("#mensajes").slideUp("fast"); }, 2000);						 
				}else{
					ico = '<i class="fa fa-times-circle"></i> ';
					msj = build_mensaje('No se han podido guardar los datos, verifique su información por favor.','danger',ico+'Error!');
					$("#mensajes").slideDown("fast").html(msj);
					setTimeout(function(){$("#mensajes").slideUp(500);}, 1000);
				}
			}, 2000);
	    }
	});

	$('.campo-categoria').editable({
		type: "text", 
		url: ajax_url,
        params:{
        	modulo : modulo,
			seccion : seccion,
			accion : 'update_catalogos_'+accion
        }
        ,success: function(respuesta) {
	        setTimeout(function(){
				if(respuesta.success){							 	
					ico = '<i class="fa fa-thumbs-up"></i> ';
					msj = build_mensaje('La información ha sido guardada correctamente.','success',ico+'Éxito!');
					$("#mensajes").html(msj).slideDown("fast");
					setTimeout(function(){$("#mensajes").slideUp("fast"); }, 2000);						 
				}else{
					ico = '<i class="fa fa-times-circle"></i> ';
					msj = build_mensaje('No se han podido guardar los datos, verifique su información por favor.','danger',ico+'Error!');
					$("#mensajes").slideDown("fast").html(msj);
					setTimeout(function(){$("#mensajes").slideUp(500);}, 1000);
				}
			}, 2000);
	    }
	});
}

function insert(idFormulario, accion){	
	if(idFormulario){
		if($('#'+idFormulario).parsley('validate')){
			if(accion){
				var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
				var seccion = $("#sec").val();
				var raiz = raizPath();
				var ajax_url = raiz+"src/"+modulo+"/catalogos.php";
				var reload = raiz+modulo+'/'+accion+'/';
				var objData = formData('#'+idFormulario);
				$.ajax({
					type: 'POST',
					url: ajax_url,
					dataType: "json",
					data: {      
						auth : 1,
						modulo : modulo,
						seccion : seccion,
						accion : 'insert_catalogos_'+accion,
						objData : objData
					}
					,beforeSend: function(){
						ico = '<i class="fa fa-cog fa-spin"></i> ';
					    msj = build_mensaje('Espere un momento por favor... ',3,ico+'Guardando!');
					    $("#mensajes").html(msj);
					}
					,success: function(respuesta){ 
						setTimeout(function(){
							if(respuesta.success){							 	
									ico = '<i class="fa fa-thumbs-up"></i> ';
									msj = build_mensaje('La información ha sido guardada correctamente.','success',ico+'Éxito!');
									$("#mensajes").html(msj).slideDown("fast");
									setTimeout(function(){$("#mensajes").slideUp("fast"); $(location).attr('href', reload);}, 2000);
									// $(location).attr('href', reload);
									 
							}else{
								ico = '<i class="fa fa-times-circle"></i> ';
								msj = build_mensaje('No se han podido guardar los datos, verifique su información por favor.','danger',ico+'Error!');
								$("#mensajes").slideDown("fast").html(msj);
								setTimeout(function(){$("#mensajes").slideUp(500);}, 1000);
							}
						}, 2000);
					}
			    });
			}else{
			// Sin tipo de acción			
				ico = '<i class="fa fa-times-circle"></i> ';
				msj = build_mensaje(ico+' Sin acción.','danger');
				$("#mensajes").slideDown("slow").html(msj);
				setTimeout(function(){$("#mensajes").slideUp("slow");}, 2000);
			}
		}
	}else{
	// Sin formulario			
		ico = '<i class="fa fa-times-circle"></i> ';
		msj = build_mensaje(ico+' Sin formulario.','danger');
		$("#mensajes").slideDown("slow").html(msj);
		setTimeout(function(){$("#mensajes").slideUp("slow");}, 2000);
	}
}

// function update(){
// 	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
// 	var seccion = $("#sec").val();
// 	var raiz = raizPath();
// 	var ajax_url = raiz+"src/"+modulo+"/catalogos.php";
// 	var reload = raiz+modulo+"/categorias/";
// 	var objData = formData('#update_empresa');
// 	popup_ico = "<img src='"+raiz+"common/img/popup/info.png' class='popup-ico'>&nbsp";
// 	$.ajax({
// 		type: 'POST',
// 		url: ajax_url,
// 		dataType: "json",
// 		data: {      
// 			auth : 1,
// 			modulo : modulo,
// 			seccion : seccion,
// 			accion : 'update',
// 			objData : objData
// 		},
// 		beforeSend: function(){
// 		},
// 		success: function(data){ 		
// 			if(data.success){
// 				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
// 				setTimeout(function(){
// 					$("#"+ventana).dialog("close");
// 					$(location).attr('href', reload+'?id='+data.id);
// 				}, 2000);
// 			}else{
// 				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
// 			}
// 		}
//     });
// }
