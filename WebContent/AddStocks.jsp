<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="Add.css">
<script> 
function onvalidate()
{ 
 var sname = document.form.sname.value;
 var quantity = document.form.quantity.value;
 var expdate = document.form.expdate.value; 
 var supplier = document.form.supplier.value;
 var redate = document.form.redate.value;
 
 if (sname==null || sname=="")
 { 
 alert("Stock Name can't be blank"); 
 return false; 
 }
 else if (quantity==null || quantity=="")
 { 
 alert("Quantity can't be blank"); 
 return false; 
 }
 else if (expdate==null || expdate=="")
 { 
 alert("Expiry Date can't be blank"); 
 return false; 
 }
 else if (redate==null || redate=="")
 {
 alert("Received Date can't be blank"); 
 return false; 
 } 
 } 
</script> 
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
<div class="logout"> <a href="LogoutServlet" >LogOut</a></div>
<div class="row" >
<div class="column" >
<div class="bod" >
<center><h2><font color="#02075d">ADD STOCK</font></h2></center>
  
	<form name="form" action="PAddServlet" method="post" onsubmit="return onvalidate()" >
	<h3>
	<pre>
	Stock Name : 	<input type="text" name="sname" required/></br>
	Quantity : 	<input type="number" name="quantity" min="1" max="500" required></br>
	EXP-Date : 	<input type="date" name="expdate" required/><br>
	Received Date : <input type="date" name="redate" required/><br>
	</pre>
	</h3>
	
	<center><input type="submit" class="submit" value="Add Stock"></center>
	</form>
</div>
</div>
<div class="column" >
	<img src="med.gif" alt="stock" width="570px" height="500px">
	
</div>

</div>
</body>
</html>