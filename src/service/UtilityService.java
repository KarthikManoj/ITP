package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Finance;
import util.DBconnection;

public class UtilityService {
	public String UtilityInsert(Finance finance)
	 {
		
		
	 String utility_id =finance.getUtility_id();
	 String title = finance.getTitle();
	 String payAcc=finance.getPayAcc();
	 String provider=finance.getProvider();
	 String date=finance.getDate();
	 String rnumber=finance.getRnumber();
	 String paid=finance.getPaid();
	

	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into utilitypay(utility_id,title,payAcc,provider,date,rnumber,paid) values (NULL,?,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	
	 preparedStatement.setString(1, title);
	 preparedStatement.setString(2, payAcc);
	 preparedStatement.setString(3, provider);
	 preparedStatement.setString(4, date);
	 preparedStatement.setString(5, rnumber);
	 preparedStatement.setString(6, paid);
	
	 
	 
	 
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


