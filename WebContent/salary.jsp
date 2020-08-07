<%

String uname =(String) session.getAttribute("username");
if(uname==null){
	response.sendRedirect("logine.jsp");
}


%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
<title>  SALARY DETAILS  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<ul>
	<li><a  href="main.jsp">Home</a></li>
  <li><a class="active" href="salary.jsp">Salary </a></li>
  
  
  
  
</ul>
<pre><h1 class="text">  EMPLOYEE DETAILS  </pre></h1></br>



<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String username = "root";
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




	<center><h2><font color="#5EBADF">    SALARY DETAILS </font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th> Firstname </th>
                <th>PROFESSION</th>
                <th>SALARY</th>
                
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="select firstname,profession,salary from employee ";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("profession") %></td>
<td><%=resultSet.getString("salary") %></td>


		 
</tr>

<% 
}

} catch (Exception e) {
System.out.println();
}
%>
	
	
</body>
</html>