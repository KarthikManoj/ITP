package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.NRecords;
import util.DBconnection;


	
	public class NarthiAddService {

		public String AddDetails(NRecords nrecords)
		 {
			 String NRid = nrecords.getNRid();
			 String patid = nrecords.getPatid();
			 
			 String temp = nrecords.getTemp();
			 String bp = nrecords.getBp();
			 String rr = nrecords.getRr();
			 String pulse = nrecords.getPulse();
			 String others = nrecords.getOthers();
			 String amount1 = nrecords.getAmount1();
		 
		 
		 
		
		 
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		 
		 try
		 {
		 con = DBconnection.createConnection();
		 String query = "insert into NRecords(NRid, temp, bp, rr, pulse, other , medivcine, patientID) values (null,?,?,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
		 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		 
		 preparedStatement.setString(1, temp);
		 preparedStatement.setString(2, bp);
		 preparedStatement.setString(3, rr);
		 preparedStatement.setString(4, pulse);
		 preparedStatement.setString(5, others);
		 preparedStatement.setString(6, amount1);
		 preparedStatement.setString(7, patid);
		
		 
		 
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

