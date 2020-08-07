package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Feed;
import service.AddServiceMad;

/**
 * Servlet implementation class AddServlet3
 */
@WebServlet("/AddServlet3")
public class AddServlet3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet3() {
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
		//doGet(request, response);
		 String fid = request.getParameter("fid");
		
		 String name = request.getParameter("name");
		 String email = request.getParameter("email");
		 String comments = request.getParameter("comments");
		 
		 
		 
		Feed m = new Feed();
		 //Using Java Beans - An easiest way to play with group of related data
		 m.setFid(fid);
		 
		 m.setName(name);
		 m.setEmail(email);
		 m.setComments(comments);
		 
		 
		 AddServiceMad addServiceMad = new AddServiceMad();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Addedfeedback = addServiceMad.AddFeedback(m);
		 
		 if(Addedfeedback.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/testimonials.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Addedfeedback);
		 request.getRequestDispatcher("/feedback.jsp").forward(request, response);
		 }
		 
		 }
		
	}


