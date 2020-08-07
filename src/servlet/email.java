package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class email
 */
@WebServlet("/email")
public class email extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public email() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email=request.getParameter("email");
		String ques=request.getParameter("ques");
		String msgs=request.getParameter("msgs");
	
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ITP","root","root");
			
			java.sql.Statement st= con.createStatement(); 
			java.sql.ResultSet rs=st.executeQuery("select ques from Patient_Reg where email='"+email+"' "); 
		
			
		if(rs.next()) {
				HttpSession session= request.getSession();
				session.setAttribute("ques", ques);
				 response.sendRedirect("question.jsp?ques="+rs.getString("ques"));
				 //response.sendRedirect("forgot.jsp");
			}  else {
				request.setAttribute("msgs","Please enter your first name"); 
	            out.println("alert(\"" +msgs+ "\")");
				response.sendRedirect("email.jsp");
				out.println("Wrong username");
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		
	}

}
}
	
