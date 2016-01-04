//O3M//
// Funciones generales para el template
$(document).ready(function(){
    // Contador 
    var timer = ($('#sec').val()!='login')?contador(parseInt($('#tm-out').val())+1):'';
});

function build_modal(tipo, titulo, contenido, botones, txt_cerrar, link_cerrar, txt_si, link_si, txt_no, link_no){
// Construye un modal para el template (bootstrap)
    titulo      = (!titulo)?'TITULO':titulo;
    contenido   = (!contenido)?'Contenido':contenido;
    tipo        = (!tipo)?'modal_wait':tipo;
    link_cerrar = (!link_cerrar)?false:link_cerrar;
    link_si     = (!link_si)?'#':link_si;
    link_no     = (!link_no)?'#':link_no;
    txt_cerrar  = (!txt_cerrar)?'':txt_cerrar;
    txt_si      = (!txt_si)?'':txt_si;
    txt_no      = (!txt_no)?'':txt_no;
    botones     = (!botones)?false:true;
    var raiz = raizPath();
    var ajax_url = raiz+"src/modal/modal.php";
    $.ajax({
        type: 'POST',
        url: ajax_url,
        dataType: "html",
        data: {      
         auth : 1,
         accion     : tipo,
         titulo     : titulo,
         contenido  : contenido,
         link_cerrar: link_cerrar,
         link_si    : link_si,
         link_no    : link_no,
         txt_cerrar : txt_cerrar,
         txt_si     : txt_si,
         txt_no     : txt_no,
         botones    : botones
        }
        ,beforeSend: function(){
            $('#ajaxModal').empty();
        }
        ,success: function(respuesta){             
         $('#ajaxModal').html(respuesta);
         $('#ajaxModal').modal({backdrop: 'static', keyboard: false, closable: false}); //Desactiva click fuera de ventana
         $('#ajaxModal').modal('show');
        }
        ,complete: function(){              
             // location.reload();
         }
    });
}

function build_mensaje(contenido,tipo,titulo){
// Contruye mensajes para formularios
    if(!tipo || tipo==0 || tipo.toString().toLowerCase()=='warning'){tipo='warning';}
    else if(tipo==1 || tipo.toString().toLowerCase()=='success'){tipo='success';}
    else if(tipo==2 || tipo.toString().toLowerCase()=='danger'){tipo='danger';}
    else if(tipo==3 || tipo.toString().toLowerCase()=='info'){tipo='info';}
    tipo        = (!tipo)?'':tipo;
    titulo      = (!titulo)?'':'<h4><i class="fa fa-bell-alt"></i>'+titulo+'</h4>';
    contenido   = (!contenido)?'':contenido;
    var mensaje = '<div class="alert alert-'+tipo+' alert-block">'
                 +titulo
                 +'<p>'+contenido+'</p>'
                 +'</div>';
    return mensaje;
}

function contador(duration) {
// Cuenta regresiva para terminar sesión de usuario
/* Uso:
    jQuery(function ($) {
        var Duracion = 60 * 5
        contador(Duracion);
    });
*/
    var timer = duration, minutes, seconds;
    var display = 'timeout';
    var ciclos = setInterval(function () {
        minutes = parseInt(timer / 60, 10)
        seconds = parseInt(timer % 60, 10);
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        if (--timer < 0) { timer = duration;  }
        if(minutes==0 && seconds==0){
            var titulo      = 'Sesión terminada!';
            var contenido   = 'Por inactividad su sesión se ha terminado. Por favor, vuelva a ingresar sus credenciales.';
            build_modal('modal', titulo, contenido, true, 'Login', 'location.reload();');
            clearInterval(ciclos);
        }else{
            // if(display){$('#'+display).html(minutes + ":" + seconds);}
        }
    }, 1000);
}

//O3M//