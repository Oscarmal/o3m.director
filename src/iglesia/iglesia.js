function insert(){		
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val();
	var raiz = raizPath();
	var ajax_url = raiz+"src/"+modulo+"/empresas.php";
	var reload = raiz+modulo+"/prospectos/";
	var objData = formData('#empresas_nuevo');
	objData['incomplete'] = values_requeridos('empresas_nuevo');

	popup_ico = "<img src='"+raiz+"common/img/popup/info.png' class='popup-ico'>&nbsp";
	$.ajax({
		type: 'POST',
		url: ajax_url,
		dataType: "json",
		data: {      
			auth : 1,
			modulo : modulo,
			seccion : seccion,
			accion : 'insert',
			objData : objData
		},
		beforeSend: function(){
		},
		success: function(data){ 		
			if(data.success){
				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
				//setTimeout(function(){location.reload(reload);}, 2000);
				setTimeout(function(){
					$("#"+ventana).dialog("close");
					$(location).attr('href', reload+'?id='+data.id);
				}, 2000);
			}else{
				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
			}
		}
    });
}
function update(){
	var modulo = $("#mod").val().toLowerCase(); // <-- Modulo actual del sistema
	var seccion = $("#sec").val();
	var raiz = raizPath();
	var ajax_url = raiz+"src/"+modulo+"/empresas.php";
	var reload = raiz+modulo+"/listado/";
	var objData = formData('#update_empresa');
	objData['incomplete'] = values_requeridos('update_empresa');

	popup_ico = "<img src='"+raiz+"common/img/popup/info.png' class='popup-ico'>&nbsp";
	$.ajax({
		type: 'POST',
		url: ajax_url,
		dataType: "json",
		data: {      
			auth : 1,
			modulo : modulo,
			seccion : seccion,
			accion : 'update',
			objData : objData
		},
		beforeSend: function(){
		},
		success: function(data){ 		
			if(data.success){
				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
				setTimeout(function(){
					$("#"+ventana).dialog("close");
					$(location).attr('href', reload+'?id='+data.id);
				}, 2000);
			}else{
				ventana = popup(data.alert,popup_ico+data.msg,0,0,3);
			}
		}
    });
}
