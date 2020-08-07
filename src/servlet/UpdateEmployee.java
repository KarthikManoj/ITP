package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Employee;
import service.UpdateService;


/**
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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
		response.setContentType("text/html");
		String EID=request.getParameter("EID");
		Employee employee=new Employee();
		employee.setfirstname(request.getParameter("fname"));
		employee.setemail(request.getParameter("email"));
		employee.setprofession(request.getParameter("profession"));
		employee.setaddress(request.getParameter("address"));
		employee.setdoj(request.getParameter("doj"));
		employee.setcontactno(request.getParameter("contactno"));
		employee.setnic(request.getParameter("nic"));
		employee.setgender(request.getParameter("gender"));
		UpdateService u = new UpdateService();
		u.updateEmployee(EID, employee);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/List.jsp");
		dispatcher.forward(request, response);
		
	}

}
