<!DOCTYPE html>
<html lang="en">
<head>
  <title>Navigation</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Nav.css">
  
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="newHome.jsp">Get well soon</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="nav.jsp">Home</a></li>    
      <li><a href="Appoint.jsp">Booking</a></li>
      <li><a href="Testimonials.jsp">Feedback</a></li>
      <li><a href="test.jsp">News</a></li>
      <li><a href="contRet.jsp">Contact Us</a></li>
      <li><a href="madReport.jsp">Report</a></li>
         <li><a href="AppointSucess.jsp">Apppintments</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Admin Control</h3>
  <p></p>
  
  <div class="row">
	<div class="column">	
	<div class="div1"><u>Transportation Manager</u><br><br>
	<form action="Transport_Manager.jsp" action=""onsubmit="return validateForm()" > 
	</select><br><br>
		<img src="trnsmgr.png" alt="transport">
	<br>
	<br>
	<input type="submit" class="submit" value="View now"></p></b> 
	
	
	</form>
	</div>
	</div>
	
	<div class="column">
	<div class="div2"><u>Finance Manager</u><br><br>
	<form action="payment.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="finmgr.jpg" alt="Flowers in Chania">
	<br>
	<br>
	<input type="submit"  class="submit" value="View now">

	
	</form>
	</div>
	</div>
	

	<div class="column">
	<div class="div3"><u>Stock Manager</u><br><br>
	<form action="AddStocks.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="pharm2.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div4"><u>Employee Manager</u><br><br>
	<form action="main.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="empmgr.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>

<br>
	<br>
	<br>
	<br>

<div class="column">
	<div class="div5"><u>Record Manager</u><br><br>
	<form action="doc_home_narthi.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="docs2.jpg" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div6"><u>Supplier Manager</u><br><br>
	<form action="Supplier_Manager.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
		<img src="supmgr.png" alt="Flowers in Chania">
	
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	

	
	<br>
	<br>
	<br>
	<br>
	
	<div class="column">
	<div class="div7"><u>Patient Manager</u><br><br>
	<form action="admin_details.jsp"
	onsubmit="return validateForm()" method="post">
				
			</select><br><br>
	<img src="patmgr.png" alt="Flowers in Chania">
	<br>
	<br>
	<input type="submit" class="submit" value="View now">

	
	</form>
	</div>
	</div>
	
	</div>
</div>




</body>
</html>