package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.supplier;
import service.add_service;

/**
 * Servlet implementation class AddSupplier
 */
@WebServlet("/AddSupplier")
public class AddSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSupplier() {
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
		 String Supplier = request.getParameter("supplier");
		 String Product= request.getParameter("product");
		 String UnitPricce = request.getParameter("unitprice");
		
		 
		
		 
		 supplier supplier = new supplier();
		 //Using Java Beans - An easiest way to play with group of related data
		 supplier.setsupplier(Supplier);
		 supplier.setproduct(Product);
		 supplier.setunitprice(UnitPricce);
		 
		add_service Sercice_Akshi = new add_service();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Registeredsupplier = Sercice_Akshi.addSupplier(supplier);
		 
		 if(Registeredsupplier.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/Supplier_Manager.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Registeredsupplier);
		 request.getRequestDispatcher("/Supplier_Manager.jsp").forward(request, response);
		 }
		 }
	}


