package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.DB_Connection;
import model.Patient;



public class Updatepass_values {

	public Patient get_value_of_user(String customerID){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		Patient obj_Patient=new Patient();
		
		 
		try {
			String querry="select pass from Patient_Reg where userID=?";
			ps=connection.prepareStatement(querry);		
			ps.setString(1, customerID);;
			rs=ps.executeQuery();
			
			
			while(rs.next()){
			 
				
				
				obj_Patient.setPass(rs.getString("pass"));
				
				
				 
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return obj_Patient;
		
		
		
	}


	public void edit_user(Patient obj_Patient){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		  
		 String ee = "3";
		try {
			String querry="update Patient_Reg set pass=? where userID="+ee;
			ps=connection.prepareStatement(querry);	
			ps.setString(1, obj_Patient.getPass());;
			
			ps.executeUpdate();
			
			
			 
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
	 
		
		
	}
	
}
