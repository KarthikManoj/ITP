package service;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Employee;
import util.DBconnection;
public class DeleteService {
	public void removeEmployee(String EID)
	{Connection con = null;
	 PreparedStatement preparedStatement = null;
	 String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/ITP";
		String user = "root";
		String psw = "root";
		
		 
			 con = DBconnection.createConnection();
			 try {
				Class.forName(driverName);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
				try {
					con = (Connection) DriverManager.getConnection(url,user,psw);
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			 String query = "DELETE FROM employee WHERE EID="+EID; 
			 try {
				preparedStatement = con.prepareStatement(query);
				preparedStatement.execute(query);
			} catch (SQLException e) {
				
				e.printStackTrace();
			} 
		
		
		
		
		
		
	}

}
