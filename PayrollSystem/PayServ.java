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
public class PayServ extends HttpServlet {
   
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
            out.println("<title>Servlet PayServ</title>");  
            out.println("</head>");
            out.println("<body>");




int b;
              int year=Integer.parseInt(request.getParameter("pay1"));
         int month=Integer.parseInt(request.getParameter("pay2")); int id=Integer.parseInt(request.getParameter("h1"));
           request.getSession().setAttribute("year", year);

          String a="";
           switch(month){
               case 1:{a="January";break;}
               case 2:{a="February";break;}
               case 3:{a="March";break;}
               case 4:{a="April";break;}
               case 5:{a="May";break;}
               case 6:{a="June";break;}
               case 7:{a="July";break;}
               case 8:{a="August";break;}
               case 9:{a="September";break;}
               case 10:{a="October";break;}
               case 11:{a="November";break;}
               case 12:{a="december";break;}

           }
  request.getSession().setAttribute("month", a);
         Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

        PreparedStatement ps=cn.prepareStatement("select * from leave where id=? and year=? and month=?");
        ps.setInt(1, id);ps.setInt(2, year);
        ps.setInt(3, month);
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
             b=rs.getInt("id");
        }
        else{

         b=0;
        }

  PreparedStatement ps2=cn.prepareStatement("select * from agreement where id=?");
  ps2.setInt(1, id);
  ResultSet rs2=ps2.executeQuery();
  if(rs2.next()){
      int basic=rs2.getInt("basic");
      int allowance=rs2.getInt("allowance");
      int hra=rs2.getInt("hra");
      int daily=rs2.getInt("daily");
      int c=b-5;
      if(c<=0){c=0;}
      int salary=basic+allowance+hra-(c*daily);
      request.getSession().setAttribute("salary", salary);
      response.sendRedirect("pay2.jsp");

  }
  else{out.println("Unsuccesful");}





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
