<%-- 
    Document   : leave
    Created on : Jul 9, 2012, 10:17:33 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
     <center>	<h1>Employee Leave:</h1>
        
        <form method="post" action="LeaveServ">
           Enter year :<input type="text" name="l1"><br><br>
            Enter month: <input type="text" name="l2"><br><br>
            Enter total number of leave : <input type="text" name="l3"><br><br>
            <input type="submit" value="Submit" name="sub1">
        </form>
        <br><br>
     N.B- Company offers 2 days of leaves in a month, exceeding which will cause penalty charge.</center>
    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>

