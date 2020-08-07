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
 * Servlet implementation class quantity
 */
@WebServlet("/quantity")
public class quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quantity() {
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
		doGet(request, response);
		

		PrintWriter out = response.getWriter();
		String quantity = request.getParameter("quantity");
		String product = request.getParameter("product");
		

		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			java.sql.PreparedStatement ps=con.prepareStatement("insert into quantity(quan_id,quantity,product)values(NULL,?,?)");
		   
			 ps.setString(1, quantity);  
			 ps.setString(2, product); 
		  
		   int i=ps.executeUpdate();
		
		
		if(i>0) {
			      
	         
			response.sendRedirect("SendOrder.jsp");
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




		
		

