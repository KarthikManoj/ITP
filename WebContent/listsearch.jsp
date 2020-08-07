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
  background-color: #0000FF;
}
</style>
<title>  Get Well Soon Clinic LIST  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<pre><h1 class="text"> EMPLOYEE DETAILS  </pre></h1></br>

<ul>
	<li><a  href="main.jsp">Home</a></li>
  <li><a  href="empl.jsp">ADD Employees</a></li>
  <li><a class="active" href="List.jsp">Show All Employees</a></li>
  <li><a href="update.jsp">Update Employees</a></li>
    <li><a href="Delete.jsp">Delete Employees</a></li>
  
  
</ul>
<div class="search-container">
    <form method="POST" action="listsearch.jsp">
     <input type="text" id="employeeID" name="search" placeholder="Enter name.." >
      <button type="submit">SEARCH</button>
    </form>
  </div>
</div>

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




	<center><h2><font color="#5EBADF">    ALL EMPLOYEES</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>EID</th>
                <th>FIRST-NAME</th>
                <th>ADDRESS</th>
                <th>PROFESSION</th>
                <th>E-MAIL</th>
                <th>SALARY</th>
                <th>NIC</th>
                <th>DOJ</th>
                <th>CONTACT-NO</th>
                <th>GENDER</th>
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="select * from employee where firstname='"+request.getParameter("search")+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("EID") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("profession") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("salary") %></td>
<td><%=resultSet.getString("nic") %></td>
<td><%=resultSet.getString("doj") %></td>
<td><%=resultSet.getString("contactno") %></td>
<td><%=resultSet.getString("gender") %></td>


		 
</tr>

<% 
}

} catch (Exception e) {
System.out.println();
}
%>
	
	
</body>
</html>