$(document).ready(function(){
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
	$('.campo-categoria').editable({
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