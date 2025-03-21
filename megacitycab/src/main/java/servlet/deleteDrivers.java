package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.driver;
import services.driverService;


@WebServlet("/deleteDrivers")
public class deleteDrivers extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public deleteDrivers() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		driver drv = new driver();
		drv.setD_email(request.getParameter("demail"));

		driverService service = new driverService();
		service.deleteDriver(drv);

		RequestDispatcher dispatcher = request.getRequestDispatcher("manageDrivers");
		dispatcher.forward(request, response);
		
	}

}
