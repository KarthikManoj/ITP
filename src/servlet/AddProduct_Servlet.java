package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import service.AddProduct_Service;

/**
 * Servlet implementation class AddProduct_Servlet
 */
@WebServlet("/AddProduct_Servlet")
public class AddProduct_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct_Servlet() {
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
		//doGet(request, response);
		 String id = request.getParameter("id");
		 String product = request.getParameter("product");
		 String unitprice= request.getParameter("unitprice");
		 String quantity = request.getParameter("quantity");
		 String uname = request.getParameter("uname");
		
		 
		
		 
		 Product product1 = new Product();
		 //Using Java Beans - An easiest way to play with group of related data
		 product1.setId(id);
		 product1.setUname(uname);
		 product1.setProduct(product);
		 product1.setUnitprice(unitprice);
		 product1.setQuantity(quantity);
		
		 
		AddProduct_Service Sercice_Akshi = new AddProduct_Service();
		 
		 //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String Registeredsupplier = Sercice_Akshi.addProduct(product1);
		 
		 if(Registeredsupplier.equals("SUCCESS"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", Registeredsupplier);
		 request.getRequestDispatcher("/AddProductView.jsp").forward(request, response);
		 }
		 }
	}


