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
 * @author GUJU
 */
public class NewServ extends HttpServlet {
   
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
          
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServ</title>");  
            out.println("</head>");
            out.println("<body>");
           int t1=Integer.parseInt(request.getParameter("r1"));
           String t2=request.getParameter("r2");
         String t3=request.getParameter("r3");
         String t4=request.getParameter("r4");
         String t5=request.getParameter("r5");
         String t6=request.getParameter("r6");
         String t7=request.getParameter("r7");
         String t8=request.getParameter("r8");
         String t9=request.getParameter("r9");
         String t10=request.getParameter("r10");
         String t11=request.getParameter("year");
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

     
      

         PreparedStatement ps=cn.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?)");
         ps.setInt(1,t1);
         ps.setString(2,t2);
         ps.setString(3,t3);
         ps.setString(10,t4);
         ps.setString(11,t5);
         ps.setString(4,t6);
         ps.setString(5,t7);
         ps.setString(6,t8);
         ps.setString(7,t9);
         ps.setString(8,t10);
         ps.setString(9, t11);
         int z=ps.executeUpdate();
         if(z>0)
         {
             response.sendRedirect("login.jsp");
        }else{
             response.sendRedirect("contact.jsp");
        }
         ps.close();
         cn.close();
            out.println("</body>");
            out.println("</html>");

        }
    catch(Exception ex){

            out.println(ex);
        }finally {
            out.close();
        }
    } 

}
