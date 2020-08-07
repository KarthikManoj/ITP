<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String S1No = request.getParameter("S1No");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String userid = "root";
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
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from requests where S1No="+S1No;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    margin: 0;
    padding: 0;
		background: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
		family: $font;
	
    background-position: center center;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-repeat: no-repeat;
    margin: 100px;
text-align: center;
align: center;
double {border-style: double;}
}

#a{
font-family:'Lato', sans-serif;

}
button{
background-color:#738CC5;
width: 30%;
padding: 9px 10px;
margin:5px 5px;
cursor:pointer;
border:none;
margin-left: 80px; 

}

div{
   border: 5px solid black;
   margin-top: 100px;
   margin-bottom: 100px;
   margin-right: 250px;
   margin-left: 180px;
   }

* {
  box-sizing: border-box;
}

.column {
		float: left;
		width: 50%;
		padding: 50px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 24px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}


.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid black;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.text {
	text-transform: uppercase;
	background: linear-gradient(to right, #efefbb 0%, #524E9B 100%);
	
	font: {
		size: 30vw;
		family: $font;
		
	};
}
img { 
  background: url(E-Commerce-1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}



.submit {
	display: inline-block;
  padding: 15px 70px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

input[type=text],[type=password] {
	width: 50%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}



input[type=number] {
	width: 20%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}




.Image{
	position:absolute;
	top:-93px;
	left:585px;
}



.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}




@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }

  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }



</style>


<meta charset="ISO-8859-1">
<title>Get Well Soon Clinic</title>
<script type="text/javascript">

function validatePhoneNumber(this_form)
{
	var phon=this_form.mobnumber.value;
	if(phon==null||phon=="")
	{
		alert("Please enter your phone number.");
		this_form.mobnumber.focus();	
		return false;
	}
	if(phon.length<10)
	{
		alert("Phone number must be at least of 10 digits.");
		this_form.mobnumber.focus();	
		return false;
	}
	if(isNaN(phon))
	{
		alert("Sorry! You have entered an invalid phone number! Please try again.");
		this_form.mobnumber.focus();	
		return false;
	}
	return true;
}

</script>
</head>
<body>
<form method="post" action="Akshi_Process.jsp" action="checkInpt()" onsubmit="return validatePhoneNumber(this)">


			<tr>
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<lable id="a">Supplier ID:</lable>
				<td><input type="text" name="S1No" disabled required value="<%=resultSet.getString("S1No") %>" /></td><br>
			</tr>
			<tr>
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<lable id="a">User Name:</lable>
				<td><input type="text" name="uname" disabled required value="<%=resultSet.getString("uname") %>" /></td><br>
			</tr>
				<tr>
				<lable id="a">Company Name:</lable>
				<td><input type="text" name="comname" required value="<%=resultSet.getString("comname") %>" /></td><br>
			</tr>
		
			<tr>
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<lable id="a">Address:</lable>
				<td><input type="text" name="address" required	value="<%=resultSet.getString("address") %>" /></td><br>
			</tr>
			<tr>
				 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<lable id="a">Email:</lable> 
				<td><input type="text" name="email" required value="<%=resultSet.getString("email") %>" /></td><br>
			</tr>
				<tr>
				 &nbsp;&nbsp;&nbsp;<lable id="a">Moblile No :</lable>
				<td><input type="text" name="mobnumber"  required value="<%=resultSet.getString("mobnumber") %>" /></td><br>
			</tr>
		
			<tr>
				<td colspan="2"><input type="hidden" name="S1No"  value="<%=resultSet.getString("S1No")%>" /> 
	<button type="submit" value="Submit" id="button" onclick="return checkInp()">UPDATE</button></td>
			</tr>
		


</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>