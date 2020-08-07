<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
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
int i=st.executeUpdate("insert into itp(phone)values('"+phone+"')");
out.println("Thank you for register.!");
response.sendRedirect("patient_forgot.jsp");
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