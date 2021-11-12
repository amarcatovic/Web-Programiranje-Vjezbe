/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.korisnik;
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
 * @author amina
 */
public class izmjenaOdredjenogKorisnika extends HttpServlet {

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
            out.println("<title>Servlet izmjenaOdredjenogKorisnika</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet izmjenaOdredjenogKorisnika at " + request.getContextPath() + "</h1>");
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
        korisnik k=new korisnik();
        HttpSession sesija = request.getSession();
        String usernameNow=request.getParameter("usernameNow");
        System.out.print(usernameNow);
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String tel = request.getParameter("telefon");
        String prezime = request.getParameter("prezime");
        String ime = request.getParameter("ime");
        
        String upit = "update korisnik set username = '" + username + "',password = '" + password + "', email =  '" + email + "', telefon = '" + tel + "', ime = '" + ime + "', prezime = '" + prezime + "' where username = '"+usernameNow+"'";
        
        k.setIme(ime);
        k.setEmail(email);
        k.setPrezime(prezime);
        k.setTelefon(tel);
        k.setPassword(password);
        k.setUsername(username);
        
        
        
        Connection con = null;
        Statement stmt = null;
        
        String address = "prikaz.jsp";
        try {
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();
            stmt.executeUpdate(upit);
            stmt.close();
           
        } catch (SQLException e) {
            String err = e.getMessage();
            request.setAttribute("errormsg", err);
            System.out.println(err);
            address = "error";
            
        }
        
        con = null;
            stmt = null;
            upit = "select * from korisnik";

            ResultSet rs = null;
            ArrayList <korisnik> korisnici = new ArrayList<>();
            try {
                con = DB.getInstance().getConnection();
                stmt = con.createStatement();
                rs = stmt.executeQuery(upit);

                while (rs.next()) {
                    korisnik k1 = new korisnik();
                    k1.setUsername(rs.getString("username"));
                    k1.setPassword(rs.getString("password"));
                    k1.setEmail(rs.getString("email"));
                    k1.setIme(rs.getString("ime"));
                    k1.setPrezime(rs.getString("prezime"));
                    k1.setTelefon(rs.getString("telefon"));
                    Integer active = rs.getInt("aktivan");
                    boolean aktivan = active == 1 ? true : false;
                    k1.setAktivan(aktivan);
                    k1.setRola(rs.getInt("rolaid"));
                    k1.setId(rs.getInt("id"));
                    korisnici.add(k1);
                    
                   
                }
                stmt.close();

            } catch (SQLException e) {
                sesija.invalidate();
                String err = e.getMessage();
                request.setAttribute("errormsg", err);
                System.out.println(err);
                address = "error";

            }
              String  naslovi []= {"username", "ime", "prezime", "password", "email", "aktivan", "telefon"};
            sesija.setAttribute("korisnici", korisnici);
            sesija.setAttribute("naslovi",naslovi);
        request.setAttribute("poruka", "Podaci uspjesno updateovani");
        RequestDispatcher rd = request.getRequestDispatcher(address);
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
