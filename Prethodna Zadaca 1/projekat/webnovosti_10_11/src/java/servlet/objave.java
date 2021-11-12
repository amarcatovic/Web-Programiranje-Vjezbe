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
import java.util.List;
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
public class objave extends HttpServlet {

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
        Connection con = null;
        Statement stmt = null;
        String upit = "select * from novost";
        String address = "objave.jsp";
        ResultSet rs = null;
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
            address = "error.jsp";

        }
        System.out.print(novosti);
        request.setAttribute("novosti", novosti);
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
