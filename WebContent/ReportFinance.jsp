<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="css/ReportFinance.css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Get Well Soon Clinic</title>
</head>
<body>


<h1 class="text">   Report</h1>


<div class="topnav">
  <a  href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a  href="SalaryFinance.jsp">Salary History</a>
  <a  class="active" href="#about">Reports</a>
</div>


<div class="modelopen">

  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-black">Generate Report For Income</button>

  <div id="id01" class="w3-modal w3-animate-opacity">
    <div class="w3-modal-content w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-large w3-display-topright">&times;</span>
        <h2>Select down to generate report</h2>
      </header>
      <form action="ReportIncome" method="get">
      <div class="w3-container">
      <p>Full report</p>
      <button>Generate Full Report</button>
      </form>
      
      </div>
      
      <form action="ReportIncome1" method="get">
      
<h5>Enter the date</h5>
		<input type="date" name="startdate" id="myDate" >

         
    <button>Generate</button>
	
      
      
      </form>
      <footer class="w3-container w3-teal">
  
      </footer>
    </div>
  </div>
</div>

</div>

<br>
<br>
<div class="modelopen1">
 <form action="ReportSalary"  method="get">
 
      <h5>Full report about Salaries</h5>
      <button>Generate Full Report</button>
      </form>
      
      <form action="ReportSalary1" method="get">
      
<h5>Enter the Eid</h5>
		<input type="text" name="eid"  >

         
    <button>Generate</button>
      </div>

</body>
</html>