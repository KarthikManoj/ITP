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
<link rel="stylesheet" href="css/Income&Expenses.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>



<h1 class="text">Income & Expenses</h1>
<div class="topnav">
  <a class="active" href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a href="SalaryFinance.jsp">Salary History</a>
  <a href="#about">Reports</a>
</div>



<form method="get" action="UtilitySearch.jsp">
 
 <div class="bod">
 	<div class="searchn">
		<input type="text" class="inputsearch" name="search" class="form-control" placeholder="Enter to search">
		<button type="submit" class="searchbutton" value="Search">Search</button>
	
	</div>
	
	
</form>	
	<h3 class="text1">Expenses For Utility Payment </h3>
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

			 <table class="table table-bordered table-striped mb-0">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					
					
					<th >Utility Id</th>
					<th >Title</th>
					<th >Payment Mode</th>
					<th >Provider</th>
					<th>Date Of Payment</th>
					<th >Reference Number</th>
					<th >Amount</th>
					</tr> </thead>



<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="select * from utilitypay where title='" +request.getParameter("search")+"'";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >

<td><%=resultSet.getString("utility_id") %></td>
<td><%=resultSet.getString("title") %></td>
<td><%=resultSet.getString("payAcc") %></td>
<td><%=resultSet.getString("provider") %></td>
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("rnumber") %></td>
<td><%=resultSet.getString("paid") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>


<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root"); 
Statement st=con.createStatement();
String strQuery = "SELECT SUM(paid) FROM utilitypay ";
ResultSet rs = st.executeQuery(strQuery);
String Amount="";
while(rs.next()){
	Amount = rs.getString(1);

out.println("Expense For Utility:  " +"Rs "+Amount+".00");
}
}
catch (Exception e){
e.printStackTrace();
}
%>

</table>
</div>
</div> 

<form method="post" action="IncomeServlet">  
     
<div class="delete"   style="position:absolute; top:327px; left:134px;">  
  
  Enter the ID to delete  <input type="number"  name="id1" required ></div>  
 
  <button class="button"><span>Delete</span></button>
 
 </div>
</form>
     

 

</body>
</html>