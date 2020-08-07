package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class UpdatePassword
 */
@WebServlet("/UpdatePassword")
public class UpdatePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter pwriter = response.getWriter();  
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String conpwd=request.getParameter("conpwd");
		
		if(!pass.equals(conpwd)) {
			 pwriter.print("Password does not match");
			
			
		}
		else {
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("update Patient_Reg set pass=? where email='"+email+"' ");
		   
			 ps.setString(1, pass);  
		     
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			 pwriter.print("User name correct!");          
	         
			response.sendRedirect("patient_log.jsp");
		}
			else
			{
				response.sendRedirect("error.jsp");
			}
		
	 }catch(Exception e) {
			e.printStackTrace();
		}
		}
		
		
		
		
				
	}

}