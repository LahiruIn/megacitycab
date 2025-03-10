package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.admin;
import services.adminService;

@WebServlet("/adminlogin")
public class adminlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public adminlogin() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("aemail");
        String password = request.getParameter("apassword");

        adminService service = new adminService();
        admin adm = service.validateAdmin(email, password); // Validate admin and get details

        if (adm != null) { // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("loggedInAdmin", adm.getA_name()); // Store admin name in session
            session.setAttribute("adminEmail", adm.getA_email()); // Store email for future use
            
            response.sendRedirect("adminhome.jsp"); // Redirect to admin dashboard
        } else { // Failed login
            request.setAttribute("errorMessage", "Invalid email or password!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("adminlogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
