package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import service.niro_Read_Values;
import util.niro_DB_Connection;
import model.Booking;

public class niro_Read_Values {
	
	public static void main(String[] args) {
		niro_Read_Values obj_Read_Values= new niro_Read_Values();
		obj_Read_Values.get_values();
	}
	
	
	
	public List<Booking> get_values(){
		niro_DB_Connection obj_DB_Connection= new niro_DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		List<Booking> list = new ArrayList<Booking>();
		
		try {
		
		String querry="select * from user";
		ps=connection.prepareStatement(querry);
		rs=ps.executeQuery();
		
		while(rs.next()){
			
			
			Booking niro_obj_User_Bean = new Booking();
			System.out.println(rs.getString("sl_no"));
			System.out.println(rs.getString("email"));
			System.out.println(rs.getString("user_name"));
			System.out.println(rs.getString("mobile"));

			
			niro_obj_User_Bean.setSl_no(rs.getString("sl_no"));
			niro_obj_User_Bean.setEmail(rs.getString("email"));
			niro_obj_User_Bean.setUser_name(rs.getString("user_name"));
			niro_obj_User_Bean.setMobile(rs.getString("mobile"));	
			
			list.add(niro_obj_User_Bean);
			
		}
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		return list;
		
		
	}

	

}
