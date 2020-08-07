package service;

import java.sql.Connection;
import java.sql.PreparedStatement;

import util.niro_DB_Connection;

public class niro_Insert_Values {
	
	public void niro_insert_values(String sl_no,String user_name,String email,String mobile){
		niro_DB_Connection obj_DB_Connection= new niro_DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps =null;
	
	
	try{
		
		
	String query="insert into user(sl_no,user_name,email,mobile) values(?,?,?,?)";
	ps=connection.prepareStatement(query);
	
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
