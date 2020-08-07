package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Schedule;
import util.DBconnection;

public class AddScheduleservice {

	public String AddScheduleTime(Schedule schedule)
	{
		String EID = schedule.getEID();
		 String Monday=schedule.getMonday();
		 String Tuesday = schedule.getTuesday();
		 String Wednesday  = schedule.getWednesday();
		 String Thursday =schedule.getThursday();
		 String Friday = schedule.getFriday();
		 String Saturday = schedule.getSaturday();
		 String Sunday= schedule.getSunday();
		
		 Connection con = null;
		 PreparedStatement preparedStatement = null;
		 
		 try
		 {
		 con = DBconnection.createConnection();
		 String query = "insert into schedule(EID,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday) values (NULL,?,?,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
		 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		 
		 preparedStatement.setString(1, Monday);
		 preparedStatement.setString(2, Tuesday);
		 preparedStatement.setString(3, Wednesday);
		 preparedStatement.setString(4, Thursday);
		 preparedStatement.setString(5, Friday);
		 preparedStatement.setString(6, Saturday);
		 preparedStatement.setString(7, Sunday);
		
		 
		 
		 
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
