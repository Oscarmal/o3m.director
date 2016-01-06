(function ($) {
    "use strict";    
    var customForm = function (options) {
        this.init('datos', options, customForm.defaults);
    };

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
            var html =  $('<div>').text(value.nota_es).html() 
                      + $('<div>').text(value.nota_en).html() 
                      + $('<div>').text(value.alteracion).html();
            $(element).html(html); 
        },
        
        /**
        Gets value from element's html        
        @method html2value(html) 
        **/        
        html2value: function(html) {        
          return null;  
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
           this.$input.filter('[name="nota_es"]').val(value.nota_es);
           this.$input.filter('[name="nota_en"]').val(value.nota_en);
           this.$input.filter('[name="alteracion"]').val(value.alteracion);
       },       
       
       /**
        Returns value of input.        
        @method input2value() 
       **/          
       input2value: function() { 
           return {
              city      : this.$input.filter('[name="nota_es"]').val(), 
              street    : this.$input.filter('[name="nota_en"]').val(), 
              building  : this.$input.filter('[name="alteracion"]').val()
           };
       },        
       
        /**
        Activates input: sets focus on the first field.        
        @method activate() 
       **/        
       activate: function() {
            this.$input.filter('[name="nota_es"]').focus();
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
        tpl: '<div class="editable-form"><label><span>Nota (Español): </span><input type="text" name="nota_es" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Nota (Inglés): </span><input type="text" name="nota_en" class="input-small"></label></div>'+
             '<div class="editable-form"><label><span>Alteración: </span><input type="text" name="alteracion" class="input-mini"></label></div>',
             
        inputclass: ''
    });

    $.fn.editabletypes.datos = customForm;

}(window.jQuery));