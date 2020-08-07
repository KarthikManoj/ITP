<!DOCTYPE html>
<html lang="en">
<head>

<script> 
function onvalidate()
{ 
	var email = document.form.email.value; 


if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}
 } 
</script> 

	<title>Login V18</title>
	<meta charset="UTF-8">
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
<link rel="stylesheet" type="text/css" href="cssAsh/util.css">
<link rel="stylesheet" type="text/css" href="cssAsh/main.css">

</head>
<body style="background-color: #555555;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="email" method="get" onsubmit="return onvalidate()" >
					<span class="login100-form-title p-b-43">
						To reset your Password
					</span>
					
					
					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="email" name="email" required>
						<span class="focus-input100"></span>
						<span class="label-input100">Enter your Email</span>
					</div>
					
		
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" name="submit">
							Enter
						</button>
					</div>
					
				</form>

				<div class="login100-more" style="background-image: url('sceth.jpg');">
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