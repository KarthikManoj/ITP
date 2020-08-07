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
<title>Appointments</title>
<link rel="stylesheet" type="text/css" href="doc_appoint.narthi.css">
<script>


function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}




function validateForm() {
  var x = document.forms["myForm"]["dd"].value;
  if (x == "") {
    alert("Please enter the date");
    return false;
  }
}
</script>
<style>
	button {
	background-color: #3f397d;
	color: white;
	padding: 10px 16px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}
</style>
</head>


<body>




  	<%
  
String id = request.getParameter("doctor");
  	
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
  	<pre><h1 class="text">                                     Finance Management System</pre></h1>
<form action="searchDate" method="post" name="myForm" onsubmit="return validateForm()">

<h2>Date: 
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search date...." title=""> <input type="submit" value="Show"></h2>



</form>
<a href="narthi_reports.jsp">Reports</a> <br><br><br>
<a href="patients.jsp">Patient Details</a> <br><br><br>
<hr>
	
	<table id="myTable">
  <tr class="header">
  <th>Appointment Date</th>
 <th>APPOINTMENT TIME</th>
<th>PATIENT ID</th>
<th>CATEGORY</th>
<th></th>
<th></th>

  </tr>
	
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String date = request.getParameter("dd");


String sql ="SELECT * from appoint";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>




<form action="doc_record.jsp" method="post">
<tr>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("time") %></td>
<td><%=resultSet.getString("PatientID") %></td>
<td> <%=resultSet.getString("type") %> </td>

<td><button value="<%=resultSet.getString("PatientID") %>" name="ppid">View</button></td>




</form>


<form action="NarthiDeleteServlet" method="post">
<td><button value="<%=resultSet.getString("AppId") %>" name="delete">Delete</button></td>

</form>
</tr>

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