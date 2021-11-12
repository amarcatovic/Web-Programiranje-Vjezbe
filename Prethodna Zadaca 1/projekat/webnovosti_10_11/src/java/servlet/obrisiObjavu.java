/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Novost;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import util.DB;

/**
 *
 * @author User
 */
public class obrisiObjavu extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet obrisiObjavu</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet obrisiObjavu at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
         HttpSession sesija = request.getSession();
        String id=request.getParameter("id");
          Connection con=null;
          Statement stmt=null;
          ResultSet rs=null;
          String upit="delete from novost where id="+id+"";
          
          try{
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();
            stmt.executeUpdate(upit);
            stmt.close();
          }
           catch (SQLException e) {
            String err = e.getMessage();
            request.setAttribute("errormsg", err);
           
            }
           con = null;
         stmt = null;
         upit = "select * from novost";
         rs = null;
        ArrayList<Novost> novosti = new ArrayList<Novost>();

        try {
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(upit);

            while (rs.next()) {

                Novost novost = new Novost();
                novost.setId(rs.getInt("id"));
                novost.setNaslov(rs.getString("naslov"));
                novost.setSadrzaj(rs.getString("sadrzaj"));
                novost.setOpis(rs.getString("opis"));
                novost.setSlika(rs.getString("slika"));
                novosti.add(novost);
                System.out.println(novost.naslov);

            }
           
        } catch (SQLException e) {
            String err = e.getMessage();
            request.setAttribute("errormsg", err);

        }
        String  naslovi []= {"Naslov", "Ukratko"};
            sesija.setAttribute("novosti", novosti);
            sesija.setAttribute("naslovi",naslovi);
            
             RequestDispatcher rd = request.getRequestDispatcher("prikaz.jsp");
        rd.forward(request, response);
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
