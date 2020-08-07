package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AnswerForSecurityQuestion
 */
@WebServlet("/AnswerForSecurityQuestion")
public class AnswerForSecurityQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnswerForSecurityQuestion() {
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
		PrintWriter out = response.getWriter();
	       String answer=request.getParameter("answer");
			

			try {
				Class.forName("com.mysql.jdbc.Driver"); 
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
				
				Statement st= con.createStatement(); 
				ResultSet rs=st.executeQuery("select * from Patient_Reg where ans='"+answer+"' "); 
				
			
			
			
			
			if(rs.next()) {
				HttpSession session= request.getSession();
				session.setAttribute("answer", answer);
				
				
				 response.sendRedirect("forgot.jsp");
				//response.sendRedirect("forgot.jsp");
			}  else {
				out.println("Wrong answer");
			}
			
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

