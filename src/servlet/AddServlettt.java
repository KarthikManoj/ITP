package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.News;
import service.MaddyService;

/**
 * Servlet implementation class AddServlettt
 */
@WebServlet("/AddServlettt")
public class AddServlettt extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlettt() {
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

		 String nid = request.getParameter("nid");
		 String title = request.getParameter("title");
		 String ne = request.getParameter("ne");
		
		 
		 News news = new News();
		 //Using Java Beans - An easiest way to play with group of related data
		 news.setNid(nid);
		news.setTitle(title);
		 news.setNe(ne);
		
		 MaddyService addService = new MaddyService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedAppoint = addService.AddNews(news);
		 
		 if(AddedAppoint.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/test.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedAppoint);
		 request.getRequestDispatcher("/news.jsp").forward(request, response);
		 }
		 
		 }
	}


