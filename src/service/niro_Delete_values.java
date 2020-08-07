package service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.niro_DB_Connection;
import model.Booking;


public class niro_Delete_values {
	
	
	
	public void niro_delete_value(String sl_no){
		niro_DB_Connection obj_DB_Connection= new niro_DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		
		
		
		try {
		
		String querry="delete from user where sl_no=?";
		ps=connection.prepareStatement(querry);
		ps.setString(1, sl_no);;
		ps.executeUpdate();
		
		
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		
		
		
	}
	
	
	

}
