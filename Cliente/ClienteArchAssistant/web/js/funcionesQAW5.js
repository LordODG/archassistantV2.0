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
        MostrarEscenarios(id);
    });
    
    ///////////////Logica para crear o modificar escenarios//////////
    $("#modEscenario").click(function () {
        //alert("NUEVO LLAMADO");
        var nombre = $("#txtQawNombre").val();
        var estimulo = $("#txtQawEstimulo").val();
        var ambiente = $("#txtQawAmbiente").val();
        var respuesta = $("#txtQawRespuesta").val();
        
        //alert(rationale);

        //alert("click" + nom + desc + sel + tipo);
        if (nombre != null && estimulo != null) {
            //alert(nom + "  " + desc)
            $.post('ActualizarEscenario', {
                txtQawNombre: nombre,
                txtQawEstimulo: estimulo,
                txtQawAmbiente: ambiente,
                txtQawRespuesta: respuesta,
                btnQawGuardarEscenario: "guardar"

            }, function (responseText) {
                alert("Creado con exito " + responseText);
                $("#txtQawNombre").val("");
                $("#txtQawEstimulo").val("");
                $("#txtQawAmbiente").val("");
                $("#txtQawRespuesta").val("");
                var id = $("#selAtributos").val();
                MostrarEscenarios(id);
                //$("#myModal").hide();
                
            });
        }
    });
    
    function MostrarEscenarios(id){
        
        $.get('QAW5', {
            //nombre: nombreVar,
            //apellido: apellidoVar,
            //edad: edadVar
            mensaje: "listar",
            id: id

        }, function (responseText) {
            $('#tblEscenarios').empty();
            $('#tblEscenarios').html(responseText);
        });
    }
    
});