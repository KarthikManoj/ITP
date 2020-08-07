package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Feed;
import util.DBconnection;

public class AddServiceMad {
	
	public String AddFeedback(Feed feed) {
		// TODO Auto-generated method stub
			 String fid= feed.getFid();
			 String name = feed.getName();
			 String email = feed.getEmail();
			 String comments = feed.getComments();
			 
			 Connection con = null;
			 PreparedStatement preparedStatement = null;
			 
			 try
			 {
			 con = DBconnection.createConnection();
			 String query = "insert into feedback12(fid,name,email,comments) values (NULL,?,?,?)"; //Insert user details into the table 'Stocks'
			 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			 
			 preparedStatement.setString(1, name);
			 preparedStatement.setString(2, email);
			 preparedStatement.setString(3, comments);
			
			 
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

	




	
