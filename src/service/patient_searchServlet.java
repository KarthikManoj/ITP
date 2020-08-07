package service;

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
 * Servlet implementation class patient_searchServlet
 */
@WebServlet("/patient_searchServlet")
public class patient_searchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public patient_searchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubresponse.getWriter().append("Served at: ").append(request.getContextPath());
		
		try{
			PrintWriter out = response.getWriter();
			String search = request.getParameter("search");
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			String Query="select * from Patient_Reg where mobileNo='"+request.getParameter("search")+"'";
			Statement s=(Statement) con.createStatement();
			ResultSet rs = s.executeQuery(Query);
			
			out.println("<table>");
			out.println("<tr><td>  User ID      </td><td>    First Name      </td><td>    Last Name             </td><td>   Email          </td><td>  Address      </td><td>   Mobile Number      </td><td>  Gender      </td><td>    Blood Group      </td><td>  User Name     </td><td>   Password      </td><td>   Age     </td></tr>");
			while(rs.next()){
				out.println("<tr><td>'"+rs.getString(1)+" '</td><td>'"+rs.getString(2)+"'</td><td>'"+rs.getString(3)+"'</td><td>'"+rs.getString(4)+"'</td><td>'"+rs.getString(5)+"'</td><td>'"+rs.getString(6)+"'</td><td>'"+rs.getString(7)+"'</td><td>'"+rs.getString(8)+"'</td><td>'"+rs.getString(9)+"'</td><td>'"+rs.getString(10)+"'</td><td>'"+rs.getString(11)+"'</td>");
		
				
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
