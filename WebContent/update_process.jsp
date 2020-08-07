<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3307/ITP";%>
<%!String user = "root";%>
<%!String psw = "root";%>
<%
String id = request.getParameter("id");
String product=request.getParameter("product");
String unitprice=request.getParameter("unitprice");
String quantity =request.getParameter("quantity");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;

int personID = Integer.parseInt(id);
try
{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update prof set id=?,product=?,unitprice=?,quantity=? where id="+id;
	ps = con.prepareStatement(sql);
	ps.setString(1,id);
	ps.setString(2, product);
	ps.setString(3, unitprice);
	ps.setString(4, quantity);
	
	int i = ps.executeUpdate();
	if(i > 0)
	{
	out.print("Record Updated Successfully");
	request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
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