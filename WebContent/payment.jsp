<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="css/payment.css">
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
</head>

<body>
<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<pre><h1 class="text">                       Finance Management System</pre></h1>




<div class="topnav">
  <a class="active" href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a href="SalaryFinance.jsp">Salary History</a>
  <a href="ReportFinance.jsp">Reports</a>
 
</div>




  
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  
  <H1>HI,Finance Manager</H1>
  <a href="LogoutServlet" >Logout</a>

</div>

<div class="sidem">
<span style="font-size:25px;cursor:pointer" onclick="openNav()">&#9776; Settings</span>


</div>


<div class="arr"></div>
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/genie.jpg" onclick="window.location.href = 'https://www.genie.lk'"  target="_blank" style="width:100%" >
 
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/com.jpg" onclick="window.location.href = 'https://www.combank.net'" target="_blank"  style="width:100%">

</div>



<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 

</div>




<div class="cardarrange1">
<div class="card" style="width: 20rem;">
  <img src="images/3.Utility.png" class="card-img-top"  height="136px"  alt="...">
  <div class="card-body">
    <h5 class="card-title">Pay the Utility Payment </h5>
    <p class="card-text">Pay the monthly payment before 30th of each month. </p>
    <a href="Utility.jsp" class="btn btn-primary">Pay Utility</a>
  </div>
</div>
</div>


<div class="cardarrange">
<div class="card" style="width: 20rem;">
  <img src="images/income.png" class="card-img-top" height="136px"  alt="...">
  <div class="card-body">
    <h5 class="card-title">Check the Income </h5>
    <p class="card-text">Checking the income from the appointments</p>
    <a href="TotalIncome.jsp" class="btn btn-primary">Check the income</a>
  </div>
</div>
</div>

<div class="cardarrange2">
<div class="card" style="width: 20rem;">
  <img src="images/IN1.jpg" class="card-img-top"  height="136px" alt="...">
  <div class="card-body">
    <h5 class="card-title">Paying the Suppliers Stock </h5>
    <p class="card-text">Pay the necessary amount when Supplier emails you.</p>
    <a href="SuppilerFinance.jsp" class="btn btn-primary">Supplier</a>
  </div>
</div>
</div>



<div class="cardarrange3">
<div class="card" style="width: 20rem;">
  <img src="images/sa.png" class="card-img-top"   height="136px" alt="...">
  <div class="card-body">
    <h5 class="card-title">Employee's Salary Status </h5>
    <p class="card-text">Once after deposited the salary to the employees change the status.S</p>
    <a href="ShowSalaryStatus.jsp" class="btn btn-primary">Salary Status</a>
  </div>
</div>
</div>





















<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 2 seconds
}

function move() {
	  var elem = document.getElementById("myBar");   
	  var width = 10;
	  var id = setInterval(frame, 10);
	  function frame() {
	    if (width >= 100) {
	      clearInterval(id);
	    } else {
	      width++; 
	      elem.style.width = width + '%'; 
	      elem.innerHTML = width * 1  + '%';
	    }
	  }
	}
	
	
	
function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	}

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}
</script>








</body>
</html>