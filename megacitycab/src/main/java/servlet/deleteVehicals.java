package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vehical;
import services.vehicalService;


@WebServlet("/deleteVehicals")
public class deleteVehicals extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public deleteVehicals() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		vehical veh = new vehical();
		veh.setV_number(request.getParameter("vnumber"));

		vehicalService service = new vehicalService();
		service.deleteVehical(veh);

		RequestDispatcher dispatcher = request.getRequestDispatcher("manageVehicals");
		dispatcher.forward(request, response);
		
	}
}
