package servlet;



import java.io.FileOutputStream;

import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;


public class Generate_PDF1 {

	public static void main(String[] args) {
	
	
	try{
		String file_name="C:\\Users\\ASUS\\Downloads\\PDF";
        Document document=new Document(); 
        
		
		PdfWriter.getInstance(document, new FileOutputStream(file_name));
		
		document.open();
		
		
		Paragraph para=new Paragraph("This");
		document.add(para); 
		
		System.out.println("DONE");
		
		
	}catch(Exception e){
	
	   System.out.println(e);
	
	
	}	
		
	}

}
