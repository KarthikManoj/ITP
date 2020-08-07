<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String S1No= request.getParameter("S1No");
String comname=request.getParameter("comname");
String address=request.getParameter("address");
String email =request.getParameter("email");
String mobnumber =request.getParameter("mobnumber");

if(S1No != null)
{
Connection con = null;
PreparedStatement ps = null;

int personID = Integer.parseInt(S1No);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update requests set S1No=?,comname=?,address=?,email=?,mobnumber=? where S1No="+S1No;
	ps = con.prepareStatement(sql);
	ps.setString(1,S1No);
	ps.setString(2, comname);
	ps.setString(3, address);
	ps.setString(4, email);
	ps.setString(5, mobnumber);
	
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Records Edited Successfully.. Login again...");
	request.getRequestDispatcher("/Login_Akshi.jsp").forward(request, response);
	}
	else
	{
	out.print("There is a problem in updating Record.");
	} 
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	}
	%>