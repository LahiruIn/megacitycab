package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.vehical;
import controller.DBConnect;

@WebServlet("/bookVehicle")
public class bookVehicle extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public bookVehicle() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String vehicleNumber = request.getParameter("vehicleNumber");
        vehical veh = null;

        if (vehicleNumber != null) {
            try (Connection conn = DBConnect.getConnection();
                 PreparedStatement stmt = conn.prepareStatement(
                         "SELECT v.v_number, v.v_model, v.v_type, v.v_seat, v.v_price, v.v_image, " +
                         "d.d_name, d.d_phone " +
                         "FROM vehical v " +
                         "LEFT JOIN driver d ON v.d_id = d.d_id " +
                         "WHERE v.v_number = ?")) {
                
                stmt.setString(1, vehicleNumber);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    veh = new vehical();
                    veh.setV_number(rs.getString("v_number"));
                    veh.setV_model(rs.getString("v_model"));
                    veh.setV_type(rs.getString("v_type"));
                    veh.setV_seat(rs.getString("v_seat"));
                    veh.setV_price(rs.getString("v_price"));
                    veh.setD_name(rs.getString("d_name"));
                    veh.setD_phone(rs.getInt("d_phone"));
                    veh.setV_image(rs.getBytes("v_image"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        request.setAttribute("veh", veh);
        request.getRequestDispatcher("booking_form.jsp").forward(request, response);
    }
}
