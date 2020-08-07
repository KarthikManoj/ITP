<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Well Soon Clinic</title>
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

input[type=text],[type=password],[type=email] {
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
}

</style>

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

<body >
<div>
<h2>Supplier Register </h2>
<form action="reg.jsp"  method="post" onsubmit="return validatePhoneNumber(this)">
<h3>Login details</h3>


<label for="r1" id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Name  :</label>
<input type="text" name="uname" id="r1" placeholder="username" required/><br>

<label  for="r2" id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password :</label>
<input type="password"  name="password" id="r2" placeholder="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Please include at least 1 uppercase character, 1 lowercase character, and
1 number." required /><br/>

<h3>Company details</h3>

<label for="r1" id="a">Company Name  :</label>
<input type="text" name="comname" placeholder="company name" id="r1" required/><br>

<label  for="r2" id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address :</label>
<input type="text" name="address" id="r2" placeholder="address" required/><br/>

<label  for="r3" id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email :</label>
<input type="email" name="email" id="r3" placeholder="email" required/><br/>

<label  for="r4" id=a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile No :</label>
<input type="text" name="mobnumber" id="r4" placeholder="mobile number"  required/><br/>


<button type="submit" value="Submit" id="button" >REGISTER</button><br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Login_Akshi.jsp'>LOGIN</a>


</form>


      
     


</div>
</body>
</html>