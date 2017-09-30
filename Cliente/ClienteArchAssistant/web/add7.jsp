<%-- 
    Document   : add7
    Created on : 25/01/2017, 12:30:55 PM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="servicios.Modulo"%>
<%@page import="java.util.List"%>
<%@page import="servicios.Usuario"%>
<%@page import="servicios.Rationaleadd"%>
<%@page import="Beans.ArchAssistantBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArchAssistant - ADD</title>
        <link rel="stylesheet" href="./css/bootstrap.min.css" /><!---->
        <link rel="stylesheet" href="./css/estilos.css" /><!---->
        <link rel="stylesheet" href="./css/editor.css" />
        <link rel="stylesheet" href="./css/font-awesome.min.css" />

        <!--
        <script src="./js/jquery-3.2.1.min.js" ></script>-->
        <script src="./js/jquery-3.2.1.js"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/editor.js"></script>
        <script src="./js/funciones.js"></script>
    </head>
    <body>
        <%@include file='header.jsp'%> 
        <form name="add-7" action="ADD7">
            <div class="col-lg-12 col-md-12 col-md-12">
                <%
                    session.setAttribute("pasoActual", "add7");
                    Usuario u = (Usuario) session.getAttribute("validUsuario");
                    if (u == null) {
                        response.sendRedirect("InicioUsuario.jsp");
                    }%>
                <h2 class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <% String avance = proyectoActual.getProAvance();
                                int pas;
                                if (avance.substring(0,3).equals("add"))
                                {
                                    pas = Integer.parseInt(avance.substring(3));
                                }
                                else
                                {
                                    pas = 0;
                                }
                                switch (pas) {
                                    case 0:
                                        out.println("<td><a href='add0.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='add8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                }
                            %></tr>
                    </tbody>
                </table><h2 class="page-header">Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <p class="parrafo">
                            Verificar que la descomposición de elementos cumple hasta ahora con los requerimientos funcionales, atributos de calidad y restricciones de diseño, y se preparan los elementos hijos para su tratamiento en pasos posteriores.
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-2"></div>                        
                </div>
                
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1"> </div>
                    <div class="col-lg-10 col-md-6 col-sm-12" name="listaModulos" id="listaModulos">                        
                        <h2 class="page-header">Submódulos del sistema:</h2>
                        <table width="100%" border="3" class="tblCentfull">
                            <tbody>
                                <tr>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Descripción</th>
                                    <th scope="col">Tipo</th>

                                </tr>
                                <%
                                    ArchAssistantBean archB = new ArchAssistantBean();
                                    List<Modulo> listaMod = archB.ListarModulos(proyectoActual);
                                    Modulo padreActual = (Modulo) session.getAttribute("padreActual");
                                    if (padreActual == null) {
                                        padreActual = archB.buscarModDescomposicion(proyectoActual);
                                    }
                                    for (Modulo m : listaMod) {
                                        Modulo padreM = m.getTblModuloModId();
                                        if (padreM != null) {
                                            if (padreM.getModId() == padreActual.getModId() && m.getModFinal().equals("SubModulo")) {
                                                out.println("<tr>");
                                                out.println("<td>");
                                                out.println(m.getModNombre());
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println(m.getModDescripcion());
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println("<select name='selModulo_" + m.getModId() + "' id='selModulo_" + m.getModId() + "'  class='form-control'>");
                                                if (m.getModFinal().equals("Modulo")) {
                                                    out.println("<option value='Modulo' selected >Modulo</option>");
                                                    out.println("<option value='SubModulo' >Submodulo</option>");
                                                } else {
                                                    out.println("<option value='Modulo'>Modulo</option>");
                                                    out.println("<option value='SubModulo' selected >Submodulo</option>");
                                                }

                                                out.println("</select>");
                                                //out.println(m.getModFinal());
                                                out.println("</td>");
                                                out.println("</tr>");
                                            }
                                        }
                                    }%>
                            </tbody>
                        </table>
                        <p class="parrafo"> En este punto, los Submódulos pasan a convertirse en módulos para su posterior descomposición.</p>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
                <!-- las responsabilidades que luego se convierten en restricciones vienen dadas por los escenarios asociados a cada módulo -->

                <%@include file='rationale.jsp'%>
                <!--div class="col-lg-12 col-md-8 col-sm-12">
                    <div class="col-lg-1 " ></div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <table width="100" border="0" class="tblCentfull">
                            <tbody>
                                <tr>
                                    <td>
                                        <h2 class="page-header">Rationale:</h2>
                                        <textarea rows="9" cols="120" name="ratadd7" class="form-control"><%
                                            /*
                                            Modulo descMod = (Modulo) request.getSession().getAttribute("padreActual");
                                            if (descMod == null) {
                                                descMod = archB.buscarModDescomposicion(proyectoActual);
                                                request.getSession().setAttribute("padreActual", descMod);
                                            }
                                            Rationaleadd rata = archB.RationaleADD(proyectoActual.getProID(), "add7_" + descMod.getModId());
                                            if (rata != null) {
                                                out.print(rata.getRatAddDescripcion());
                                            }*/
                                            %></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="alIzq"><input type="submit" value="Guardar" name="btnAdd7Guardar" class="btn btn-primary"/></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>                
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <div>
                            <h2 class="page-header">Archivos:</h2>
                            <form name="add-7" action="ADD7" method="post" enctype="multipart/form-data">
                                <table width="400" border="0" class="tblCent">
                                    <tr><td><input type="file" name="archivo" id="myfile" /></td>
                                        <td><input type="submit" value="subir archivo" name="btnAddsubir" class="btn btn-primary"/></td></tr>
                                </table>
                            </form>
                        </div>
                        <div class="divScroll">
                            <form name="add-7" action="ADD7">
                                <table width="400" border="0" class="tblCentfull">
                                    <tbody>
                                        <%
                                            /*
                                            GuardarArchivo arch = new GuardarArchivo();
                                            List<File> archivos = null;
                                            if (rata != null) {
                                                archivos = arch.listarArchivos(rata.getRatAddArchivo());
                                            }
                                            if (archivos != null) {
                                                for (File archivo : archivos) {
                                                    out.print("<tr>");
                                                    out.print("<td>" + archivo.getName() + "</td>");
                                                    out.print("<td class='alDer'>" + "<button type=\"submit\"  name=\"btnAddEliminar" + archivo.getName() + "\" class=\"btn btn-primary \">  <span class=\"glyphicon glyphicon-trash\" aria-hidden=\"true\"></span></button>        ");
                                                    out.print("<button type=\"submit\" value=\"Descargar\" name=\"btnAddBajar" + archivo.getName() + "\" class=\"btn btn-primary\"/>  <span class=\"glyphicon glyphicon-download-alt\" aria-hidden=\"true\"></span></button>" + "</td>");
                                                    out.print("</tr>");
                                                }
                                            }*/
                                        %>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                -->
                    <div class="col-lg-1"></div>
                </div> 
                <form name="add-7" action="ADD7">    
                    <table border="0" class="tblCent">
                        <tbody>
                            <tr>
                                <!--
                                <td class="alDer"><input type="submit" value="Regresar" name="btnAdd7anterior" class="btn btn-primary btn-lg"/></td>
                                <td class="alCen"><input type="submit" value="Cerrar Proyecto" name="btnInicio" class="btn btn-primary btn-lg"/></td>
                                <td class="alIzq"><input type="submit" value="Continuar" name="btnContinuar" class="btn btn-primary btn-lg"/></td>
                                -->
                                <td class="alDer"><button type="submit" name="btnAdd7anterior" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Regresar</button></td>
                            <td class="alCen"><button type="submit" name="btnInicio" class="btn btn-lg btn-default"><i class="fa fa-dot-circle-o"></i> Cerrar Proyecto</button></td>
                            <td class="alIzq"><button type="submit" name="btnContinuar" class="btn btn-info btn-lg next-step">Continuar <i class="fa fa-chevron-right"></i></button></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </form>
    </body>
</html>
