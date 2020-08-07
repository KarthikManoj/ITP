package service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.DB_Connection;
import model.Patient;

public class Delete_values {

	 public void delete_value(String userID){
			DB_Connection obj_DB_Connection=new DB_Connection();
			Connection connection=obj_DB_Connection.get_connection();
			
			PreparedStatement ps=null;
		 
			 
			 
			try {
				String querry="delete from Patient_Reg where userID=?";
				ps=connection.prepareStatement(querry);		
				ps.setString(1, userID);
				ps.executeUpdate();
				
				
				 
				
				
			} catch (Exception e) {
					System.out.println(e);
			}
			 
			
			
		}
	
}
