package service;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.DB_Connection;

public class NInsert_Values {

	public void insert_values(String sl_no,String user_name,String email,String mobile){
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection =(Connection) obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps =null;
	
	
	try{
		
		
	String query="insert into user(sl_no,user_name,email,mobile) values(?,?,?,?)";
	ps=(PreparedStatement) connection.prepareStatement(query);
	
	ps.setString(1, sl_no);
	ps.setString(2, user_name);
	ps.setString(3, email);
	ps.setString(4, mobile);
	
	ps.executeUpdate();
	
	}catch (Exception e){
		System.out.println(e);
	}
	
		
	
	}

}
