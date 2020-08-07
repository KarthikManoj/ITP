<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Date"%>
<%@page import="javax.swing.border.TitledBorder"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.lowagie.text.DocumentException"%>
<%@page import="com.lowagie.text.Paragraph"%>
<%@page import="com.lowagie.text.html.HtmlWriter"%>
<%@page import="com.lowagie.text.pdf.PdfWriter"%>
<%@page import="com.lowagie.text.Document"%>
<%@page import="java.io.*"%>;
<%@page import="java.awt.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
<%@page import="util.DBconnection"%>
<%@page import="java.awt.*"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>




<%
String id = request.getParameter("username");
		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3307/";
		String dbName = "ITP";
		String username = "root";
		String password = "root";

		try {
		Class.forName(driverName);
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		
		%>
		
<% 
		String str="pdf";

		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try
		{
		    Document document=new Document();
		    
		    if(str.equals("pdf"))
		    {
		        response.setContentType("application/pdf");
		        PdfWriter.getInstance(document,response.getOutputStream());
		    }
		    
		//    Date d = new Date();
		//	String[] date = d.toString().split(" ");
		//System.out.println(date);
		   
			connection = (Connection) DriverManager.getConnection(connectionUrl+dbName, username, password);
			statement=(Statement) connection.createStatement();
		    String query = "select * from login";          //Fetching data from table
		    
		    resultSet = statement.executeQuery(query);
		  
		  //  String realDate = date[0]+" "+date[1]+" "+date[2]+" "+date[5];
		  //  	ps.setString(1,realDate)    ;                // executing query
		 
		      
		    document.open();

		    //document.setHeader("New Lanka Hardware Stores Kalutara");
		  //  document.addTitle(" Stocks added for the day :"+ realDate);
		    /* new paragraph instance initialized and add function write in pdf file*/
		    document.add(new Paragraph("-------------------------------------------NEW LANKA HARDWARE STORES---------------------------------------------------\n\n"));
		   // document.add(new Paragraph("-------------------------------------------Stocks Updated Today "+ realDate+"---------------------------------------------------\n\n"));
		   
		    document.add(new Paragraph("---------------------------------------------------------------------------------------------------------------------------------"));
		 
		    document.addCreationDate();
		    int count = 1;
		   
		    while(resultSet.next())
		    {
		          // fetch & writing records in pdf files
		          document.add(new Paragraph("-------------------------------------------------------"+count+"---------------------------------------------------\n\n"));
		        document.add(new Paragraph("Product ID ::"+resultSet.getString(1)+"\nProduct Name::"+resultSet.getString(2)+"\n Supplier ID ::"+resultSet.getString(3)+"\nAdmin ID ::"+resultSet.getString(4)));
		        document.add(new Paragraph("-------------------------------------------------------\n---------------------------------------------------\n\n"));
		        count++;
		    }
		    document.add(new Paragraph("---------------------------------------------------------PAGE NO::"+document.getPageNumber()+"------------------------------------------------------"));

		    document.close(); //document instance closed
		    connection.close();  //db connection close
		}
		catch(Exception de)
		{
		        de.printStackTrace();
		            System.err.println("document: " + de.getMessage());
		           
		}
		
		
		
		
		%>

</body>
</html>