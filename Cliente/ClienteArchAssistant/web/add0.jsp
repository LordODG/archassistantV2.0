<%-- 
    Document   : add0
    Created on : 25/01/2017, 11:26:21 AM
    Author     : Prometheus
--%>

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
        <form name="add-0" action="ADD0">
            <div class="col-lg-12 col-md-12 col-md-12">
                <h2 class="bienvenida">                    
                    <% if (session.getAttribute("validUsuario") == null) {
                            response.sendRedirect("InicioUsuario.jsp");
                            //redirijo al login
                        }%><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <% 
                                session.setAttribute("pasoActual", "add0");
                                String avance = proyectoActual.getProAvance();
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
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='add8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Que es ADD?</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-1"></div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <p class="parrafo">El m&eacute;todo ADD es un enfoque a la definici&oacute;n de una arquitectura de software en el que se basa el proceso de dise&ntilde;o de los requisitos del software de atributos de calidad. ADD es un proceso de dise&ntilde;o recursivo que descompone un sistema o elemento del sistema mediante la aplicaci&oacute;n de t&aacute;cticas arquitect&oacute;nicas [Bass 03] y los patrones que satisfacen los drivers. ADD sigue esencialmente el ciclo &ldquo;Plan, Do, and Check&rdquo;:</p>

                        <p class="parrafo"> Plan: Los atributos de calidad y las restricciones de dise&ntilde;o son consideradas para seleccionar qu&eacute; tipos de elementos se utilizan en la arquitectura. Do: Los elementos son instanciados para satisfacer los atributos de calidad, as&iacute; como los requisitos funcionales. Check: El resultado es analizado para determinar si los requisitos son satisfechos.</p>                        

                    </div>
                    <div class="col-lg-5 col-md-6 col-sm-12">
                        <p class="parrafo"> Este proceso se repite hasta que todos los requisitos de gran importancia arquitect&oacute;nica se cumplen.</p>
                        
                        <img src="img/pasosadd.png" class="alCen" style="width: 400px" alt="pasosdel metodo ADD"/>

                    </div>
                    <div class="col-lg-1"></div>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12">    
                    <ul class="list-unstyled list-inline alCen">
                        <li><button type="submit" class="btn btn-lg btn-default" name="btnAddInicio">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                        <li><button type="submit" class="btn btn-lg btn-info next-step" name="btnAddContinuar">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                    </ul>
                </div>     
        </form>
    </body>
</html>
