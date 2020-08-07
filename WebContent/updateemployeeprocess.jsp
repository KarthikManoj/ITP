<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String username = "root";%>
<%!String password = "root";%>
<%
String EID = request.getParameter("EID");
String firstname=request.getParameter("firstname");
String address=request.getParameter("address");
String profession=request.getParameter("profession");
String email=request.getParameter("email");
String nic=request.getParameter("nic");
String contactno=request.getParameter("contactno");
String doj=request.getParameter("doj");
String gender=request.getParameter("gender");

if(EID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(EID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update employee set EID=?,firstname=?,address=?,profession=?,email=?,nic=?,contactno=?,doj=?,gender=? where EID="+EID;
ps = con.prepareStatement(sql);
ps.setString(1,EID);
ps.setString(2, firstname);
ps.setString(3, address);
ps.setString(4, profession);
ps.setString(5, email);
ps.setString(6, nic);
ps.setString(7, contactno);
ps.setString(8, doj);
ps.setString(9, gender);

int i = ps.executeUpdate();
if(i > 0)
{
	 request.getRequestDispatcher("/List.jsp").forward(request, response);
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

