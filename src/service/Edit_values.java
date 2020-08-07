package service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.DB_Connection;
import model.Patient;

public class Edit_values {

	
	 public Patient get_value_of_user(String userID){
			DB_Connection obj_DB_Connection=new DB_Connection();
			Connection connection=obj_DB_Connection.get_connection();
			
			PreparedStatement ps=null;
			ResultSet rs=null;
			Patient obj_Patient=new Patient();
			
			 
			try {
				String querry="select * from Patient_Reg where userID=?";
				ps=connection.prepareStatement(querry);		
				ps.setString(1, userID);;
				rs=ps.executeQuery();
				
				
				while(rs.next()){
				 
					
					
					obj_Patient.setUserID(rs.getString("userID"));
					obj_Patient.setfirstName(rs.getString("firstName"));
					obj_Patient.setLastName(rs.getString("lastName"));
					obj_Patient.setemail(rs.getString("email"));
					obj_Patient.setaddress(rs.getString("address"));
					obj_Patient.setMobileNumber(rs.getString("mobileNo"));
					obj_Patient.setGender(rs.getString("gender"));
					obj_Patient.setbloodGroup(rs.getString("bloodGroup"));
					obj_Patient.setAge(rs.getString("age"));
					
					 
					
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
			  
			 
			try {
				String querry="update Patient_Reg set firstName=?,lastName=?,email=?,address=?,mobileNo=?,gender=?,bloodGroup=?,age=? where userID=?";
				ps=connection.prepareStatement(querry);	
				ps.setString(1, obj_Patient.getfirstName());;
				ps.setString(2, obj_Patient.getLastName());;
				ps.setString(3, obj_Patient.getemail());;
				ps.setString(4, obj_Patient.getaddress());;
	                   ps.setString(5, obj_Patient.getMobileNumber());;
	                        ps.setString(6, obj_Patient.getGender());;
	                        ps.setString(7, obj_Patient.getbloodGroup());;
	                        ps.setString(8, obj_Patient.getAge());;
	                        ps.setString(9, obj_Patient.getUserID());;
				ps.executeUpdate();
				
				
				 
				
				
				
			} catch (Exception e) {
					System.out.println(e);
			}
		 
			
			
		}
	
	
}
