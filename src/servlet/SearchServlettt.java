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
 * Servlet implementation class SearchServlettt
 */
@WebServlet("/SearchServlettt")
public class SearchServlettt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlettt() {
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
					String search = request.getParameter("search");
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ITP","root","root");
					String Query="select * from new where nid='"+request.getParameter("search")+"'";
					Statement s=(Statement) con.createStatement();
					ResultSet rs = s.executeQuery(Query);
					out.println("<html>");
		            out.println("<head>");
		            out.println("<title>Get Well Soon</title>");
		            out.println("<link rel='stylesheet' href='Details.css'>");
		            out.println("<link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>");
					out.println("<table>");
					out.println("<tr><td>NID</td><td>TITLE</td><td>NEW</td></tr>");
					while(rs.next()){
						out.println("<tr><td>'"+rs.getString(1)+"'</td><td>'"+rs.getString(2)+"'</td><td>'"+rs.getString(3)+"'</td></tr>");
					}
					out.println("</table>");
					out.println("</body>");
					out.println("</html>");
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
		//doGet(request, response);
	}

}
