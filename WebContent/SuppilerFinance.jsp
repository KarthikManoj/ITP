<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
 <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="bootstrap/bootstrap.css">
   <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/SuppilerFinance.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>



<h1 class="text">   Supplier</h1>


<div class="topnav">
  <a  href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a class="active" href="SuppilerFinance.jsp">Supplier</a>
    <a href="ShowSupplierstatus.jsp">Supplier Status</a>
  <a  href="SalaryFinance.jsp">Salary History</a>
  <a href="ReportFinance.jsp">Reports</a>

</div>




 
 <div class="bod">
 

      <div class="searchn">
 	<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search id" title="">
 
<br> <br>   


 </div>

	
	

	<pre> <h3 class="text1">       Supplier Payment</pre></h3>
	
	
<%
String id = request.getParameter("userId");
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


	<div class="Arrange">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0" id="myTable">
			    <thead>
 
 
 
				
					<tr bgcolor="#7474BF">
					
					<th>ID</th>
					<th >Product</th>
					<th >Unit Price</th>
						<th >Quantity</th>
					
					</tr> </thead>
					
					

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select id,product,unitprice,quantity from prof";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>

</tr>



<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>




</table>
</div>
</div> 

<form action= "SuppilerFinanceupdate"  method="post">
 
	
    <div class="m">
    

  <p>Enter here to Insert as paid,Mention the ID</p>
<input type="number" name="suid" class="advancedSearchTextBox" />
<br> <br>   
Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select>

 <button class="button"><span>Insert  Status</span></button>
</div>
</form>















     
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


 

</body>
</html>