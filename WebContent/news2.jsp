<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add news</title>
<link rel="stylesheet" type="text/css" href="news.css">
</head>
<body background="sengal.jpg">

<form  action="AddServlettt" method="post" >
<h1>Add News</h1>
<b>Title: <input type="text" name="title" required></b><br><br>
<b>News: <textarea name="ne" rows="6" cols="40" style="border:1px solid #ccc" required></textarea></b><br><br>


<input type="submit" name="Add news" value="Submit">
</form>

</body>
</html>