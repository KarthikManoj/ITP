<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%

String id=request.getParameter("id");
String uname=request.getParameter("uname");
String product=request.getParameter("product");
String unitprice=request.getParameter("unitprice");
String quantity=request.getParameter("quantity");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into prof (id,uname,product,unitprice,quantity) values('"+id+"','"+uname+"','"+product+"','"+unitprice+"','"+quantity+"')");
out.println("Data is successfully inserted!");
request.getRequestDispatcher("/Profile.jsp").forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>