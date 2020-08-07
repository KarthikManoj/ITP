<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Well Soon Clinic</title>
<link rel="stylesheet" href="pres.css">
</head>
<body>

<%
String id = request.getParameter("patientID");
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

<div class="bod" >
<center><h2><font color="#02075d">E-PRESCRIPTION</font></h2></center>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM nrecords where patientID = '"+id+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<h2><font color="#02075d">Medicine:</font></h2>
<h3><pre>
 	<%=resultSet.getString("patientID") %></br>
	<%=resultSet.getString("medivcine") %></br>

</pre></h3>
<form name="form" action="pres.jsp">
<input type="submit" value="Return" class="submit">
</form> 


<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
	
  <form action="reportnrpri" method="get">
  <Input type="text" name="patientID" placeholder="Enter patient ID" required/>
  <button>Report</button></form>
	
</div>

</body>
</html>