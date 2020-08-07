package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.DB_Connection;
import model.Patient;


public class Forgot_values {

	
	public static void main(String[] args) {
		Forgot_values obj_Forgot_Values=new Forgot_values();
		
		
	}
	
	
	public List<Patient> get_values(String email){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<Patient> list=new ArrayList<Patient>();
		
		try {
			String querry="select pass from Patient_Reg where email = ?";
                        ps=connection.prepareStatement(querry);		
                        ps.setString(1, email);
			
			rs=ps.executeQuery();
                   
			
			
			while(rs.next()){
				
				Patient obj_R_Patient=new Patient();
                                 System.out.println(rs.getString("pass"));
                                
				
				
                                 obj_R_Patient.setPass(rs.getString("pass"));
                                
				
				list.add(obj_R_Patient);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
	
	
	
}
