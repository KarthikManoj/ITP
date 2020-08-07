<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
    <head>
    <style>
body {
    margin: 0;
    padding: 0;
		background: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
		family: $font;
	
    background-position: center center;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    background-repeat: no-repeat;
    margin: 100px;
text-align: center;
align: center;
double {border-style: double;}
}

#a{
font-family:'Lato', sans-serif;

}
button{
background-color:#738CC5;
width: 30%;
padding: 9px 10px;
margin:5px 5px;
cursor:pointer;
border:none;
margin-left: 80px; 

}

div{
   border: 5px solid black;
   margin-top: 100px;
   margin-bottom: 100px;
   margin-right:250px;
   margin-left: 180px;
   }

* {
  box-sizing: border-box;
}

.column {
		float: left;
		width: 50%;
		padding: 50px;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: linear-gradient(to right, #efefbb 0%, #d4d3dd 100%);
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 24px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}


.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
}


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: white;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
.text {
	text-transform: uppercase;
	background: linear-gradient(to right, #efefbb 0%, #524E9B 100%);
	
	font: {
		size: 30vw;
		family: $font;
		
	};
}
img { 
  background: url(E-Commerce-1.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}



.submit {
	display: inline-block;
  padding: 15px 70px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: #02075d;
  border: none;
  border-radius: 25px;
  opacity: 1;
}

input[type=text],[type=password] {
	width: 50%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}



input[type=number] {
	width: 20%;
	padding: 8px;
	margin: 11px 0;
	box-sizing: border-box;
	border: 2px solid black;
	border-radius: 20px;	
	
}




.Image{
	position:absolute;
	top:-93px;
	left:585px;
}



.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}




@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }

  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }
}


</style>
<ul>
  <li><a href="Supplierreq.jsp">Products</a></li>
  <li><a href="Order.jsp">Order Products</a></li>
  <li><a href="SendEmail.jsp">Send Email</a></li>
   <li><a href="Akshi_Rreport.jsp">Reports</a></li>
 </ul>
        <title>Get Well Soon</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
    </head>
    <h1>Send mail</h1>
    <body >
        <form action="mailProcess.jsp">
            <table>
                <tr><td><b><font >To:
                    </td>
                    <td><b><b><input type="text" name="mail" value="Enter Sender Email"/><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font >Subject:
                    </td>
                    <td>
                        <input type="text" name="sub" value="Enter Subject"><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b><font ">Message Text:
                    </td>
                    <td>
                        <textarea rows="12" cols="80" name="mess"></textarea><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Send">
                    </td>
                    <td>
                        <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>