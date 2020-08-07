<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String username = "root";%>
<%!String password = "root";%>
<%
String nid = request.getParameter("nid");
String title=request.getParameter("title");
String ne=request.getParameter("ne");
if(nid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(nid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update new set nid=?,title=?,ne=? where nid="+nid;
ps = con.prepareStatement(sql);
ps.setString(1,nid);
ps.setString(2, title);
ps.setString(3, ne);


int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("test.jsp");
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