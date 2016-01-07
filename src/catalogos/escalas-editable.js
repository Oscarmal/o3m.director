(function ($) {
    "use strict";    
    var customForm = function (options) {
        this.init('datos', options, customForm.defaults);
    };

    // Custom Vars
    var separador = ' | ';
    //inherit from Abstract input
    $.fn.editableutils.inherit(customForm, $.fn.editabletypes.abstractinput);

    $.extend(customForm.prototype, {     
        render: function() {
           this.$input = this.$tpl.find('input');
        },

        /**
        Default method to show value in element. Can be overwritten by display option.        
        @method value2html(value, element) 
        **/
        value2html: function(value, element) {
            if(!value) {
                $(element).empty();                
                return; 
            }
            if(!value.nota_es && !value.nota_en) separador='';
            var html =  $('<div>').text(value.categoria+separador).html() 
                      + $('<div>').text(value.escala+separador).html() 
                      + $('<div>').text(value.grado1+separador).html() 
                      + $('<div>').text(value.grado2+separador).html() 
                      + $('<div>').text(value.grado3+separador).html() 
                      + $('<div>').text(value.grado4+separador).html() 
                      + $('<div>').text(value.grado5+separador).html() 
                      + $('<div>').text(value.grado6+separador).html() 
                      + $('<div>').text(value.grado7+separador).html() 
                      + $('<div>').text(value.armadura).html();
            $(element).html(html); 
        },
        
        /**
        Gets value from element's html        
        @method html2value(html) 
        **/        
        html2value: function(html) {  
          this.$entrada = html.split(separador);
          return this.$entrada;  
        },
      
       /**
        Converts value to string. 
        It is used in internal comparing (not for sending to server).        
        @method value2str(value)  
       **/
       value2str: function(value) {
           var str = '';
           if(value) {
               for(var k in value) {
                   str = str + k + ':' + value[k] + ';';  
               }
           }
           return str;
       }, 
       
       /*
        Converts string to value. Used for reading value from 'data-value' attribute.        
        @method str2value(str)  
       */
       str2value: function(str) {
           return str;
       },                
       
       /**
        Sets value of input.        
        @method value2input(value) 
        @param {mixed} value
       **/         
       value2input: function(value) {
           if(!value) {
             return;
           }
           this.$input.filter('[name="categoria"]').val(this.$entrada[0]);
           this.$input.filter('[name="escala"]').val(this.$entrada[1]);
           this.$input.filter('[name="grado1"]').val(this.$entrada[2]);
           this.$input.filter('[name="grado2"]').val(this.$entrada[3]);
           this.$input.filter('[name="grado3"]').val(this.$entrada[4]);
           this.$input.filter('[name="grado4"]').val(this.$entrada[5]);
           this.$input.filter('[name="grado5"]').val(this.$entrada[6]);
           this.$input.filter('[name="grado6"]').val(this.$entrada[7]);
           this.$input.filter('[name="grado7"]').val(this.$entrada[8]);
           this.$input.filter('[name="armadura"]').val(this.$entrada[9]);
       },       
       
       /**
        Returns value of input.        
        @method input2value() 
       **/          
       input2value: function() { 
           return {
              categoria     : this.$input.filter('[name="categoria"]').val(), 
              escala        : this.$input.filter('[name="escala"]').val(), 
              grado1        : this.$input.filter('[name="grado1"]').val(),
              grado2        : this.$input.filter('[name="grado2"]').val(),
              grado3        : this.$input.filter('[name="grado3"]').val(),
              grado4        : this.$input.filter('[name="grado4"]').val(),
              grado5        : this.$input.filter('[name="grado5"]').val(),
              grado6        : this.$input.filter('[name="grado6"]').val(),
              grado7        : this.$input.filter('[name="grado7"]').val(),
              armadura      : this.$input.filter('[name="armadura"]').val()
           };
       },        
       
        /**
        Activates input: sets focus on the first field.        
        @method activate() 
       **/        
       activate: function() {
            this.$input.filter('[name="categoria"]').focus();
       },  
       
       /**
        Attaches handler to submit form in case of 'showbuttons=false' mode        
        @method autosubmit() 
       **/       
       autosubmit: function() {
           this.$input.keydown(function (e) {
                if (e.which === 13) {
                    $(this).closest('form').submit();
                }
           });
       }       
    });

    customForm.defaults = $.extend({}, $.fn.editabletypes.abstractinput.defaults, {
        tpl: '<div class="editable-form"><label><span>Categoría: </span><input type="text" name="categoria" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Escala: </span><input type="text" name="escala" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Grado I: </span><input type="text" name="grado1" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado II: </span><input type="text" name="grado2" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado III: </span><input type="text" name="grado3" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado IV: </span><input type="text" name="grado4" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado V: </span><input type="text" name="grado5" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado VI: </span><input type="text" name="grado6" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Grado VII: </span><input type="text" name="grado7" class="input-mini"></label></div>'+
             '<div class="editable-form"><label><span>Armadura: </span><input type="text" name="armadura" class="input-small"></label></div>',
             
        inputclass: ''
    });

    $.fn.editabletypes.datos = customForm;

}(window.jQuery));