<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%


String nid = request.getParameter("nid");
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
String sql ="select * from new where nid='"+nid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="navi.css">

</head>

<body>
<pre><h1 class="text"></pre></h1></br>



<div class="bod" >
<center><h2><font color="#02075d">UPDATE NEWS</font></h2></center>
<form method="post" action="update_process_mad.jsp">
<h3>
	NID : <input type="number" name="nid" value="<%=resultSet.getString("nid") %>" required/></br>
	TITLE : <input type="text" name="title" value="<%=resultSet.getString("title") %>" required/></br>
	NEWS : <input type="text" name="ne" value="<%=resultSet.getString("ne") %>"required ></br>
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