<%-- 
    Document   : admin2
    Created on : Jul 11, 2012, 2:36:07 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
     <center>	<h1>Employee Details:</h1>

        <form method="post" action="Admin2Serv">
            Employee ID:<input type="text" value="${s2}" name="adm11"><br><br>
            Employee Name: <input type="text" value="${s3}" name="adm21"><br><br>
            Allowance:<input type="text" name="adm1"><br><br>
            Basic: <input type="text" name="adm2"><br><br>
         
            HRA: <input type="text" name="adm4"><br><br>
            <input type="submit" name="sub1">
        </form></center>
    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>

