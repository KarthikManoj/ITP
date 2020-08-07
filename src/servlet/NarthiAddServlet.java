package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.NRecords;
import service.NarthiAddService;
/**
 * Servlet implementation class NarthiAddServlet
 */
@WebServlet("/NarthiAddServlet")
public class NarthiAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NarthiAddServlet() {
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
		 String nrid = request.getParameter("nrid");
		 String patid = request.getParameter("patid");
		 String temp = request.getParameter("temperature");
		  String bp = request.getParameter("bp");
		 String RR = request.getParameter("RR");
		 String pulse = request.getParameter("pulse");
		 String others = request.getParameter("others");
		 String medicine1 = request.getParameter("medicine1");
		
		 
		   NRecords nrecords = new NRecords();
		 //Using Java Beans - An easiest way to play with group of related data
		 nrecords.setNRid(nrid);
		 nrecords.setPatid(patid);
		 nrecords.setTemp(temp);
		 nrecords.setBp(bp);
		 nrecords.setRr(RR);
		 nrecords.setPulse(pulse);
		 nrecords.setOthers(others);
		 nrecords.setAmount1(medicine1);
		
		 
		 NarthiAddService addService = new NarthiAddService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Addedstocks = addService.AddDetails(nrecords);
		 
		 if(Addedstocks.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
			request.setAttribute("msg", "Uploaded Successfully");
		 request.getRequestDispatcher("/doc_appoint_narthi.jsp").forward(request, response);

		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Addedstocks);
		 request.getRequestDispatcher("/AddStocks.jsp").forward(request, response);
		 }
	}
}


