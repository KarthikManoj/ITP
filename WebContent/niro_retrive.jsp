<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="service.niro_Read_Values"%>
<%@page import="model.Booking"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel = "stylesheet"
   type = "text/css"
   href = "tableList.css" />
<title>Retrive Details</title>
</head>
<body>

		


<hr>

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
	  
	  
	  			<div class="container">
	    	<img src="amb1.jpg" alt="Avatar" style="width:90px">
	 	 <p><span>NIC: <%=niro_obj_User_Bean.getSl_no() %>  </span> Name: <%=niro_obj_User_Bean.getUser_name() %> </p><br>
	  <p>Email: <%=niro_obj_User_Bean.getEmail() %> </p><br>
	   	<p><span>Contact Number:<%=niro_obj_User_Bean.getMobile() %></span> </p>
	  
	  
	  
	
	 
	  <a href ="niro_edit.jsp?sl_no=<%=niro_obj_User_Bean.getSl_no()%>"><button  class="edit" ><span>EDIT </span></button>
	   </a>
	 
	  <a href ="niro_delete_controller.jsp?sl_no=<%=niro_obj_User_Bean.getSl_no()%>"><button class="delete"><span>DELETE REQUEST</span></button> </a>
	
	  
	 </div>
	  
<%	  
  }
  %>
  
<a href="insert_values.jsp"><button  class="add-button">Add New Booking!</button></a> <br><br>

 
<a href="driver.jsp"><button  class="add-button">Request Driver</button></a>



<a href="ambulance_payment.jsp"></a>  

<a href="UserDetail.jsp"></a> 
 



 

</body>
</html>