<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String address=request.getParameter("address");
String mobileno=request.getParameter("mobileno");
String gender=request.getParameter("gender");
String bloodgroup=request.getParameter("bloodgroup");
String age=request.getParameter("age");
String ques=request.getParameter("ques");
String ans=request.getParameter("ans");
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/itp", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into Patient_Reg(firstName,lastName,email,address,mobileNo,gender,bloodGroup,age,ques,ans,uname,pass)values('"+firstname+"','"+lastname+"','"+email+"','"+address+"','"+mobileno+"','"+gender+"','"+bloodgroup+"','"+age+"','"+ques+"','"+ans+"','"+uname+"','"+pass+"')");
out.println("Data is successfully inserted!");
request.getRequestDispatcher("/patient_log.jsp").forward(request, response);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


</body>
</html>