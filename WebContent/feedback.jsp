<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
<style>

.add-button {
	display: inline-block;
  padding: 15px 20px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: black;
  border: none;
  border-radius: 15px;
	
}
</style>

<link rel="stylesheet" type="text/css" href="Feed.css">
</head>
<body  background="fed.png">
<script> 
function onvalidate()
{ 
 var name = document.form.name.value;
 var email = document.form.email.value; 
 var comments = document.form.comments.value;
 var rate = document.form.rate.value;
 
 if (name==null || name=="")
 { 
 alert("Name can't be blank"); 
 return false; 
 }
 else if (email==null || email=="")
 { 
 alert("Email can't be blank"); 
 return false; 
 }
 else if (comments==null || comments=="")
 {
 alert("comments can't be blank"); 
 return false; 
 } 
 else if (rate==null || rate=="")
 {
 alert("rate can't be blank"); 
 return false; 
 } 
 } 
</script> 
	
	<center><h1>Feedback</h1></center>  	
	
	<br>
	<br>

	<div class="row">
	<div class="column">	
	
	
	
	
	
	</div>
	
	
	<div class="column">
	<div class="div2"><h3></h3><br></div>
	
	<form  action="AddServlet3" method="post">
	
	<b> &nbsp Name: <input type="text" name="name" placeholder="Name" style="border:2px solid" required></b><br><br>
	<b> &nbsp Email: <input type="email" name="email" placeholder="Email" style="border:2px solid" required></b><br><br>
	<b> &nbsp Comment:<textarea name="comments" placeholder="Comment" rows="6" cols="40" style="border:2px solid " required></textarea></b><br><br>
	
	<input type="submit" value="AddFeedback" class="add-button" />
	<br>
	<br>
	<center><img src="smile.jpg" alt="Italian Trulli"></center>
	</form>
	</div>
	</div>
	
	

	
</body>
</html>