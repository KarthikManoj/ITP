
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="patient_stylesheet.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>    
      <li><a href="admin_details.jsp">Admin</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>





<%
String id = request.getParameter("userID");
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


<div class="topnav">
<div class="search-container">

      <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search username...."  name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>

    <br><br>
    <form  action="Report_Patients_User" method="get">
Enter ID<br><input type="text"  name="userID">
<button>Report</button>
</form>
<br>
 <form  action="Report_Patients" method="get">
<button>All User Report</button>
</form>
    
    <br><br>
              


</div></div>
</br> </br>

	<center><h2><font color="#02075d">PATIENT DETAILS</font></h2></center>
	
<div align="center">
		<table border="1" cellpadding="12" id="myTable">
		 
		  <tr>
		  		<th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>E-mail</th>
                <th>Address</th>
                <th>Mobile Number</th>
                <th>Gender</th>
                <th>Blood Group</th>
                <th>Age</th>
                <th>Question</th>
                <th>Answer</th>
                <th>User Name</th>
                <th>Password</th>
            </tr>

              
		</div>
		
		            
 
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM Patient_Reg";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<td><%=resultSet.getString("userID") %></td>
<td><%=resultSet.getString("firstName") %></td>
<td><%=resultSet.getString("lastName") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("mobileNo") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("bloodGroup") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("ques") %></td>
<td><%=resultSet.getString("ans") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("pass") %></td>

		 
</tr>



<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>


		


</body>
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
</html>