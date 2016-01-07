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
            var html =  $('<div>').text(value.nota_es+separador).html() 
                      + $('<div>').text(value.nota_en+separador).html() 
                      + $('<div>').text(value.alteracion).html();
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
           this.$input.filter('[name="nota_es"]').val(this.$entrada[0]);
           this.$input.filter('[name="nota_en"]').val(this.$entrada[1]);
           this.$input.filter('[name="alteracion"]').val(this.$entrada[2]);
       },       
       
       /**
        Returns value of input.        
        @method input2value() 
       **/          
       input2value: function() { 
           return {
              nota_es     : this.$input.filter('[name="nota_es"]').val(), 
              nota_en     : this.$input.filter('[name="nota_en"]').val(), 
              alteracion  : this.$input.filter('[name="alteracion"]').val()
           };
       },        
       
        /**
        Activates input: sets focus on the first field.        
        @method activate() 
       **/        
       activate: function() {
            this.$input.filter('[name="nota_en"]').focus();
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
        tpl: '<div class="editable-form"><label><span>Nota (Inglés): </span><input type="text" name="nota_en" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Nota (Español): </span><input type="text" name="nota_es" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Alteración: </span><input type="text" name="alteracion" class="input-mini"></label></div>',
             
        inputclass: ''
    });

    $.fn.editabletypes.datos = customForm;

}(window.jQuery));