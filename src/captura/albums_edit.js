$(document).ready(function(){
	// scriptJs_Enter(); //Carga detección de ENTER
});

function editar(idFormulario, accion){
// Establece los campos editables para hacer UPDATE
	// $('#username').editable('http://www.example.com/save.php');
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val();
	var raiz = raizPath();
	var ajax_url = raiz+"src/"+modulo+"/captura.php";
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
			accion : 'update_captura_albums',
			objData : objData
		}
		,beforeSend: function(){
			ico = '<i class="fa fa-cog fa-spin"></i> ';
		    msj = build_mensaje('Espere un momento por favor... ',3,ico+'Guardando!');
		    $("#"+div_msj).html(msj);
		}
        ,success: function(respuesta) {
        	setTimeout(function(){
				if(respuesta.success){							 	
						ico = '<i class="fa fa-thumbs-up"></i> ';
						msj = build_mensaje('La información ha sido actualizada correctamente.','success',ico+'Éxito!');
						$("#"+div_msj).html(msj).slideDown("fast");
						setTimeout(function(){$("#"+div_msj).slideUp("fast"); $(location).attr('href', reload);}, 2000);
				}else{
					ico = '<i class="fa fa-times-circle"></i> ';
					msj = build_mensaje('No se han podido actualizar los datos, verifique su información por favor.','danger',ico+'Error!');
					$("#"+div_msj).slideDown("fast").html(msj);
					setTimeout(function(){$("#"+div_msj).slideUp(500);}, 1000);
				}
			}, 2000);
	    }
	});
}