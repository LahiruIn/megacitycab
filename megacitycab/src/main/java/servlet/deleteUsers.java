package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.customer;
import services.customerService;


@WebServlet("/deleteUsers")
public class deleteUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public deleteUsers() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		customer cus = new customer();
		cus.setC_email(request.getParameter("email"));

		customerService service = new customerService();
		service.deleteCustomer(cus);

		RequestDispatcher dispatcher = request.getRequestDispatcher("manageUsers");
		dispatcher.forward(request, response);
		
	}

}
