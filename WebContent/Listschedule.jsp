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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.button2 {
	display: inline-block;
  padding: 6px 30px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #19254c;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

.button1 {
	display: inline-block;
  padding: 6px 30px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #19254c;
  border: none;
  border-radius: 25px;
  opacity: 1;
}
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
<title>  Get Well Soon Clinic SCHEDULE  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<ul>
	<li><a  href="main.jsp">Home</a></li>
  <li><a class="active" href="Listschedule.jsp">Schedule </a></li>
   <li><a href="schedule.jsp">Add Schedule </a></li>
  
  
  
</ul>
<pre><h1 class="text"> SCHEDULE DETAILS  </pre></h1></br>



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




	<center><h2><font color="#5EBADF">    EMPLOYEE SCHEDULE</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>EID</th>
                <th>MONDAY</th>
                <th>TUESDAY</th>
                <th>WEDNESDAY</th>
                <th>THURSDAY</th>
                <th>FRIDAY</th>
                <th>SATURDAY</th>
                <th>SUNDAY</th>
                <th>UPDATE</th>
            	 <th>DELETE</th>
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM schedule";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#5EBADF">

<td><%=resultSet.getString("EID") %></td>
<td><%=resultSet.getString("Monday") %></td>
<td><%=resultSet.getString("Tuesday") %></td>
<td><%=resultSet.getString("Wednesday") %></td>
<td><%=resultSet.getString("Thursday") %></td>
<td><%=resultSet.getString("Friday") %></td>
<td><%=resultSet.getString("Saturday") %></td>
<td><%=resultSet.getString("Sunday") %></td>



<td><a href='updateschedule.jsp?EID=<%=resultSet.getString("EID")%> ' class="button2" >Update</a></td>
<td >
<a href = 'deleteschedule.jsp?d=<%=resultSet.getString("EID")%> 'class="button1">DELETE</a></td>

		 
</tr>

<% 
}

} catch (Exception e) {
System.out.println();
}
%>
	
	
</body>
</html>