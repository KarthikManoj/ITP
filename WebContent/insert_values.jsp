<%@page import="java.util.Iterator"%>
<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="service.niro_Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<style>
 body{
     background-image: url('nf8.jpg');
     background-position: center;
     background-repeat: no-repeat;
     height: 100%;
}
.btn-info {
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 100%;
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

<title>Ambulance Booking</title>
</head>
<body>




<center>
<h1><b>Booking Details</b></h1>

<div class="container">

<form action="niro_insert_controller.jsp"  >

 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="sl_no" type="text" class="form-control" name="sl_no" placeholder="NIC" maxlength="10" size="10"  required>
    </div>
<br><br>

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="user_name" type="text" class="form-control" name="user_name" placeholder="User Name" required>
    </div>
<br><br>   

<div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input id="mobile" type="number" class="form-control" name="mobile" placeholder="Mobile Number(07xxxxxxxx)"  pattern="^\d{10}$" format: xxxxxxxxxx required >
    </div>
<br><br>


 <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input id="email" type="email" class="form-control" name="email" placeholder="Email" required>
    </div>
<br><br>

<button class=btn-info><span>NEXT </span></button>



 

</div>
</form>


</center>

</body>
</html>