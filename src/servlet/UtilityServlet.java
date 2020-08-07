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
import model.Finance;
import service.UtilityService;
import util.DBconnection;

/**
 * Servlet implementation class UtilityServlet
 */
@WebServlet("/UtilityServlet")
public class UtilityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UtilityServlet() {
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
		doGet(request, response);
		
		
		 String title = request.getParameter("title");
		 String payAcc=request.getParameter("payAcc");
		 String provider=request.getParameter("provider");
		 String date=request.getParameter("date");
		 String rnumber=request.getParameter("rnumber");
		 String paid=request.getParameter("paid");
		
		
		Finance finance = new Finance();
	
		 finance.setTitle(title);
		 finance.setPayAcc(payAcc);
		 finance.setProvider(provider);
		 finance.setDate(date);
		 finance.setRnumber(rnumber);
		 finance.setPaid(paid);
		
		 UtilityService insertutility = new UtilityService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedI = insertutility.UtilityInsert(finance);
		 
		 if(AddedI.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Income&Expenses.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedI);
		 request.getRequestDispatcher("/Utility.jsp").forward(request, response);
		 }
		 }
	}
	