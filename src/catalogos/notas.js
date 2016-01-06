$(document).ready(function(){
	// scriptJs_Enter(); //Carga detección de ENTER
	editar_nota($("#sec").val().toLowerCase());
});

function editar_nota(accion){
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
	// $('.campo-editable').editable({
	// 	type: "text", 
	// 	url: ajax_url,
 //        params:{
 //        	modulo : modulo,
	// 		seccion : seccion,
	// 		accion : 'update_catalogos_'+accion
 //        }
 //        ,success: function(respuesta) {
 //        	var div_msj = 'frm-msj_'+respuesta.id;
	// 		if(respuesta.success){							 	
	// 			ico = '<i class="fa fa-thumbs-up"></i> ';
	// 			msj = build_mensaje(ico+' La información ha sido guardada correctamente.','success');
	// 			$("#"+div_msj).html(msj).slideDown("fast");
	// 			setTimeout(function(){$("#"+div_msj).slideUp("fast"); }, 2000);						 
	// 		}else{
	// 			ico = '<i class="fa fa-times-circle"></i> ';
	// 			msj = build_mensaje(ico+' No se han podido guardar los datos, verifique su información por favor.','danger');
	// 			$("#"+div_msj).slideDown("fast").html(msj);
	// 			setTimeout(function(){$("#"+div_msj).slideUp(500);}, 1000);
	// 		}
	//     }
	// });

	 $('.campo-nota').editable({
        url: '/post',
        value: {
            nota_es: "Moscow", 
            nota_en: "Lenina", 
            alteracion: "12"
        },
        validate: function(value) {
            if(value.nota_es == '') return 'Nota Español es requerida!'; 
            if(value.nota_en == '') return 'Nota Inglés es requerida!'; 
            if(value.alteracion == '') return 'Alteración es requerida!'; 
        },
        display: function(value) {
            if(!value) {
                $(this).empty();
                return; 
            }
            var html = '<b>' 
            			+ $('<div>').text(value.nota_es).html() + '</b> ' 
            			+ $('<div>').text(value.nota_en).html() 
            			+ $('<div>').text(value.alteracion).html();
            $(this).html(html); 
        }         
    });  

}