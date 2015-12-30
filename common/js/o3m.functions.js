//O3M//
$(document).ready(function(){
    // Quitar estilo rojo a inputs
    $('input').change(function(){
          inputFocus(this.id);
    });
    reloj('txtReloj');    
});

function changeCss(archivo) {
    var raiz = raizPath();
    var archivo = raiz + 'common/css/' + archivo;
    $('#archivoCss').attr('href', archivo);
}

// function modal(idObjeto,w,h,tipo){
// // Contruye Popup con diferentes efectos (jQueryUI)
//     switch(tipo) {
//     case 1:
//         var Show        = "scale";
//         var Hide        = "scale";
//         var Resizable   = "false"; 
//         var Position    = "center";
//         var Modal       = "true";
//         break;
//     case 2:
//         var Show        = "blind";
//         var Hide        = "shake";
//         var Resizable   = "false"; 
//         var Position    = "center";
//         var Modal       = "true";
//         break;
//     case 3:
//         var Show        = "scale";
//         var Hide        = "scale";
//         var Resizable   = "false"; 
//         var Position    = "center";
//         var Modal       = "true";
//         var Close       = 1;
//         break;
//     default:
//         var Show        = "scale";
//         var Hide        = "scale";
//         var Resizable   = "false"; 
//         var Position    = "center";
//     }

//     if(!w){var w = 300;}
//     if(!h){var h = 200;}

//     $("#"+idObjeto).dialog({
//         autoOpen: false,
//         width:      w,
//         height:     h,
//         show:       Show,
//         hide:       Hide,
//         resizable:  Resizable,
//         // position:   Position,
//         modal:      Modal,
//         overlay: { backgroundColor: "#000", opacity: 0.5 },
//         // buttons:{ "Close": function() { $(this).dialog('destroy'); }},
//         close: function(ev, ui) { /*$(this).close();*/ $(this).dialog('destroy'); }
//     });
    
//     $("#"+idObjeto).dialog( "open" );
//     if(Close){jQuery("a.ui-dialog-titlebar-close").hide();}
// }

function popup(Titulo,Contenido,w,h,Tipo,idInput,idObjeto){
// Crea Ventana con contenido HTML para usar como Popup -> modal(idObjeto,w,h,tipo)
    var ClaseCss = 'modal popup';
    if(!idObjeto){ var idObjeto = 'o3m-popoup_' + getRandomInt(1, 100);}
    if(!Tipo){var Tipo = 0;}
    if(!w || w <= 0){var w = 400;}
    if(!h || h <= 0){var h = 200;}
    if(!Titulo){var Titulo = 'Sin titulo';}
    if(!Contenido){var Contenido = 'Sin contenido...';}
    var ventana = '<div id="' + idObjeto + '" class="' + ClaseCss + '" title="' + Titulo + '">' + Contenido + '</div>';
    $("#o3m-popups-alerts").empty();
    $("#o3m-popups-alerts").append(ventana);
    modal(idObjeto,w,h,Tipo);

    // Resaltar input
    if(idInput!=''){
        $("#"+idInput).addClass('input-error');
    }
    return idObjeto;
}

function getRandomInt(min, max) {
// Regresa un entrero entre min y max
  return Math.floor(Math.random() * (max - min)) + min;
}

function inputFocus(idInput){
// Remueve clase que resalta inputs
    $("#"+idInput).removeClass("input-error");
}

function scriptJs_Enter(Folder){
// Carga script externo para deteccion de ENTER y ejecuta => btnSubmit()
    var raiz = raizPath(Folder);
    $.getScript(raiz + "common/js/inc.enter.js", function(){
    });
}

// function raizPath(Folder){
// // Obtiene Carpeta raiz
//     if(!Folder){Folder='site';}
//     Folrder = Folder + '/';
//     var pathname = window.location.pathname;
//     var raiz = window.location.pathname.split(Folder);
//     var file = raiz[1];
//     var niveles = file.split('/');
//     var n = niveles.length -1;
//     var raiz = '';
//     for (var i = 1; i <= n; i++) { 
//         raiz += '../';
//     }
//     return raiz;
// }

function raizPath(Folder){
// Obtiene Carpeta raiz
    if(!Folder){Folder='/';}
    Folder = Folder;
    var dominio = document.domain;
    var raiz = window.location.pathname.split(Folder);
    // var ruta = raiz[0] + Folder;
    var ruta = '';
    for(var i=0; i<=raiz.length-4; i++){
        ruta +=  raiz[i]+'/';
    }
    return ruta;
}


function reloj(objName){ 
/**
* Muestra hora actual en vivo
* <body onload="reloj('objName')">
* <div id="reloj" onload="reloj('reloj')"></div>
*
*/
    var horaActual = new Date(); 
    var hora = horaActual.getHours();
    var minuto = horaActual.getMinutes(); 
    var segundo = horaActual.getSeconds(); 
    var str_segundo = new String (segundo); 
    if (str_segundo.length == 1) {
         segundo = "0" + segundo;
    }
    var str_minuto = new String (minuto); 
    if (str_minuto.length == 1) {
         minuto = "0" + minuto; 
    }
    var str_hora = new String (hora);
    if (str_hora.length == 1) {
         hora = "0" + hora;     
    }
    // horaUTC = horaActual.getUTCHours();
    if(str_hora>=12){
        var txt = 'pm';
    }else{ 
        var txt = 'am';
    }
    horaImprimible = hora + ":" + minuto + ":" + segundo + ' ' + txt; 
    document.getElementById(objName).innerHTML=horaImprimible;
    setTimeout("reloj('"+objName+"')",1000);
}

function buildBtn(idObjeto,texto,evento,clase){
    if(idObjeto){
        if(!texto){ texto = 'Botón';}       
        if(!clase){ clase = 'btn';}
        if(!evento){ evento = 'btnSubmit()';}
        var objeto = '<input type="button" id="'+idObjeto+'" name="'+idObjeto+'" class="'+clase+'" value="'+texto+'" onclick="'+evento+'">';
        return objeto;
    }else{
        return false;
    }
}

function solo_num(e) { 
    tecla = (document.all) ? e.keyCode : e.which; 
    if (tecla==8 || tecla==13) return true; 
    patron = /\d/;
    te = String.fromCharCode(tecla);
    return patron.test(te); 
} 

// function semanaNum(fecha){
function semanaNum(y,m,d){
    var d = (!y)? new Date() : new Date(y,m,d);
    d.setHours(0,0,0);
    d.setDate(d.getDate()+4-(d.getDay()||7));
    var data = Math.ceil((((d-new Date(d.getFullYear(),0,1))/8.64e7)+1)/7);
    return data;
}

function dump_var(arr,level) {
// Explota un array y regres su estructura
// Uso: alert(dump_var(array));
    var dumped_text = "";
    if(!level) level = 0;   
    //The padding given at the beginning of the line.
    var level_padding = "";
    for(var j=0;j<level+1;j++) level_padding += "    "; 
    if(typeof(arr) == 'object') { //Array/Hashes/Objects 
        for(var item in arr) {
            var value = arr[item];          
            if(typeof(value) == 'object') { //If it is an array,
                dumped_text += level_padding + "'" + item + "' ...\n";
                dumped_text += dump_var(value,level+1);
            } else {
                dumped_text += level_padding + "'" + item + "' => \"" + value + "\"\n";
            }
        }
    } else { //Stings/Chars/Numbers etc.
        dumped_text = "===>"+arr+"<===("+typeof(arr)+")";
    }
    return dumped_text;
}

function fechaHoy(separador, formato, hora){
    var s = (!separador)?'-':separador;
    var hoy = new Date();
    // Fecha
    var dd = hoy.getDate();
    var mm = hoy.getMonth()+1; 
    var yyyy = hoy.getFullYear();
    if(dd<10) dd='0'+dd; 
    if(mm<10)  mm='0'+mm;     
    // Hora
    var hh = hoy.getHours();
    var min = hoy.getMinutes(); 
    var seg = hoy.getSeconds(); 
    var str_segundo = new String (seg); 
    if (str_segundo.length == 1) seg = "0" + seg;
    var str_minuto = new String (min); 
    if (str_minuto.length == 1) min = "0" + min; 
    var str_hora = new String (hh);
    if (str_hora.length == 1) hh = "0" + hh;    
    // Resultado
    hora = (!hora) ? '' : ' ' + hh + ":" + min + ":" + seg;
    hoy = (!formato) ? yyyy+s+mm+s+dd : mm+s+dd+s+yyyy;
    return hoy+hora;
}

function reemplaza_espacios(texto){
    if(texto) return texto.split(" ").join("+");    
}

function goto(ruta){
    location.href=ruta;
}

function formData(selector, template){
    /**
    * Descripcion:  Crea un objeto recuperando los valores ingresados en los campos INPUT
    * Comentario:   Los elementos html deben estar dentro de un mismo <div> y tiene que 
    *               tener el atributo:data-campo="[nombre_campo]"
    * Ejemplo:      <div id="formulario"><input id="id_orden" type="hidden" data-campo="id_orden" value="{id_orden}" /></div>
    *               <script> var objData = formData('#formulario'); </script>
    * @author:      Oscar Maldonado - O3M
    */
    var data = template ? template : {}; // Valores predeterminados - Opcional
    var c, f, r, v, m, $e, $elements = jQuery(selector).find("input, select, textarea");
    for (var i = 0; i < $elements.length; i++){
        $e = jQuery($elements[i]);
        // alert($elements[i]['id']);  
        f = $e.data("campo");
        r = $e.attr("required") ? true: false;  
        // validación de que exista un elemento
        if (!f) continue;  
        // Recolección datos por tipo de elemento
        v = undefined;
        switch ($e[0].nodeName.toUpperCase()){
            case "LABEL":
                v = $e.text();
                break;
            case "INPUT":
                var type = $e.attr("type").toUpperCase();
                if (type == "TEXT" || type == "HIDDEN"){
                    v = jQuery.trim($e.val());
                }
                else if (type == "CHECKBOX"){
                    v = $e.prop("checked");
                }
                else if (type == "RADIO"){
                    if ($e.prop("checked"))
                        v = $e.val();
                }
                else if ($e.datepicker){
                    v = $e.datepicker("getDate");
                }
                else{
                    v = jQuery.trim($e.val());
                }
                break;
            case "TEXTAREA":
            default:
                v = jQuery.trim($e.val());
        }  
        // Guarda el valor en el objeto
        if (r && (v == undefined || v == "")){
            m = $e.data("mensaje");
            if (m)
                alert(m);
            else
                alert("Es necesario especificar un valor para el campo \"" + f + "\".");
            $e.focus();
            return null;
        }
        else if (v != undefined)            
            data[i] = v;  
            data[f] = v; 
    }// next  
    return data;
}
function values_requeridos(formulario, debug){
    var ids = "";
    var items_vacios = 0;
    var padre = (formulario) ? '#'+formulario+' ' : '';
    jQuery(padre+" .requerido").each(function(){ 
        if(jQuery(this).prop('tagName')=='SELECT'){
            /*if(jQuery(this).hasAttr('multiple')){
                if(!jQuery("[name='"+jQuery(this).attr('name')+"'] option").length>0){
                    items_vacios++; 
                     ids = jQuery(this).attr('name')+'|'+ids;
                }
                if(!jQuery("[name='"+jQuery(this).attr('name')+"'] option:selected").length>0){
                    items_vacios++; 
                     ids = jQuery(this).attr('name')+'|'+ids;
                }
            }else{*/
               var select = jQuery("select[name='"+jQuery(this).attr('name')+"'] option:selected");
                if(select.val()==0){
                    items_vacios++
                } 
            //}
        }else{
            if(jQuery(this).val()==''){
                ids = jQuery(this).attr("id")+'|'+ids;
                items_vacios++
            } 
        }
    });
    if(debug){
       alert(ids); 
    }
    //alert(ids);
    return items_vacios;
}

//O3M//