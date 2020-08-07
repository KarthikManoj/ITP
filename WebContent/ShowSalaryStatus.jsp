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
<link rel="stylesheet" href="css/ShowSalaryStatus.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>


<H1>Salary Status</H1>

<div class="topnav">
  <a  href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a  href="SalaryFinance.jsp">Salary History</a>
  <a href="#about">Reports</a>
</div>

<a href="SalaryFinance.jsp">Back</a>

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

<div class="bod">
<div class="mk">
Search<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search EID...." title="">
</div>
<div class="Arrange">
		<div class="table-wrapper-scroll-y my-custom-scrollbar">

			 <table class="table table-bordered table-striped mb-0"  id="myTable">
			    <thead>
 
 
 
					<tr bgcolor="#7474BF">
					
					<th >EID</th>
					
					<th >First Name</th>
					<th >Salary Status</th>
					<th >Month</th>
					</tr> </thead>
					
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="Select e.EID,e.firstname,s.status,s.month from employee e,SalaryPayment s where e.EID=s.Salary_id";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr >
<td><%=resultSet.getString("EID") %></td>
<td><%=resultSet.getString("firstname") %></td>
<td><%=resultSet.getString("status") %></td>
<td><%=resultSet.getString("month") %></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
					</div>

<form action="UpdateStatus" method="post">
<div class="status">


 Enter the Eid: 
 <br>
 <input type="number"  name="eid" ><br>
 
 
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
 
 Select Status :
 <select name="Status" class="select-css">
   
    <option value="Paid">Paid</option>
    <option value="Not yet paid">Not yet paid</option>
<br> <br>
  
</select></div>
<button class="button"><span>Update Status</span></button>


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