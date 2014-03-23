<%-- 
    Document   : login2
    Created on : Jul 12, 2012, 4:20:24 PM
    Author     : Anupam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
 <div id="sidebar1">
    <div style="float:left">	<h2>Welcome &nbsp; ${s4}&nbsp; &nbsp;:&nbsp;)</h2></div>
        <div style="float:right"><B><a href=""><h2>Log out</h2></a></B></div>
                    <br /><br />
                   <h1>Your Profile :</h1>
           <br />
           <b> - Name :&nbsp;&nbsp;&nbsp; ${empname}</b><br /><br />
           <b>- Employee ID :&nbsp;&nbsp;&nbsp; ${id}</b><br /><br />
           <b> - Department :&nbsp;&nbsp;&nbsp;${dept}</b><br /><br />
           
             <b> - Address :&nbsp;&nbsp;&nbsp;${address}</b><br /><br />
           <b>- City :&nbsp;&nbsp;&nbsp;${city} </b><br /><br />
           <b> - State :&nbsp;&nbsp;&nbsp;${state}</b><br /><br />
           
             <b> - Nationality : &nbsp;&nbsp;&nbsp;${nationality}</b><br /><br />
           <b>- Joining Year :&nbsp;&nbsp;&nbsp;${joining_year} </b><br /><br />
       
             <b> - Basic :&nbsp;&nbsp;&nbsp;${basic}</b><br /><br/>
           <b>- Allowance : &nbsp;&nbsp;&nbsp;${allowance}</b><br /><br />
           <b> - Percentage :&nbsp;&nbsp;&nbsp;${percent}</b><br /><br />
           <b>- HRA :&nbsp;&nbsp;&nbsp;${hra} </b><br /><br /><br />

           
            For support please visit <a href="http://www.infocom.co.in/contact.jsp">http://www.infocom.co.in/contact.jsp</a>
                    
    </div>



<%@include file="sidebar2.jsp" %><%@include file="footer.jsp" %>
