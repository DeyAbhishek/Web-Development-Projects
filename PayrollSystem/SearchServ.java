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
public class SearchServ extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
         
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchServ</title>");  
            out.println("</head>");
            out.println("<body>");
            int name=Integer.parseInt(request.getParameter("search1"));
     

         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

        PreparedStatement ps=cn.prepareStatement("select empname from employee where id=?");
        ps.setInt(1, name);
        ResultSet rs=ps.executeQuery();
    
       
      if(rs.next()){
        response.sendRedirect("admin2.jsp");
        }
        else{
           out.println("No such Employee");
        }

           String a=rs.getString(1);
             HttpSession hs=request.getSession(true);
         hs.setAttribute("s2", name);
           hs.setAttribute("s3", a);
         out.println("</body>");

            out.println("</html>");
 
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
        finally {
            out.close();
        }
    } 
}
