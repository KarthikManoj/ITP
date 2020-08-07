package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Stocks;
import util.DBconnection;

public class PAddService {

	public String AddStocks(Stocks stocks)
	 {
	 String sid = stocks.getSid();
	 String sname = stocks.getSname();
	 String quantity = stocks.getQuantity();
	 String expdate = stocks.getExpdate();
	 String redate = stocks.getRedate();
	
	 
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into stocks(sid,sname,quantity,expdate,redate) values (NULL,?,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, sname);
	 preparedStatement.setString(2, quantity);
	 preparedStatement.setString(3, expdate);
	 preparedStatement.setString(4, redate);
	 
	 
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

