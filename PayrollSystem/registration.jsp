<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
     <center>  	<h1>Create your profile:</h1>
   
        <form method="post" action="NewServ">
            Employee Id:<input type="text" name="r1"><br><br>
            Name: <input type="text" name="r2"><br><br>
            Department:<input type="text" name="r3"><br><br>
            Your Desired Username:<input type="text" name="r4"><br><br>
            Password: <input type="password" name="r5"><br><br>
            Address: <input type="text" name="r6"><br><br>
            City:<input type="text" name="r7"><br><br>
            State: <input type="text" name="r8"><br><br>
            Country:<input type="text" name="r9"><br><br>
            Nationality: <input type="text" name="r10"><br><br>
           Joining Year:<input type="text" name="year" ><br><br>
            <input type="submit" name="sub1">
            
            
        </form>
  
     </center>    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>
