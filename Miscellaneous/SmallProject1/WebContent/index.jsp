<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="app">
<head>

    <title>FDE - Calibration</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.0/css/font-awesome.css" />
	<link rel="stylesheet" href="style/style.css" />

  </head>

  <body>



	<header>
		
		<nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
       <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-signal"></span>    FDE </a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">TMDL</a> </li>
        <li><a href="#">Open</a></li>
        <li><a href="#">Save</a></li>
        <li><a href="#">Print</a></li>
        <li><a href="#">About</a></li>
          </ul>
       
    </div>
    </div>


</nav>

	</header>




			<section>
			<div class="container" id="home">

   <!--  <div class="container"> -->
		<div class="row">
	
		<div class="col-md-9">
		  <a href="#temperature" style="padding-right : 30px"> Temperature </a>
      
				<a href="#DO" style="padding-right : 30px"> DO</a>

				<a href="#pH" style="padding-right : 30px"> pH</a>
				
				<a href="#conductivity" style="padding-right : 30px"> Conductivity</a>
				
				<a href="#salinity" style="padding-right : 30px"> Salinity</a>
				
				<a href="#turbidity" style="padding-right : 30px"> Turbidity</a>
				
				<a href="#light" style="padding-right : 30px"> Light</a><br>
				<div ng-view></div>
		</div>

		</div>

<!-- <br><br><hr>-->
</div></section> 
<div class="footer-note">
	 Copyright © 2015 <a href="#">SJRWMD</a> 

</div>
</footer>

	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
	<script src="app.js"></script>

  </body>
</html>
