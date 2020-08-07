package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Schedule;
import service.AddScheduleservice;
import service.AddService;

/**
 * Servlet implementation class AddSchedule
 */
@WebServlet("/AddSchedule")
public class AddSchedule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSchedule() {
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
		String Monday=request.getParameter("monday");
		String Tuesday=request.getParameter("tuesday");
		String Wednesday=request.getParameter("wednesday");
		String Thursday=request.getParameter("thursday");
		String Friday=request.getParameter("friday");
		String Saturday=request.getParameter("saturday");
		String Sunday=request.getParameter("sunday");
		Schedule schedule=new Schedule();
		schedule.setMonday(Monday);
		schedule.setTuesday(Tuesday);
		schedule.setWednesday(Wednesday);
		schedule.setThursday(Thursday);
		schedule.setFriday(Friday);
		schedule.setSaturday(Saturday);
		schedule.setSunday(Sunday);
		
		AddScheduleservice addschedule = new AddScheduleservice();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedS = addschedule.AddScheduleTime(schedule);
		 
		 if(AddedS.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Listschedule.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedS);
		 request.getRequestDispatcher("/addschedule.jsp").forward(request, response);
		 }
		 }
	}


