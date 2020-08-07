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
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="Details.css">
</head>
<body>
<pre><h1 class="text">                            	         Stock Management System</pre></h1></br>


<%
String id = request.getParameter("username");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "itp";
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


    <form action="SearchServlet_maddy" method="get">
      <input type="text" placeholder="Enter App Id..." name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>

</br> </br>

	<center><h2><font color="#02075d">APPOINTMENT DETAILS</font></h2></center>
	
<div align="center">
		<table border="2" cellpadding="12">
		 
		  <tr>
		  		<th>APPID</th>
                <th>TYPE</th>
                <th>DATE</th>
                <th>TIME</th>
                <th>SELECT</th>
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM appoint";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getString("AppId") %></td>
<td><%=resultSet.getString("type") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("time") %></td>
<td>
<form name="form" action="ManojOTp.jsp" method="post">
<label for="payment"> Patient's Mobile Number </label>
    <input type="text" id="payment" name="phone" placeholder="Number" required>
	   	
	   	
	  <br>
	  <br>
	   	
		<label for="payment"> TOKEN NUMBER </label>
    <input type="text" id="appoint" name="message" value="Your Token number is:  .Regards from Get Well Soon.">
	   	
	   	<br>
	   	<br>
	   	
	   	</a><input type="submit" value="Send Message" placeholder="appoint" >
</form>	
		 
</tr>


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

<br>
<br>


		<table border="1" cellpadding="12">
		 
		  <tr>
		        <th>EID</th>
		  		<th>NIC</th>
                <th>Phone</th>
           
            </tr>
              
		</div>
		
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM payment";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">


<td><%=resultSet.getString("payid") %></td>
<td><%=resultSet.getString("nic") %></td>
<td><%=resultSet.getString("phone") %></td>

<td>
	<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>