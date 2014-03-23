<%-- 
    Document   : admin
    Created on : Jul 9, 2012, 10:18:09 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
     <center>	<h1>Admin Login:</h1>
    
        <form method="post" action="AdminServ">
            Username:<input type="text" name="a1"><br><br>
            Password: <input type="text" name="a2"><br><br>
            <input type="submit" value="Submit" name="sub1">
        </form>
        </center>
    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>
