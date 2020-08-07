<%@page import="java.util.Random"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%> 
<%@page import=" java.net.URLEncoder"%>

<%

String nic=request.getParameter("nic");
String phone=request.getParameter("phone");
session.setAttribute("nic",nic); 
session.setAttribute("phone",phone);

String authkey = "4073ANjS6IVemRN5d98bbb2";
//Multiple mobiles numbers separated by comma
String mobiles = phone;
Random rand = new Random();
int otp = rand.nextInt(900000) + 100000;
session.setAttribute("otp",otp);
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "Clinic";
//Your message to send, Add URL encoding here.
String message = "Your OTP for your booking confirmation is "+otp + ". Enter the number to confirm your booking with us. ";
//define route
String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
//encoding message 
String encoded_message=URLEncoder.encode(message);
//Send SMS API
String mainUrl="http://world.msg91.com/api/sendhttp.php?";
//Prepare parameter string 
StringBuilder sbPostData= new StringBuilder(mainUrl);
sbPostData.append("authkey="+authkey); 
sbPostData.append("&mobiles="+mobiles); 
sbPostData.append("&message="+encoded_message);
sbPostData.append("&route="+route);
sbPostData.append("&sender="+senderId);
//final string
mainUrl = sbPostData.toString();
try
{
//prepare connection
myURL = new URL(mainUrl);
myURLConnection = myURL.openConnection();
myURLConnection.connect();
reader= new BufferedReader(new InputStreamReader(myURLConnection.getInputStream()));
String success="Your message sent sucessfully";
response.sendRedirect("App_OTP.jsp");
//finally close connection
reader.close(); 
}
catch (IOException e)
{
e.printStackTrace(); 
}
%>
