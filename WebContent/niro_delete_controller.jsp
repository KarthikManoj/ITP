<%@page import="service.niro_Delete_values"%>
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

niro_Delete_values niro_obj_Delete_values= new niro_Delete_values();
niro_obj_Delete_values.niro_delete_value(sl_no);

%>
<script type="text/javascript">

window.location.href="niro_retrive.jsp"

</script>


</body>
</html>