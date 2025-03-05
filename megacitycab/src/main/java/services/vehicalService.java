package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import controller.DBConnect;
import model.vehical;

public class vehicalService {

    // ✅ Register a new vehicle while ensuring the driver is not already assigned
    public boolean registerCar(vehical veh) {
        String insertCarQuery = "INSERT INTO vehical (v_number, v_type, v_model, v_seat, v_image, v_price, d_id) VALUES (?, ?, ?, ?, ?, ?, ?)";
        String checkDriverQuery = "SELECT d_status FROM driver WHERE d_id = ?";
        String assignDriverQuery = "UPDATE driver SET d_status = 'Assigned' WHERE d_id = ? AND d_status = 'Not Assigned'";

        try (Connection connection = DBConnect.getConnection()) {
            connection.setAutoCommit(false);

            try (PreparedStatement insertCarStmt = connection.prepareStatement(insertCarQuery);
                 PreparedStatement checkDriverStmt = connection.prepareStatement(checkDriverQuery);
                 PreparedStatement assignDriverStmt = connection.prepareStatement(assignDriverQuery)) {

                // Check if the driver is already assigned
                checkDriverStmt.setInt(1, veh.getD_id());
                ResultSet rs = checkDriverStmt.executeQuery();
                if (rs.next() && "Assigned".equals(rs.getString("d_status"))) {
                    connection.rollback();
                    return false; // Prevent assigning an already assigned driver
                }

                // Insert vehicle
                insertCarStmt.setString(1, veh.getV_number());
                insertCarStmt.setString(2, veh.getV_type());
                insertCarStmt.setString(3, veh.getV_model());
                insertCarStmt.setString(4, veh.getV_seat());
                insertCarStmt.setBytes(5, veh.getV_image());
                insertCarStmt.setString(6, veh.getV_price());
                insertCarStmt.setInt(7, veh.getD_id());

                int carInserted = insertCarStmt.executeUpdate();
                if (carInserted == 0) {
                    connection.rollback();
                    return false;
                }

                // Assign driver
                assignDriverStmt.setInt(1, veh.getD_id());
                assignDriverStmt.executeUpdate();

                connection.commit();
                return true;

            } catch (Exception e) {
                connection.rollback();
                e.printStackTrace();
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // ✅ Retrieve all vehicles
    public ArrayList<vehical> getAllVehical() {
        ArrayList<vehical> listVeh = new ArrayList<>();
        String query = "SELECT v.v_id, v.v_number, v.v_type, v.v_model, v.v_seat, v.v_image, " +
                       "IFNULL(v.v_price, '0') AS v_price, IFNULL(d.d_name, 'No Driver Assigned') AS d_name " +
                       "FROM vehical v " +
                       "LEFT JOIN driver d ON v.d_id = d.d_id"; 

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement statement = conn.prepareStatement(query);
             ResultSet rs = statement.executeQuery()) {

            while (rs.next()) {
                vehical veh = new vehical();
                veh.setV_id(rs.getInt("v_id"));
                veh.setV_number(rs.getString("v_number"));
                veh.setV_type(rs.getString("v_type"));
                veh.setV_model(rs.getString("v_model"));
                veh.setV_seat(rs.getString("v_seat"));
                veh.setV_image(rs.getBytes("v_image"));
                veh.setV_price(rs.getString("v_price"));
                veh.setD_name(rs.getString("d_name"));

                listVeh.add(veh);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listVeh;
    }

    // ✅ Delete a vehicle and reset driver status only if they are not assigned to another vehicle
    public boolean deleteVehical(String vNumber) {
        String checkVehicleQuery = "SELECT COUNT(*) FROM vehical WHERE v_number = ?";
        String checkOtherVehiclesQuery = "SELECT COUNT(*) FROM vehical WHERE d_id = (SELECT d_id FROM vehical WHERE v_number = ?) AND v_number <> ?";
        String resetDriverQuery = "UPDATE driver SET d_status = 'Not Assigned' WHERE d_id = (SELECT d_id FROM vehical WHERE v_number = ?) AND NOT EXISTS (" + checkOtherVehiclesQuery + ")";
        String deleteQuery = "DELETE FROM vehical WHERE v_number = ?";

        try (Connection conn = DBConnect.getConnection()) {
            conn.setAutoCommit(false);

            try (PreparedStatement checkVehicleStmt = conn.prepareStatement(checkVehicleQuery);
                 PreparedStatement checkOtherVehiclesStmt = conn.prepareStatement(checkOtherVehiclesQuery);
                 PreparedStatement resetDriverStmt = conn.prepareStatement(resetDriverQuery);
                 PreparedStatement deleteStmt = conn.prepareStatement(deleteQuery)) {

                // Step 1: Check if vehicle exists
                checkVehicleStmt.setString(1, vNumber);
                ResultSet rsVehicle = checkVehicleStmt.executeQuery();
                rsVehicle.next();
                if (rsVehicle.getInt(1) == 0) {
                    System.out.println("🚨 Vehicle not found in database: " + vNumber);
                    return false;
                }

                // Step 2: Check if the driver has other assigned vehicles
                checkOtherVehiclesStmt.setString(1, vNumber);
                checkOtherVehiclesStmt.setString(2, vNumber);
                ResultSet rs = checkOtherVehiclesStmt.executeQuery();
                rs.next();
                int vehicleCount = rs.getInt(1);

                // Step 3: Reset driver status only if no other vehicles are assigned
                if (vehicleCount == 0) {
                    resetDriverStmt.setString(1, vNumber);
                    resetDriverStmt.executeUpdate();
                }

                // Step 4: Delete the vehicle
                deleteStmt.setString(1, vNumber);
                int rowsAffected = deleteStmt.executeUpdate();

                if (rowsAffected > 0) {
                    conn.commit();
                    System.out.println("✅ Vehicle deleted successfully: " + vNumber);
                    return true;
                } else {
                    conn.rollback();
                    System.out.println("❌ Vehicle deletion failed for: " + vNumber);
                    return false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    
    

    // ✅ Update vehicle and reassign drivers correctly
    public boolean updateVehical(vehical veh) {
        String updateVehicleQuery;
        boolean updateImage = veh.getV_image() != null;
        boolean updateDriver = veh.getD_id() != -1; // Only update driver if a new one is selected

        if (updateImage) {
            updateVehicleQuery = "UPDATE vehical SET v_type = ?, v_model = ?, v_seat = ?, v_image = ?, v_price = ?" 
                                + (updateDriver ? ", d_id = ?" : "") + " WHERE v_number = ?";
        } else {
            updateVehicleQuery = "UPDATE vehical SET v_type = ?, v_model = ?, v_seat = ?, v_price = ?" 
                                + (updateDriver ? ", d_id = ?" : "") + " WHERE v_number = ?";
        }

        String resetOldDriverQuery = "UPDATE driver SET d_status = 'Not Assigned' WHERE d_id = (SELECT d_id FROM vehical WHERE v_number = ?) AND NOT EXISTS (SELECT 1 FROM vehical WHERE d_id = (SELECT d_id FROM vehical WHERE v_number = ?) AND v_number <> ?)";
        String assignNewDriverQuery = "UPDATE driver SET d_status = 'Assigned' WHERE d_id = ?";

        try (Connection conn = DBConnect.getConnection()) {
            conn.setAutoCommit(false);

            try (PreparedStatement resetOldDriverStmt = conn.prepareStatement(resetOldDriverQuery);
                 PreparedStatement updateVehicleStmt = conn.prepareStatement(updateVehicleQuery);
                 PreparedStatement assignNewDriverStmt = conn.prepareStatement(assignNewDriverQuery)) {

                // Step 1: Free the old driver if changing drivers
                if (updateDriver) {
                    resetOldDriverStmt.setString(1, veh.getV_number());
                    resetOldDriverStmt.setString(2, veh.getV_number());
                    resetOldDriverStmt.setString(3, veh.getV_number());
                    resetOldDriverStmt.executeUpdate();
                }

                // Step 2: Update vehicle details
                updateVehicleStmt.setString(1, veh.getV_type());
                updateVehicleStmt.setString(2, veh.getV_model());
                updateVehicleStmt.setString(3, veh.getV_seat());

                int paramIndex = 4;
                if (updateImage) {
                    updateVehicleStmt.setBytes(paramIndex++, veh.getV_image());
                }
                updateVehicleStmt.setString(paramIndex++, veh.getV_price());

                if (updateDriver) {
                    updateVehicleStmt.setInt(paramIndex++, veh.getD_id());
                }
                updateVehicleStmt.setString(paramIndex, veh.getV_number());

                int rowsAffected = updateVehicleStmt.executeUpdate();
                if (rowsAffected == 0) {
                    conn.rollback();
                    return false;
                }

                // Step 3: Assign new driver if changed
                if (updateDriver) {
                    assignNewDriverStmt.setInt(1, veh.getD_id());
                    assignNewDriverStmt.executeUpdate();
                }

                // Step 4: Commit transaction
                conn.commit();
                return true;

            } catch (Exception e) {
                conn.rollback();
                e.printStackTrace();
                return false;
            }

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }


    
    
    public byte[] getVehicleImage(String vNumber) {
        byte[] imageBytes = null;
        String query = "SELECT v_image FROM vehical WHERE v_number = ?";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, vNumber);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                imageBytes = rs.getBytes("v_image");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return imageBytes; // Returns the existing image (or null if not found)
    }

    
}

