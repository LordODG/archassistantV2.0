/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('.votar').click(function (event) {
        
        var objeto = $(this).attr("name")
        var id = objeto.substring(16, objeto.length);
        //alert($(this).attr("name") + "id: "+ id);
        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
        $.get('QAW7', {
            //nombre: nombreVar,
            //apellido: apellidoVar,
            //edad: edadVar
            idEsc: id

        }, function (responseText) {
            $('#prioridad_' + id).empty();
            $('#prioridad_' + id).html(responseText);
        });
    });
});