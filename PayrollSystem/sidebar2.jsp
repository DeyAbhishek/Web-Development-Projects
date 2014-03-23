           <%@page import="java.sql.*;" %>
           
    <!-- begin #mainContent -->
    <div id="mainContent">
    	
        <p>
        	<img src="images/pic1.jpg" class="picLeft" alt="" /><b>Services we provide:</b><br /><br />
           -Consultancy<br><br>-Web Development<br><br>-Web solution<br><br>-Web Security<br><br>-Software Development<br><br>
-Software Solution<br> <br>-Advanced Cinematics<br><br>       </p>
    </div>
    <%    Class.forName("oracle.jdbc.driver.OracleDriver");
         Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

        PreparedStatement ps=cn.prepareStatement("select empname from employee where status=?");
        int j=1;
        ps.setInt(1,j);

    ResultSet rs=ps.executeQuery();%>
     <table width="100%">
        <tr>
            <th> Online Employee</th>
        </tr>
    <%while(rs.next()){ %>
    <tr
        <td><% out.println(rs.getString(1));%></td>
        </tr>
    </table>
       <% }
    %>


    <!-- end #mainContent -->
    <!-- This clearing element should immediately follow the #mainContent div in order to force the #container div to contain all child floats --><br 
class="clearfloat" />
