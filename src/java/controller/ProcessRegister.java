/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.DBConfig;
import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Profile;
import util.Validate;

/**
 *
 * @author Admin
 */
public class ProcessRegister extends HttpServlet {

  
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String emailOrPhone = request.getParameter("mobile-or-email");
        String password = request.getParameter("user-password");
        String day = request.getParameter("day");
        String month = request.getParameter("month");
        String year = request.getParameter("year");
        String sex = request.getParameter("sex");
        
        RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
        if (!Validate.checkName(firstName)) {
            request.setAttribute("error", "First name is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkName(lastName)) {
            request.setAttribute("error", "Last name is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkPassword(password)) {
            request.setAttribute("error", "Password is invalid");
            dis.forward(request, response);
        } else if (!Validate.checkEmailOrPhone(emailOrPhone)) {
            request.setAttribute("error", "Email/Phone is invalid");
            dis.forward(request, response);
        } else if (UserDAO.isDuplicateEmailOrPhone(emailOrPhone)) {
            request.setAttribute("error", "Email/Phone is duplicate");
            dis.forward(request, response);
        } else {
            String birthday = String.format("%s-%s-%s", day,  month, year);
            Profile profile = new Profile(0, firstName, lastName, emailOrPhone, 
                    password, birthday, sex);
            boolean result = UserDAO.addNewUser(profile);
            if (result) {
                response.sendRedirect("login.jsp");
            } else {
                request.setAttribute("error", "Try again!");
                dis.forward(request, response);
            }

        }
        
//        request.setAttribute("error", "This is error message");

//        RequestDispatcher dis = request.getRequestDispatcher("register.jsp");
//        dis.forward(request, response);

//        response.sendRedirect("register.jsp");
        
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet ProcessRegister</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>First Name:" + firstName + "</h1>");
//            out.println("<h1>Last Name:" + lastName + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
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
