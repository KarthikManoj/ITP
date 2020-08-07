<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
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
}

* {
  box-sizing: border-box;
}

.column {
		float: left;
		width: 50%;
		padding: 50px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 24px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}


.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid black;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.text {
	text-transform: uppercase;
	background: linear-gradient(to right, #efefbb 0%, #524E9B 100%);
	
	font: {
		size: 30vw;
		family: $font;
		
	};
}
img { 
  background: url(E-Commerce-1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}



.bod{
  
   
  width: 650px;
  border: 2px solid black;
  padding: 50px;
  margin: 20px;
  position:absolute;
  left:50px;
  top:150px;
  bakground:white; 
  
}

.delete {
	display: inline-block;
  padding: 10px 40px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}
.update {
	display: inline-block;
  padding: 10px 40px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

.submit {
	display: inline-block;
  padding: 15px 70px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

input[type=text] {
	width: 50%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}

input[type=date] {
	width: 30%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}

input[type=number] {
	width: 20%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}

a {
	background:#19254c;
    font-family: "Times New Roman", Times, serif;
  color: black;
  padding: 1em 1.5em;
  text-decoration: none;
  text-transform: uppercase;
}

a:hover {
  background-image: linear-gradient(to top, #173c74, #24478f, #3851ab, #505bc6, #6b63e0);
}

a:active {
  background-color: black;
}

a:visited {
  background-color: #19254c ;

}

.Image{
	position:absolute;
	top:-93px;
	left:585px;
}

.topnav .search-container {
  float: right;
 
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}
</style>

<meta charset="ISO-8859-1">
<title>Get Well Soon Clinic</title>
<ul>
  <li><a href="Supplier_Manager.jsp">Registered Suppliers</a></li>
  <li><a href="Order.jsp">Order Products</a></li>
  <li><a href="SendEmail.jsp">Send Email</a></li>
 </ul>
</head>
<body>
<%
String id = request.getParameter("id");
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
<h1>Supplier Products</h1>

<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for product.." title="Type in a name">

<table border="1" id="myTable">
<tr>
<th>Product</th>
<th>UserName</th>
<th>Unit Price</th>
<th>Quantity</th>
<th>Product id</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from prof";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("id") %></td>
</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</body>
</html>