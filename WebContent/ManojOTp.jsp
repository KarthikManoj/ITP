<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.niro_Read_Values"%>
<%@page import="model.Booking"%>
<%@page import="java.io.BufferedReader"%>
<%@page import ="java.io.IOException" %>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLConnection"%>
<%@page import=" java.net.URLEncoder"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link rel = "stylesheet"
   type = "text/css"
   href = "buttonStyleMsg.css" />
</head>
<body>
<%
String textmessage=request.getParameter("message");
String phone=request.getParameter("phone");
String authkey = "4065AchMQF1OKI5d984e03";
//Multiple mobiles numbers separated by comma
String mobiles = phone;
//Sender ID,While using route4 sender id should be 6 characters long.
String senderId = "CHARGE";
//Your message to send, Add URL encoding here.
String message = textmessage;
//define route
String route="4";
//Prepare Url
URLConnection myURLConnection=null;
URL myURL=null;
BufferedReader reader=null;
//encoding message
String encoded_message=URLEncoder.encode(message);
String mainUrl="http://world.msg91.com/api/sendhttp.php?";//Your sms gateway provider API
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
String success="Booking Token sent sucessfully";
out.println(success);
//finally close connection
reader.close();
}
catch (IOException e)
{
e.printStackTrace();
}
%>




</body>
</html>