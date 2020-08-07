package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.ResultSet; 
import java.sql.Statement;
import java.sql.Connection;
import servlet.searchDate;
import java.sql.DriverManager;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/NarthiDeleteServlet")
public class NarthiDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NarthiDeleteServlet() {
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
			
		//doGet(request, response);
				try{
				String appid = request.getParameter("delete");
				int AID = Integer.parseInt(appid);
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
				Statement s=(Statement) con.createStatement();
				s.executeUpdate("delete from appoint where AppId= '"+AID+"'");
				response.sendRedirect("doc_appoint_narthi.jsp");
				}catch(Exception e){
					e.printStackTrace();
				}
			}
	}

	
