
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Insert title here</title>
</head>
<body class="w3-light-grey">



<%
  
String id = request.getParameter("patid");
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
  	
	
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();

String sql ="SELECT * from nrecords where patientID='"+id+"' ";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>




<h4 class="card-title mt-3 text-center">Your Medical Details</h4>



<p>Patient ID: <%=resultSet.getString("patientID") %> <br><br>
	Current Medical Details: <%=resultSet.getString("other") %><br><br>
	Prescription:<%=resultSet.getString("medivcine") %> <br><br>
	
</p>

<%
	}
%>

<% 


} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>