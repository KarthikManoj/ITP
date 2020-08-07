package servlet;

import java.sql.Connection;
import java.sql.DriverManager;

public class chking {

	
	
	private void jbnReportPerformed(java.awt.event.ActionEvent evt) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			String reportPath="C:\\Users\\ASUS\\Downloads\\PDF";
			System.out.println("DONE");
			
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
