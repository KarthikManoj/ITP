package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Appoint;
import service.Service;

/**
 * Servlet implementation class AddServlet2
 */
@WebServlet("/AddServlet2")
public class AddServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet2() {
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
		 String AppId = request.getParameter("AppId");
		 String type = request.getParameter("type");
		 String date = request.getParameter("date");
		 String time = request.getParameter("time");
		 String PID = request.getParameter("pid");
		 
		 Appoint appoint = new Appoint();
		 //Using Java Beans - An easiest way to play with group of related data
		 appoint.setAppId(AppId);
		appoint.setType(type);
		 appoint.setDate(date);
		 appoint.setTime(time);
		 appoint.setPid(PID);
		 
		 Service Service = new Service();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedAppoint = Service.AddAppoint(appoint);
		 
		 if(AddedAppoint.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/AppointmentPayment.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedAppoint);
		 request.getRequestDispatcher("/Appoint.jsp").forward(request, response);
		 }
		 
		 }
}


