/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.Novost;
import beans.korisnik;
import com.mysql.cj.xdevapi.Result;
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
public class login extends HttpServlet {

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
            out.println("<title>Servlet login</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
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
        System.out.println("uslo");
        HttpSession sesija = request.getSession();
        korisnik k = new korisnik();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String poruka;
        if (username.isEmpty() || password.isEmpty()) {
            poruka = "Unesite pristupne podatke";
            request.setAttribute("poruka", poruka);
            RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        String upit = "select * from korisnik where username = '" + username + "' and password = '" + password + "'";
        String address = "prikaz.jsp";

        try {
            con = DB.getInstance().getConnection();
            stmt = con.createStatement();
            rs = stmt.executeQuery(upit);

            if (rs.next()) {
                k.setUsername(rs.getString("username"));
                k.setPassword(rs.getString("password"));
                k.setEmail(rs.getString("email"));
                k.setIme(rs.getString("ime"));
                k.setPrezime(rs.getString("prezime"));
                k.setTelefon(rs.getString("telefon"));
                Integer active = rs.getInt("aktivan");
                boolean aktivan = active == 1 ? true : false;
                k.setAktivan(aktivan);
                k.setRola(rs.getInt("rolaid"));
                k.setId(rs.getInt("id"));
                stmt.close();
                sesija.setAttribute("korisnik", k);
            } else {
                poruka = "Unijeli ste pogrešne podatke! Pokušajte ponovo!";
                request.setAttribute("poruka", poruka);
                address = "index.jsp";
                stmt.close();
                RequestDispatcher rd = request.getRequestDispatcher(address);
                rd.forward(request, response);
                return;

            }
            stmt.close();

        } catch (SQLException e) {
            sesija.invalidate();
            String err = e.getMessage();
            request.setAttribute("errormsg", err);
            System.out.println(err);
            address = "error";

        }

        if (k.getRola() == 1) {
            con = null;
            stmt = null;
            upit = "select * from korisnik";

            rs = null;
            ArrayList<korisnik> korisnici = new ArrayList<>();
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
            String naslovi[] = {"username", "ime", "prezime", "password", "email", "aktivan", "telefon"};
            sesija.setAttribute("korisnici", korisnici);
            sesija.setAttribute("naslovi", naslovi);

        } else if (k.getRola() == 3) {
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
                address = "error.jsp";

            }
            String naslovi[] = {"Naslov", "Ukratko"};
            sesija.setAttribute("novosti", novosti);
            sesija.setAttribute("naslovi", naslovi);
        }
        request.setAttribute("korisnik", k);
        if (!k.isAktivan()) {
            poruka = "Vaš nalog nije aktivan!";
            request.setAttribute("poruka", poruka);
            address = "index.jsp";

        }
        System.out.println(address);
        if (k.getRola() == 2) {
            if (!k.isAktivan()) {
                poruka = "Vaš nalog nije aktivan!";
                request.setAttribute("poruka", poruka);
                RequestDispatcher rd = request.getRequestDispatcher(address);
                rd.forward(request, response);
                return;
            }
            response.sendRedirect("objave");
        } else {
            RequestDispatcher rd = request.getRequestDispatcher(address);
            rd.forward(request, response);
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
