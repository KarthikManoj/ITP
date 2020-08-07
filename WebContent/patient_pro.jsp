
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.io.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
String userID = request.getParameter("userID");
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

<%


try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Patient_Reg where pass='"+request.getParameter("pass")+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>profile</title>
</head>
<body class="w3-light-grey">
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span><strong>Welcome</strong></span><br><br>
      
       <a href="LogoutUser" >Logout</a>
    </div>
    Get Well Soon<br>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
  <a href="patient_pro_edit.jsp?userID= <%=resultSet.getString("userID") %>" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Update</a>
    <br>  <a href="patient_delete.jsp?userID= <%=resultSet.getString("userID") %>" class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> Delete</a>
       <br>  <a href="patient_history.jsp?patid= <%=resultSet.getString("userID") %>"  class="w3-bar-item w3-button w3-padding"><i class="fa fa-eye fa-fw"></i> Show History</a>
  </div>
</nav>

<div>
<center>

<form action="patient_pro" method="post">

<h1> PROFILE</h1><br><br>
                                       
			           User ID:        <%=resultSet.getString("userID") %><br><br>
					    First Name:    <%=resultSet.getString("firstName") %><br><br>
                        Last Name:     <%=resultSet.getString("lastName") %><br><br>
                        E-mail:        <%=resultSet.getString("email") %><br><br>
                        Address:       <%=resultSet.getString("address") %><br><br>
                        Mobile Number: <%=resultSet.getString("mobileNo") %><br><br>
                        Gender:        <%=resultSet.getString("gender") %><br><br>
                        Blood Group:   <%=resultSet.getString("bloodGroup") %><br><br>
                        Age:           <%=resultSet.getString("age") %><br><br>
                        
                                 
                                   
			
		</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</table></center>
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>