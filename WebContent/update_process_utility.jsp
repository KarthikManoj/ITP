<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String utility_id = request.getParameter("utility_id");
String title=request.getParameter("title");
String payAcc=request.getParameter("payAcc");
String provider=request.getParameter("provider");
String date=request.getParameter("date");
String rnumber=request.getParameter("rnumber");
String paid=request.getParameter("paid");

if(utility_id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(utility_id);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update utilitypay set utility_id=?,title=?,payAcc=?,provider=?,date=?,rnumber=?,paid=? where utility_id="+utility_id;
	ps = con.prepareStatement(sql);
	ps.setString(1,utility_id);
	ps.setString(2, title);
	ps.setString(3, payAcc);
	ps.setString(4, provider);
	ps.setString(5, date);
	ps.setString(6, rnumber);
	ps.setString(7, paid);
	
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	request.getRequestDispatcher("/Income&Expenses.jsp").forward(request, response);
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
	
	
	
	