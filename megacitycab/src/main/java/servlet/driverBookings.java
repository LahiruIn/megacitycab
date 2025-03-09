package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.driver;
import model.booking;
import services.bookingService;

@WebServlet("/driverBookings")
public class driverBookings extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        driver loggedInDriver = (driver) session.getAttribute("loggedInDriver");

        if (loggedInDriver == null) {
            response.sendRedirect("driverlogin.jsp");
            return;
        }

        bookingService service = new bookingService();
        List<booking> driverBookings = service.getDriverBookings(loggedInDriver.getD_email());

        request.setAttribute("driverBookings", driverBookings);

        RequestDispatcher dispatcher = request.getRequestDispatcher("driverbooking.jsp");
        dispatcher.forward(request, response);
    }
}