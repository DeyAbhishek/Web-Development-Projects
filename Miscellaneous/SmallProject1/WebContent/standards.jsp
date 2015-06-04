<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Users</title>
</head>
<body>
    <table border=1>
        <thead>
            <tr>
                <th>Chemical Id</th>
                <th>Status</th>
                <th>Location</th>
                <th colspan=2>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${standards}" var="standard">
                <tr>
                    <td><c:out value="${standard.chemical_id}" /></td>
                    <td><c:out value="${standard.status}" /></td>
                    <td><c:out value="${standard.location}" /></td>
                    <td><a href="StandardsController?action=update&chemical_id=<c:out value="${standard.chemical_id}"/>">Update</a></td>
                    <td><a href="StandardsController?action=delete&chemical_id=<c:out value="${standard.chemical_id}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="StandardsController?action=insert">Add Standards</a></p>
</body>
</html>
