package service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.News;
import util.DBconnection;

public class MaddyService {

				public String AddNews(News news)
				 {
				 String nid= news.getNid();
				 String title = news.getTitle();
				 String ne= news.getNe();
				 
				 Connection con = null;
				 PreparedStatement preparedStatement = null;
				 
				 try
				 {
				 con = DBconnection.createConnection();
				 String query = "insert into new(nid,title,ne) values (NULL,?,?)"; //Insert user details into the table 'Stocks'
				 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
				 
				 preparedStatement.setString(1, title);
				 preparedStatement.setString(2, ne);
				 
				
				 
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




	
