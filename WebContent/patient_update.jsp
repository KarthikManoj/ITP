<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/itp";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%

String userID=request.getParameter("userID");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String email=request.getParameter("email");
String address=request.getParameter("address");
String mobileNo=request.getParameter("mobileNo");
String gender=request.getParameter("gender");
String bloodGroup=request.getParameter("bloodGroup");
String age=request.getParameter("age");


if(userID != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(userID);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update Patient_Reg set userID=?,firstName=?,lastName=?,email=?,address=?,mobileNo=?,gender=?,bloodGroup=?,age=? where userID="+userID;
ps = con.prepareStatement(sql);
ps.setString(1, userID);
ps.setString(2,firstName);
ps.setString(3, lastName);
ps.setString(4, email);
ps.setString(5, address);
ps.setString(6, mobileNo);
ps.setString(7, gender);
ps.setString(8, bloodGroup);
ps.setString(9, age);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
request.getRequestDispatcher("/patient_log.jsp").forward(request, response);
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
    






</body>
</html>