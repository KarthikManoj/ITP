package service;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Appoint;
import util.DBconnection;

public class Service {

			public String AddAppoint(Appoint app)
			 {
			 String AppID= app.getAppId();
			 String type = app.getType();
			 String date = app.getDate();
			 String time = app.getTime();
			 String pid = app.getPid();
			 
			 Connection con = null;
			 PreparedStatement preparedStatement = null;
			 
			 try
			 {
			 con = DBconnection.createConnection();
			 String query = "insert into appoint(AppId,type,date,time, PatientID) values (NULL,?,?,?,?)"; //Insert user details into the table 'Stocks'
			 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
			 
			 preparedStatement.setString(1, type);
			 preparedStatement.setString(2, date);
			 preparedStatement.setString(3, time);
			 preparedStatement.setString(4, pid);
			
			 
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



