package service;

import java.sql.ResultSet;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.DB_Connection;
import model.User_Bean;

public class NEdit_values {


	public User_Bean get_value_of_user(String sl_no){
		DB_Connection obj_DB_Connection= new DB_Connection();
		Connection connection =(Connection) obj_DB_Connection.get_connection();
	
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		
		User_Bean obj_User_Bean = new User_Bean();

		try {
		
		String querry="select * from user where sl_no=?";
		ps=(PreparedStatement) connection.prepareStatement(querry);
		ps.setString(1, sl_no);;
		rs=ps.executeQuery();
		
		while(rs.next()){
			
			
			
			
			obj_User_Bean.setSl_no(rs.getString("sl_no"));
			obj_User_Bean.setEmail(rs.getString("email"));
			obj_User_Bean.setUser_name(rs.getString("user_name"));
			obj_User_Bean.setMobile(rs.getString("mobile"));	
			
			
			
		}
		
		
		} catch (Exception e) {
			System.out.println(e);
		
		}
		return obj_User_Bean;
		
		
	}
}
