<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
String userID = request.getParameter("userID");
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
String sql ="select * from Patient_Reg where userID="+userID;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


<!DOCTYPE html>
<html>
<head>
<script>
    function nullvalidation() {
  if ($("#iduserID").val() === "null") {
        //alert('Enter First Name');
        $("#iduserID").val("");
     }
      if ($("#idfirstName").val() === "null") {
        //alert('Enter First Name');
        $("#idfirstName").val("");
     }
      if ($("#idlastName").val() === "null") {
        //alert('Enter First Name');
        $("#idlastName").val("");
     }
      if ($("#idemail").val() === "null") {
        //alert('Enter First Name');
        $("#idemail").val("");
     }
      if ($("#idaddress").val() === "null") {
        //alert('Enter First Name');
        $("#idaddress").val("");
     }
     if ($("#idmobileNo").val() === "null") {
        //alert('Enter First Name');
        $("#idmobileNo").val("");
     }
     if ($("#idgender").val() === "null") {
         //alert('Enter First Name');
         $("#idgender").val("");
      }
     if ($("#idbloodGroup").val() === "null") {
         //alert('Enter First Name');
         $("#idbloodGroup").val("");
      }
     if ($("#idage").val() === "null") {
         //alert('Enter First Name');
         $("#idage").val("");
      }
     
}
   </script>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Insert title here</title>
</head>
<body class="w3-light-grey">
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span><strong>Welcome</strong></span><br><br>
      
      
    </div>
    Get Well Soon<br>
  
</nav>


<center>

<h1>Edit Your Profile </h1>


<form name="myForm" onsubmit="return nullvalidation()" action="patient_update.jsp">

ID:
<input id="idfirstName" type="text" name="userID" value="<%=resultSet.getString("userID") %>"><br>
<br>

First Name:
<input id="idfirstName" type="text" name="firstName" value="<%=resultSet.getString("firstName") %>"><br>
<br>

Last Name:
<input id="idlastName" type="text" name="lastName" value="<%=resultSet.getString("lastName") %>"><br>
<br>
E-mail:
<input id="idemail" type="text" name="email" value="<%=resultSet.getString("email") %>"><br>
<br>
Address:
<input id="idaddress" type="text" name="address" value="<%=resultSet.getString("address") %>"><br>
<br>
Mobile Number:
<input id="idmobileNo" type="text" name="mobileNo" value="<%=resultSet.getString("mobileNo") %>"><br>
<br>
Gender:
<input id="idgender" type="text" name="gender" value="<%=resultSet.getString("gender") %>"><br>
<br>
Blood Group:
<input id="idbloodGroup" type="text" name="bloodGroup" value="<%=resultSet.getString("bloodGroup") %>"><br>
<br>
Age:
<input id="idage" type="text" name="age" value="<%=resultSet.getString("age") %>"><br>
<br>

<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit">
							Update
						</button>
					</div>


</form>
</center>


<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>


</body>
</html>