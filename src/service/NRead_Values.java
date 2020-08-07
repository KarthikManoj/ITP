package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import model.DB_Connection;
import model.User_Bean;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class NRead_Values {
	
	public static void main(String[] args) {
		NRead_Values obj_Read_Values= new NRead_Values();
		obj_Read_Values.get_values();
	}
	
	
	
	public List<User_Bean> get_values(){
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection =obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		List<User_Bean> list = new ArrayList<User_Bean>();
		
		try {
		
		String querry="select * from user";
		ps=connection.prepareStatement(querry);
		rs=ps.executeQuery();
		
		while(rs.next()){
			
			
			User_Bean obj_User_Bean = new User_Bean();
			System.out.println(rs.getString("sl_no"));
			System.out.println(rs.getString("email"));
			System.out.println(rs.getString("user_name"));
			System.out.println(rs.getString("mobile"));

			
			obj_User_Bean.setSl_no(rs.getString("sl_no"));
			obj_User_Bean.setEmail(rs.getString("email"));
			obj_User_Bean.setUser_name(rs.getString("user_name"));
			obj_User_Bean.setMobile(rs.getString("mobile"));	
			
			list.add(obj_User_Bean);
			
		}
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		return list;
		
		
	}

}
