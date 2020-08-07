package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.supplier;
import util.DBconnection;
import model.supplier;


public class add_service {
	
	public String addSupplier(supplier supplier)
	 {
	
		String Supplier = supplier.getsupplier();
		String Product = supplier.getproduct();
		String Unitprice = supplier.getunitprice();
		
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into addsupp(supid,supplier,product,unitprice) values ( null,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, Supplier);
	 preparedStatement.setString(2, Product);
	 preparedStatement.setString(3, Unitprice);
	 
	
	 
	 int i= preparedStatement.executeUpdate();
	 
	 if (i!=0)  //Just to ensure data has been inserted into the database
	 return "SUCCESS"; 
	 }
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	 return "Oops.. Something went wrong there..!";
    }

}
