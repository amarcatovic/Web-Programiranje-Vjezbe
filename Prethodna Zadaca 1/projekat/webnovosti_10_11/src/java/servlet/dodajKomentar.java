/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Komentar;
import beans.Novost;
import beans.korisnik;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
public class dodajKomentar extends HttpServlet {

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
            out.println("<title>Servlet dodajKomentar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet dodajKomentar at " + request.getContextPath() + "</h1>");
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
        System.out.println("uuslioiis");
        Connection con = null;
        Statement stmt = null;
        String id = request.getParameter("id");
        String komentar = request.getParameter("komentar");
         HttpSession sesija = request.getSession();
        korisnik k = (korisnik) sesija.getAttribute("korisnik");
        System.out.println(k.getIme());
        String upit = "insert into komentari (novostID,sadrzaj,userId) values ('" + id + "', '" + komentar + "',"+k.getId()+" )";
        String address;
       
        try {
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();

            stmt.executeUpdate(upit);
            stmt.close();

        } catch (SQLException e) {
            String err = e.getMessage();
            request.setAttribute("errormsg", err);
            address = "objave.jsp";

        }
        System.out.println(id);
        address = "dohvatiNovosti?id="+id;
        System.out.println("adresa"+address);
        response.sendRedirect("/WebApplication4/dohvatiNovosti?id="+id);
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
