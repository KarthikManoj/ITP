<!DOCTYPE html>
<html lang="en">
<head>


<style>
.btn-info1 {
  border-radius: 4px;
  background-color: #FF0000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 18px;
  padding: 10px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn-info1 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn-info1 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn-info1:hover span {
  padding-right: 25px;
}

.btn-info1:hover span:after {
  opacity: 1;
  right: 0;
}
</style>




  <title>Transport Admin </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  

<link rel="stylesheet" href="niroAdmin.css">

</head>
<body>

<pre><h1 class="text">                                    Transport Management System</pre></h1>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"> HOME  </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ambulance_payment.jsp">Payment</a></li>    
      <li><a href="driver_list.jsp">Driver Details</a></li>
      <li><a href="niro_UserDetail.jsp">User Details</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<div class="contrainer">
	<form action="ReportShort" method="get">
	
	
	
 <input id="search" type="text" class="form-control" name="NIC" placeholder="Search NIC..." w   >
 <button class=btn-info1><span>NIC and Name Report</span></button>
 </form>
<br><br>
<form action="ReportTransport" method="get">

<button class=btn-info1><span>All Request User Report</span></button>

</form>
</br><br>



<center><img src="van1.png" alt="Avatar" style="width:50%"></center>
<p><P>
</div>

</body>
</html>