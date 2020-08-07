<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
<div class="container">
<hr>

<div class="card bg-light">
<article class="card-body mx-auto" style="max-width: 400px;">
	<h4 class="card-title mt-3 text-center">Create Account</h4>



<h1> User Register</h1>
 

<form name="myForm" 
onsubmit="return validateForm()" action="reg_insert.jsp" >
  
 
<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="firstname" class="form-control" placeholder="First name" type="text">
    </div> <!-- form-group// -->  


<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-user"></i> </span>
		 </div>
        <input name="lastname" class="form-control" placeholder="Last name" type="text">
    </div> <!-- form-group// -->  


 <div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-envelope"></i> </span>
		 </div>
        <input name="email" class="form-control" placeholder="Email address" type="email">
    </div> <!-- form-group// -->


<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-building"></i> </span>
		 </div>
        <input name="address" class="form-control" placeholder="Address" type="text">
    </div> <!-- form-group// -->  


<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-phone"></i> </span>
		 </div>
        <input name="mobileno" class="form-control" placeholder="Mobile number" type="text" pattern="^\d{10}$" title='Phone Number (Format: 099(99)99999)' required>
    </div> <!-- form-group// -->  


<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fas fa-transgender"></i> </span>
		</div>
		<select class="form-control" name="gender">
			<option selected=""> Gender</option>
			<option value="male" >male </option> 
            <option value="female" >female</option>
		</select>
	</div> <!-- form-group end.// -->
	
	
	
<div class="form-group input-group">
    	<div class="input-group-prepend">
		    <span class="input-group-text"> </span>
		</div>
		<select class="form-control" name="bloodgroup">
			<option selected=""> Blood Group</option>
			<option value="a+" >a+ </option> 
                           <option value="a-" >a-</option>
                           <option value="b+" >b+ </option>
                           <option value="b-" >b-</option>
                           <option value="ab+" >ab+ </option>
                           <option value="ab-" >ab- </option>
                           <option value="o+" >o+ </option>
                           <option value="o-" >o- </option>
		</select>
	</div> <!-- form-group end.// -->
	
	
<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> </span>
		 </div>
        <input type="text" name="age" class="form-control" placeholder="Age" onkeypress="return isNumberKey(event)" required>
    </div> <!-- form-group// -->  


</h3>
<h4 class="card-title mt-3 text-center">To Secure Your Account in future</h4>

    	<div class="input-group-prepend">   
		</div>
Security Question:<br>
<select class="form-control" name="ques">                              
                    <option value="In what county were you born?" >In what county were you born? </option> 
                           <option value="What Is your favorite book?" >What Is your favorite book?</option>
                           <option value="What is your birth month?" >What is your birth month?</option>
                           <option value="What is your favorite food?" >What is your favorite food?</option>
                           <option value="where did you go to high school/college?" >where did you go to high school/college?</option>
                           </select><br><br>

<div class="input-group-prepend">   
	</div>	
Enter the answer for the question above:<br>
<input type="text" name="ans"><br><br>


<h4 class="card-title mt-3 text-center">User Login Details</h4>

<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		 </div>
        <input name="uname" class="form-control" placeholder="User name" type="text">
    </div> <!-- form-group// -->  


<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		 </div>
        <input name="pass" class="form-control" placeholder="Password" type="password" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" 
        title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number.">
    </div> <!-- form-group// -->  


<div class="form-group input-group">
		<div class="input-group-prepend">
		    <span class="input-group-text"> <i class="fa fa-lock"></i> </span>
		 </div>
        <input name="confirm" class="form-control" placeholder="Confirm password" type="password">
    </div> <!-- form-group// -->  
 

</pre>

<div class="form-group">
        <button type="submit" class="btn btn-primary btn-block" value="Insert"> Create Account  </button>
    </div> <!-- form-group// -->   


<script type="text/javascript">
    
    		function validateForm(){
                    
   var firstName = document.forms["myForm"]["firstname"].value
   var lastName=document.forms["myForm"]["lastname"].value
   var Email=document.forms["myForm"]["email"].value
   var Address=document.forms["myForm"]["address"].value
   var MobileNumber=document.forms["myForm"]["mobileno"].value
   var Gender=document.forms["myForm"]["gender"].value
   var BloodGroup=document.forms["myForm"]["bloodgroup"].value
   var Age=document.forms["myForm"]["age"].value
   var pass=document.forms["myForm"]["pass"].value
   var copass=document.forms["myForm"]["confirm"].value
   var uname=document.forms["myForm"]["uname"].value
   var ques=document.forms["myForm"]["ques"].value
   var ans=document.forms["myForm"]["ans"].value
  
   


    if (firstName == ""||lastName ==""||MobileNumber ==""||Email==""||Address==""||BloodGroup==""||Gender==""||Age==""||pass==""||copass==""||uname==""||ques==""||ans=="") {
        alert("All Fields must be filled out");
        return false;
    }	

   if(pass!=copass){
		alert("Dismatch Password.Re-Enter");
		return false;
   
 }
   
   
    		}
    		
    		 function isNumberKey(evt)
    	        {
    	           var charCode = (evt.which) ? evt.which : event.keyCode;
    	           if (charCode != 46 && charCode > 31 
    	             && (charCode < 48 || charCode > 57))
    	              return false;

    	           return true;
    	        }
    		
    
</script>
</form>
</article>
</div>
</div>

<br><br>
<article class="bg-secondary mb-3">  
<div class="card-body text-center">


</body>
</html>