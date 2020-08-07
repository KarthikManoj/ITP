<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String nid=request.getParameter("nid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/itp", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM new WHERE nid="+nid);
out.println("Data Deleted Successfully!");
response.sendRedirect("test.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>