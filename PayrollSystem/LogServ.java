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
public class LogServ extends HttpServlet {
   
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
            out.println("<title>Servlet LogServ</title>");  
            out.println("</head>");
            out.println("<body>");
         String name=request.getParameter("l1");
         String pass=request.getParameter("l2");
HttpSession hs1=request.getSession();
hs1.setAttribute("s4", name);
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

        PreparedStatement ps=cn.prepareStatement("select * from employee where username=? and pswd=?");
        ps.setString(1, name);
        ps.setString(2, pass);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            hs1.setAttribute("id",rs.getInt("id"));
            hs1.setAttribute("empname",rs.getString("empname"));
            hs1.setAttribute("dept",rs.getString("dept"));
            hs1.setAttribute("address",rs.getString("address"));
            hs1.setAttribute("city",rs.getString("city"));
            hs1.setAttribute("state",rs.getString("state"));
            hs1.setAttribute("country",rs.getString("country"));
            hs1.setAttribute("nationality",rs.getString("nationality"));
            hs1.setAttribute("joining_year",rs.getInt("joining_year"));
 PreparedStatement ps1=cn.prepareStatement("select * from agreement where id=?");
 ps1.setInt(1,rs.getInt("id"));
  ResultSet rs1=ps1.executeQuery();
        if(rs1.next()){
     //   hs1.setAttribute("percent",rs1.getInt("percent"));
            hs1.setAttribute("hra",rs1.getInt("hra"));
            hs1.setAttribute("basic",rs1.getInt("basic"));
            hs1.setAttribute("allowance",rs1.getInt("allowance"));
            PreparedStatement ps5=cn.prepareStatement("update employee set status=? where id=?");
            int i=1;
            ps5.setInt(1,i);
ps5.setInt(2, rs.getInt("id"));
            ps5.executeUpdate();
        }
          response.sendRedirect("login2.jsp");
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
