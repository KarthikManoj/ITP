<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Delete.css">

</head>
<body>

<pre><h1 class="text">                          Delete the news  	     </pre></h1></br>



<div class="bod">
<center><h2><font color="#02075d"><div class="deletet"> DELETE NEWS</div></font></h2></center>
  <div class="search-container">
    <form method="POST" action="DeleteServlet_mad">
     <input type="text" id="sid" name="sid" placeholder="Enter news ID ...." >
      <input type="submit" class="submit" value="Delete" >
    </form>
  </div>
</div>
<div style="padding-left:20px">
  
</div>

</body>
</html>
