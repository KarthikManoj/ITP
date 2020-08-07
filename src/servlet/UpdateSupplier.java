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
 * Servlet implementation class UpdateSupplier
 */
@WebServlet("/UpdateSupplier")
public class UpdateSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSupplier() {
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
		PrintWriter pwriter = response.getWriter();  
		String eid=request.getParameter("eid");
		String Status=request.getParameter("Status");
	
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("update SupplierAkshi set Status=? where Suid='"+eid+"' ");
		   
			 ps.setString(1, Status);  
		     
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			 pwriter.print("Updated Sucessfully");          
	         
			response.sendRedirect("ShowSupplierstatus.jsp");
		}
			else
			{
				 pwriter.print("Error");       
				response.sendRedirect("error.jsp");
			}
		
	 }catch(Exception e) {
			e.printStackTrace();
		}
		}
		
		
		
		
				
	}

		
