package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SalaryFinance
 */
@WebServlet("/SalaryFinance")
public class SalaryFinance extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalaryFinance() {
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
		String EID = request.getParameter("EID");
		String Status = request.getParameter("Status");
		String month = request.getParameter("month");

		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("insert into SalaryPayment(Salary_id,status,month)values(?,?,?)");
			
			
			ps.setString(1, EID); 
			 ps.setString(2, Status);  
			 ps.setString(3, month);   
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			      
	         
			response.sendRedirect("ShowSalaryStatus.jsp");
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



