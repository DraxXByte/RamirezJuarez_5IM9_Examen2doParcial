/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.ipn.edu.CalculusPS.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mx.ipn.edu.CalculusPS.utils.Conexion;

/**
 *
 * @author Alumno
 */
public class ConsultaServlet extends HttpServlet {
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */


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
        try
    {

        // the mysql insert statement
      String query = "select * from Registro";
      Statement preparedStmt = Conexion.obtener().createStatement();
      ResultSet res=preparedStmt.executeQuery(query);
      while(res.next()){   
        String nom = res.getString("nombre");
        String apem = res.getString("apellidom");
        String apep = res.getString("apellidop");
        String escu = res.getString("escuela");
        String matf = res.getString("matfavo");
        String deportf = res.getString("deportefav");
        try(PrintWriter out=response.getWriter();){
        out.println("<!DOCTYPE html>");
        out.println("<html>");
        out.println("<head>");
        out.println("<title>ConsultaServlet</title>");            
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
          out.println("<table>");
          out.println("<tr>");
          out.println("<th valign='middle'>" + "Nombre" + "</th>");
          out.println("<th>" + "Apell M" + "</th>");
          out.println("<th>" + "Apell P" + "</th>");
          out.println("<th>" + "Escuela" + "</th>");
          out.println("<th>" + "Mater Favo" + "</th>");
          out.println("<th>" + "Deporte Favo" + "</th>");
          out.println("</tr>");
          out.println("<td>" + nom + "</td>");
          out.println("<td>" + apem + "</td>");
          out.println("<td>" + apep + "</td>");
          out.println("<td>" + escu + "</td>");
          out.println("<td>" + matf + "</td>");
          out.println("<td>" + deportf + "</td>");
          out.println("</tr>");
          out.println("</body>");
          out.println("</html>");
        }    catch (Exception e)
    {
      System.err.println("Got an exception!");
      System.err.println(e.getMessage());
    } 
      }
      Conexion.cerrar();
      
    }
    catch (Exception e)
    {
      System.err.println("Got an exception!");
      System.err.println(e.getMessage());
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

}
