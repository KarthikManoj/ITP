<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="pres.css">

</head>

<body>

<pre><h1 class="text">                            	         Stock Management System</pre></h1></br>


<ul>
<li><a href="MaddyHome.jsp">Get Well Soon</a></li>
  <li><a href="AddStocks.jsp">Add Stocks</a></li>
  <li><a href="Details.jsp">Stock Details</a></li>
  <li><a href="SendMail12.jsp">Request</a></li>
   <li><a href="DeleteStocks.jsp">Delete Stocks</a></li>
  <li><a href="pres.jsp">e-prescription</a></li>
  <li><a href="LogoutServlet">logout</a></li>
</ul>

<div class="bod" >
<center><h2><font color="#02075d">E-PRESCRIPTION</font></h2></center>
  
	<form name="form" action="pres2.jsp" method="post" onsubmit="return onvalidate()" >
	<h3>
	</br></br>
	
	<input type="text" name="patientID" placeholder="Enter the patient ID" required/></br></br>
	
	<input type="submit" class="submit" value="SHOW">
	</h3>
	
	</form>
</div>

</body>
</html>