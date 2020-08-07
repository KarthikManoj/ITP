<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html;;charset="ISO-8859-1">
<title>Get Well Soon Clinic</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%

String uname=request.getParameter("uname");
String password=request.getParameter("password");
String comname=request.getParameter("comname");
String address=request.getParameter("address");
String email=request.getParameter("email");
String mobnumber = request.getParameter("mobnumber");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into requests(uname,password,comname,address,email,mobnumber)values('"+uname+"','"+password+"','"+comname+"','"+address+"','"+email+"','"+mobnumber+"')");
out.println("Thank you for register ! Please <a href='Login_Akshi.jsp'>Login</a> to continue.");
request.getRequestDispatcher("/Login_Akshi.jsp").forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>