<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  position:absolute;
  right:1px;
  top:2px;
}
.centre{
  position:absolute;
  right:675px;
  top:450px;


}




.button3 {background-color: #f44336;} /* Red */ 

.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

.centre{
.button {
  background-color: 	#4682B4; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width:200px
}
}

.button4 {border-radius: 12px;}




}

.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 33.33%;
  padding: 8px 12px ;
}


.row::after {
  content: "";
  clear: both;
  display: table;
}

.head{
color:#0000FF;
font-size:180%;

}




.block {
  display: block;
  width: 100%;
  border: none;
  background-color:  #008CBA;
  color: white;
  padding: 30px 20px;
  font-size: 20px;
 border: 2px solid white; 
  padding-left: 50px;
  cursor: pointer;
  text-align: center;
  
  width:400px;
}

.block:hover {
  background-color: #ddd;
  color: black;
}
body{
 background-image: url(".jpg");
}		


</style>
</head>
<body>


<div class="head">
<h1 align="center">Employee Management</h1>
</div>
<form action="LogOut" method="post">
<button class="button button3" >LOGOUT</button>
</form>
<div class="row">
  <div class="column">
    <img src="nn.png" alt="Snow" style="width:59%">
  </div>
<div class="row">
  <div class="column">
    <img src="e.png" alt="Snow" style="width:59%">
  </div>

<div class="row">
  <div class="column">
    <img src="n.png" alt="Forest" style="width:59%">
</div>
</div>
<div class="centre">
<a href="empl.jsp"class="block">Employee Details</a>
<a href="salary.jsp" class="block">Employee Salary</a>
<a href="schedule.jsp"class="block">Employee Schedule</a>
</div>

</body>
</html>
