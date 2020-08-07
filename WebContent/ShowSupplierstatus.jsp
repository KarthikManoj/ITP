<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<h1 class="text">   Supplier Status</h1>
<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/ShowSupplierStatus.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<style>
.button {
  border-radius: 4px;
  background-image: linear-gradient(to top, #173c74, #24478f, #3851ab, #505bc6, #6b63e0);
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 19px;
  padding: 7px;
  width: 160px;
  transition: all 0.5s;
  cursor: pointer;
 position:absolute;
 top:284px;
 left:90px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

<div class="topnav">
  <a  href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
    <a href="ShowSupplierstatus.jsp">Supplier Status</a>
  <a  href="SalaryFinance.jsp">Salary History</a>
  <a href="#about">Reports</a>
</div>



<form action="UpdateSupplier" method="post">

 Enter the Id: 
 <br>
 <input type="number"  name="eid" ><br>
 
 Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select>
<button class="button"><span>Update Status</span></button>
</form>

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
<div class="Arrange">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					<th >ID</th>
					
					<th >Product</th>
					<th >Unit Price</th>
					<th >Quantity</th>
					<th >Status</th>
					</tr> </thead>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select e.id,e.product,e.unitprice,e.quantity,s.status from prof e,SupplierAkshi s where e.id=s.suid ";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("status") %></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
</div>





