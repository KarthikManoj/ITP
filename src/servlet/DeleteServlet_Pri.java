package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DeleteService_Pri;

/**
 * Servlet implementation class DeleteServlet_Pri
 */
@WebServlet("/DeleteServlet_Pri")
public class DeleteServlet_Pri extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteServlet_Pri() {
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
		doGet(request, response);
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String sid=request.getParameter("sid");	
				DeleteService_Pri d=new DeleteService_Pri();
				d.removeEmployee(sid);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Details.jsp");
				dispatcher.forward(request, response);
}
	}

