 /*O3M*/
 $(document).ready(function(){
    var modulo  = $("#mod").val().toLowerCase();
    var seccion = $("#sec").val().toLowerCase();
    var id_get  = $("#paginacion_id_get").val();
    var raiz = raizPath();
    // Al presionar ENTER en input de busqueda
    $("#searchbox").keypress(function(e) {
        var searchbox = $("#searchbox").val();        
        var search_value = searchbox.split(" ").join("+");
        if(e.which == 13) {                            
            window.location.href = raiz + modulo + "/" + seccion + "?" + id_get + "&searchbox="+search_value;
        }
    });
    // Boton de buscar
    $( "#search_go" ).click(function() {
        var searchbox = $("#searchbox").val();
        var search_value = searchbox.split(" ").join("+");
        window.location.href = raiz + modulo + "/" + seccion + "?" + id_get + "&searchbox="+search_value;
    });
    // Boton de quitar filtro
    $( "#search_reset" ).click(function() {
        window.location.href = raiz + modulo + "/" + seccion + "?" + id_get ;
    });
    // Color alternado
    $("tr:even").addClass("rows-even");
});
/*O3M*/