<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String utility_id = request.getParameter("utility_id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String username = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, username, password);
statement=connection.createStatement();
String sql ="select * from utilitypay where utility_id='"+utility_id+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="css/Updateutility.css">

</head>

<body>

<h1 class="text">Expenses-Utility Update</h1>

<div class="topnav">
  <a class="active" href="payment.jsp">Home</a>
<a href="Income&Expenses.jsp">Expenses History</a>
  <a  href="SuppilerFinance.jsp">Supplier</a>
  <a href="SalaryFinance.jsp">Salary History</a>
  <a href="ReportFinance.jsp">Reports</a>
</div>


<ul>
  <li>  <a href="Income&Expenses.jsp">Back</a></li>

  </ul>



<div class="bod" ></div>



<center><h2><font color="#02075d">UPDATE</font></h2></center>
               <form method="post" action="update_process_utility.jsp">
<h3>

      <div class="onpoint">
<pre>
	UtilityPay   : 	 <input type="number" name="utility_id" value="<%=resultSet.getString("utility_id")%>"   /></br>
	Title        : 	 <input type="text" name="title"
						value="<%=resultSet.getString("title")%>" /></br>
	Payment Mode :	 <select name="payAcc" class="select-css" required >
                    
                     <option value="Genie App">Genie App</option>
                     <option value="Commericial Bank">Commericial Bank</option> value="<%=resultSet.getString("payAcc")%>" ></br></select>
                            
	Provider     : 	 <select name="provider" class="select-css1" required >
					
					    <option value="Electricity Bill">Electricity Bill</option>
					    <option value="Water Bill">Water Bill</option>
					    <option value="Telephone Bill">Telephone Bill</option>value="<%=resultSet.getString("provider")%>" /><br></select>
					    
	Payment Date :   <input type="date" name="date" value="<%=resultSet.getString("date")%>"  required/>
					
	Reference    : 	 <input type="text" name="rnumber"
							value="<%=resultSet.getString("rnumber")%>"  required/>
						</br>
	Amount       :   <input type="text" name="paid"     onkeypress="javascript:return isNumber(event)"  			required				value="<%=resultSet.getString("paid") %>" />
						<br>
	
				</pre>
	</h3>
<button class="button"><span>Update</span></button>
	
</div>	
	

</form>

	
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
 <script>
function myFunction() {
  var x = document.getElementById("myDate").value;
  document.getElementById("demo").innerHTML = x;
}




function isNumber(evt) {
    var iKeyCode = (evt.which) ? evt.which : evt.keyCode
    if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 ||iKeyCode > 57))
        return false;

    return true;
}  
</script>
</html>