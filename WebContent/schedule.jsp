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
  background-color: #4CAF50;
}
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

input[type=time], select, textarea {
  width: 30%;
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
  background-color: #45a049;
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
  width: 75%;
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
</style>

</head>
<body>
<ul>
	<li><a  href="main.jsp">Home</a></li>
  <li><a  href="Listschedule.jsp">Schedule </a></li>
   <li><a class="active" href="schedule.jsp">Add Schedule </a></li>
  
  
  
</ul>


<header>
  <h2>SCHEDULE DETAILS</h2>
</header>

<section>
 
  
  <article>



<div class="container">
  <form method="POST" action="AddSchedule">
  <div class="row">
    <div class="col-25">
      <label for="Monday">Monday</label>
    </div>
    <div class="col-75">
      <input type="time" id="fname" name="monday" maxlength="20"placeholder="" required>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="address">Tuesday</label>
    </div>
    <div class="col-75">
      <input type="time" id="address" name="tuesday" maxlength="40" placeholder="" required>
      
    </div>
  </div>
    <div class="row">
   <div class="col-25">
      <label for="profession">Wednesday</label>
    </div>
    <div class="col-75">
      <input type="time" id="profession" name="wednesday" "maxlength="40" placeholder=""  required>
    </div>
  </div>

       <div class="row">
    <div class="col-25">
      <label for="email">Thursday</label>
    </div>

    <div class="col-75">
      <input type="time" id="email" name="thursday" placeholder="" maxlength="22" required>
    </div>
  </div>
	
       <div class="row">
    <div class="col-25">
      <label for="nic">Friday</label>
    </div>

    <div class="col-75">
      <input type="time" id="nic" name="friday" maxlength="15"placeholder=""  required>
    </div>
  </div> 

 <div class="row">
    <div class="col-25">
      <label for="doj">Saturday</label>
    </div>

    <div class="col-75">
      <input type="time" id="doj" name="saturday" placeholder="" required>
    </div>
  </div> 
<div class="row">
    <div class="col-25">
      <label for="contactno">Sunday</label>
    </div>

    <div class="col-75">
      <input type="time" id="contact" maxlength="15" name="sunday" placeholder=""   required>
   
    </div>
  </div> 

<br>
  <div class="row">
    <input type="Submit"  name="submit" value="ADD Schedule">

   
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
