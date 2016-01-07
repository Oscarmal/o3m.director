$(document).ready(function(){
	// scriptJs_Enter(); //Carga detección de ENTER
	editar($("#sec").val().toLowerCase());
});

function insert(idFormulario, accion){	
	if(idFormulario){
		if($('#'+idFormulario).parsley('validate')){
			if(accion){
				var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
				var seccion = $("#sec").val();
				var raiz = raizPath();
				var ajax_url = raiz+"src/"+modulo+"/catalogos.php";
				var reload = raiz+modulo+'/'+accion+'/';
				var div_msj = 'mensajes';
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
					    $("#"+div_msj).html(msj);
					}
					,success: function(respuesta){ 
						setTimeout(function(){
							if(respuesta.success){							 	
									ico = '<i class="fa fa-thumbs-up"></i> ';
									msj = build_mensaje('La información ha sido guardada correctamente.','success',ico+'Éxito!');
									$("#"+div_msj).html(msj).slideDown("fast");
									setTimeout(function(){$("#"+div_msj).slideUp("fast"); $(location).attr('href', reload);}, 2000);
							}else{
								ico = '<i class="fa fa-times-circle"></i> ';
								msj = build_mensaje('No se han podido guardar los datos, verifique su información por favor.','danger',ico+'Error!');
								$("#"+div_msj).slideDown("fast").html(msj);
								setTimeout(function(){$("#"+div_msj).slideUp(500);}, 1000);
							}
						}, 2000);
					}
			    });
			}else{
			// Sin tipo de acción			
				ico = '<i class="fa fa-times-circle"></i> ';
				msj = build_mensaje(ico+' Sin acción.','danger');
				$("#"+div_msj).slideDown("slow").html(msj);
				setTimeout(function(){$("#"+div_msj).slideUp("slow");}, 2000);
			}
		}
	}else{
	// Sin formulario			
		ico = '<i class="fa fa-times-circle"></i> ';
		msj = build_mensaje(ico+' Sin formulario.','danger');
		$("#"+div_msj).slideDown("slow").html(msj);
		setTimeout(function(){$("#"+div_msj).slideUp("slow");}, 2000);
	}
}

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
	$('.campo-editable').editable({
		type: "text", 
		url: ajax_url,
        params:{
        	modulo : modulo,
			seccion : seccion,
			accion : 'update_catalogos_'+accion
        }
        ,success: function(respuesta) {
        	var div_msj = 'frm-msj_'+respuesta.id;
			if(respuesta.success){							 	
				ico = '<i class="fa fa-thumbs-up"></i> ';
				msj = build_mensaje(ico+' La información ha sido guardada correctamente.','success');
				$("#"+div_msj).html(msj).slideDown("fast");
				setTimeout(function(){$("#"+div_msj).slideUp("fast"); }, 2000);						 
			}else{
				ico = '<i class="fa fa-times-circle"></i> ';
				msj = build_mensaje(ico+' No se han podido guardar los datos, verifique su información por favor.','danger');
				$("#"+div_msj).slideDown("fast").html(msj);
				setTimeout(function(){$("#"+div_msj).slideUp(500);}, 1000);
			}
	    }
	});
}

function activate(idFormulario, accion, id, activo){
	if(idFormulario){
		if(accion){
			if(id){
				var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
				var seccion = $("#sec").val();
				var raiz = raizPath();
				var ajax_url = raiz+"src/"+modulo+"/catalogos.php";
				var div_msj = 'frm-msj_'+id;
				var objData = formData('#'+idFormulario);
				objData['activo'] = (!activo)?0:1;
				objData['id'] = id;
				$.ajax({
					type: 'POST',
					url: ajax_url,
					dataType: "json",
					data: {      
						auth : 1,
						modulo : modulo,
						seccion : seccion,
						accion : 'activate_catalogos_'+accion,
						objData : objData
					}
					,success: function(respuesta){
						if(respuesta.success){							 	
								ico = '<i class="fa fa-thumbs-up"></i> ';
								msj = build_mensaje('La información ha sido modificada correctamente.','success',ico+'Éxito!');
								$("#"+div_msj).html(msj).slideDown("fast");
								setTimeout(function(){
									$("#"+div_msj).slideUp("fast"); 
									$('#ico-eliminar_'+id).closest('tr').fadeOut(function(){$(this).remove();});
								}, 1000);							 
						}else{
							ico = '<i class="fa fa-times-circle"></i> ';
							msj = build_mensaje('No se han podido modificar los datos, verifique su información por favor.','danger',ico+'Error!');
							$("#"+div_msj).slideDown("fast").html(msj);
							setTimeout(function(){$("#"+div_msj).slideUp(500);}, 1000);
						}
					}
			    });
			}else{
				// Sin ID de registro			
				ico = '<i class="fa fa-times-circle"></i> ';
				msj = build_mensaje(ico+' Sin ID de registro.','danger');
				$("#"+div_msj).slideDown("slow").html(msj);
				setTimeout(function(){$("#"+div_msj).slideUp("slow");}, 2000);
			}
		}else{
		// Sin tipo de acción			
			ico = '<i class="fa fa-times-circle"></i> ';
			msj = build_mensaje(ico+' Sin acción.','danger');
			$("#"+div_msj).slideDown("slow").html(msj);
			setTimeout(function(){$("#"+div_msj).slideUp("slow");}, 2000);
		}		
	}else{
	// Sin formulario			
		ico = '<i class="fa fa-times-circle"></i> ';
		msj = build_mensaje(ico+' Sin formulario.','danger');
		$("#"+div_msj).slideDown("slow").html(msj);
		setTimeout(function(){$("#"+div_msj).slideUp("slow");}, 2000);
	}
}