/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ec.cliente.app.servlet;

import com.ec.cliente.app.negocio.PruebaNegocio;
import com.google.gson.Gson;
import com.graba.log.clases.ClsGrabaLog;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONWriter;

/**
 *
 * @author adria
 */
@WebServlet(name = "ClienteServlet", urlPatterns = {"/ClienteServlet"})
public class ClienteServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static PruebaNegocio negocio = new PruebaNegocio();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String op = request.getParameter("opcion");
        List<String> parametros = new ArrayList<>();
        Gson gson = new Gson();
        String respons = "";
        String CodResponse = "", MsjResponse = "";
        String scontrol = "";
        String procedimiento = "";
        short num = 3;
        PrintWriter out = response.getWriter();
        ClsGrabaLog ObjLOG = new ClsGrabaLog("Cliente-APP");
        StringWriter stringWriter = new StringWriter();
        JSONWriter writer = new JSONWriter(stringWriter);
        Writer writer_error = new StringWriter();
        JSONObject resp_json = null;
        Scanner s = null;
        int index = 0;

        try {
            switch (op) {
                case "ConsCLiente":
                    procedimiento = "PUB_CRUD_ROL";
                    try {
                        index = 0;

                        parametros.add(index, request.getParameter("OBJ[OPCION]") != null ? request.getParameter("OBJ[OPCION]") : "");
                        parametros.add(++index, request.getParameter("OBJ[ID]") != null ? request.getParameter("OBJ[ID]") : "");
                        parametros.add(++index, request.getParameter("OBJ[NOMBRE]") != null ? request.getParameter("OBJ[NOMBRE]") : "");
                        parametros.add(++index, request.getParameter("OBJ[DESCRIPCION]") != null ? request.getParameter("OBJ[DESCRIPCION]") : "");
                        parametros.add(++index, request.getParameter("OBJ[ESTADO]") != null ? request.getParameter("OBJ[ESTADO]") : "");
                        parametros.add(++index, request.getParameter("OBJ[USUARIO]") != null ? request.getParameter("OBJ[USUARIO]") : "");

                        ObjLOG.printmsg(num, getServletName(), "OP: PUB_CRUD_ROL =>" + parametros.toString());
                        respons = negocio.procesar(procedimiento, parametros);

                        resp_json = new JSONObject(respons);

                        if (resp_json.get("CodResponse").equals("00")) {
                            scontrol = resp_json.get("data").toString();
                        }

                        CodResponse = resp_json.get("CodResponse").toString();
                        MsjResponse = resp_json.get("MsjResponse").toString();
                        ObjLOG.printmsg(num, getServletName() + " - " + op, "Metodo: " + "PUB_CRUD_ROL" + " RESPONSE: " + "[Codigo: " + CodResponse + " - Mensaje: " + MsjResponse + "]");
                        //String listaGson = gson.toJson(scontrol);
                    } catch (JSONException e) {
                        System.out.println(e.toString());
                        CodResponse = "99";
                        MsjResponse = "Error, ocurrió una excepción.";
                        ObjLOG.printmsg(num, getServletName(), "OP: PUB_CRUD_ROL => Excepción:" + CodResponse + "-" + MsjResponse + " | " + e.toString());
                    } finally {
                        writer.object();
                        writer.key("List").value(scontrol);
                        writer.key("CodResponse").value(CodResponse);
                        writer.key("MsjResponse").value(MsjResponse);
                        writer.endObject();
//                        out.println(listaGson);
//                        out.flush();
//                        out.close();
                    }
                    break;
                default:
                    writer.object();
                    writer.key("CodResponse").value("99");
                    writer.key("MsjResponse").value("Opción seleccionada no existe.");
                    writer.endObject();
            }
        } catch (JSONException e) {
            e.printStackTrace(new PrintWriter(writer_error));
            writer.object();
            writer.key("CodResponse").value("99");
            writer.key("MsjResponse").value("Error en la solicitud.");
            writer.key("MsjLog").value("Error en la solicitud: " + writer_error.toString());
            writer.endObject();
        } finally {
            try {
                if (s != null) {
                    s.close();
                }
            } catch (Exception ex2) {
                System.out.println("Mensaje 2: " + ex2.getMessage());
            }
            String respuesta = "{CodResponse:" + CodResponse + ",MsjResponse:" + MsjResponse + "}";
            System.out.println("TRX: " + op + " RESPONSE: " + respuesta);
            ObjLOG.printmsg(num, getServletName(), "TRX: " + op + " RESPONSE: " + respuesta);
            out.print(stringWriter.toString());
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

}
