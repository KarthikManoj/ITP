<%@page import="service.niro_Edit_values"%>
<%@page import="model.Booking"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editing</title>


<style>
 body{
     background-image: url('editNiro.jpg');
     background-position: center;
     background-repeat: no-repeat;
     height: 100%;
}
.btn-info {
  border-radius: 4px;
  background-color: #2d2d86;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn-info span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn-info span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn-info:hover span {
  padding-right: 25px;
}

.btn-info:hover span:after {
  opacity: 1;
  right: 0;
}



</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>



</head>
<body>

<%
String sl_no=(String)request.getParameter("sl_no");

niro_Edit_values niro_obj_Edit_values = new niro_Edit_values();

Booking niro_obj_User_Bean=  niro_obj_Edit_values.niro_get_value_of_user(sl_no);

%>



<center>
<h1><b>Editing Your Booking</b></h1>


<div class="container" style="background-color:#bb99ff">

<form action="niro_edit_controller.jsp"><br>

 <div class="input-group">
    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
    <input type="text" id="sl_no" class="form-control" name="sl_no" value="<%=sl_no%>" maxlength="10" size="10" placeolder="NIC">
</div>
<br><br>

 <div class="input-group">
 	<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	<input type="text" id="user_name" class="form-control" name="user_name" value="<%=niro_obj_User_Bean.getUser_name()%>"  placeolder="Edit User Name"><br><br>
</div>
<br><br>

<div class="input-group">
 	<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
	<input type="text" id="mobile" class="form-control" name="mobile" value="<%=niro_obj_User_Bean.getMobile()%>" placeolder="Edit Mobile" pattern="^\d{10}$" format: xxxxxxxxxx><br><br>
</div>
<br><br>

<div class="input-group">
 	<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
	<input type="email" id="email" class="form-control" name="email" value="<%=niro_obj_User_Bean.getEmail()%>" placeolder="email"><br><br>

</div>
<br><br>

<button class=btn-info><span>Edit</span></button>

</div>
</form>

</center>



</body>
</html>