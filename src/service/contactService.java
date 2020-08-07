package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Contact;
import model.News;
import util.DBconnection;

public class contactService {

	
	public String AddContact(Contact contact)
	 {
	 String cid= contact.getCid();
	 String name= contact.getName();
	 String email= contact.getEmail();
	 String message=contact.getMessage();
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into cont(cid,name,email,message) values (NULL,?,?,?)"; //Insert user details into the table 'Contact'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, name);
	 preparedStatement.setString(2, email);
	 preparedStatement.setString(3, message);
	 
	
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	 }
}
