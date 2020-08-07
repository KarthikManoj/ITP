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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		doGet(request, response);
		
		String uname =request.getParameter("username");
		String pass =request.getParameter("password");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
				Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP", "root", "root");
				Statement stmt= c.createStatement();
				ResultSet rs=stmt.executeQuery("select uname,passw from login where uname='"+uname+"'and passw='"+pass+"'");
			if(rs.next())
				{	if(pass.equals("Rangusky@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("main.jsp");
				}
			if(pass.equals("Vijay@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("payment.jsp");
				}
				if(pass.equals("Akshi@5387"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("Supplier_Manager.jsp");
				}
				if(pass.equals("Narthi@1998"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("doc_home_narthi.jsp");
				}
				if(pass.equals("Nirosha@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("Transport_Manager.jsp");
				}
				if(pass.equals("Priyanka@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("AddStocks.jsp");
				}
				if(pass.equals("Asvini@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("admin_details.jsp");
				}
				if(pass.equals("Manoj@123"))
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("Nav.jsp");
				}
				
				}
				
				
					
					
					
					
					
				else
				{
					HttpSession session=request.getSession();
					session.setAttribute("username", uname);
					response.sendRedirect("logine.jsp");
				}			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	

	
		
		 }
		 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
