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
<link rel="stylesheet" href="Details.css">
<title>Get Well Soon</title>
</head>
<body>
</br>

<center><h2><font color="#02075d">STOCK DETAILS</font></h2></center>
<%
	String id = request.getParameter("userID");
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

<%
try{ 
	connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
	statement=connection.createStatement();
	String Search = request.getParameter("search");
	String sql ="SELECT * FROM stocks where sname = '"+request.getParameter("search")+"'";

	resultSet = statement.executeQuery(sql);
	%>


    
    <div class="container">
    
    	<div class="row">
	<% 
	
	 
	while(resultSet.next()){
	%>
	       		<div align="center">
		<table border="1" cellpadding="12">
		 
		  <tr>
		  		<th>SID</th>
                <th>STOCK NAME</th>
                <th>QUANTITY</th>
                <th>EXP-DATE</th>
                <th>RECEIVED DATE</th>
            </tr>
              
		</div>
	                        <td><%=resultSet.getString(1)%></td>
	                        <td><%=resultSet.getString(2) %></td>
	                       <td><%=resultSet.getString(3) %></td>
	                        <td><%=resultSet.getString(4) %></td>
	                        <td><%=resultSet.getString(5) %></td>
	                    </div>
	           		 </div>
	           		 <br>
	
	       		 </div>
	       		

	       		 
	       		 
	        <% 
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	
</body>
</html>