<%@page import="model.Booking"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="service.niro_Read_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">




<style>
.btn-info1 {
  border-radius: 4px;
  background-color: #FF0000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 10px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.btn-info1 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.btn-info1 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.btn-info1:hover span {
  padding-right: 25px;
}

.btn-info1:hover span:after {
  opacity: 1;
  right: 0;
}
</style>





<link rel = "stylesheet"
   type = "text/css"
   href = "tableList.css" />
<title>Driver Details</title>
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
	  
	  
	  			<div class="container" >
	    	<img src="men1.jpg" alt="Avatar" style="width:100px">
	 	 <p><span>NIC: <%=niro_obj_User_Bean.getSl_no() %>  </span> Name: <%=niro_obj_User_Bean.getUser_name() %> </p><br>
	
	   	<p><span>Contact Number:<%=niro_obj_User_Bean.getMobile() %></span> </p>
	  
	  
	  <br><br>
	
	 
	 <form method="post" action="niro_SendSms.jsp">


 <h3>Enter Pickup Address and Re-enter the Mobile Number:<br></h3>
<input type="text" id="label1" name="message">
<br><br>

<h3>
Driver Mobile Number:<br></h3>
<input type="text" name="phone" value="94763808824" disabled >

<br><br>
<button class=btn-info1><span>Confirm Booking!!!! </span></button>
</form>
	 
	 
	 
	
	  
	 </div>
	  
<%	  
  }
  %>




</body>
</html>

