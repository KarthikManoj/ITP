<%@page import="service.niro_Edit_values"%>
<%@page import="model.Booking"%>
<%@page import="service.niro_Insert_Values"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String sl_no=request.getParameter("sl_no");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String user_name=request.getParameter("user_name");



Booking obj_User_Bean = new Booking();
obj_User_Bean.setSl_no(sl_no);
obj_User_Bean.setUser_name(user_name);
obj_User_Bean.setMobile(mobile);
obj_User_Bean.setEmail(email);



niro_Edit_values niro_obj_Edit_values= new niro_Edit_values();
niro_obj_Edit_values.edit_user(obj_User_Bean);

%>
<script type="text/javascript">

window.location.href="niro_retrive.jsp"

</script>


</body>
</html>