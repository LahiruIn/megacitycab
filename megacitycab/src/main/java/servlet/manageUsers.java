package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerService;


@WebServlet("/manageUsers")
public class manageUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public manageUsers() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		customerService service = new customerService();
	    ArrayList<customer> customer = service.getAllCustomer();
	    request.setAttribute("customer", customer);
	    
	    int totalUsers = customer.size(); // Get the total count of users
        request.setAttribute("totalUsers", totalUsers); // Pass count to JSP
	    
	    RequestDispatcher dispatcher = request.getRequestDispatcher("manageusers.jsp");
		dispatcher.forward(request,response);
		
		doGet(request, response);
	}

}
