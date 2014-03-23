/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package in.infocom;


import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Anupam
 */
public class AdminServ extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminServ</title>");  
            out.println("</head>");
            out.println("<body>");
          String name=request.getParameter("a1");
         String pass=request.getParameter("a2");
       HttpSession hs=request.getSession(true);
         hs.setAttribute("s1", name);

         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

        PreparedStatement ps=cn.prepareStatement("select * from admin where username=? and pswd=?");
        ps.setString(1, name);
        ps.setString(2, pass);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
          response.sendRedirect("search.jsp");
        }
        else{

      out.println("Invalid Username/Password");
        }
            out.println("</body>");
            out.println("</html>");
      
        }
        catch(Exception ex){
            out.println(ex);
        }
        finally {
            out.close();
        }
    }
}
