package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.booking;
import controller.DBConnect;

public class bookingService {

    // ✅ Method to Insert a Booking
    public boolean createBooking(booking newBooking) {
        boolean success = false;
        String query = "INSERT INTO bookings (c_id, c_name, c_email, c_phone, v_number, pickup_location, drop_location, pickup_date, booking_status) " +
                       "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, newBooking.getC_id());
            stmt.setString(2, newBooking.getC_name());
            stmt.setString(3, newBooking.getC_email());
            stmt.setInt(4, newBooking.getC_phone());
            stmt.setString(5, newBooking.getV_number());
            stmt.setString(6, newBooking.getPickup_location());
            stmt.setString(7, newBooking.getDrop_location());
            stmt.setString(8, newBooking.getPickup_date());
            stmt.setString(9, "Pending"); // Default status

            int rowsInserted = stmt.executeUpdate();
            success = rowsInserted > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return success;
    }

    // ✅ Method to Retrieve Bookings for a Customer
    public List<booking> getCustomerBookings(int customerId) {
        List<booking> bookingList = new ArrayList<>();
        String query = "SELECT * FROM bookings WHERE c_id = ? ORDER BY created_at DESC";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, customerId);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                booking bk = new booking();
                bk.setBooking_id(rs.getInt("b_id"));
                bk.setC_id(rs.getInt("c_id"));
                bk.setC_name(rs.getString("c_name"));
                bk.setC_email(rs.getString("c_email"));
                bk.setC_phone(rs.getInt("c_phone"));
                bk.setV_number(rs.getString("v_number"));
                bk.setPickup_location(rs.getString("pickup_location"));
                bk.setDrop_location(rs.getString("drop_location"));
                bk.setPickup_date(rs.getString("pickup_date"));
                bk.setBooking_status(rs.getString("booking_status"));

                bookingList.add(bk);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookingList;
    }
}
