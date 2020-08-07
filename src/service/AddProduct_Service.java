package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Product;
import util.DBconnection;

public class AddProduct_Service {
	
	public String addProduct(Product product1)
	 {
	
		String id = product1.getId();
		String uname = product1.getUname();
		String Product = product1.getProduct();
		String Unitprice = product1.getUnitprice();
		String quantity = product1.getQuantity();
		
	
	 Connection con = null;
	 PreparedStatement preparedStatement = null;
	 
	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into prof(id,uname,product,unitprice,quantity) values ( ?,?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1, id);
	 preparedStatement.setString(2, uname);
	 preparedStatement.setString(3, Product);
	 preparedStatement.setString(4, Unitprice);
	 preparedStatement.setString(5, quantity);
	 
	
	 
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
