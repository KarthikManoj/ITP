<!doctype html>
<html lang="en">

<head>
   
    <meta charset="utf-8">
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
     <link rel="stylesheet" href="css1/colors.css">
      <link rel="stylesheet" href="css1/custom.css">
    
    <title>Homepage</title>
    
    <link rel="icon" href="images/favicon.png">
    
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    
    <link rel="stylesheet" href="css1/animate.css">
    
    <link rel="stylesheet" href="css1/owl.carousel.min.css">
    
    <link rel="stylesheet" href="css1/themify-icons.css">
    
    <link rel="stylesheet" href="css1/flaticon.css">
    
    <link rel="stylesheet" href="css1/magnific-popup.css">
   
    <link rel="stylesheet" href="css1/nice-select.css">
   
    <link rel="stylesheet" href="css1/slick.css">
   
    <link rel="stylesheet" href="css1/style.css">
</head>

<body>

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
                                        <a class="dropdown-item" href="patient_log.jsp">User Login</a>
                                        <a class="dropdown-item" href="logine.jsp">Staff Login</a>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="Contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>

    <!-- banner part start-->
    <section class="banner_part">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5 col-xl-5">
                    <div class="banner_text">
                        <div class="banner_text_iner">
                            <h5>We are here for your care</h5>
                            <h1>Best Care &
                                Better Doctors</h1>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="banner_img">
                        <img src="images/banner_img.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner part start-->

    <!-- about us part start-->
    <section class="about_us padding_top" id="about">
        <div class="container">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-6 col-lg-6">
                    <div class="about_us_img">
                        <img src="images/top_service.png" alt="">
                    </div>
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="about_us_text">
                        <h2>About us</h2>
                        <p>This is a clinic started in order to provide the best service for the people with the best doctors in the town. We 
                        have a group of people who joined with us to serve people. </p>
                            
                        <div class="banner_item">
                            <div class="single_item">
                                <img src="images/icon/banner_1.svg" alt="">
                                <h5>Care</h5>
                            </div>
                            <div class="single_item">
                                <img src="images/icon/banner_2.svg" alt="">
                                <h5>Hope</h5>
                            </div>
                            <div class="single_item">
                                <img src="images/icon/banner_3.svg" alt="">
                                <h5>Trust</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- about us part end-->

    <!-- feature_part start-->
    <section class="feature_part">
        <div class="container" id="">
            <div class="row justify-content-center">
                <div class="col-xl-8">
                    <div class="section_tittle text-center">
                        <h2>Our services</h2>
                    </div>
                </div>
            </div>
            <div class="row justify-content-between align-items-center">
                <div class="col-lg-3 col-sm-12">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><img src="images/icon/feature_1.svg" alt=""></span>
                            <h4>Consultation</h4>
                            <p>Consulting and booking has been made easier using with the aid of the technology.</p>
                        </div>
                    </div>
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><img src="images/icon/feature_2.svg" alt=""></span>
                            <h4>Service</h4>
                            <p>Our main purpose is to serve the people with best quality with to ensure your satisfaction.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-12">
                        <div class="single_feature_img">
                            <img src="images/service.png" alt="">
                        </div>
                </div>
                <div class="col-lg-3 col-sm-12">
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><img src="images/icon/feature_1.svg" alt=""></span>
                            <h4>Care</h4>
                            <p>A group of dedicated employees for to ensure the highest satisfaction in customers.</p>
                        </div>
                    </div>
                    <div class="single_feature">
                        <div class="single_feature_part">
                            <span class="single_feature_icon"><img src="images/icon/feature_2.svg" alt=""></span>
                            <h4>Innovation</h4>
                            <p>Our aim is to bring the best technology to the town to provide a world class treatment.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
        <div class="container" id="services">
            <div class="row justify-content-center text-center">
               
     
      <h2 class="w3-wide w3-center">Services</h2>
      <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="things.jpg" alt="New York" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Become a Supplier</b></p>
            <p class="w3-opacity">Come join hands with the best clinic in the town.To ensure your continuous participation with click below.</p>
            <p></p>
            <button class="w3-button w3-black w3-margin-bottom" a href="Appoint.jsp">Become a supplier</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="Dpres.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Appointment</b></p>
            <p class="w3-opacity"></p>
            <p>Consult the best doctors in the country.To book appointments click below</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('Appoint.jsp').style.display='block'">Book appointment</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="ambu.png" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Ambulance</b></p>
            <p class="w3-opacity"></p>
            <p>Our main aim is to help the people who are in need. Click below to request a ambulance.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">Request ambulance</button>
          </div>
        </div>
      </div>
    </div>
   </div>
    
  <div class="w3-row w3-container" id="what">
    <div class="w3-center w3-padding-64">
      <span class="w3-xlarge w3-bottombar w3-border-dark-grey w3-padding-16">What We Offer</span>
    </div>
    <div class="w3-col l3 m6 w3-light-grey w3-container w3-padding-16">
      <h3>Stable</h3>
      <p>Ensured stability with a collective experience of more than 20 years in medical industry.</p>
    </div>

    <div class="w3-col l3 m6 w3-grey w3-container w3-padding-16">
      <h3>Technology</h3>
      <p>Using the best technology in the town to deliver the best service in terms of medicine.</p>
    </div>

 
  </div>
    <br>
    <br>
    
    
    <div class="news" style="border-style:solid;width:950px;margin-left:20px; margin-top:60px"> 

<%
String id = request.getParameter("username");
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
String sql ="SELECT * FROM new";

resultSet = statement.executeQuery(sql);
 
while(resultSet.next()){
%>

<tr bgcolor="#D7DBDD ">
<div>
<%=resultSet.getString("title") %></br></br>
<%=resultSet.getString("ne") %></br></br>

<hr>

</div>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

  
 </div>
    
    <br>
    <br>
    
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
                             <li><a href="testimonials.jsp">Testimonials </a></li>
                            
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
    
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
    
      <script src="js1/all.js"></script>
    
      <script src="js1/custom.js"></script>
     
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>


    <script src="js1/jquery-1.12.1.min.js"></script>
    <script src="js1/popper.min.js"></script>
    <script src="js1/bootstrap.min.js"></script>
    <script src="js1/owl.carousel.min.js"></script>
    <script src="js1/jquery.nice-select.min.js"></script>
    <script src="js1/jquery.ajaxchimp.min.js"></script>
    <script src="js1/jquery.form.js"></script>
    <script src="js1/jquery.validate.min.js"></script>
    <script src="js1/mail-script.js"></script>
    <script src="js1/contact.js"></script>
    <script src="js1/custom.js"></script>
    
</body>

</html>