$(document).ready(function(){
	// scriptJs_Enter(); //Carga detección de ENTER
		$(".img-zoom").elevateZoom({ 
		// zoomType 			: "inner", 
		cursor 				: "crosshair",
		zoomWindowWidth 	: 250, 
		zoomWindowHeight 	: 250,
		tint 				: true,
		tintColour 			: '#36b0c8',
		tintOpacity 		: 0.5,
		scrollZoom : true
	});
});

function editar_cifrado(id){
	$(location).attr('href', raizPath()+'captura/cifrados_edit/?id='+id)
}

function ver_cifrado(id){
	$(location).attr('href', raizPath()+'cifrado/ver/?id='+id)
}

function insert(idFormulario, accion){	
	if(idFormulario){
		if($('#'+idFormulario).parsley('validate')){
			if(accion){
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
						accion : 'insert_captura_'+accion,
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

function activate(idFormulario, accion, id, activo){
	if(idFormulario){
		if(accion){
			if(id){
				var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
				var seccion = $("#sec").val();
				var raiz = raizPath();
				var ajax_url = raiz+"src/"+modulo+"/captura.php";
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
						accion : 'activate_captura_'+accion,
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

function insert_albums(idFormulario, accion){	
	if(idFormulario){
		if($('#'+idFormulario).parsley('validate')){
			if(accion){
				var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
				var seccion = $("#sec").val();
				var raiz = raizPath();
				var ajax_url = raiz+"src/"+modulo+"/captura.php";
				var reload = raiz+modulo+'/'+accion+'/';
				var div_msj = 'mensajes';
				var sendData = [];
				// if($('#file')[0].files[0]){
				var frmData = new FormData('#'+idFormulario);
					frmData.append("file",$('#file')[0].files[0]);
					frmData.append("filename",$('#file')[0].files[0].name);
					frmData.append("modulo", modulo);
					frmData.append("seccion", seccion);
					frmData.append("accion", 'insert_captura_'+accion);
					frmData.append("album", $("#album").val());
					frmData.append("subtitulo", $("#subtitulo").val());
					frmData.append("lts_artistas", $('[name = lts_artistas]').val());
					frmData.append("anio", $("#anio").val());
					frmData.append("pistas", $("#pistas").val());
					frmData.append("discos", $("#discos").val());
					sendData = frmData;
					var proccessFile = false;
					// alert('conFile');
				// }else{
				// 	var objData = formData('#'+idFormulario);
				// 	sendData['objData'] = objData;
				// 	sendData['modulo'] = modulo;
				// 	sendData['seccion'] = seccion;
				// 	sendData['accion'] = 'insert_captura_'+accion;
				// 	var proccessFile = true;
				// 	alert('sinFile');
				// }
				// alert(dump_var(sendData));
				$.ajax({
					type: 'POST',
					url: ajax_url,
					dataType: "json",
					contentType: proccessFile, 
                	processData: proccessFile,
                	data : sendData
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