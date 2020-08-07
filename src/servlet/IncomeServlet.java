package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class IncomeServlet
 */
@WebServlet("/IncomeServlet")
public class IncomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncomeServlet() {
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
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3307/ITP";
		String user = "root";
		String psw = "root";
		
		String id1 = request.getParameter("id1");
		if(id1 != null)
		{
		Connection con = null;
		PreparedStatement ps = null;
		int  utility_id = Integer.parseInt(id1);
		try
		{
			Class.forName(driverName);
			con = (Connection) DriverManager.getConnection(url,user,psw);
		String sql = "DELETE FROM utilitypay WHERE utility_id="+ utility_id;
		ps = (PreparedStatement) con.prepareStatement(sql);
		int i = ps.executeUpdate();
		if(i > 0)
		{
		
			 request.getRequestDispatcher("/Income&Expenses.jsp").forward(request, response);
		}
		else
		
			System.out.println("Fail");
		
		}
		catch(SQLException sqe)
		{
		request.setAttribute("error", sqe);
		out.println(sqe);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
