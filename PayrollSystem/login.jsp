<%-- 
    Document   : login
    Created on : Jul 9, 2012, 10:15:20 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
     <center>	<h1>Employee Login:</h1>
        
        <form method="post" action="LogServ">
            Username:<input type="text" name="l1"><br><br>
            Password: <input type="password" name="l2"><br><br>
            <input type="submit" value="Login" name="sub1">
        </form>
        </center>
    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>

