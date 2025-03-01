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


@WebServlet("/updateDriver")
public class updateDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public updateDriver() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		driver drv = new driver();
		
		drv.setD_name(request.getParameter("dname"));
		drv.setD_nic(request.getParameter("dnic"));
		drv.setD_phone(Integer.parseInt(request.getParameter("dphone")));
		drv.setD_email(request.getParameter("demail"));
		drv.setD_password(request.getParameter("dpassword"));
		
		driverService service = new driverService();
		service.updatedriver(drv);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("manageDrivers");
		dispatcher.forward(request, response);
		
	}

}
