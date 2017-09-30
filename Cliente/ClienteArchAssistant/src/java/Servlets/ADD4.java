/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Beans.ArchAssistantBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.WebServiceRef;
import servicios.ArcAssistantService_Service;
import servicios.Modulo;
import servicios.Patron;
import servicios.Proyecto;
import servicios.Rationaleadd;
import servicios.Tactica;

/**
 *
 * @author GOMEZ
 */
@WebServlet(name = "ADD4", urlPatterns = {"/ADD4"})
public class ADD4 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @WebServiceRef(wsdlLocation = "WEB-INF/wsdl/localhost_8080/ArchAssistant/ArcAssistantService.wsdl")
    private ArcAssistantService_Service service;
    private ArrayList<Tactica> tacSel = new ArrayList<>();
    ArchAssistantBean archB = new ArchAssistantBean();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String guardar = request.getParameter("btnAdd4Guardar");
        
        String regresar = request.getParameter("btnAdd4anterior");
        String crearModulo = request.getParameter("btnCrearModulo");
        String canc = request.getParameter("btnInicio");
        if (canc != null) {
            response.sendRedirect("InicioUsuario.jsp");
        }        
        if (regresar != null) {
            response.sendRedirect("add3.jsp");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String msj = request.getParameter("mensaje");
        processRequest(request, response);
        String mensaje = request.getParameter("peticion");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String continuar = request.getParameter("btnContinuar");
        
        if (continuar != null) {
            if (request.getParameter("ratadd4") != "") {
                response.sendRedirect("add5.jsp");
            } else {
                out = response.getWriter();
                out.println("debe llenar e campo Rationale antes de contunuar");

            }
        }
        
        //obtenemos el proyecto actual
        Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
        //obtenemos el padre actual que es el modulo en descomposicion si no existe lo obtenemos de la base de datos
        //y lo almacenamos en la variable de sesion
        Modulo descMod = (Modulo) request.getSession().getAttribute("padreActual");
        if (descMod == null) {
            descMod = archB.buscarModDescomposicion(proy);
            request.getSession().setAttribute("padreActual", descMod);
        }
        //obtenemos el rationale en la base de datos para el modulo en descomposicion
        System.out.println("]]]]]]Proyecto en descomposicion  " + "add4_" + descMod.getModId());
        Rationaleadd rata = archB.RationaleADD(proy.getProID(), "add4_" + descMod.getModId());

        out.println("<h2 class='page-header'> Patrones relacionados a las tacticas </h2>");
        out.println("<table class='tblCentfull alCen' border='1'>");
        out.println("<tr>");
        out.println("<th> Tactica</th>");
        out.println("<th class='alCen'> Patron  </th>");
        out.println("</tr>");
        String listado = request.getParameter("listadot");
        if (mensaje != null) {
            if (mensaje.equals("guardarPatrones")) {
                System.out.println("Servlets.ADD4.doGet() -----------Entro a guardar Patrones");
                String listadop = request.getParameter("listadop");
                if (listadop != null) {

                    //rata.setRatAddArchivo(request.getParameter("listadot") + "/@/" + request.getParameter("listadop"));
                    //rata.setTblProyectoProID(proy);
                    //rata.setRatAddPaso("add4_" + descMod.getModId());
                    
                    if (rata == null) {
                        rata = new Rationaleadd();
                    }
                    rata.setRatAddDescripcion("    ");
                    rata.setTblProyectoProID(proy);
                    rata.setRatAddPaso("add4_" + descMod.getModId());
                    rata.setRatAddArchivo(request.getParameter("listadot") + "/@/" + request.getParameter("listadop"));
                    guardarRationaleAdd(rata);
                    
                    proy.setProAvance("add4");
                    modificarProyecto(proy);
                    System.out.println("-------Se va a guardar el add con el valor : " + rata.getRatAddArchivo());
                    System.out.println("-------ID:" + rata.getRatAddID());
                    System.out.println("-------DESCP:" + rata.getRatAddDescripcion());
                    System.out.println("-------ARCH:" + rata.getRatAddArchivo());
                    System.out.println("-------PASO:" + rata.getRatAddPaso());
                    System.out.println("-------PRYECTO:" + rata.getTblProyectoProID());

                    //guardarRationaleAdd(rata);

                    String[] seleccionadas = listado.split(",");
                    String Listadop = request.getParameter("listadop");
                    String[] patSeleccionados = Listadop.split(",");
                    for (String t : seleccionadas) {
                        Tactica tac = archB.ObtenerTactica(Integer.parseInt(t));

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
                                        out.println("<input  type = 'checkbox' checked name = 'patronSel' id='chkPat' value = '" + proy.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                    } else {
                                        out.println("<input  type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + proy.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                    }
                                    out.println("</td>");
                                    out.println("</tr>");
                                }
                            }
                        }
                        out.println("</table>");
                        out.println("</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                    out.println("<input type='button' class='btn btn-primary alIzq' id='btnElegirPatrones' onclick='SeleccionarPatrones()' value='Elegir patrones'>");
                }
            }
        } else {
            if (listado != null) {
                if (rata == null) {
                    rata = new Rationaleadd();
                }
                String[] patSeleccionados = null;
                String descp = rata.getRatAddArchivo();
                System.out.println("******* Lo que tiene como seleccionados: " + descp);
                if (descp != null) {
                    String[] ratio = descp.split("/@/");
                    if (ratio.length > 1) {
                        if (ratio.length == 2) {
                            patSeleccionados = ratio[0].split(",");
                            rata.setRatAddArchivo(listado + "/@/" + ratio[1]);
                        } else {
                            rata.setRatAddArchivo(listado + "/@/" + ratio[0]);
                        }
                    } else {
                        rata.setRatAddArchivo(listado + "/@/" + ratio[0]);
                    }
                }

                rata.setTblProyectoProID(proy);
                rata.setRatAddPaso("add4_" + descMod.getModId());
                guardarRationaleAdd(rata);
                proy.setProAvance("add4");
                modificarProyecto(proy);
                String[] seleccionadas = listado.split(",");
                List<Patron> patrones = new ArrayList<Patron>();
                patrones = archB.ListarPatronesT();
                for (String t : seleccionadas) {
                    Tactica tac = archB.ObtenerTactica(Integer.parseInt(t));

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
                                    out.println("<input checked type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + proy.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                } else {
                                    out.println("<input  type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + proy.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
                                }
                            } else {
                                out.println("<input  type = 'checkbox' name = 'patronSel' id='chkPat' value = '" + proy.getProID() + "_" + tac.getTacID() + "_" + p.getPatID() + "'/>");
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
            out.println("</table>");
            out.println("<input type='button' class='btn btn-primary alIzq' id='btnElegirPatrones' onclick='SeleccionarPatrones()' value='Elegir patrones'>");

        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        processRequest(request, response);

        String msj = request.getParameter("mensaje");
        
        if (msj.equals("crear")) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
            ArchAssistantBean archB = new ArchAssistantBean();
            Modulo nmod = new Modulo();
            String nomMod = request.getParameter("nombreModulo");
            String descMod = request.getParameter("descripcionModulo");

            Modulo padreActual = (Modulo) request.getSession().getAttribute("padreActual");
            if (padreActual == null) {
                padreActual = archB.buscarModDescomposicion(proy);
                request.getSession().setAttribute("padreActual", padreActual);
            }
            nmod.setModNombre(nomMod);
            nmod.setModDescripcion(descMod);
            nmod.setModFinal("SubModulo");
            nmod.setTblModuloModId(padreActual);
            nmod.setTblProyectoProID(proy);
            archB.crearMod(nmod);
            out.println("<table width='100%' border='1' class='tblCentfull'>");
            out.println("<tbody>");
            out.println("<tr>");
            out.println("<th scope='col'>Nombre</th>");
            out.println("<th scope='col'>Descripción</th>");
            out.println("</tr>");
            List<Modulo> listaMod = archB.ListarModulos(proy);
            if (padreActual == null) {
                padreActual = archB.buscarModDescomposicion(proy);
            }
            for (Modulo m : listaMod) {
                Modulo padreM = m.getTblModuloModId();
                if (padreM != null) {
                    if (padreM.getModId() == padreActual.getModId() && !m.getModFinal().equals("terminado")) {
                        out.println("<tr>");
                        out.println("<td>");
                        out.println(m.getModNombre());
                        out.println("</td>");
                        out.println("<td>");
                        out.println(m.getModDescripcion());
                        out.println("</td>");
                        //out.println("<td>");
                        //out.println(mod.getModFinal());
                        //out.println("</td>");                                        
                        out.println("</tr>");
                    }
                }
            }
            out.println("</tbody>");
            out.println("</table>");
        } else {
            if (msj.equals("listar")) {
                response.setContentType("text/html; charset=UTF-8");
                PrintWriter out = response.getWriter();
                Proyecto proy = (Proyecto) request.getSession().getAttribute("proyectoActual");
                
                Modulo padreActual = (Modulo) request.getSession().getAttribute("padreActual");
                if (padreActual == null) {
                    padreActual = archB.buscarModDescomposicion(proy);
                    request.getSession().setAttribute("padreActual", padreActual);
                }                
                out.println("<table width='100%' border='1' class='tblCentfull'>");
                out.println("<tbody>");
                out.println("<tr>");
                out.println("<th scope='col'>Nombre</th>");
                out.println("<th scope='col'>Descripción</th>");
                out.println("</tr>");
                List<Modulo> listaMod = archB.ListarModulos(proy);
                if (padreActual == null) {
                    padreActual = archB.buscarModDescomposicion(proy);
                }
                for (Modulo m : listaMod) {
                    Modulo padreM = m.getTblModuloModId();
                    if (padreM != null) {
                        if (padreM.getModId() == padreActual.getModId() && !m.getModFinal().equals("terminado")) {
                            out.println("<tr>");
                            out.println("<td>");
                            out.println(m.getModNombre());
                            out.println("</td>");
                            out.println("<td>");
                            out.println(m.getModDescripcion());
                            out.println("</td>");
                            //out.println("<td>");
                            //out.println(mod.getModFinal());
                            //out.println("</td>");                                        
                            out.println("</tr>");
                        }
                    }
                }
                out.println("</tbody>");
                out.println("</table>");
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void modificarProyecto(servicios.Proyecto parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.modificarProyecto(parameter);
    }

    private void guardarRationaleAdd(servicios.Rationaleadd parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.guardarRationaleAdd(parameter);
    }

    private void crearModulo(servicios.Modulo parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        port.crearModulo(parameter);
    }

    private Modulo buscarModulo(int parameter) {
        // Note that the injected javax.xml.ws.Service reference as well as port objects are not thread safe.
        // If the calling of port operations may lead to race condition some synchronization is required.
        servicios.ArcAssistantService port = service.getArcAssistantServicePort();
        return port.buscarModulo(parameter);
    }

}
