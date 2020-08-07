<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String username = "root";%>
<%!String password = "root";%>
<%
String sid = request.getParameter("patid");
String others=request.getParameter("remarks");
String temperature=request.getParameter("temperature");
String bp=request.getParameter("blood");
String RR=request.getParameter("rr");
String pulse=request.getParameter("pulse");
String medici=request.getParameter("pres");





if(sid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(sid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,username,password);
String sql="Update nrecords set other=?,temp=?,bp=?,rr=?,pulse=?,medivcine=? where patientID="+sid;
ps = con.prepareStatement(sql);
ps.setString(1,others);
ps.setString(2,temperature);
ps.setString(3,bp);
ps.setString(4,RR);
ps.setString(5,pulse);
ps.setString(6,medici);


int i = ps.executeUpdate();

if(i > 0)
{
out.print("Record Updated Successfully");
response.sendRedirect("patients.jsp");
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