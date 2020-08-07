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

<title>Insert title here</title>
</head>
<body style="background-color: #555555;">


<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="AnswerForSecurityQuestion" method="post" >
					<span class="login100-form-title p-b-43">
						To reset your Password
					</span>


<%

String ques = request.getParameter("ques");

%>
<br><br>
<%

out.println("Answer the question to reset your password: \n "+"<br><br>"+ques+"?"); 
%>
<br>
<br>
<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
 <input class="input100" type="text" name="answer" >
<span class="focus-input100"></span>
						<span class="label-input100">Answer</span>
					</div>
<br>
<div class="container-login100-form-btn">
<button class="login100-form-btn" type="submit" value="Login" name="submit" id="submit"  required>Login</button>
</div>
</form>


</body>
</html>