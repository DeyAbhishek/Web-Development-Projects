<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Site Title</title>
  <!-- Bootstrap styles -->
    <link rel="stylesheet" href="http://getbootstrap.com/dist/css/bootstrap.min.css" />
</head>
<body>

 <table cellpadding="10" class="table table-striped">
        <thead>
            <tr class="danger">
                <th>Chemical Id</th>
                <th>Status</th>
                <th>Location</th>
                <th colspan=2></th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${standards}" var="standard">
                <tr class="">
                    <td><c:out value="${standard.chemical_id}" /></td>
                    <td><c:out value="${standard.status}" /></td>
                    <td><c:out value="${standard.location}" /></td>
                    
                    <td><a href="StandardsController?action=update&chemical_id=<c:out value="${standard.chemical_id}"/>">
                    <img src="images/update.png" height="30" /></a></td>
                  
                    <td><a href="StandardsController?action=delete&chemical_id=<c:out value="${standard.chemical_id}"/>">
                    <img src="images/delete.png" height="30" /></a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
<p><a href="StandardsController?action=insert">Add Standards</a></p>



  
  <div id="slide" class="well">
   <a href="#" class="slide_close" style="float:right;padding:0 0.4em;">x</a>
  <br /> <br /> 
     <form method="POST" action='StandardsController' name="frmAddStandards">
       <table>
       <br />
       <tr> <td>Chemical ID </td><td> <input type="text" name="chemical_id"
            value="<c:out value="${standard.chemical_id}" />" />  </td>
        </tr>
        <tr><td><br /><br /> </td></tr>
        <tr><td>Status  </td><td><input
            type="text" name="status"
            value="<c:out value="${standard.status}" />" /> <br /></td> 
        </tr>
        
        <tr><td><br /><br /> </td></tr>
        
        <tr><td>Location </td><td> <input
            type="text" name="location"
            value="<c:out value="${standard.location}" />" /> <br /></td> 
       </tr>
       
       <tr><td><br /> <br /></td></tr>
       <tr><td><input
            type="submit" value="Submit" class="btn btn-info" /></td><td> 
             <button class="slide_close btn btn-danger">Close</button>
            </td></tr></table>
    </form>
    <br><br>

    <!-- Add an optional button to close the popup -->
  
  </div>

  <!-- Include jQuery -->
  <script src="http://code.jquery.com/jquery-1.8.2.min.js"></script>

  <!-- Include jQuery Popup Overlay -->
  <script src="http://vast-engineering.github.io/jquery-popup-overlay/jquery.popupoverlay.js"></script>

  <script>
      $(document).ready(function () {

    	    $('#slide').popup({
    	    	autoopen : true,
    	        focusdelay: 100,
    	        outline: true,
    	        vertical: 'top'
    	    });

    	});
 
  </script>
  
<style>
#slide_background {
    -webkit-transition: all 0.3s 0.3s;
       -moz-transition: all 0.3s 0.3s;
            transition: all 0.3s 0.3s;
}
#slide,
#slide_wrapper {
    -webkit-transition: all 0.4s;
       -moz-transition: all 0.4s;
            transition: all 0.4s;
}
#slide {
    -webkit-transform: translateX(0) translateY(-40%);
       -moz-transform: translateX(0) translateY(-40%);
        -ms-transform: translateX(0) translateY(-40%);
            transform: translateX(0) translateY(-40%);
}
.popup_visible #slide {
    -webkit-transform: translateX(0) translateY(0);
       -moz-transform: translateX(0) translateY(0);
        -ms-transform: translateX(0) translateY(0);
            transform: translateX(0) translateY(0);
}
</style>
<!-- Google Prettify syntax highlighting -->
<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?autoload=true&lang=css"></script>
</body>
</html>
