<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  	<meta charset="ISO-8859-1">
		
<script>
function validateForm() {
var x = document.forms["myForm"]["temperature"].value;
if (x > 100) {
    alert("Invalid Temperature");
    return false;
}

var y = document.forms["myForm"]["bp"].value;
if (y > 200) {
    alert("Invalid Blood Pressure");
    return false;
}

var z = document.forms["myForm"]["RR"].value;
if (z > 60) {
    alert("Invalid Respiration Cycle");
    return false;
}

var a = document.forms["myForm"]["pulse"].value;
if (a > 100) {
    alert("Invalid Pulse");
    return false;
}
}


		var x, i, j, selElmnt, a, b, c;
		x = document.getElementsByClassName("custom-select");for (i = 0; i < x.length; i++) {
  			selElmnt = x[i].getElementsByTagName("select")[0];
  			 a = document.createElement("DIV");
  			a.setAttribute("class", "select-selected");
 			 a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  			x[i].appendChild(a);
			b = document.createElement("DIV");
  			b.setAttribute("class", "select-items select-hide");
  			
  			for (j = 1; j < selElmnt.length; j++) {
   				 c = document.createElement("DIV");
    			 c.innerHTML = selElmnt.options[j].innerHTML;
   				 c.addEventListener("click", function(e) {
       
       			 var y, i, k, s, h;
        		 s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        		 h = this.parentNode.previousSibling;
        		 for (i = 0; i < s.length; i++) {
          			if (s.options[i].innerHTML == this.innerHTML) {
            		s.selectedIndex = i;
            		h.innerHTML = this.innerHTML;
            		y = this.parentNode.getElementsByClassName("same-as-selected");
            		
            		for (k = 0; k < y.length; k++) {
              		y[k].removeAttribute("class");
            		}
           		 this.setAttribute("class", "same-as-selected");
           		 break;
          }
        }
        		 
        h.click();
    });
    b.appendChild(c);
  }
  			
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
     
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
		
		
function closeAllSelect(elmnt) {
 
  var x, y, i, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  for (i = 0; i < y.length; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < x.length; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}

document.addEventListener("click", closeAllSelect);




</script>

<title>Online Clinic Management</title>
<link rel="stylesheet" type="text/css" href="doc_record.css">
</head>
<body>

<pre><h1 class="text">                                     Finance Management System</pre></h1>


 
  	<%
String id = request.getParameter("ppid");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String dbName = "ITP";
String username = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
  	

  
  <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, username, password);
statement=connection.createStatement();

String sql ="SELECT * from patient_reg p where p.userID='"+id+"'";



resultSet = statement.executeQuery(sql);

 
while(resultSet.next()){
%>

  <br><br><br><br>
  
  <div class="row">
  	<div class="column">
  	<div class="div1">
  		<h1><u>Personal Details</u></h1>
  		<h4>1. Appointment ID: </h4>
  		<h4>2. Patient ID: <%=resultSet.getString("userID")%> </h4>
  		<h4>3. Patient Name:<%=resultSet.getString("firstname") %> <%=resultSet.getString("lastname") %> </h4>
  		<h4>4. Age: <%=resultSet.getString("age") %> </h4>
  		<h4>5. Gender:  <%=resultSet.getString("gender") %> </h4>
  		<h4>5. Blood Group: <%=resultSet.getString("bloodGroup") %> </h4>
  		<h4>6. Contact Number:  <%=resultSet.getString("mobileNo") %> </h4>
  		<h4>7. Address: <%=resultSet.getString("address") %> </h4>
  		<h4>8. Email: <%=resultSet.getString("email") %> </h4>
  	</div>
  	</div>
  	
  	
  	<div class="column">
  	<div class="div2">
  		<form name="myForm" action="NarthiAddServlet" method="post">
  		<h1 align="center"><u>Upload Treatment Records</u></h1><br>
  		<b>Patient ID</b> <input style="background-color:transparent" type="text" id="" name="patid" required> <br>
		<b>Temperature</b> <input style="background-color:transparent" type="text" name="temperature" id="temperature">C <br> 
		<b>Blood Pressure</b>&nbsp&nbsp&nbsp   <input style="background-color:transparent" type="text" id="bp" name="bp" id="bp" max="200">mmHg <br>
		<b>Respiration Rate</b>&nbsp&nbsp <input style="background-color:transparent" type="text"  name="RR" id="RR">cycles <br>
		<b>Pulse Rate </b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input style="background-color:transparent" type="text" id="pulse" name="pulse">beats<br>
		<b>Remarks </b><textarea class="form-control" rows="5" id="comment" style="background-color:transparent" name="others"></textarea><br>
		<b>Prescription </b><textarea class="form-control" rows="5" id="comment" style="background-color:transparent" name="medicine1"></textarea><br>
		
		<button value="" id="main" name="patid" onClick="validateForm()">Upload Records</button>
		
		
		
		
		
		 
		</form>
		
	</div>
	</div>
  </div>


<% 
}
%>

<% 
} catch (Exception e) {
e.printStackTrace();
}
%>
	 


	 
	  
</body>
</html>