
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>


 <div id="sidebar1">
 	<h2>Welcome &nbsp; ${s1}&nbsp; &nbsp;:&nbsp;)</h2>    <center>
         <h1>Search Employee:</h1>

        <form method="post" action="SearchServ">
            Employee ID:<input type="text" name="search1"><br><br>
            <input type="submit" value="Search" name="sub1">
        </form>
        </center>
    </div>



<%@include file="sidebar2.jsp" %>
           <%@include file="footer.jsp" %>

