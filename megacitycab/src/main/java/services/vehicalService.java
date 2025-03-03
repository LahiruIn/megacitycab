package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.vehical;

public class vehicalService {

	public boolean registerCar(vehical veh) {
        String insertCarQuery = "INSERT INTO vehical (v_id,v_number, v_type, v_model, v_seat, v_image) VALUES (?,?, ?, ?, ?, ?)";
        
        
        try (Connection connection = DBConnect.getConnection()) {
            // Start transaction
            connection.setAutoCommit(false);

            // Insert the car
            try (PreparedStatement insertCarStmt = connection.prepareStatement(insertCarQuery)) {
                insertCarStmt.setInt(1, veh.getV_id());
                insertCarStmt.setString(2, veh.getV_number());
                insertCarStmt.setString(3, veh.getV_type());
                insertCarStmt.setString(4, veh.getV_model());
                insertCarStmt.setString(5, veh.getV_seat());
                insertCarStmt.setBytes(6, veh.getV_image());
                insertCarStmt.executeUpdate();
            }

            // Commit transaction
            connection.commit();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
	
	
	// Method to retrieve all vehicles from the database
    public ArrayList<vehical> getAllVehical() {
        ArrayList<vehical> listVeh = new ArrayList<>();
        String query = "SELECT * FROM vehical";

        try (Connection conn = DBConnect.getConnection();
             Statement statement = conn.createStatement();
             ResultSet rs = statement.executeQuery(query)) {

            while (rs.next()) {
                vehical veh = new vehical();
                veh.setV_id(rs.getInt("v_id"));
                veh.setV_number(rs.getString("v_number"));
                veh.setV_type(rs.getString("v_type"));
                veh.setV_model(rs.getString("v_model"));
                veh.setV_seat(rs.getString("v_seat"));
                veh.setV_image(rs.getBytes("v_image")); // Handles BLOB image data
                
                listVeh.add(veh);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return listVeh;
    }
    
    
    public void deleteVehical(vehical veh) {
	    try {
	        String query = "Delete from vehical where v_number = '" + veh.getV_number() + "'";

	        Statement statement = DBConnect.getConnection().createStatement();
	        statement.executeUpdate(query);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
    
    public boolean updateVehical(vehical veh) {
        String query;
        boolean updateImage = veh.getV_image() != null; // Check if a new image is provided

        if (updateImage) {
            query = "UPDATE vehical SET v_type = ?, v_model = ?, v_seat = ?, v_image = ? WHERE v_number = ?";
        } else {
            query = "UPDATE vehical SET v_type = ?, v_model = ?, v_seat = ? WHERE v_number = ?";
        }

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement statement = conn.prepareStatement(query)) {

            statement.setString(1, veh.getV_type());
            statement.setString(2, veh.getV_model());
            statement.setString(3, veh.getV_seat());

            if (updateImage) {
                statement.setBytes(4, veh.getV_image());
                statement.setString(5, veh.getV_number());
            } else {
                statement.setString(4, veh.getV_number());
            }

            int rowsAffected = statement.executeUpdate();
            return rowsAffected > 0;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}