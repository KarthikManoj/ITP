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
 * Servlet implementation class UpdateStatus
 */
@WebServlet("/UpdateStatus")
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatus() {
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
		String month=request.getParameter("month");
	
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("update SalaryPayment set Status=?,month=? where Salary_id='"+eid+"' ");
		   
			 ps.setString(1, Status);  
			 ps.setString(2, month);  
		     
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			 pwriter.print("Updated Sucessfully");          
	         
			response.sendRedirect("ShowSalaryStatus.jsp");
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

		
		
		
		
