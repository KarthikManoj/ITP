package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;


/**
 * Servlet implementation class niro_SearchServlet
 */
@WebServlet("/niro_SearchServlet")
public class niro_SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public niro_SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	
		try{
			PrintWriter out = response.getWriter();
			String search = request.getParameter("search");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			String Query="select * from user where sl_no='"+request.getParameter("search")+"'";
			Statement s=(Statement) con.createStatement();
			ResultSet rs = s.executeQuery(Query);
			
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Search</title>");
			out.println("<link rel='stylesheet' href='niroAdmin.css'>");
			out.println("<link rel='stylesheet' href='https://www.w3schools.com/w3css/4/w3.css'>");
			out.println("</head>");
			out.println("<body>");
			out.println("<center><h2><font color='#07d7de'><b> Search Results</b> </font></h2></center>");
			out.println("<div class='w3-container' align='center'>");
			
			
			out.println("<table class='w3-table-all' border='1' cellpadding='12'>");
			out.println(" <thread> ");
			out.println("<tr class='w3-black'>");
			out.println("<th>NIC</th>");
			out.println("<th>Name</th>");
			out.println("<th>Email</th>");
			out.println("<th>Mobile</th>");
			out.println("</tr>");
			out.println("</thread>");
			out.println("</div>");





			while(rs.next()){
				out.println("<tr bgcolor='#5EBADF'>");

				out.println("<td>"  +rs.getString(1)+  "</td>");
				out.println("<td>"  +rs.getString(2)+  "</td>");
				out.println("<td>"  +rs.getString(3)+  "</td>");
				out.println("<td>"  +rs.getString(4)+  "</td>");
				out.println("</tr>");
		
				
			}
			out.println("</table>");
			out.println("</body>");
			out.println("</html>");


		}
		
		catch(Exception e){
			e.printStackTrace();
		}
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
