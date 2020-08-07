package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListSearchServlet
 */
@WebServlet("/ListSearchServlet")
public class ListSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			PrintWriter out = response.getWriter();
			String search = request.getParameter("firstname");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			String Query="select * from employee where firstname='"+search+"'";
			Statement s=(Statement) con.createStatement();
			ResultSet rs = s.executeQuery(Query);
			out.println("<table>");
			out.println("<tr><td>APPID</td><td>TYPE</td><td>DATE</td><td>TIME</td></tr>");
			while(rs.next()){
				out.println("<tr><td>'"+rs.getString(1)+"'</td><td>'"+rs.getString(2)+"'</td><td>'"+rs.getString(3)+"'</td><td>'"+rs.getString(4)+"'</td>"+"<tr><td>'"+rs.getString(5)+"<tr><td>'"+rs.getString(6)+"<tr><td>'"+rs.getString(7)+"<tr><td>'"+rs.getString(8)+"<tr><td>'"+rs.getString(9));
			}
			out.println("</table>");
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
	}

	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
