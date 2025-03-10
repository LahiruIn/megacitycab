package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.admin;
import services.adminService;


@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public adminlogin() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		admin adm = new admin();
		adm.setA_email(request.getParameter("aemail"));
		adm.setA_password(request.getParameter("apassword"));
		
		adminService service = new adminService();
		boolean status = service.validate(adm);
		
		if(status) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminhome.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
			dispatcher.forward(request, response);
		}
		
		doGet(request, response);
	}

}
