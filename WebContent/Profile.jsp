<!DOCTYPE html>
<html lang="en">
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
  <head>
  
  <%
String id= request.getParameter("uname");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    <title>Get</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  
  <style>
  body {
    margin: 0;
    padding: 0;
		background: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
		family: $font;
	
    background-position: center center;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-repeat: no-repeat;
    margin: 100px;
text-align: center;
align: center;
double {border-style: double;}
}
  
  </style>
  <body>
    <nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
    			<div class="col-lg-2 pr-4 align-items-center">
		    		<a class="navbar-brand" href="index.html">GET WELL SOON<span> CLINIC</span></a>
	    		</div>

    </nav>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <p class="button-custom order-lg-last mb-0"><a href="AddProduct.jsp" class="btn btn-secondary py-2 px-3">Add Products</a></p>
	        <p class="button-custom order-lg-last mb-0"><a href="AddProductView.jsp" class="btn btn-secondary py-2 px-3">Products</a></p>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item"><a href="newHome.jsp" class="nav-link pl-0">Home</a></li>
	        
	        
	        		       
	        </ul>
	      </div>
	    </div>
	  </nav>

    
    <section class="hero-wrap hero-wrap-2" style="background-image: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-2 bread">PROFILE </h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Supplier <i class="ion-ios-arrow-forward"></i></span></p>
        
              <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from requests where uname='"+request.getParameter("uname")+"' ";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<label id="a"  >COMPANY NAME:~</lable><%=resultSet.getString("comname") %><br><br>
<label id="a"> ADDRESS:~</lable><%=resultSet.getString("address") %><br><br>
<label id ="a">EMAIL:~</lable><%=resultSet.getString("email") %><br><br>
<label id="a"> MOBILE NUMBER:~</lable><%=resultSet.getString("mobnumber") %><br>
<label id="a"><a href="Akshi_ProfileUpdate.jsp?S1No=<%=resultSet.getString("S1No") %>">EDIT</a>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
<br>





</div>
	          </div>
           
      
          </div>

        
        
        
        
        
        
        
        
        
          </div>
        </div>
      </div>
    </section>
    
    
    <a href="payment.jsp">-	</a>
		
		<section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-8 text-center heading-section ftco-animate">
   
    
	        
	              
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="Akjs/jquery.min.js"></script>
  <script src="Akjs/jquery-migrate-3.0.1.min.js"></script>
  <script src="Akjs/popper.min.js"></script>
  <script src="Akjs/bootstrap.min.js"></script>
  <script src="Akjs/jquery.easing.1.3.js"></script>
  <script src="Akjs/jquery.waypoints.min.js"></script>
  <script src="Akjs/jquery.stellar.min.js"></script>
  <script src="Akjs/owl.carousel.min.js"></script>
  <script src="Akjs/jquery.magnific-popup.min.js"></script>
  <script src="Akjs/aos.js"></script>
  <script src="Akjs/jquery.animateNumber.min.js"></script>
  <script src="Akjs/bootstrap-datepicker.js"></script>
  <script src="Akjs/jquery.timepicker.min.js"></script>
  <script src="Akjs/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="Akjs/google-map.js"></script>
  <script src="Akjs/main.js"></script>
    
  </body>
</html>