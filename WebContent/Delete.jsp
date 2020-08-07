<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String uname=request.getParameter("uname");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM requsets WHERE uname="+uname);
out.println("Profile Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>