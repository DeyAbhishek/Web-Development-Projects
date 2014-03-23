<%-- 
    Document   : payroll
    Created on : Jul 9, 2012, 10:17:15 PM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@include file="header.jsp" %>
 <div id="sidebar1">
  <div style="float:left">	<h2>Welcome &nbsp; ${s4}&nbsp; &nbsp;:&nbsp;)</h2></div>
        <div style="float:right"><B><a href="logout.jsp"><h2>Log out</h2></a></B></div>
                    <br /><br /> <center>	<h1>Payroll:</h1>
        <p>
        <form method="post" action="PayServ">
            Enter year:<input type="text" name="pay1"><br><br>
            Enter month: <input type="text" name="pay2"><br><br>

            <input type="submit" value="Calculate salary" name="sub1">
            <input type="hidden" value="${id}" name="h1">
        </form>
        </center>


</div>




                    <%@include file="sidebar2.jsp" %><%@include file="footer.jsp" %>
