<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
        <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="narthi_reports.css">
</head>
<body>

<pre><h1 class="text">                                     Finance Management System</pre></h1>

<br><br><br>
<center><h1>Generate the report of all records</h1></center>
<form action="Reportnr" method = "get"> 
 
<center><button id="main">
GENERATE
 </button><center>
</form>


<center><h1>Generate the report of Cardiologist</h1></center>
<form action="Reportnr_cardiologist" method="get">
<center><button id="main">Generate</button></center>
</form>


<center><h1>Generate the report of dentist</h1></center>

<form action="Reportnr_dentist" methpd="get">
<center><button id="main">Generate</button></center>
</form>
<center><h1>Generate the report of neurologist</h1></center>

<form action="Reportnr_neurologist" method="get">
<center><button id="main">Generate</button></center>
</form>

</body>
</html>