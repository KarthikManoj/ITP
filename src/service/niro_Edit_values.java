package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.niro_DB_Connection;
import model.Booking;

public class niro_Edit_values {
	
	
	public Booking niro_get_value_of_user(String sl_no){
		niro_DB_Connection obj_DB_Connection= new niro_DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		Booking niro_obj_User_Bean = new Booking();

		try {
		
		String querry="select * from user where sl_no=?";
		ps=connection.prepareStatement(querry);
		ps.setString(1, sl_no);;
		rs=ps.executeQuery();
		
		while(rs.next()){
			
			
			
			
			niro_obj_User_Bean.setSl_no(rs.getString("sl_no"));
			niro_obj_User_Bean.setEmail(rs.getString("email"));
			niro_obj_User_Bean.setUser_name(rs.getString("user_name"));
			niro_obj_User_Bean.setMobile(rs.getString("mobile"));	
			
			
			
		}
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		return niro_obj_User_Bean;
		
		
	}
	
	
	
	
	
	
	
	
	
	public void edit_user(Booking niro_obj_User_Bean){
		niro_DB_Connection obj_DB_Connection= new niro_DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
	
		try {
		
		String querry="update user set user_name=?,email=?,mobile=? where sl_no=?";
		ps=connection.prepareStatement(querry);
		ps.setString(1, niro_obj_User_Bean.getUser_name());;
		ps.setString(2, niro_obj_User_Bean.getEmail());;
		ps.setString(3, niro_obj_User_Bean.getMobile());;
		ps.setString(4, niro_obj_User_Bean.getSl_no());;
		ps.executeUpdate();
		
		
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		
	}
	

}
