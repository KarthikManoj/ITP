<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id= request.getParameter("uname");
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
<!DOCTYPE html>
<html>
    <head>
    
        
        <meta charset="windows-1252">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

<div>
        <title>Get Well Soon Clinic </title>
    </head>
<h2>PROFILE </h2>
    <body>
    
    <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from requests where uname='"+request.getParameter("uname")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<label id="a"  >Company Name:</lable><%=resultSet.getString("comname") %><br><br>
<label id="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address:</lable><%=resultSet.getString("address") %><br><br>
<label id ="a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email:</lable><%=resultSet.getString("email") %><br><br>
<label id="a">Mobile number:</lable><%=resultSet.getString("mobnumber") %><br>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    
    <form method="post" action="pp.jsp">
            
        ID:<input type="text" name="id" id="id" /><br/><br/>
          User Name:<input type="text" name="uname" id="uname" /><br/><br/>
        PRODUCT: <input type="text" name="product" id="product" /><br/><br/>
        UNIT PRICE: <input type="text" name="unitprice" id="unitprice" /><br/><br/>
        QUANTITY: <input type="text" name="quantity" id="quantity" /><br/><br/>
        <button >ADD</button><br/><br/>
 </form>
        
        <div class="search-container">
    <form method="POST" action="Delete_Process.jsp">
     <input type="text" id="id" name="id" placeholder="Enter product id.." >
      <button type="submit">DELETE</button>
    </form>
  </div>
        
   <table border="1">
<tr>

<td>Id</td>
<td>User Name</td>
<td>Product</td>
<td>Unit Price</td>
<td>Quantity</td>
<td>UPDATE</td>



</tr>     
        
 <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from prof where uname='"+request.getParameter("uname")+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("uname") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("unitprice") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><a href="updateSupplier.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="update">Update</button></a></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
    
      

    </body>
 </div> 
</html>