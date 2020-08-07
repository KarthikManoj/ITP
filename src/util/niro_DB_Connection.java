package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class niro_DB_Connection {
	
	
	public static void main(String[] args) {
		niro_DB_Connection obj_DB_Connection = new niro_DB_Connection();
		
		System.out.println(obj_DB_Connection.get_connection());
		
	}
	
	
	
	public Connection get_connection(){
		Connection connection =null;
		
		try{
			
		
		Class.forName("com.mysql.jdbc.Driver");
		connection= DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
		
		
      } catch (Exception e){
    	  System.out.println(e);
	
   }
		return connection;
 }
}
