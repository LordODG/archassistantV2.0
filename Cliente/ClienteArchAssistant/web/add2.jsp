<%-- 
    Document   : add2
    Created on : 25/01/2017, 12:30:08 PM
    Author     : Prometheus
--%>

<%@page import="servicios.Proyecto"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Dictionary"%>
<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
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
        <script src="./js/jquery-1.min.js" ></script>-->
        <script src="./js/jquery-3.2.1.js"></script>
        <script src="./js/bootstrap.min.js"></script>
        <script src="./js/editor.js"></script>
        <script src="./js/funciones.js"></script>
    </head>
    <body>
        <%@include file='header.jsp'%> 
        <div class="col-lg-12 col-md-12 col-md-12">
            <form name="add-2" action="ADD2">
                <h2 class="bienvenida">                    
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
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
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
                <h2 class="page-header">Escoger un elemento del sistema para descomponerlo:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <p class="parrafo">
                            Durante este paso, se escoge el elemento en el cual se enfocará el proceso, el primer elemento que se descompone es el sistema en sí, en caso de ya haber sido descompuesto, cada elemento debe tener asignados algunos de los requerimientos.
                            Para escoger un elemento, hay que basarse en las siguientes áreas:
                        </p>
                        <ul>
                            <li>Conocimiento de la arquitectura.</li>
                            <li>Riesgo y dificultad.</li>
                            <li>Criterio de negocios.</li>
                            <li>Criterio organizacional.</li>
                        </ul>
                        <p class="parrafo">
                            inicialmente será todo el sistema, además todos los escenarios estarán asociados a este único módulo
                            posteriormente, se dividirá el sistema en módulos y a cada uno se le asignará un conjunto de escenarios
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-2"></div>
                </div>
                <div class="col-lg-1"></div>
                <div id="divModulos" class="col-lg-10 col-md-12 col-sm-12">                   
                    <h2 class="page-header"> Módulos del sistema:</h2>
                    <input id="txtModDesc" hidden="true" readonly="true" text="nada"/>
                    <!--  -->
                    <table width="100%" border="3" class="tblCentfull">
                        <tbody>
                            <tr>
                                <th scope="col"></th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Descripción</th>
                                <th scope="col">Estado modulo</th>
                                    <%
                                        /*ArchAssistantBean archB = new ArchAssistantBean();
                                        Modulo padre = null;
                                        Map<Modulo, List<Modulo>> arbol = new HashMap<Modulo, List<Modulo>>();
                                        for (Modulo mod : listaMod) {
                                            padre = mod;
                                            List<Modulo> hijos = new LinkedList<Modulo>();
                                            for (Modulo m : listaMod) {                                
                                                if (m.getTblModuloModId()== padre) {
                                                    hijos.add(m);
                                                }
                                            }
                                            arbol.put(padre, hijos);
                                        }*/
                                        session.setAttribute("pasoActual", "add2");

                                        ArchAssistantBean archB = new ArchAssistantBean();
                                        //Modulo descMod = archB.buscarModDescomposicion(proyectoActual);
                                        List<Modulo> listaMod = archB.ListarModulos(proyectoActual);
                                        //session.setAttribute("padreActual", descMod);
                                        /*if (listaMod == null || listaMod.size() == 0) {
                                            Modulo sys = new Modulo();
                                            sys.setModNombre("Modulo " + proyectoActual.getProNombre());
                                            sys.setModDescripcion("Para la primera iteración se como modulo a descomponer el sistema completo ");
                                            sys.setModFinal("Descomposicion");
                                            sys.setTblModuloModId(null);
                                            sys.setTblProyectoProID(proyectoActual);
                                            archB.crearMod(sys);
                                            Modulo descMod = (Modulo) session.getAttribute("padreActual");
                                            if (descMod == null) {
                                                descMod = sys;
                                                session.setAttribute("padreActual", descMod);
                                            }
                                            listaMod.add(sys);
                                        }*/
                                        for (Modulo mod : listaMod) {
                                            out.println("<tr>");
                                            out.println("<td>");
                                            String estado = mod.getModFinal();
                                            Modulo mD = (Modulo) request.getSession().getAttribute("padreActual");
                                            if (mD != null) {
                                                if (mod.getModId() == mD.getModId() && !estado.equals("Procesado")) {
                                                    out.println("<input checked type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "' checked />");
                                                } else {
                                                    if (estado.equals("Procesado")) {
                                                        out.println("<input disabled  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                    } else {
                                                        out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                    }
                                                }
                                            } else {
                                                if (estado.equals("Descomposicion")) {
                                                    //session.setAttribute("padreActual",mod);
                                                    out.println("<input checked type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "' checked />");
                                                } else {
                                                    if (estado.equals("Procesado")) {
                                                        out.println("<input disabled  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                    } else {
                                                        out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                    }
                                                }
                                            }

                                            //out.println(mod.getModId());
                                            out.println("</td>");
                                            out.println("<td>");
                                            out.println(mod.getModNombre());
                                            out.println("</td>");
                                            out.println("<td>");
                                            out.println(mod.getModDescripcion());
                                            out.println("</td>");
                                            out.println("<td>");
                                            out.println(mod.getModFinal());
                                            out.println("</td>");
                                            out.println("</tr>");
                                        }


                                        /*
                                        if (padre != null) {                            
                                            for (Modulo mod : listaMod) {
                                                String estado = mod.getModFinal();
                                                if (mod.getTblModuloModId() == padre) {
                                                    out.println("<table width='100%' border='3' class='tblCentfull'>");
                                                    out.println("<tbody>");
                                                    out.println("<tr>");
                                                    out.println("<th scope='col'></th>");
                                                    out.println("<th scope='col'>Nombre</th>");
                                                    out.println("<th scope='col'>Descripción</th>");
                                                    out.println("<th scope='col'>Módulo final</th>");
                                                    out.println("</tr>");
                                                    out.println("<tr>");
                                                    out.println("<td>");
                                                    if (estado.equals("Descomposicion")) {
                                                        out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "' checked />");
                                                    } else {
                                                        if (estado.equals("Procesado")) {
                                                            out.println("<input disabled  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                        } else {
                                                            out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                        }
                                                    }
                                                    //out.println(mod.getModId());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModNombre());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModDescripcion());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModFinal());
                                                    out.println("</td>");
                                                    out.println("</tr>");
                                                } else {
                                                    out.println("<tr>");
                                                    out.println("<td>");

                                                    if (estado.equals("Descomposicion")) {
                                                        out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "' checked />");
                                                    } else {
                                                        if (estado.equals("Procesado")) {
                                                            out.println("<input disabled  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                        } else {
                                                            out.println("<input  type = 'radio' name = 'selPadre' onchange='SeleccionPadre()' value = '" + mod.getModId() + "'/>");
                                                        }
                                                    }
                                                    //out.println(mod.getModId());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModNombre());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModDescripcion());
                                                    out.println("</td>");
                                                    out.println("<td>");
                                                    out.println(mod.getModFinal());
                                                    out.println("</td>");
                                                    out.println("</tr>");

                                                }
                                            }
                                        }*/%>
                        </tbody>
                    </table>
                </div>
                <%@include file='rationale.jsp'%>
            </form>
            <form name="add-2" action="ADD2">    
                
                <table border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <td class="alDer"><button type="submit" name="btnAdd2anterior" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Regresar</button></td>
                            <td class="alCen"><button type="submit" name="btnInicio" class="btn btn-lg btn-default"><i class="fa fa-dot-circle-o"></i> Cerrar Proyecto</button></td>
                            <td class="alIzq"><button type="submit" name="btnContinuar" class="btn btn-info btn-lg next-step">Continuar <i class="fa fa-chevron-right"></i></button></td>
                        </tr>
                    </tbody>
                </table>
                <!--
                <ul class="list-unstyled list-inline pull-right">
                    <li><button type="button" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Anterior</button></li>
                    <li><button type="submit" class="btn btn-lg btn-default" name="cerrarProyecto">Cerrar Proyecto  <i class="fa fa-dot-circle-o"></i></button></li>
                    <li><button type="button" class="btn btn-lg btn-info next-step">Siguiente <i class="fa fa-chevron-right"></i></button></li>
                </ul>-->
            </form>
        </div>
    </body>
</html>
