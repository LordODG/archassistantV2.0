<%-- 
    Document   : add3
    Created on : 25/01/2017, 12:30:18 PM
    Author     : Prometheus
--%>
<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="servicios.Escenario"%>
<%@page import="servicios.Modulo"%>
<%@page import="servicios.Rationaleqaw"%>
<%@page import="servicios.Atributocalidad"%>
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
        <form name="add-3" action="ADD3">
            <div class="col-lg-12 col-md-12 col-md-12">            
                    <% if (session.getAttribute("validUsuario") == null) {
                            response.sendRedirect("InicioUsuario.jsp");
                            //redirijo al login
                        }%>
                    <jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
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
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='add8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                }
                            %></tr>
                    </tbody>
                </table><% Modulo m = (Modulo) session.getAttribute("padreActual");
                    if (m == null) {
                        ArchAssistantBean archB = new ArchAssistantBean();
                        Modulo padre = archB.buscarModDescomposicion(proyectoActual);
                        m = padre;
                        session.setAttribute("padreActual", m);
                    }
                    String modNombre = m.getModNombre();%>            
                <h2 class="page-header">Identificar candidatos a drivers para el modulo <%=modNombre%>:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <p class="parrafo">
                            Identificar candidatos a conductores (drivers) arquitecturales, en este punto, usted ha elegido un elemento del sistema para descomponerse, 
                            han priorizado cualquier requisito que afecte a ese elemento. 
                            Durante este paso, usted clasificar&aacute; estos mismos requisitos una segunda 
                            vez basado en su impacto relativo en la arquitectura. Esta segunda clasificaci&oacute;n 
                            puede ser tan simple como asignar &quot;alto impacto&quot;, &quot;Impacto medio&quot; o &quot;bajo impacto&quot;
                            para cada requisito. Dado que los interesados clasificaron inicialmente los requisitos, el segundo Basado en
                            la arquitectura tiene el efecto de ordenar parcialmente los requisitos En varios grupos. 
                            Si usas rankings sencillos altos / medios / bajos, los grupos Ser&iacute;a (H,H) (H,M) (H,L) (M,H) (M,M) (M,L) (L,H) (L,M) (L,L)
                            <!--
                                La primera letra de cada grupo indica la importancia de los requisitos para las partes interesadas. 
                                La segunda letra de cada grupo indica el impacto potencial de los requisitos en la arquitectura. 
                                Los requisitos en el grupo (H, H) son muy importantes para las partes interesadas y se espera que tengan 
                                un alto impacto en la estructura de la arquitectura, y as&iacute; sucesivamente. De estos pares, debe elegir 
                                varios (cinco o seis) requisitos de alta prioridad como el enfoque para los pasos siguientes en el proceso 
                                de dise&ntilde;o. Los requisitos seleccionados se denominan &quot;drivers de arquitectura candidatos&quot;
                                para el elemento que se est&aacute; descomponiendo actualmente. Un an&aacute;lisis posterior puede eliminar 
                                algunos candidatos De la consideraci&oacute;n como conductores arquitect&oacute;nicos, mientras que otros 
                                requisitos pueden ser a&ntilde;adidos A la lista de candidatos. Por ejemplo, aunque un requisito se clasifica 
                                como Alto impacto en la estructura de la arquitectura, la investigaci&oacute;n posterior puede revelar que no lo hace. 
                                El an&aacute;lisis tambi&eacute;n podr&iacute;a revelar que un requisito que no Considera que tiene un alto impacto 
                                en la estructura de la arquitectura, por lo que es A la lista de candidatos. En &uacute;ltima instancia, nuestro 
                                objetivo en los pasos posteriores es identificar los verdaderos conductores de la arquitectura. La lista de requisitos 
                                que resulta de este paso Pueden o no tener un impacto en la estructura de la arquitectura. Los que Se llamar&aacute;n 
                                conductores de arquitectura. Hasta entonces, se les llama conductores de arquitectura candidatos.
                            -->
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-2"></div>                        
                </div>

                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10 col-md-12 col-sm-12">                        
                        <fieldset>
                            <legend>ATRIBUTOS DE CALIDAD SELECCIONADOS</legend>
                            <%
                                session.setAttribute("pasoActual", "add3");
                                ArchAssistantBean p = new ArchAssistantBean();
                                /*List<Atributocalidad> listaAtributos;
                                listaAtributos = p.ListarAtr();
                                */
                                Rationaleqaw ratq4 = p.RationaleQAW(proyectoActual.getProID(), "qaw4");
                                
                                List<Atributocalidad> atrEscogidos = p.ObtenerAtributosEscogidos(ratq4);
                                /*
                                String ratio;
                                String[] listAc = null;
                                int indiceAtribs = 0;
                                if (ratq4 != null) {
                                    ratio = ratq4.getRatQawDescripcion();
                                    indiceAtribs = ratio.indexOf(",~|~|");
                                    if (indiceAtribs != 0) {
                                        String ac = ratio.substring(0, indiceAtribs);
                                        listAc = ac.split(",");
                                    }
                                }*/%>
                            <table width="100%" border="3" class="tblCentfull">
                                <tbody>
                                    <tr>
                                        <!--<th scope="col">Código</th>-->
                                        <th scope="col">Nombre</th>
                                        <th scope="col">Descripción</th>
                                    </tr>                                
                                    <%
                                System.out.println("ttttttttttttttttttttt");
                                        for (Atributocalidad at : atrEscogidos) {
                                                out.println("<tr>");
                                                /*out.println("<td>");
                                                out.println("<input type='checkbox' name='attrControl' value='" + at.getAcID() + "'> </input>");
                                                out.println("</td>");*/
                                                out.println("<td>");
                                                out.println(at.getAcNombre());
                                                out.println("</td>");
                                                out.println("<td>");
                                                out.println(at.getAcDescripcion());
                                                out.println("</td>");
                                                out.println("</tr>");
                                        }
                                    %>
                                    </tr>
                                </tbody>
                            </table>
                        </fieldset>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1"></div>
                    <div class="col-lg-10 col-md-12 col-sm-12">                    
                        <fieldset>
                            <h2><legend>ESCENARIOS</legend></h2>
                            <table width="100%" border="3" class="tblCentfull">
                                <tbody>
                                    <tr>
                                        <!--<th scope="col">Código</th>-->
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
                                        List<Escenario> listaEsc = archB.ListEscenarios(proyectoActual,"qaw6");
                                        for (Escenario esce : listaEsc) {
                                            if (esce.getEscPrioridad() != null && esce.getEscPrioridad() > 0) {

                                                /*
                                                out.println("<tr>");
                                                out.println("<td>");
                                                out.println(esce.getEscID());
                                                out.println("</td>");
                                                 */
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
                                                out.println("<div class='uk-form-select' data-uk-form-select>");

                                                out.println("<select name='impacto_" + esce.getEscID() + "' id='impacto_" + esce.getEscID() + "'>");

                                                String estado = esce.getEscEstado();
                                                if (estado != null) {
                                                    String vec[] = estado.split(";");
                                                    String impacto = "";
                                                    if (vec.length > 1) {
                                                        impacto = vec[1];
                                                    } else {
                                                        impacto = vec[0];
                                                    }
                                                    if (impacto.equals("Alto")) {
                                                        out.println("<option value='null'>Eliga impacto </option> <option value='Alto' selected='selected'>Alto </option> <option value='Medio'>Medio </option> <option value='Bajo'>Bajo </option>");
                                                    } else {
                                                        if (impacto.equals("Medio")) {
                                                            out.println("<option value='null'>Eliga impacto</option> <option value='Alto'>Alto</option> <option value='Medio' selected='selected' >Medio</option> <option value='Bajo'>Bajo</option>");
                                                        } else {
                                                            if (impacto.equals("Bajo")) {
                                                                out.println("<option value='null'>Eliga impacto </option> <option value='Alto'>Alto </option> <option value='Medio'>Medio </option> <option value='Bajo' selected='selected'>Bajo </option>");
                                                            } else {
                                                                out.println("<option value='null' selected='selected'>Eliga impacto </option> <option value='Alto'>Alto </option> <option value='Medio'>Medio </option> <option value='Bajo'>Bajo</option>");
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    out.println("<option value='null' selected='selected'>Eliga impacto </option> <option value='Alto'>Alto </option> <option value='Medio'>Medio </option> <option value='Bajo'>Bajo</option>");
                                                }

                                                //out.println("<option value='null' selected='selected'>Eliga impacto<option value='Alto'>Alto<option value='Medio'>Medio<option value='Bajo'>Bajo");
                                                out.println("</select>");
                                                out.println("</div>");
                                                out.println("</td>");
                                                out.println("</tr>");
                                            }
                                        }
                                    %>
                                </tbody>
                            </table>
                        </fieldset>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
                <%@include file='rationale.jsp'%>
        </form>
        <form name="add-3" action="ADD3">    
            <table border="0" class="tblCent">
                <tbody>
                    <tr><!--
                        <td class="alDer"><input type="submit" value="Regresar" name="btnAdd3anterior" class="btn btn-primary btn-lg"/></td>
                        <td class="alCen"><input type="submit" value="Cerrar Proyecto" name="btnInicio" class="btn btn-primary btn-lg"/></td>
                        <td class="alIzq"><input type="submit" value="Continuar" name="btnContinuar" class="btn btn-primary btn-lg"/></td>
                        -->
                        <td class="alDer"><button type="submit" name="btnAdd3anterior" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Regresar</button></td>
                            <td class="alCen"><button type="submit" name="btnInicio" class="btn btn-lg btn-default"><i class="fa fa-dot-circle-o"></i> Cerrar Proyecto</button></td>
                            <td class="alIzq"><button type="submit" name="btnContinuar" class="btn btn-info btn-lg next-step">Continuar <i class="fa fa-chevron-right"></i></button></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
