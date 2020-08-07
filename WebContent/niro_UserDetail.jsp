<%@page import="java.util.Iterator"%>
<%@page import="service.niro_Read_Values"%>
<%@page import="java.util.List"%>
<%@page import="model.Booking"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title> User Details </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>




<link rel = "stylesheet"
   type = "text/css"
   href = "tableList.css" />
   
   <link rel="stylesheet" href="niroAdmin.css">
<title>Insert title here</title>
</head>
<body>

<pre><h1 class="text">                                    Transport Management System</pre></h1>


<nav class="navbar navbar-inverse">
 <div class="container-fluid">
    <div class="navbar-header">
       <a class="navbar-brand" href="Transport_Manager.jsp">HOME</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="ambulance_payment.jsp">Payment</a></li>    
      <li><a href="driver_list.jsp">Driver Details</a></li>
      <li><a href="niro_UserDetail.jsp">User Details</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="LogoutServlet"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div class="contrainer">
<h3> </h3>
<p><P>
</div>


<div class="topnav">
<div class="search_container">

<form action="niro_SearchServlet" method="get" >
	<input type="text" placeholder="SEARCH NIC" name="search">
	<button type="submit"><i class="fa fa_search">Search</i></button>
	
	
</form> 	


</div>

</div>
</br></br>






<%

  niro_Read_Values niro_obj_Read_Values= new niro_Read_Values();

  List<Booking> list=niro_obj_Read_Values.get_values();

  
  Iterator<Booking> it_list= list.iterator();
  %>  
  

  
  <% 
  while(it_list.hasNext()){
	  Booking niro_obj_User_Bean= new Booking();
	  niro_obj_User_Bean=it_list.next();
	  %>  
	  
	
	  			
	  			
	  			
	  			<div class="container" >
	    	<img src="men1.jpg" alt="Avatar" style="width:100px">
	 	 <p><span>NIC: <%=niro_obj_User_Bean.getSl_no() %>  </span> Name: <%=niro_obj_User_Bean.getUser_name() %> </p><br>
	
	   	<p><span>Contact Number:<%=niro_obj_User_Bean.getMobile() %></span> </p>
	   	
	   	
	   	
	   	
	   </a>
	   </div>
	 
<%
}
  %>

</body>
</html>