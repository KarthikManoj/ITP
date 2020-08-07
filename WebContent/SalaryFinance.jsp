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
<link rel="stylesheet" href="css/SalaryFinance.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>

<h1 class="text">Salary Update</h1>

<div class="topnav">
  <a  href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a class="active" href="SalaryFinance.jsp">Salary History</a>
  <a href="ReportFinance.jsp">Reports</a>
</div>



<form method="post" action="SalaryFinance">  
  <div class="bod">  
 <div class="nxt">
	 <a href="ShowSalaryStatus.jsp">Check the Salary Salary Status</a>
	 
	 </div>
  <h4 class="text1"><pre>                                   Employees Salary-Status Insert</pre><b></b></h4> 
<div class="status"   >  
  
 Enter the Eid: 
 <br>
 <input type="number"  name="EID" ><br>
 
 Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select>

 Select Month :
 <select name="month" class="select-css">
   
    <option value="January">January</option>
    <option value="February">February</option>
     <option value="March">March</option>
      <option value="April">April</option>
       <option value="May">May</option>
        <option value="June">June</option>
         <option value="July">July</option>
          <option value="August">August</option>
            <option value="September">September</option>
              <option value="October">October</option>
                <option value="November">November</option>
                 <option value="December">December</option>
                
<br> <br>
  
</select>
  
 </div>  
 
  <button class="button"><span>Insert Status</span></button>


</form>

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
					
					
					
					<th >EID</th>
					<th >Firstname</th>
					<th >Profession</th>
					<th >Salary</th>
					</tr> </thead>

 </div>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT e.EID,e.firstname,e.profession,e.salary from employee e;";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >

<td><%=resultSet.getString("EID") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("profession") %></td>
<td><%=resultSet.getString("salary") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>




