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




niro_Insert_Values niro_obj_Insert_Values= new niro_Insert_Values();

niro_obj_Insert_Values.niro_insert_values(sl_no, user_name, email, mobile);

%>
<script type="text/javascript">

window.location.href="niro_retrive.jsp"

</script>


</body>
</html>