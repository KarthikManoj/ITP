package service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.DB_Connection;

public class NDelete_values {

	public void delete_value(String sl_no){
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection =(Connection) obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		
		
		
		try {
		
		String querry="delete from user where sl_no=?";
		ps=(PreparedStatement) connection.prepareStatement(querry);
		ps.setString(1, sl_no);;
		ps.executeUpdate();
		
		
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		
		
		
	}
	
	
}

