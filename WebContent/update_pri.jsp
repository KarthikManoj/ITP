<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String username = "root";
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, username, password);
statement=connection.createStatement();
String sql ="select * from stocks where sid='"+sid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="Update_Pri.css">

</head>

<body>
<pre><h1 class="text">                            	         Stock Management System</pre></h1></br>



<div class="bod" >
<center><h2><font color="#02075d">UPDATE STOCK</font></h2></center>
<form method="post" action="update_process_pri.jsp">
<h3>
<pre>
	SID : 		<input type="number" name="sid" value="<%=resultSet.getString("sid") %>" /></br>
	Stock Name : 	<input type="text" name="sname" value="<%=resultSet.getString("sname") %>" /></br>
	Quantity : 	<input type="number" name="quantity" min="1" max="500" value="<%=resultSet.getString("quantity") %>" ></br>
	EXP-Date : 	<input type="date" name="expdate" value="<%=resultSet.getString("expdate") %>" /><br>
	Received Date : <input type="date" name="redate" value="<%=resultSet.getString("redate") %>" /><br>
	</pre>
	</h3>
	
	<center><input type="submit" class="submit" value="UPDATE">
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>