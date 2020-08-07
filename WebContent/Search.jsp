<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String supplier = request.getParameter("supplier");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3307/";
String database = "ITP";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div class="topnav">
<div class="search-container">
    <form action="SearchServlet" method="get">
      <input type="text" placeholder="SEARCH SUPPLIER" name="search">
      <button type="submit"><i class="fa fa-search">Search</i></button>
    </form>
</div></div>
</br> </br>

	

</body>
</html>