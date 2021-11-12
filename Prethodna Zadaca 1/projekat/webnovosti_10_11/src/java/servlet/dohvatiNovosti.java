/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Komentar;
import beans.Novost;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.DB;

/**
 *
 * @author User
 */
public class dohvatiNovosti extends HttpServlet {

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
            out.println("<title>Servlet dohvatiNovosti</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dohvatiNovosti at " + request.getContextPath() + "</h1>");
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
        String novostID = request.getParameter("id");
        String address = "objavaSingle.jsp";
        request.setAttribute("id", novostID);
     
        Connection con = null;
        Statement stmt = null;
        String upit = "select n.naslov, n.slika, n.sadrzaj, k.sadrzaj, k.datum, kor.username, k.id from komentari as k join novost as n on k.novostId = n.id left join korisnik as kor  on kor.id = k.userId where n.id ='" + novostID + "'";

        String poruka = "";
        ResultSet rs = null;
        Novost n = new Novost();
        try {
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(upit);

            while (rs.next()) {
                Komentar k = new Komentar();
                n.setNaslov(rs.getString(1));
                n.setSlika(rs.getString(2));
                n.setSadrzaj(rs.getString(3));
                k.setSadrzaj(rs.getString(4));
                k.setDatum(rs.getDate(5));
                k.setUser(rs.getString(6));
                k.setId(rs.getInt(7));
                n.addComment(k);
                

            }
            stmt.close();

        } catch (SQLException e) {
            String err = e.getMessage();
            request.setAttribute("errormsg", err);
            address = "error.jsp";

        }
          
        n.reverseArrayList();
        request.setAttribute("novost", n);
        request.setAttribute("id", novostID);
        RequestDispatcher rd = request.getRequestDispatcher(address);
        rd.forward(request, response);
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
