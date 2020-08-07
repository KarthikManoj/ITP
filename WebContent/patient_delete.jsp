<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>    
    
    <%
String userID=request.getParameter("userID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM patient_Reg WHERE userID="+userID);
out.println("Data Deleted Successfully!");
request.getRequestDispatcher("/patient_log.jsp").forward(request, response);
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>