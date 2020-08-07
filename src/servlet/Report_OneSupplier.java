package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.Color;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.Element;
import com.lowagie.text.Font;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Image;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;
import com.lowagie.text.Rectangle;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
/**

/**
 * Servlet implementation class Report_OneSupplier
 */
@WebServlet("/Report_OneSupplier")
public class Report_OneSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Report_OneSupplier() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
		

		String str="pdf";

		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		
		
		try
		{
		    Document document=new Document();
		    
		    PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream("HeaderFooter.pdf"));
	        Rectangle rect = new Rectangle(30, 30, 550, 800);
	        writer.setBoxSize("art", rect);
	       
		    
		    
		    
		 
    	   
           
        	
        	
		    if(str.equals("pdf"))
		    {
		        response.setContentType("application/pdf");
		        PdfWriter.getInstance(document,response.getOutputStream());
		    }
		    
		 
		   
			connection = (Connection) DriverManager.getConnection(connectionUrl+dbName, username, password);
			statement=(Statement) connection.createStatement();
		    String query = "select * from requests where uname='"+request.getParameter("uname")+"' ";       
		    
		    resultSet = statement.executeQuery(query);
		  
		  
		 
		    
		    document.open();
	
		    
		
		    
		    String filename = "C:\\Users\\ASUS\\Downloads\\ITP project\\nlogo.png";
            Image image = Image.getInstance(filename);
            image.setAlignment(Element.ALIGN_CENTER);
            image.scaleToFit(100, 100);
            image.scaleAbsoluteHeight(50);
            image.scaleAbsoluteWidth((image.getWidth() * 50) / image.getHeight());
           
            document.add(image);
		   
		    Paragraph par2=new Paragraph();
		    par2.add(new Phrase("14,Pamankada Lane \n Wellawatte \n Tel No-0777885111"));
		    par2.setAlignment(Element.ALIGN_LEFT);
		    par2.add(new Phrase(Chunk.NEWLINE));
		    par2.add(new Phrase(Chunk.NEWLINE));
		    document.add(par2);	
		 
		    
		    
		    Paragraph par1=new Paragraph();
		  
		    par1.add(new Phrase("GET WELL SOON CLINIC"));
		    par1.setAlignment(Element.ALIGN_CENTER);
		    par1.add(new Phrase(Chunk.NEWLINE));
		    par1.add(new Phrase(Chunk.NEWLINE));
		    document.add(par1);		
		    
		  
		    
		  

		   
		
		 
		    document.addCreationDate();
		    
		    PdfPTable table=new PdfPTable(6);
		    table.setWidthPercentage(100);
		    
		    PdfPCell cell=new PdfPCell(new Paragraph("Supplier id",FontFactory.getFont("Arial", 12, Font.BOLD,Color.blue)));
		   
		    PdfPCell cell2=new PdfPCell(new Paragraph("Password",FontFactory.getFont("Arial",12,Font.BOLD,Color.blue)));
		    PdfPCell cell3=new PdfPCell(new Paragraph("Company Name",FontFactory.getFont("Arial",12,Font.BOLD,Color.blue)));
		    PdfPCell cell4=new PdfPCell(new Paragraph("Address",FontFactory.getFont("Arial",12,Font.BOLD,Color.blue)));
		    PdfPCell cell5=new PdfPCell(new Paragraph("Email",FontFactory.getFont("Arial",12,Font.BOLD,Color.blue)));
		    PdfPCell cell6=new PdfPCell(new Paragraph("Mobile Number",FontFactory.getFont("Arial",12,Font.BOLD,Color.blue)));
		    
		
		    
		    table.addCell(cell);
		   
		    table.addCell(cell2);
		    table.addCell(cell3);
		    table.addCell(cell4);
		    table.addCell(cell5);
		    table.addCell(cell6);
		    
		    
		    int count = 1;
		   
		    while(resultSet.next())
		    {
		    	
		    	table.addCell(resultSet.getString(1));
		    	
		    	table.addCell(resultSet.getString(3));
		    	table.addCell(resultSet.getString(4));
		    	table.addCell(resultSet.getString(5));
		    	table.addCell(resultSet.getString(6));
		    	table.addCell(resultSet.getString(7));
		    	
		        
		        count++;
		    }
		    
		    document.add(table);
		    
		    
		   // document.add(new Paragraph("__________________________________________PAGE NO::"+document.getPageNumber()+"____________________________________________"));
		    
		    
		    document.close(); //document instance closed
		    connection.close();  //db connection close
		}
		catch(Exception de)
		{
		        de.printStackTrace();
		            System.err.println("document: " + de.getMessage());
		           
		}
		
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
