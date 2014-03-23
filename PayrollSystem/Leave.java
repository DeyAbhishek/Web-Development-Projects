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
public class LeaveServ extends HttpServlet {
   
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
            out.println("<title>Servlet LeaveServ</title>");  
            out.println("</head>");
            out.println("<body>");
  int t1=Integer.parseInt(request.getParameter("l1"));
  int t2=Integer.parseInt(request.getParameter("l2"));
  int t3=Integer.parseInt(request.getParameter("l3"));
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

         PreparedStatement ps=cn.prepareStatement("insert into leave(id,year,month) values(?,?,?)");
         ps.setInt(1,t1);
 ps.setInt(2,t2);
ps.setInt(3,t3);

          int z=ps.executeUpdate();
         if(z>0)
         {
           out.println("Successful");
        }else{
           out.println("Unsuccessful");
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
