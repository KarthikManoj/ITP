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
<link rel="stylesheet" href="navi.css">
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
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
</head>
<body>
<pre><h1 class="text">                            	         Added News</pre></h1></br>


<%
String id = request.getParameter("username");
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


    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search Title...." title="">

</br> </br>

	<center><h2><font color="#02075d">NEWS </font></h2></center>
	
	
	
	<div align="center">
		<table border="1" cellpadding="12"  id="myTable">
		 
		  <tr>
		  		<th>NID</th>
                <th>TITLE</th>
                <th>NEWS</th>
                <th>SELECT</th>
                <th>SELECT</th>
            </tr>
              
		
	
		</div>
	

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();
String sql ="SELECT * FROM new";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>
<tr bgcolor="#ffffff">

<tr>
<td><%=resultSet.getString("nid") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("ne") %></td>


<td><a href="update_mad.jsp?nid=<%=resultSet.getString("nid")%>" class="submit1">UPDATE</a></td>
<td><a href="Deletemad.jsp?nid=<%=resultSet.getString("nid")%>" class="submit1">DELETE</a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

	
</body>
</html>