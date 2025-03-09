package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.driver;
import services.driverService;

@WebServlet("/driverlogin")
public class driverlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public driverlogin() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // ✅ Get email and password from form
        String email = request.getParameter("demail");
        String password = request.getParameter("dpassword");

        System.out.println("🔍 Attempting Login: Email=" + email + ", Password=" + password); // Debugging log

        // ✅ Call service to validate login
        driverService service = new driverService();
        driver authenticatedDriver = service.validateDriver(email, password); 

        if (authenticatedDriver != null) {
            // ✅ Login successful - Store driver in session
            HttpSession session = request.getSession(true); // Ensure a session exists
            session.setAttribute("loggedInDriver", authenticatedDriver);
            session.setMaxInactiveInterval(30 * 60); // Set session timeout (30 minutes)

            System.out.println("✅ Driver Logged In: " + authenticatedDriver.getD_name()); // Debugging log
            response.sendRedirect("driverhome.jsp"); // ✅ Redirect to Driver Dashboard
        } else {
            // ❌ Login Failed - Show Error Message
            System.out.println("❌ Login Failed: Redirecting back to login page.");
            request.setAttribute("errorMessage", "Invalid Email or Password!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("driverlogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
