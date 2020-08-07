package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Stocks;
import service.PAddService;

/**
 * Servlet implementation class PAddServlet
 */
@WebServlet("/PAddServlet")
public class PAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PAddServlet() {
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
		 String sid = request.getParameter("sid");
		 String sname = request.getParameter("sname");
		 String quantity = request.getParameter("quantity");
		 String expdate = request.getParameter("expdate");
		 String redate = request.getParameter("redate");
		 
		 
		 Stocks stocks = new Stocks();
		 //Using Java Beans - An easiest way to play with group of related data
		 stocks.setSid(sid);
		 stocks.setSname(sname);
		 stocks.setQuantity(quantity);
		 stocks.setExpdate(expdate);
		 stocks.setRedate(redate);
		 
		 PAddService addService = new PAddService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Addedstocks = addService.AddStocks(stocks);
		 
		 if(Addedstocks.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Details.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Addedstocks);
		 request.getRequestDispatcher("/AddStocks.jsp").forward(request, response);
		 }
		 
		 }
		

}
