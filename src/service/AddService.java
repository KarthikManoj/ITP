package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Employee;
import util.DBconnection;

public class AddService {
	public String AddEmployee(Employee employee)
	 {
	 String EID = employee.getEID();
	 String firstname=employee.getfirstname();
	 String address = employee.getaddress();
	 String profession  = employee.getprofession();
	 String email = employee.getemail();
	 String salary=employee.getSalary();
	 String nic = employee.getnic();
	 String doj = employee.getdoj();
	 String contactno= employee.getcontactno();
	 String gender= employee.getgender();
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into employee(EID,firstname,address,profession,email,salary,nic,doj,contactno,gender) values (NULL,?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'Stocks'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 
	 preparedStatement.setString(1, firstname);
	 preparedStatement.setString(2, address);
	 preparedStatement.setString(3, profession);
	 preparedStatement.setString(4, email);
	 preparedStatement.setString(5, salary);

	 preparedStatement.setString(6, nic);
	 preparedStatement.setString(7, doj);
	 preparedStatement.setString(8, contactno);
	 preparedStatement.setString(9, gender);
	 
	 
	 
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




