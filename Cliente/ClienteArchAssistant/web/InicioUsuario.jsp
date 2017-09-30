<%-- 
    Document   : InicioUsuario
    Created on : 29/12/2016, 09:37:25 AM
    Author     : Prometheus
--%>

<%@page import="servicios.Usuario"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page import="java.util.List"%>
<%@page import="servicios.Proyecto"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.PreparedStatement"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - Gestionar Proyectos</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" /><!---->
        <link rel="stylesheet" href="./css/estilos.css" /><!---->
        <script src="./js/jquery-3.2.1.js"></script>
        <!--<script src="./js/jquery-3.2.1.min.js" ></script>-->
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/funciones.js"></script>
        <script type="text/javascript">
            $(document).ready(function (evt) {
                $('#tbl').on("click", 'tr td', function (evt) {
                    var target, id;
                    target = $(event.target);
                    id = target.parent().data('id');
                    $('#txtIdProyecto').val(id);
                    $('#session').setAttribute("idProyecto",id);
                    
                    //local storage:
                    localStorage.setItem("IdProy",id);
                });
            });
        </script>
    </head>
    <body class="loading">
        <div class="col-lg-12 col-md-12 col-md-12">
            <%session.setAttribute("proyectoActual", null);%>
            
            <%@include file='header.jsp'%> 
            
            <form name="gestionarProyectos" id="gestionarProyectos" action="GestionarProyectos">
                <table border="1" class="tblCentContent table table-hover ">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Avance</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>
                    <tbody id="tbl">
                        <%
                            session.setAttribute("refinar",0);
                            session.setAttribute("escenarioActual",null);
                            List<Proyecto> lista;
                            Usuario validUsuario2 = (Usuario)session.getAttribute("validUsuario");
                            ArchAssistantBean p = new ArchAssistantBean();
                            lista = p.Listar(validUsuario2.getUsuUsuario());
                            for (Proyecto pro : lista) {
                                out.println("<tr data-id='" + pro.getProID() + "'>");
                                out.println("<td class=\"ancho\">" + pro.getProNombre() + "</td>");
                                out.println("<td class=\"parrafo\">" + pro.getProDescripcion() + "</td>");
                                out.println("<td>" + pro.getProAvance() + "</td>");
                                //out.println("<td>");
                                
                                out.println("<td class=\"ancho\"><button type=\"submit\" value=\"Seleccionar\" name=\"btnSeleccionarProyecto"+pro.getProID()+"\" class=\"btn btn-primary\" >  <span class=\"glyphicon glyphicon-ok\" aria-hidden=\"true\"></span></button>");
                                out.println("<button type=\"submit\" value=\"Eliminar\" name=\"btnEliminarProyecto"+pro.getProID()+"\" class=\"btn btn-primary\">  <span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></button>");
                                
                                //if (pro.getProAvance().equals("qaw8")) {
                                    out.println("<button type=\"submit\" value=\"Reporte\" name=\"btnGenerarReporte" + pro.getProID() + "\" class =\"btn btn-primary\">  <span class=\"glyphicon glyphicon-download-alt\" aria-hidden=\"true\"></span></button></td></tr>");
                                /*}
                                else
                                {
                                    out.println("</td></tr>");
                                }*/
                            }
                            session.setAttribute("pasoActual", "qaw0");
                        %>
                    </tbody>
                </table>
                <table border="0" class="tblCentContent">
                    <tbody>
                        <!--
                        <tr>
                             <td>ID del proyecto: </td>
                            buscar ccampos de texto y botones con iconos para eliminar, seleccionar y crear 
                            <td><input hidden  type="text" name="txtIdProyecto" id="txtIdProyecto" /></td>
                            
                        </tr>-->
                        <tr>
                        <!--    <td><input type="submit" id="btnSel" value="Seleccionar" name="btnSeleccionarProyecto" class="btn btn-primary"/></td>-->
                        
                        <td class="alDer"><button type="button" value="Nuevo" name="btnCrearProyecto" class="btn btn-primary" data-toggle="modal" data-target="#myModal"/>  <span class="glyphicon glyphicon-plus" aria-hidden="true"/></button></td>
                    <!--<span class="btn btn-primary btn-file"> Browse<input type="file"> </span>-->
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
        
        
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Crear Proyecto</h4>
                </div>
                <div class="modal-body">
                    <%@include file='crearProyecto.jsp'%> 
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
              </div>

            </div>
          </div>
                    
    </body>
</html>
