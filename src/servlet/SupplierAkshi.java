package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SupplierAkshi
 */
@WebServlet("/SupplierAkshi")
public class SupplierAkshi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SupplierAkshi() {
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
		PrintWriter out = response.getWriter();
		String id1 = request.getParameter("id1");
		String Status = request.getParameter("Status");

		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("insert into SupplierAkshi(Suid,status)values(?,?)");
			
			
			ps.setString(1, id1); 
			 ps.setString(2, Status);  
		     
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			      
	         
			response.sendRedirect("ShowSupplierstatus.jsp");
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


