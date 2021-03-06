<%-- 
    Document   : add4
    Created on : 25/01/2017, 12:30:27 PM
    Author     : Prometheus
--%>

<%@page import="java.io.File"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="Servlets.GuardarArchivo"%>
<%@page import="servicios.Usuario"%>
<%@page import="servicios.Modulo"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="javafx.beans.binding.ListBinding"%>
<%@page import="servicios.Atributocalidad"%>
<%@page import="servicios.Escenario"%>
<%@page import="servicios.Patron"%>
<%@page import="servicios.Tactica"%>
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
        <form name="add-4" action="ADD4">
            <div class="col-lg-12 col-md-12 col-md-12">
                <%                    session.setAttribute("pasoActual", "add4");
                    Usuario u = (Usuario) session.getAttribute("validUsuario");
                    if (u == null) {
                        response.sendRedirect("InicioUsuario.jsp");
                    }%>
                <h2 class="bienvenida"><jsp:useBean id="proyectoActual" scope="session" class="servicios.Proyecto" />
                    <jsp:getProperty name="proyectoActual" property="proNombre" /></h2>
                <table width="100%" border="0" class="tblCent">
                    <tbody>
                        <tr>
                            <% 
                                boolean bandera=false;
                                String avance = proyectoActual.getProAvance();
                                int pas;
                                if (avance.substring(0, 3).equals("add")) {
                                    pas = Integer.parseInt(avance.substring(3));
                                } else {
                                    pas = 0;
                                }
                                switch (pas) {
                                    case 0:
                                        out.println("<td><a href='add0.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 1:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 2:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 3:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 4:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 5:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 6:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 7:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='#' class='btn btn-default btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                    case 8:
                                        out.println("<td><a href='add0.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='¿Que es ADD?'><h1>0</h1></a></td>");
                                        out.println("<td><a href='add1.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Confirmar que hay suficiente información de los requerimientos'><h1>1</h1></a></td>");
                                        out.println("<td><a href='add2.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Escoger un elemento del sistema para descomponerlo'><h1>2</h1></a></td>");
                                        out.println("<td><a href='add3.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Identificar candidatos a drivers'><h1>3</h1></a></td>");
                                        out.println("<td><a href='add4.jsp' class='btn btn-primary btn-redondo'  data-toggle='tooltip' title='Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales'><h1>4</h1></a></td>");
                                        out.println("<td><a href='add5.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Instanciar elementos arquitecturales y asignar responsabilidades'><h1>5</h1></a></td>");
                                        out.println("<td><a href='add6.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Definir las interfaces para los elementos instanciados'><h1>6</h1></a></td>");
                                        out.println("<td><a href='add7.jsp' class='btn btn-info btn-redondo'  data-toggle='tooltip' title='Verificar y refinar los requerimientos haciéndolos restricciones para los elementos instanciados'><h1>7</h1></a></td>");
                                        out.println("<td><a href='add8.jsp' class='btn btn-success btn-redondo'  data-toggle='tooltip' title='Repetir los pasos 2 al 7 para el siguiente elemento a descomponer'><h1>8</h1></a></td>");
                                        break;
                                }
                            %></tr>
                    </tbody>
                </table>
                <h2 class="page-header">Escoger las tácticas de diseño que satisfaga a los drivers arquitecturales:</h2>
                <div class="col-lg-12 col-md-12 col-sm-12"> 
                    <div class="col-lg-3 col-md-2"></div>
                    <div class="col-lg-6 col-md-8 col-sm-12">
                        <p class="parrafo">
                            A esta altura, se debe escoger los principales elementos que aparecerán en la arquitectura y las relaciones entre ellos; para determinar estos elementos se debe tener en cuenta las restricciones y los requerimientos que son candidatos a drivers.
                        </p>
                    </div>
                    <div class="col-lg-3 col-md-2"></div>                        
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1 col-md-2"></div>  
                    <div class="col-lg-10 col-md-6 col-sm-12" name="listaTacticas" id="listaTacticas">                        
                        <h2 class="page-header">Tácticas:</h2>
                        <!-- las tácticas listadas corresponde únicamente a las que satisfagan los drivers del escenario escogido -->
                        <input hidden name="listadoTac"  id="listadoTac" value="" />
                        <table border="1" class="tblCentfull">
                            <tbody>
                                <tr>
                                    <!--<th scope="col">Código</th>-->
                                    <th >Seleccionar</th>
                                    <th >Nombre Atributo</th>
                                    <th >Nombre Tactica</th>
                                    <th >Descripción</th>                        
                                </tr>               
                            <label value="TacticasSeleccionadas" id="lblTactSel"></label>
                            <%
                                ArchAssistantBean archB = new ArchAssistantBean();
                                List<Escenario> listaEsc = archB.ListarCandidatosDriver(proyectoActual);
                                //List<Tactica> listaTacSel = new LinkedList<Tactica>();
                                List<Tactica> listaTac = archB.ListarTacticas();
                                Modulo descMod = (Modulo) request.getSession().getAttribute("padreActual");
                                if (descMod == null) {
                                    descMod = archB.buscarModDescomposicion(proyectoActual);
                                    request.getSession().setAttribute("padreActual", descMod);
                                }
                                String ratmodulo = "add4_" + descMod.getModId();
                                Rationaleadd rata1 = archB.RationaleADD(proyectoActual.getProID(), ratmodulo);

                                String[] rationale = null;
                                if (rata1 != null) {
                                    if (rata1.getRatAddArchivo() != "") {
                                        rationale = rata1.getRatAddArchivo().split("/@/");
                                    }
                                }

                                ArrayList<Integer> lTacticas = new ArrayList<Integer>();
                                ArrayList<Integer> lAtrCalidad = new ArrayList<Integer>();
                                for (Escenario esc : listaEsc) {
                                    //OBTENER EL ATRIBUTO DE CALIDAD DEL ESCENARIO SERA ATR
                                    Atributocalidad atr = esc.getTblAtributoCalidadacID();
                                    //RECORREMOS LA LISTA DE TODAS LAS TACTICAS
                                    Tactica ta = new Tactica();
                                    if (!lAtrCalidad.contains(atr.getAcID())) {
                                        lAtrCalidad.add(atr.getAcID());
                                    }
                                    /*
                                    List<Tactica> lT = archB.ListarTacticasPorAtributo(atr);
                                    for (Tactica tac : listaTac) {
                                        //OBTENER EL ATRIBUTO DE CALIDAD DE LA TACTICA
                                      //  Atributocalidad tacAtributo = tac.getTblAtributocalidadID();
                                        //VALIDAMOS QUE EL ATRIBUTO DE CALIDAD DE LA TACTICA NO SEA NULO
                                        if (tac != null) {
                                            /**
                                             * aqui comparamos el atributo de
                                             * calidad de la tactica sbre la
                                             * cual estamos haciendo el for con
                                             * la el atributo de calidad que
                                             * tiene el escenario candidato a
                                             * driver
                                             *
                                             *
                                     */
 /*
                                            System.out.println("---------------trEscenario "+esc.getEscNombre()+" : "+atr.getAcNombre()+"   atrTactica "+ tac.getTacID()+"  : "+tacAtributo.getAcNombre());
                                            if (tacAtributo.getAcID() == atr.getAcID()) {
                                                System.out.println("Entro son iguales los atributos de calidad ahora la lista tiene "+lTacticas.size() +" elementos");
                                                if (!lTacticas.contains(tacAtributo.getAcID())) {
                                                    System.out.println("Se ingreso elemento no contenido el lTacticas, el id agregado es : " +tacAtributo.getAcNombre());
                                                    lTacticas.add(tacAtributo.getAcID());
                                                }
                                            }
                                        }
                                    }*/
                                }
                                //Recorremos los atributos de calidad asociados a los escenarios que son drivers 
                                List<Tactica> listadoTacticas = new ArrayList<Tactica>();
                                List<Tactica> Tacticas = archB.ListarTacticas();
                                //Iteramos en la lista de los atributos de calidad de los escenarios candidatos a drivers
                                for (Integer id : lAtrCalidad) {
                                    //ahora iteramos en la lista de tacticas

                                    for (Tactica tac : Tacticas) {
                                        //Validamos que el atributo de calidad asociado a la tactica no sea nulo
                                        if (tac.getTblatributocalidadacID() != null) {
                                            //Obtenemos el id del atributo de calidad de la tactica
                                            Integer idTac = tac.getTblatributocalidadacID().getAcID();
                                            //System.out.print("La tactica ID :"+tac.getTacID() +" nombre "+ tac.getTacNombre());
                                            //System.out.println("Tiene asociado el atributo de calidad ID :"+tac.getTblatributocalidadacID().getAcID() +" nombreAtri "+ tac.getTblatributocalidadacID().getAcNombre());
                                            //comparamos si el atributo de calidad del escenario candidato a driver es el mismo que el atriuto de calidad de la tactica
                                            if (idTac == id) {
                                                //System.err.println("Entro las taticas son iguales");
                                                //Agregamos esa tactica al listado,  porque quiere decir que esa tactica satisface el atributo de calidad del escenario
                                                listadoTacticas.add(tac);
                                            }
                                        }
                                    }
                                }
                                /*out.println("<tr>");
                                    out.println("<td>");
                                    out.println("(" + AtrEsc.getAcID()+ ") "+AtrEsc.getAcNombre());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println("<td>");
                                    out.println(AtrEsc.getAcDescripcion());
                                    out.println("</td>");
                                    out.println("</tr>");
                                 */

                                for (Tactica tac : listadoTacticas) {
                                    out.println("<tr>");
                                    out.println("<td>");

                                    if (rationale != null) {
                                        //validamos si el rationale tiene tacticas guardadas que se seleccionaron 
                                        if (rationale.length > 1) {
                                            //indica que se tiene al menos dos valores el rationale y tacticas seleccionadas
                                            //hacemos un split para obtener los id de las tacticas seleccionadas
                                            String[] tact = ((String) rationale[0]).split(",");
                                            boolean band = true;
                                            bandera = true;
                                            for (String s : tact) {

                                                if (Integer.parseInt(s) == tac.getTacID()) {
                                                    band = false;
                                                    out.println("<input  type = 'checkbox' checked name = 'tacticaSel' id='chkTac' value = '" + tac.getTacID() + "'/>");
                                                }
                                            }
                                            if (band) {
                                                out.println("<input  type = 'checkbox' name = 'tacticaSel' id='chkTac' value = '" + tac.getTacID() + "'/>");
                                            }
                                        } else {
                                            out.println("<input  type = 'checkbox' name = 'tacticaSel' id='chkTac' value = '" + tac.getTacID() + "'/>");
                                        }
                                    } else {
                                        out.println("<input  type = 'checkbox' name = 'tacticaSel' id='chkTac' value = '" + tac.getTacID() + "'/>");
                                    }
                                    //out.println(mod.getModId());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println("(" + tac.getTblatributocalidadacID().getAcID() + ") " + tac.getTblatributocalidadacID().getAcNombre());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println("(" + tac.getTacID() + ") " + tac.getTacNombre());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(tac.getTacDescripcion());
                                    out.println("</td>");
                                    //out.println("<td>");
                                    //out.println(mod.getModFinal());
                                    //out.println("</td>");
                                    out.println("</tr>");
                                }
                                out.println("</tbody>");
                                out.println("</table>");
                                out.println("<input class='btn btn-primary alIzq' type='button' value='Guardar Seleccion' name='btnGuardarSeleccion' id='submit'/>");

                            %>

                    </div>
                    <div class="col-lg-1 "></div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="col-lg-1"></div>                      
                    <div class="col-lg-10 col-md-6 col-sm-12" id="tblPatrones"> 
                        <%                            if (rationale != null) {
                                if (rationale.length == 2) {
                                    out.println("<h2 class='page-header'> Patrones relacionados a las tacticas </h2>");
                                    out.println("<table class='tblCentfull alCen' border='1'>");
                                    out.println("<tr>");
                                    out.println("<th> Tactica</th>");
                                    out.println("<th class='alCen'> Patron  </th>");
                                    out.println("</tr>");
                                    Proyecto py = (Proyecto) session.getAttribute("proyectoActual");
                                    String[] patSeleccionados = rationale[1].split(",");
                                    String descp = rationale[1];
                                    System.out.println("******* Lo que tiene como seleccionados: " + descp);
                                    if (descp != null) {
                                        //String[] ratio = descp.split("/@/");
                                        String[] seleccionadas = rationale[0].split(",");

                                        for (String t : seleccionadas) {
                                            Tactica tac = archB.ObtenerTactica(Integer.parseInt(t));
                                            if (tac != null) {
                                                out.println("<tr>");
                                                out.println("<td> " + tac.getTacNombre() + "</td>");
                                                out.println("<td>");
                                                int i = 0;
                                                out.println("<table class='tblCentfull alCen' border='0'>");
                                                for (Patron p : tac.getListadoPatrones()) {
                                                    if (i == 0) {
                                                        out.println("<tr>");
                                                        out.println("<th> Nombre </th>");
                                                        out.println("<th> Descripcion </th>");
                                                        out.println("<th> Seleccionar </th>");
                                                        out.println("</tr>");
                                                    }
                                                    i++;
                                                    if (p != null) {
                                                        out.println("<tr>");
                                                        //out.println("<td style= rowspan='7' align='center' bgcolor='#f8f8f8'> " + p.getPatID() + "</td>");
                                                        out.println("<td>" + p.getPatNombre() + "</td>");
                                                        out.println("<td>" + p.getPatDescripcion() + "</td>");
                                                        out.println("<td>");
                                                        if (patSeleccionados != null) {
                                                            boolean band = false;
                                                            for (String ptn : patSeleccionados) {
                                                                String[] ptp = ptn.split("_");
                                                                if (p.getPatID() == Integer.parseInt(ptp[2])) {
                                                                    band = true;
                                                                }
                                                            }

                                                            if (band) {
                                                                out.println("<input checked type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + py.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                                            } else {
                                                                out.println("<input  type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + py.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                                            }
                                                        } else {
                                                            out.println("<input  type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + py.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                                        }
                                                        out.println("</td>");
                                                        out.println("</tr>");
                                                    }
                                                }
                                                out.println("</table>");
                                                out.println("</td>");
                                                out.println("</tr>");
                                            }
                                        }
                                    }
                                    out.println("</table>");
                                    
                                    out.println("<input type='button' class='btn btn-primary alIzq' id='btnElegirPatrones' onclick='SeleccionarPatrones()' value='Elegir patrones'>");

                                }
                            }
                        %>
                    </div>
                    <div class="col-lg-1"></div>  
                </div>
                <div class="col-lg-12 col-md-6 col-sm-12" name="listaTacticas" id="listaTacticas">                                       
                    <div class="col-lg-1"></div>
                    <div class="col-lg-5 col-md-8 col-sm-12" >
                        <from name="add-4" action="ADD4" method="POST">
                            <h2 class="page-header">Datos del nuevo modulo</h2>
                            <table class="tblCentfull">
                                <tbody>
                                    <tr><td>
                                            <input type="text" id="txtNomMod" name="nombreMod" value="" placeholder="Nombre modulo" class="form-control" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <textarea name="descMod" id="txtDesMod" value="" placeholder="Descripcion Modulo" class="form-control" rows="9" cols="100"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="alIzq">
                                            <input type="button" id="btnCrearModulo" name="btnCrearModulo" value="Crear" class="btn btn-primary"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </from>
                    </div>
                    <div class="col-lg-5 col-md-12 col-sm-12"> 
                        <%                            out.println("<h2 class='page-header'> Submodulos de " + descMod.getModNombre() + "</h2>");
                        %>
                        <div id="tblModulos"></div>                                     
                    </div>                        
                    <div class="col-lg-1"></div>
                </div>
                <%@include file='rationale.jsp'%>

                <!--
                                <div class="col-lg-12 col-md-12 col-sm-12"> 
                                    <div class="col-lg-1"></div>
                                    <div class="col-lg-5 col-md-6 col-sm-12">
                                        <from id="add-4" name="add-4" action="ADD4">
                                            <h2 class="page-header">Rationale:</h2>
                                            <textarea rows="9" cols="120" name="ratadd4" id="txtRationale" class="form-control parrafo"><%                                                session.setAttribute("paso", "add4");
                                                /*if (rata != null && rationale != null) {
                                                    if (rationale.length > 1) {
                                                        out.print(rationale[1]);
                                                    } else {
                                                        out.print(rationale[0]);
                                                    }
                                                }*/
                %></textarea>
            <br/>
            <input type="submit" value="Guardar" name="btnAdd4Guardar" class="btn btn-primary"/>

    </div>
    <div class="col-lg-5 col-md-6 col-sm-12">
        <div>
            <h2 class="page-header">Archivos:</h2>
            <form name="add-4" action="ADD4" method="post" enctype="multipart/form-data">
                <table width="400" border="0" class="tblCent">
                    <tr><td><input type="file" name="archivo" id="myfile"/></td>
                        <td><input type="submit" value="subir archivo" name="btnAddsubir" class="btn btn-primary"/></td></tr>
                </table>
            </form>
        </div>
        <div class="divScroll">
            <form name="add-5" action="ADD5">
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
</div>
                -->
            </div>
        </form>
        <form name="add-4" action="ADD4">    
            <table border="0" class="tblCent">
                <tbody>
                    <tr>
                        <td class="alDer"><button type="submit" name="btnAdd4anterior" class="btn btn-lg btn-info prev-step"><i class="fa fa-chevron-left"></i> Regresar</button></td>
                        <td class="alCen"><button type="submit" name="btnInicio" class="btn btn-lg btn-default"><i class="fa fa-dot-circle-o"></i> Cerrar Proyecto</button></td>
                        <td class="alIzq"><button type="submit" name="btnContinuar" class="btn btn-info btn-lg next-step">Continuar <i class="fa fa-chevron-right"></i></button></td>
                        <!--
                        <td class="alDer"><input type="submit" value="Regresar" name="btnAdd4anterior" class="btn btn-primary btn-lg"/></td>
                        <td class="alCen"><input type="submit" value="Cerrar Proyecto" name="btnInicio" class="btn btn-primary btn-lg"/></td>
                        <td class="alIzq"><input type="submit" value="Continuar" name="btnContinuar" class="btn btn-primary btn-lg"/></td>
                        -->
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
