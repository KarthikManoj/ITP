<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="servlet.searchDate" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="individual.css">
</head>
<body>

<pre><h1 class="text">                                     Finance Management System</pre></h1>




<%
  
String id = request.getParameter("indi");
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
ResultSet resultSet2 = null;
%>
  	
	
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String date = request.getParameter("dd");
String sql ="SELECT * from nrecords  where patientID = '"+id+"'";



resultSet = statement.executeQuery(sql);



 
while(resultSet.next()){
%>
	
	<form action="update_current.jsp" method="post">
  1. Patient ID:<input type="text" value="<%=resultSet.getString("patientID")%>" name="patid"  > <br>
  2. Temperature:<input type="text" value="<%=resultSet.getString("temp")%>" name="temperature" > <br>
  3. Blood Pressure:<input type="text" value="<%=resultSet.getString("bp")%>" name="blood"> <br>
  4. Respiration Rate: <input type="text" value="<%=resultSet.getString("rr")%>" name="rr"> <br>
  5. Pulse:  <input type="text" value="<%=resultSet.getString("pulse")%>" name="pulse"> <br>
  6. Remarks: <input type="text" value="<%=resultSet.getString("other")%>" name="remarks"> <br>
  7. Prescription:  <input type="text" value="<%=resultSet.getString("medivcine")%>" name="pres"> <br>
  
  <button id="main" value="<%=resultSet.getString("patientID")%>" name="submit">Update Records</button>
	</form>
<%
	}


} catch (Exception e) {
e.printStackTrace();
}
%>



</body>
</html>