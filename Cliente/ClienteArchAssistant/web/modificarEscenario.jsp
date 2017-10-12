<%-- 
    Document   : modificarEscenario
    Created on : 2/02/2017, 04:39:18 PM
    Author     : Prometheus
--%>
<%@page import="servicios.Escenario"%>

<form name="modEsc" action="ActualizarEscenario">
    <table width="100" border="0" class="tblCentfull">
        <tbody>
            <tr>
                <td>Nombre:</td>
                <td><input type="text" name="txtQawNombre" id="txtQawNombre" class="form-control"
                           <%
        /*                       String refinar = session.getAttribute("refinar").toString();
                               int ref = 0;
                               if (refinar != null) {
                                   ref = Integer.parseInt(refinar);
                               }
                               Escenario esc = (Escenario) session.getAttribute("escenarioActual");
                               if (esc != null) {
                                   if (esc.getEscNombre() != null) {
                                       out.println("value = \"" + esc.getEscNombre() + "\"");
                                   }
                               }

        */                   %>
                           />
                </td>
            </tr>
            <tr>
                <td>Estímulo:</td>
                <td><input type="text" name="txtQawEstimulo" id="txtQawEstimulo" class="form-control"
                           <%                               
        /*                       if (esc != null) {
                                   if (esc.getEscEstimulo() != null) {
                                       out.println("value = \"" + esc.getEscEstimulo() + "\"");
                                   }
                               }
        */                   %>
                           />
                </td>
            </tr>
            <%
        /*        if (esc != null) {

                    if (ref == 1) {
                        out.println("<tr>");
                        out.println("<td>Fuente:</td>");
                        out.println("<td><input type=\"text\" name=\"txtQawFuente\" class=\"form-control\" ");
                        if (esc.getEscFuente() != null) {
                            out.println("value = \"" + esc.getEscFuente() + "\"/>");
                        }
                        out.println("</td>");
                        out.println("</tr>");
                        out.println("<tr>");
                        out.println("<td>Artefacto:</td>");
                        out.println("<td><input type=\"text\" name=\"txtQawArtefacto\" class=\"form-control\" ");
                        if (esc.getEscArtefacto() != null) {
                            out.println("value = \"" + esc.getEscArtefacto() + "\"/>");
                        }
                        out.println("</td>");
                        out.println("</tr>");
                    }
                }
        */    %>
            <tr>
                <td>Ambiente:</td>
                <td><input type="text" name="txtQawAmbiente" id="txtQawAmbiente" class="form-control"
                           <%
        /*                       if (esc != null) {
                                   if (esc.getEscAmbiente() != null) {
                                       out.println("value = \"" + esc.getEscAmbiente() + "\"");
                                   }
                               }
        */                   %>
                           />
                </td>
            </tr>
            <tr>
                <td>Respuesta:</td>
                <td><input type="text" name="txtQawRespuesta" id="txtQawRespuesta" class="form-control"
                           <%
        /*                       if (esc != null) {
                                   if (esc.getEscRespuesta() != null) {
                                       out.println("value = \"" + esc.getEscRespuesta() + "\"");
                                   }
                               }
        */                   %>
                </td>
            </tr>
            <%
        /*        if (esc != null) {
                    if (ref == 1) {
                        out.println("<tr>");
                        out.println("<td>Medida de la Respuesta:</td>");
                        out.println("<td><input type=\"text\" name=\"txtQawMedida\"");
                        if (esc.getEscMedidaRespuesta() != null) {
                            out.println("value = \"" + esc.getEscMedidaRespuesta() + "\"  class=\"form-control\"/>");
                        }
                        out.println("</td>");
                        out.println("</tr>");
                    }
                }
        */    %>
            <tr>
                <td><input type="button" value="guardar" name="btnQawGuardarEscenario" id="modEscenario" class="btn btn-primary"/></td>
                <td class="alDer"><input type="reset" value="Cancelar" class="btn btn-danger"/></td>
            </tr>
        </tbody>
    </table>
</form>
