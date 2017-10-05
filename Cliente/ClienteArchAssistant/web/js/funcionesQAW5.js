/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {
    $("#selAtributos").change(function(){
        var objeto = $(this).attr("name");
        var id = $(this).val();
        //alert($(this).attr("name") + "id: "+ id);
        // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
        $.get('QAW5', {
            //nombre: nombreVar,
            //apellido: apellidoVar,
            //edad: edadVar
            id: id

        }, function (responseText) {
            $('#tblEscenarios').empty();
            $('#tblEscenarios').html(responseText);
        });
    });
});