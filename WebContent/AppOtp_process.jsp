<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title><!DOCTYPE html>

<head>

<meta charset="ISO-8859-1">
<title>  Get Well Soon Clinic  </title>
<link rel="stylesheet" href="css/AppOTPprocess.css">
</head>
<%
String nic=(String)session.getAttribute("nic");

String phone=(String)session.getAttribute("phone");
int otp= (Integer) session.getAttribute("otp");
String otpvalue=request.getParameter("otpvalue");
int enterOtp=Integer.parseInt(otpvalue);
if(otp==enterOtp)
{
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into payment(nic,phone)values('"+nic+"','"+phone+"')");
out.println("Thank you for register.!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
else
{
out.println("OTP not matched");
}
%>
<style>

body{
background-color:#17a2b8;

}
.bod{
  
   
  width: 712px;
  border: 2px solid LightSeaGreen;
  padding: 121px;
  margin: 20px;
  position:absolute;
  left:230px;
  top:147px
  
}

</style>
<body>

<div class="bod">
<p>
<b>Thanks for choosing us.The Appointment confirmation will be notified to you by 2 hours. <br>
Need to know more Information regarding confirmation,Contact us</b> </p>





</div>















</body>