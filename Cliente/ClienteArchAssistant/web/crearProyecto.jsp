<%-- 
    Document   : crearProyecto
    Created on : 29/12/2016, 07:16:41 PM
    Author     : Prometheus
--%>

            <form action="GuardarProyecto" method="POST">
                Nombre Proyecto: 
                <input type="text" name="txtNombreProyecto" value="" class="form-control"/>
                Descripcion: 
                <textarea name="txtDescripcionProyecto" rows="10" cols="20" class="form-control"></textarea>
                <br/><input type="submit" value="Guardar" name="btnGuardarProyecto" class="btn btn-primary"/>
                
            </form>
   