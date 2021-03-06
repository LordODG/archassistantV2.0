<%-- 
    Document   : add5
    Created on : 25/01/2017, 12:30:37 PM
    Author     : Prometheus
--%>

<%@page import="servicios.Responsabilidad"%>
<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="servicios.Usuario"%>
<%@page import="servicios.Escenario"%>
<%@page import="servicios.Modulo"%>
<%@page import="java.util.List"%>
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
        <div class="col-lg-12 col-md-12 col-md-12">
            <form name="add-5" action="ADD5">
                <%
                    session.setAttribute("pasoActual", "add5");
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
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='add8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Instanciar elementos arquitecturales y asignar responsabilidades:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <p class="parrafo">
                            Cada uno de los elementos que surgieron del paso anterior es instanciado y le son asignadas responsabilidades dependiendo de su tipo, éstas responsabilidades surgen de los requerimientos funcionales asociados a los candidatos a drivers y al elemento padre, al finalizar este paso se tiene una secuencia de responsabilidades dentro de los elementos hijos.
                        </p></div>
                    <div class="col-lg-3 col-md-2"></div>                        
                </div>                
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1"> </div>
                    <div class="col-lg-10 col-md-6 col-sm-12" name="listaEscenarios" id="listaEscenarios">                        
                        <h2 class="page-header">Escenarios candidatos a drivers</h2>
                        <table width="100%" border="3" class="tblCentfull">
                            <tbody>
                                <tr>
                                    <th scope="col">Nombre Atributo</th>
                                    <th scope="col">Nombre Escenario</th>
                                    <th scope="col">Estímulo</th>
                                    <th scope="col">Fuente</th>
                                    <th scope="col">Ambiente</th>
                                    <th scope="col">Artefacto</th>
                                    <th scope="col">Respuesta</th>
                                    <th scope="col">Medida</th>
                                    <th scope="col">Prioridad</th>
                                    <th scope="col">Impacto</th>
                                </tr>
                                <%
                                    ArchAssistantBean archB = new ArchAssistantBean();
                                    List<Escenario> listaEsc = archB.ListEscenarios(proyectoActual,"add5");
                                    for (Escenario esce : listaEsc) {
                                        if (esce.getEscPrioridad() != null && esce.getEscPrioridad() > 0) {
                                            out.println("<td>");
                                            out.println(esce.getTblAtributoCalidadacID().getAcNombre());
                                            out.println("</td>");
                                            out.println("<td>");
                                            out.println(esce.getEscNombre());
                                            out.println("</td>");
                                            out.println("<td>");
                                            out.println(esce.getEscEstimulo());
                                            out.println("</td>");
                                            if (esce.getEscFuente() != null) {
                                                out.println("<td>");
                                                out.println(esce.getEscFuente());
                                                out.println("</td>");
                                            } else {
                                                out.println("<td>&nbsp;</td>");
                                            }
                                            out.println("<td>" + esce.getEscAmbiente());
                                            out.println("</td>");
                                            if (esce.getEscArtefacto() != null) {
                                                out.println("<td>");
                                                out.println(esce.getEscArtefacto());
                                                out.println("</td>");
                                            } else {
                                                out.println("<td>&nbsp;</td>");
                                            }
                                            out.println("<td>" + esce.getEscRespuesta());
                                            out.println("</td>");
                                            if (esce.getEscMedidaRespuesta() != null) {
                                                out.println("<td>");
                                                out.println(esce.getEscMedidaRespuesta());
                                                out.println("</td>");
                                            } else {
                                                out.println("<td>&nbsp;</td>");
                                            }
                                            out.println("<td>");
                                            if (esce.getEscPrioridad() != null) {
                                                out.println(esce.getEscPrioridad());
                                            } else {
                                                out.println(0);
                                            }
                                            out.println("</td>");
                                            out.println("<td>");
                                            String estado = esce.getEscEstado();
                                            if (estado != null) {
                                                String vec[] = estado.split(";");
                                                String impacto = "";
                                                if (vec.length > 1) {
                                                    impacto = vec[1];
                                                } else {
                                                    impacto = vec[0];
                                                }
                                                out.println(impacto);
                                            }
                                            out.println("</td>");
                                            out.println("</tr>");
                                        }
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-1"> </div>
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

                                </tr>
                                <%
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
                                                out.println("</tr>");
                                            }
                                        }
                                    }%>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-1"> </div>
                </div>
                <div class="col-lg-12 col-md-8 col-sm-12">
                    <div class="col-lg-1 " ></div>
                    <div class="col-lg-5 col-md-6 col-sm-12" >
                        <from namr="add-5" action="ADD5" method="POST">
                            <h2 class="page-header">Crear y asignar responsabilidades</h2>
                            <table class="tblCentfull">
                                <tbody>
                                    <tr><td>
                                            <input type="text" id="txtNomResp" name="nombreMod" value="" placeholder="Nombre modulo" class="form-control" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <textarea name="descMod" id="txtDesResp" value="" placeholder="Descripcion Modulo" class="form-control" rows="9" ></textarea>
                                        </td>
                                    </tr>                                
                                    <tr>
                                        <td>
                                            <%
                                                Responsabilidad resp = new Responsabilidad();
                                                out.println("<select name='selModulo' id='selModulo'  class='form-control'>");
                                                out.println("<option value='null'>Eliga un modulo </option>");
                                                if (padreActual == null) {
                                                    padreActual = archB.buscarModDescomposicion(proyectoActual);
                                                }
                                                for (Modulo m : listaMod) {
                                                    Modulo padreM = m.getTblModuloModId();
                                                    if (padreM != null) {
                                                        if (padreM.getModId() == padreActual.getModId() && !m.getModFinal().equals("terminado")) {
                                                            out.println("<option value='" + m.getModId() + "'>" + m.getModNombre() + " </option>");
                                                        }
                                                    }
                                                }
                                                out.println("</select>");

                                            %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="alIzq">
                                            <input type="button" id="btnCrearResp" name="btnCrearResp" value="Crear" class="btn btn-primary"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </from>
                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12" id="tblResponsabilidades">
                        <h2 class="page-header"> Responsabilidades de submodulos</h2>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
        </div>
    </form>

    <!-- se debe hacer una validación para comprobar que todos los escenarios han sido asignados a los nuevos módulos hijos  -->
    <!--
    <div class="col-lg-12 col-md-8 col-sm-12">
        <div class="col-lg-1 " ></div>
        <div class="col-lg-5 col-md-6 col-sm-12">
            <form id="add-5" name="add-5" action="ADD5">
                <table width="100" border="0" class="tblCentfull">
                    <tbody>
                        <tr>
                            <td>
                                <h2 class="page-header">Rationale:</h2>
                                <textarea rows="9" cols="120" name="ratadd5" class="form-control parrafo"><%                                ArchAssistantBean p = new ArchAssistantBean();
                                    
                                /*Modulo descMod = (Modulo) request.getSession().getAttribute("padreActual");
                                    if (descMod == null) {
                                        descMod = archB.buscarModDescomposicion(proyectoActual);
                                        request.getSession().setAttribute("padreActual", descMod);
                                    }
                                    Rationaleadd rata = archB.RationaleADD(proyectoActual.getProID(), "add5_" + descMod.getModId());

                                    if (rata != null) {
                                        out.print(rata.getRatAddDescripcion());
                                    }*/
                                    %></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td class="alIzq"><input type="submit" value="Guardar" name="btnAdd5Guardar" class="btn btn-primary"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <div class="col-lg-5 col-md-6 col-sm-12">
            <div>
                <h2 class="page-header">Archivos:</h2>
                <form name="add-3" action="ADD3" method="post" enctype="multipart/form-data">
                    <table width="400" border="0" class="tblCent">
                        <tr><td><input type="file" name="archivo" id="myfile" /></td>
                            <td><input type="submit" value="subir archivo" name="btnAddsubir" class="btn btn-primary"/></td></tr>
                    </table>
                </form>
            </div>
            <div class="divScroll">
                <form name="add-5" action="ADD5">
                    <table width="400" border="0" class="tblCentfull">
                        <tbody>
                            <%/*
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
                        <%@include file='rationale.jsp'%>
        <div class="col-lg-1"></div>
    </div>
    <form name="add-5" action="ADD5" method="get">    
        <table border="0" class="tblCent">
            <tbody>
                <tr>
                    <!--
                    <td class="alDer"><input type="submit" value="Regresar" name="btnAdd5anterior" class="btn btn-primary btn-lg"/></td>
                    <td class="alCen"><input type="submit" value="Cerrar Proyecto" name="btnInicio" class="btn btn-primary btn-lg"/></td>
                    <td class="alIzq"><input type="submit" value="Continuar" name="btnContinuar" class="btn btn-primary btn-lg"/></td>
                    -->
                    <td class="alDer"><button type="submit" name="btnAdd5anterior" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Regresar</button></td>
                            <td class="alCen"><button type="submit" name="btnInicio" class="btn btn-lg btn-default"><i class="fa fa-dot-circle-o"></i> Cerrar Proyecto</button></td>
                            <td class="alIzq"><button type="submit" name="btnContinuar" class="btn btn-info btn-lg next-step">Continuar <i class="fa fa-chevron-right"></i></button></td>
                </tr>
            </tbody>
        </table>
    </form>  
</body>
</html>
