package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contact;
import model.News;
import service.MaddyService;
import service.contactService;

/**
 * Servlet implementation class addContact
 */
@WebServlet("/addContact")
public class addContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addContact() {
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
		String cid = request.getParameter("cid");
		 String name  = request.getParameter("name");
		 String email = request.getParameter("email");
		 String message = request.getParameter("message");
		
		 
		 Contact contact = new Contact();
		 //Using Java Beans - An easiest way to play with group of related data
		 contact.setCid(cid);
		 contact.setName(name);
		 contact.setEmail(email);
		 contact.setMessage(message);
		
		 contactService addService = new contactService();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String AddedAppoint = addService.AddContact(contact);
		 
		 if(AddedAppoint.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/newHome.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", AddedAppoint);
		 request.getRequestDispatcher("/Contact.jsp").forward(request, response);
		 }
		
		//doGet(request, response);
	}

}
