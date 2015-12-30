function cambiar_user(){
	var pass = $('#contraseña').val();
	var confirm_pass = $('#confirmar').val();
	var raiz = raizPath();
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val();
	var ajax_url = raiz+"src/general/config_user.php";
	popup_ventana = "<img src='"+raiz+"common/img/loader2.gif' width='40' height='30' valign='middle' align='center'>&nbsp";
	if(pass =='' || confirm_pass==''){
		alert('Los campos son obligatorios. No puede dejar un campos en blanco');
		return false;
	}
	else{
		if(confirm_pass != pass){
			alert('Favor de verificar la contraseña');
			$('#contraseña').val("");
			$('#confirmar').val("");
			return false
		}
		else{
			$.ajax({
		       type: 'POST',
		       url: ajax_url,
		       dataType: "json",
		       data: {      
		       		auth 	: 1,
		       		seccion : seccion, 
	             	opcion	: 'actualizar_datos',
	             	pass 	: pass,
	             	modulo 	: modulo
		       }
		       ,success: function(respuesta){ 
			       	if(respuesta.success){				
						txt = "La información ha sido guardada correctamente.";
						ventana = popup('Éxito',popup_ventana+txt,0,0,3);				
						setTimeout(function(){	$(location).attr('href', 'index.php?m=acbbb501abaf210ab5c48f753f96e48a&s=6ce10abd1b1c3a0b20cd3f194a15715c')	}, 2000);
					}
					else{
						txt = respuesta.error;
						ventana = popup('Error',error+txt,0,0,3);
					}
		         }
		    });
		}
	}
}
