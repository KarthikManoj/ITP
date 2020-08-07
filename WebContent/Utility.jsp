<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>


<link rel="stylesheet" href="css/Utility.css">

</head>

<body onload='document.form1.text1.focus()'>



<h1 class="text">Utility Bill Payment</h1>

<div class="topnav">
  <a class="active" href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a href="SalaryFinance.jsp">Salary History</a>
  <a href="ReportFinance.jsp">Reports</a>
</div>

	
<form method="post" action="UtilityServlet" >



<div class="Image"> <img src="images/4.ele.png"   height="450" width="300" alt="Pay" ></div>



<div class="bod">


<div class="ArrangeBoxes" style="position:absolute; top:42px; left:196px;">  
<p>Title*</p>
<input type="text" name="title" class="advancedSearchTextBox" required />
<br> <br>

 
<p>Provider*</p>

<select name="provider" class="select-css" required>
    <option value="none">Please Select</option>
    <option value="Electricity Bill">Electricity Bill</option>
    <option value="Water Bill">Water Bill</option>
    <option value="Telephone Bill">Telephone Bill</option>
  
</select>
 <p>Select Payment Account</p>

<select name="payAcc" class="select-css" required>
    <option value="0">Please Select</option>
    <option value="Genie App">Genie App</option>
    <option value="Commericial Bank">Commericial Bank</option>
<br> <br>
  
</select>
  
       
 </div>
 <div class="next" style="position:absolute; top:42px; left:537px;" >
  <p>Reference Number</p>
<input type="text" name="rnumber"  required/>
<br> <br> 
<br><br>
<label for="start">Effective Payment Date</label>
<br><br>
<input type="date" name="date" id="myDate" value="2019-02-09">
       
       
       <p>Amount Paid</p>
<input type="number" name="paid"    />
 
 
 
 
 
 </div>
 </div>
<button class="button "name="submit" value="Submit"  onclick="myFunction()"><span> Update</span></button>
      
</div>	
 </form>
 
 
 
</body>
</html>