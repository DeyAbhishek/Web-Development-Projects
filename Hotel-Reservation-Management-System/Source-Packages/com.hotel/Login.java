/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.suitehotel;

import java.io.*;
import java.net.*;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author VAIO
 */
public class Login extends HttpServlet {
   
    /** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
            
           String name=request.getParameter("email");
         String pass=request.getParameter("pswd");
HttpSession hs1=request.getSession();
hs1.setAttribute("sname", name);
        
             Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@oracle1.cise.ufl.edu:1521:orcl","username","password");

        PreparedStatement ps=cn.prepareStatement("select * from Login where LoginID=? and Password=?");
        
        ps.setString(1, name);
        ps.setString(2, pass);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            hs1.setAttribute("name",rs.getString("LoginID"));
             response.sendRedirect("welcome.jsp");
            }
        
            
         /*
         if(name.equals("xyz@hotmail.com") && pass.equalsIgnoreCase("pswd")){
             
          response.sendRedirect("welcome.jsp");
         }
         */    
         else{
         response.sendRedirect("loginfailed.jsp");
         }
        } 
        catch(Exception ex){
            out.println(ex);
        }
        finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
