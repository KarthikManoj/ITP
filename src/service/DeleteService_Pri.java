package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import util.DBconnection;

public class DeleteService_Pri {

	public void removeEmployee(String sid)
	{Connection con = null;
	 PreparedStatement preparedStatement = null;
	 String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/ITP";
		String username = "root";
		String password = "root";
		
		 
			 con = DBconnection.createConnection();
			 try {
				Class.forName(driverName);
			} catch (ClassNotFoundException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
				try {
					con = (Connection) DriverManager.getConnection(url,username,password);
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			 String query = "DELETE FROM stocks WHERE sid="+sid; 
			 try {
				preparedStatement = con.prepareStatement(query);
				preparedStatement.execute(query);
			} catch (SQLException e) {
				
				e.printStackTrace();
			} 
		
		
		
		
		
		
	}

}

