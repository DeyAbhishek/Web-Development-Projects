<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Add new Standards</title>
</head>
<body>
   

    <form method="POST" action='StandardsController' name="frmAddStandards">
        Chemical ID : <input type="text" name="chemical_id"
            value="<c:out value="${standards.chemical_id}" />" /> <br /> 
        Status : <input
            type="text" name="status"
            value="<c:out value="${standards.status}" />" /> <br /> 
        Location : <input
            type="text" name="location"
            value="<c:out value="${standards.location}" />" /> <br /> 
       <input
            type="submit" value="Submit" />
    </form>
    <br><br>
 
</body>
</html>
