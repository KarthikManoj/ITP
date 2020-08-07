<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String username = "root";%>
<%!String password = "root";%>
<%
String EID = request.getParameter("EID");
String Monday=request.getParameter("Monday");
String Tuesday=request.getParameter("Tuesday");
String Wednesday=request.getParameter("Wednesday");
String Thursday=request.getParameter("Thursday");
String Friday=request.getParameter("Friday");
String Saturday=request.getParameter("Saturday");
String Sunday=request.getParameter("Sunday");
if(EID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(EID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update schedule set EID=?,Monday=?,Tuesday=?,Wednesday=?,Thursday=?,Friday=?,Saturday=?,Sunday=? where EID="+EID;
ps = con.prepareStatement(sql);
ps.setString(1,EID);
ps.setString(2, Monday);
ps.setString(3, Tuesday);
ps.setString(4, Wednesday);
ps.setString(5, Thursday);
ps.setString(6, Friday);
ps.setString(7, Saturday);
ps.setString(8, Sunday);
int i = ps.executeUpdate();
if(i > 0)
{
	 request.getRequestDispatcher("/Listschedule.jsp").forward(request, response);
out.print("Record Updated Successfully");
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