<%-- 
    Document   : logout
    Created on : Jul 13, 2012, 11:39:35 AM
    Author     : Abhishek Dey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
session.invalidate();
out.println("<script>parent.location.href='index.jsp'</script>");
 %>
