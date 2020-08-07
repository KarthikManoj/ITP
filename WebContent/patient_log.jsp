<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
     <link rel="stylesheet" href="css/colors.css">
      <link rel="stylesheet" href="css/custom.css">
    

    
    <link rel="icon" href="img/favicon.png">
    
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    
    <link rel="stylesheet" href="css/themify-icons.css">
    
    <link rel="stylesheet" href="css/flaticon.css">
    
    <link rel="stylesheet" href="css/magnific-popup.css">
   
    <link rel="stylesheet" href="css/nice-select.css">
   
    <link rel="stylesheet" href="css/slick.css">
   
    <link rel="stylesheet" href="css/style.css">

    <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                    
                        <a class="navbar-brand" href="newHome.jsp"> <img src="gws.jpg" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item justify-content-center"
                            id="navbarSupportedContent">
                            <ul class="navbar-nav align-items-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="newHome.jsp">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#about">about</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#services">Services</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.html" id="navbarDropdown"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Login
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="services.html">User Login</a>
                                        <a class="dropdown-item" href="dep.html">Staff Login</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="">Contact</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="">Appointment</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
	
<title>patient login</title>
</head>
<body style="background-color: #666666;">

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="log_db.jsp" method="post">
					<span class="login100-form-title p-b-43">
						Login to continue
					</span>
					
					
					

<div class="login">
			<h1>CLINIC</h1>



<p class="round2"></p>

<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
<input class="input100" ID="uname"  type="text" name="uname" required>
<span class="focus-input100"></span>
<span class="label-input100">Username</span>						


</div>


<div class="wrap-input100 validate-input" data-validate="Password is required">
<input class="input100" ID="pass" type="password" name="pass" required>
<span class="focus-input100"></span>
<span class="label-input100">Password</span>

</div>

<div class="container-login100-form-btn">
<button class="login100-form-btn" type="submit" value="Login"  id="submit"  required>Login</button>
</div>
	
	
<div class="flex-sb-m w-full p-t-3 p-b-32">	
<div>
													   
<a	href="email.jsp" class="txt1">Forgot Password?</a></br><br>
</div>
<div>
<a href="patient_reg.jsp" class="txt1">Create an account?</a></br><br>
				</div>
</div>
<span style="color: red"><%=(request.getAttribute("errMessage") == null) ? "" : request.getAttribute("errMessage")%></span>


</form>

<div class="login100-more" style="background-image: url('sceth.jpg');">
				</div>
			</div>
		</div>
	</div>
	
	    <footer class="footer-area">
        <div class="footer section_padding">
            <div class="container">
                <div class="row justify-content-between">
                    <div class="col-xl-2 col-md-4 col-sm-6 single-footer-widget">
                        <a href="#" class="footer_logo"> <img src="gws.jpg" alt="logo"> </a>
                        </div>
   
                    
                    <div class="col-xl-2 col-sm-6 col-md-4 single-footer-widget">
                        <h4>Quick Links</h4>
                        <ul>
                            <li><a href="#about">About us</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="logine.jsp">Staff Login</a></li>
                            <li><a href="login.jsp">User Login</a></li>
                        </ul>
                    </div>
                    <div class="col-xl-2 col-sm-6 col-md-4 single-footer-widget">
                        <h4>Discover</h4>
                        <ul>
                            <li><a href="Register_Akshi.jsp">Become a Supplier</a></li>
                            <li><a href="Appoint.jsp">Book an Appointment</a></li>
                            <li><a href="insert_values.jsp">Request an Ambulance </a></li>
                             <li><a href="feedback.jsp">Feedback </a></li>
                            
                     </ul>
                    </div>
                   </div>
                  </div>
                 </div>
    </footer>

<div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p> 2019 Get well soon. All Reserved.</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="social">
                     <ul class="social-links">
                        <li><a href=""><i class="fa fa-instagram"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
    
	
	

<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="vendor/animsition/js/animsition.min.js"></script>

	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>

	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>

	<script src="vendor/countdowntime/countdowntime.js"></script>

	<script src="js/main.js"></script>
</body>
</html>