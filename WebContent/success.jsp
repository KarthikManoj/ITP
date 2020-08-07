<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    if ((session.getAttribute("uname") == null) || (session.getAttribute("uname") == "")) {
%>
You are not logged in<br/>
<a href="Login_Akshi.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("uname")%>
<a href='Profile.jsp'></a>
<%
    }
%>