<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<title>Home page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">


<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">HOME</a>
    <a href="#serice" class="w3-bar-item w3-button w3-padding-large w3-hide-small">services</a>
    <a href="patient_reg.jsp" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Register</a>
    <div class="w3-dropdown-hover w3-hide-small">
      <button class="w3-padding-large w3-button" title="login">Login <i class="fa fa-caret-down"></i></button>     
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
      
        <a href="logine.jsp" class="w3-bar-item w3-button">Staff Login</a>
        <a href="patient_log.jsp" class="w3-bar-item w3-button">User Login</a>
      </div>
    </div>
    <a href="javascript:void(0)" class="w3-padding-large w3-hover-red w3-hide-small w3-right"><i class="fa fa-search"></i></a>
  </div>
</div>


<!-- Navbar on small screens (remove the onclick attribute if you want the navbar to always show on top of the content when clicking on the links) -->
<div id="navDemo" class="w3-bar-block w3-black w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:46px">
  <a href="#what" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">what</a>
  <a href="#tour" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">TOUR</a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large" onclick="myFunction()">CONTACT</a>
</div>

<br>
<br>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="1st.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Hope</h3>
      <p><b>A Passion for Healing.</b></p>   
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="seat.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Care</h3>
      <p><b>A Passion for caring.</b></p>    
    </div>
  </div>
  <div class="mySlides w3-display-container w3-center">
    <img src="neuro.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Trust</h3>
      <p><b>The Future of Healthcare.</b></p>    
    </div>
  </div>
 
   <div class="w3-row w3-container" id="what">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">What We Offer</span>
    </div>
    <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>Care</h3>
      <p>A group of dedicated employees for to ensure the highest satisfaction in customers.</p>
    </div>

    <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>Innovation</h3>
      <p>Our aim is to bring the best technology to the town to provide a world class treatment.</p>
    </div>

    <div class="w3-col l3 m6 w3-dark-grey w3-container w3-padding-16">
      <h3>Consultation</h3>
      <p>Consulting and booking has been made easy using user friendly with the aid of the technology.</p>
    </div>

    <div class="w3-col l3 m6 w3-black w3-container w3-padding-16">
      <h3>Service</h3>
      <p>Our main purpose is to serve the people with best quality with to ensure your satisfaction.</p>
    </div>
  </div>
  <br>
  <br>
  <br>
  <!-- The Tour Section -->
  <div class="w3-grey" id="service">
    <div class="w3-container w3-content w3-padding-64" style="max-width:800px">
      <h2 class="w3-wide w3-center">Services</h2>

      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="things.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Become a Supplier</b></p>
            <p class="w3-opacity">Come join hands with the best clinic in the town.To ensure your continuous participation with click below.</p>
            <p></p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="window.location.href = 'Register_Akshi.jsp';"> Become a supplier</button></a>
          </div>
        </div>
       
        <div class="w3-third w3-margin-bottom">
          <img src="Dpres.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Appointment</b></p>
            <p class="w3-opacity"></p>
            <p>Consult the best doctors in the country. We offer dentist, cardiologists, nuerologists. To start booking click below.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="window.location.href = 'Register_Akshi.jsp';"> Book appointment</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="ambu.png" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Ambulance</b></p>
            <p class="w3-opacity"></p>
            <p>Our main aim is to help the people in need, so we do provide an ambulance service. Click below to book an ambulance.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="window.location.href = 'insert_values.jsp';"> </button>
          </div>
        </div>
      </div>
    </div>
  </div>
<br>
<br>
 <center><textarea name="news" rows="19" cols="128" style="border:5px solid  #ccc"></textarea><br><br></center>

 </div>
 
 
  
    
  
  
<!-- End Page Content -->
<!-- Footer -->
<footer>

  
  <div class="container-solid bg-grey">
    <h2 class="text-center">Address</h2>
  <h2 class="text-center"></h2>
  <div class="row">
    <div class="col-sm-5">
      <p></p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Address: 30/2.dutugemunu Street, Dehiwala</p>
      <p><span class="glyphicon glyphicon-phone"></span> Phone number:+94778284448</p>
      <p><span class="glyphicon glyphicon-envelope"></span> e-mail:donuts8inc@gmail.com</p>
    </div>
    <div class="footer-icons">
				<center>
					<a href="#"> <i class= "fa fa-facebook"></i></a>&nbsp
					<a href="#"><i class="fa fa-instagram"></i></a>
                 </center>
				</div>
    
      </div>
    </div>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>