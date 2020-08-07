package service;


import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.DriverManager;


import model.DB_Connection;




public class Insert_values {

	
	public void insert_values(String firstName,String lastName,String email,String address,String mobileNo,String gender,String bloodGroup,String age,String uname,String pass){
			
			DB_Connection obj_DB_Connection=new DB_Connection();
			Connection connection=obj_DB_Connection.get_connection();
			
			PreparedStatement ps=null;
			
			
			
			try {
				
				

			
			String query="INSERT INTO Patient_Reg(firstName,lastName, email,address,mobileNo,gender,bloodGroup,age,uname,pass) VALUES (?,?,?,?,?,?,?,?,?,?)";
			 ps=connection.prepareStatement(query);
			 //patient database variable 
			
			 ps.setString(1, firstName);
			 ps.setString(2, lastName);
			 ps.setString(3, email);
	         ps.setString(4, address);
	         ps.setString(5, mobileNo);
	         ps.setString(6, gender);
	         ps.setString(7, bloodGroup);
	         ps.setString(8, age);
	         ps.setString(9, uname);
	         ps.setString(10, pass);
	         
	        
	         
			 
			 ps.executeUpdate();
			 
			 
			 
			 
			} catch (Exception e) {
				System.err.println(e);
			}
			 
		}
	
	
}
