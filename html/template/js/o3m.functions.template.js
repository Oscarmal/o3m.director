//O3M//
// Funciones generales para el template
function build_mensaje(contenido,tipo,titulo){
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

//O3M//