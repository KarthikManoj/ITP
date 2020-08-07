<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet" href="cssboot/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="cssboot/animate.css">

<link rel="stylesheet" href="cssboot/owl.carousel.min.css">
<link rel="stylesheet" href="cssboot/owl.theme.default.min.css">
<link rel="stylesheet" href="cssboot/magnific-popup.css">

<link rel="stylesheet" href="cssboot/aos.css">

<link rel="stylesheet" href="cssboot/ionicons.min.css">

<link rel="stylesheet" href="cssboot/bootstrap-datepicker.css">
<link rel="stylesheet" href="cssboot/jquery.timepicker.css">


<link rel="stylesheet" href="cssboot/flaticon.css">
<link rel="stylesheet" href="cssboot/icomoon.css">
<link rel="stylesheet" href="cssboot/style.css">
</head>
<body>




	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_1.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Appointment</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="newHome.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>Appointment <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section ftco-no-pt ftco-no-pb ftco-counter img"
		id="section-counter" style="background-image: url(images/bg_3.jpg);"
		data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">
				<div class="col-md-6 py-5 pr-md-5">
					<div
						class="heading-section heading-section-white ftco-animate mb-5">
						<span class="subheading">Consultation</span>
						<h2 class="mb-4">Appoint an Booking</h2>

					</div>
					<form action="AddServlet2" method="post"
						onsubmit="return onvalidate()"
						class="appointment-form ftco-animate">

						<div class="d-md-flex">
							<div class="form-group">
								<div class="form-field">
									<div class="select-wrap">
										<div class="icon">
											<span class="ion-ios-arrow-down"></span>
										</div>



										<select name="type" class="form-control">
											<option value="Dentist">Dentist</option>
											<option value="Cardiologist">Cardiologist</option>
											<option value="Neurologist">Neurologist</option>
										</select>
									</div>
								</div>
							</div>

						</div>
						<div class="d-md-flex">
							<div class="form-group">
								<div class="input-wrap">
									<div class="icon">
										<span class="ion-md-calendar"></span>
									</div>
									<input type="date" name="date"
										 placeholder="Date" >
								</div>
							</div>
							<div class="form-group ml-md-4">
								<input type="text" name="time" cols="30" rows="2"
									class="form-control" placeholder="Time">
							</div>
						</div>
						<div class="d-md-flex">
							<div class="form-group">
								<input type="number" name="pid" cols="30" rows="2"
									class="form-control" placeholder="pid">
								</textarea>
							</div>
							<div class="form-group ml-md-4">
								<input type="submit" value="Appointment"
									class="btn btn-secondary py-3 px-4">
							</div>
						</div>
					</form>
				</div>

			</div>
	</section>

	


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.timepicker.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>