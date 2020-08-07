package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;
import model.DB_Connection;
import model.Patient;
 
public class Read_Values {

	public static void main(String[] args) {
		Read_Values obj_Read_Values=new Read_Values();
		
		
	}
	
	
	public List<Patient> get_values(String pass){
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_connection();
		
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		 List<Patient> list=new ArrayList<Patient>();
		
		try {
			String querry="SELECT * FROM patient_reg WHERE pass = ? ";
                        ps=connection.prepareStatement(querry);		
                        ps.setString(1, pass);
                        
			
			rs=ps.executeQuery();
                   
			
			
			while(rs.next()){
				
				Patient obj_R_Patient=new Patient();
                                 System.out.println(rs.getString("userID"));
                                System.out.println(rs.getString("mobileNo"));
				System.out.println(rs.getString("firstName"));
				System.out.println(rs.getString("lastName"));
				System.out.println(rs.getString("email"));
				System.out.println(rs.getString("address"));
                                System.out.println(rs.getString("gender"));
                                System.out.println(rs.getString("bloodGroup"));
                                System.out.println(rs.getString("age"));
                               
				
				
                                obj_R_Patient.setUserID(rs.getString("userID"));
                                obj_R_Patient.setMobileNumber(rs.getString("mobileNo"));
                                obj_R_Patient.setfirstName(rs.getString("firstName"));
                                obj_R_Patient.setLastName(rs.getString("lastName"));
                                obj_R_Patient.setemail(rs.getString("email"));
                                obj_R_Patient.setaddress(rs.getString("address"));
                                obj_R_Patient.setGender(rs.getString("gender"));
                                obj_R_Patient.setbloodGroup(rs.getString("bloodGroup"));
                                obj_R_Patient.setAge(rs.getString("age"));
                                
                                
				
				list.add(obj_R_Patient);
				
			}
			
			
			
		} catch (Exception e) {
				System.out.println(e);
		}
		return list;
		
		
		
	}
	
	
	
}
