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



</script>
<meta charset="ISO-8859-1">
<title>Online Clinic Management</title>
<link rel="stylesheet" type="text/css" href="patients.css">
</head>
<body>

	
<pre><h1 class="text">                                     Finance Management System</pre></h1>

<h2>Patient ID: 
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search date...." title=""> <button id="main">Show</button></h2>

<%
  
String id = request.getParameter("date");
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
  	
	<table id="myTable">
<tr class="header">
<th>Patient ID</th>
<th>Patient Name</th>
<th></th>


</tr>
  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();

String sql ="SELECT * from patient_reg p , nrecords n where p.userID = n.patientID";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
	<form action="individual.jsp" method="post">
	<tr>
	
	<td><%=resultSet.getString("p.userID") %> </td>
	<td><%=resultSet.getString("lastname") %> <%=resultSet.getString("firstname") %> </td>
	
	<td><button name="indi" value="<%=resultSet.getString("p.userID") %>">View Details</button> </td>
	
	</tr>
	</form>
	
	
<%
	}


} catch (Exception e) {
e.printStackTrace();
}
%>




  
	

</body>
</html>