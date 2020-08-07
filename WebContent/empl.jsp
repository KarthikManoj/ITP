<%

String uname =(String) session.getAttribute("username");
if(uname==null){
	response.sendRedirect("logine.jsp");
}


%>




<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color:#ADD8E6;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
}

/* Container for flexboxes */
section {
  display: -webkit-flex;
  display: flex;
}
body{

background-image:n.jpg
}
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

input[type=date], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px ;
  display: inline-block;
}

input[type=submit] {
 display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #1a00ff;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

input[type=submit]:hover {
  background-color:  #4863A0;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 35%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}


@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
/* Style the navigation menu */
nav {
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

/* Style the content */
article {
  -webkit-flex: 3;
  -ms-flex: 3;
  flex: 3;
  background-color: #f1f1f1;
  padding: 10px;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the menu and the content (inside the section) sit on top of each other instead of next to each other */
@media (max-width: 600px) {
  section {
    -webkit-flex-direction: column;
    flex-direction: column;
  }
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4863A0;
}
</style>
<script src="validation.js"></script>
</head>
<body>



<header>
  <h2>Employee Details</h2>
</header>
<ul>
	<li><a  href="main.jsp">Home</a></li>
  <li><a class="active" href="empl.jsp">ADD Employees</a></li>
  <li><a href="List.jsp">Show All Employees</a></li>
  <li><a href="update.jsp">Update Employees</a></li>
    <li><a href="Delete.jsp">Delete Employees</a></li>
  
  
</ul>
<section>

  
  <article>



<div class="container">
  <form method="POST" action="AddServlet">
  <div class="row">
    <div class="col-25">
      <label for="fname">Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="firstname" maxlength="20"placeholder="Your name.." required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="address">Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="address" name="address" maxlength="60" placeholder="Your Address.." required>
    </div>
  </div>
    <div class="row">
   <div class="col-25">
      <label for="profession">Profession</label>
    </div>
    <div class="col-75">
      <input type="text" id="profession" name="profession" "maxlength="40" placeholder="Your profession.."  required>
    </div>
  </div>

       <div class="row">
    <div class="col-25">
      <label for="email">E-mail</label>
    </div>

    <div class="col-75">
      <input type="text" id="email" name="email" placeholder="Your E-mail.." onblur="validateEmail(this);"maxlength="30" required>
    </div>
  </div>
	
	  <div class="row">
    <div class="col-25">
      <label for="salary">Salary</label>
    </div>

    <div class="col-75">
      <input type="text" id="salary" name="salary" placeholder="Your Salary.." onkeypress="return isNumberKey(event)"maxlength="22" required>
    </div>
  </div>
	
	
       <div class="row">
    <div class="col-25">
      <label for="nic">NIC</label>
    </div>

    <div class="col-75">
      <input type="text" id="nic" name="nic" maxlength="12"placeholder="Your NIC.."  required>
    </div>
  </div> 

 

<div class="row">
    <div class="col-25">
      <label for="contactno">ContactNo</label>
    </div>

    <div class="col-75">
      <input type="text" id="contact" maxlength="10" name="contactno" placeholder="Contact No.." onkeypress="return isNumberKey(event)"  required>
   
    </div>
  </div> 
  
  <div class="row">
    <div class="col-25">
      <label for="doj">Date of Join</label>
    </div>

    <div class="col-75">
      <input type="date" id="doj" name="doj" placeholder="YYYY/MM/DD"  title="Enter a date in this format YYYY/MM/DD"/ required>
    </div>
  </div> 
  
<div class="row">
    <div class="col-25">
      <label for="contactno">gender</label>
    </div>

    <div class="col-75">
    <input type="radio" name="gender" value="male" > Male
  <input type="radio" name="gender" value="female"> Female<br>
   
    </div>
  </div> 
<br>

  <div class="row">
    <input type="Submit"  name="submit" value="ADD Employee">

   
  </div>
  </form>
</div>   
  </article>
</section>

<footer>
  <p></p>
</footer>

</body>
</html>
