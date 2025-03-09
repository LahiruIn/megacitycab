package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.driver;

public class driverService {
	
		public boolean regDriver(driver drv) {
	        String checkQuery = "SELECT d_email FROM driver WHERE d_email = ?";
	        String insertQuery = "INSERT INTO driver (d_name, d_nic, d_phone, d_email, d_password, d_status) VALUES (?, ?, ?, ?, ?, 'Not Assigned')";
	
	        try (Connection connection = DBConnect.getConnection();
	             PreparedStatement checkStmt = connection.prepareStatement(checkQuery);
	             PreparedStatement insertStmt = connection.prepareStatement(insertQuery)) {
	
	            // Check if email already exists
	            checkStmt.setString(1, drv.getD_email());
	            ResultSet rs = checkStmt.executeQuery();
	            if (rs.next()) {
	                System.out.println("❌ Driver email already exists!");
	                return false; // Prevent duplicate emails
	            }
	
	            // Insert driver
	            insertStmt.setString(1, drv.getD_name());
	            insertStmt.setString(2, drv.getD_nic());
	            insertStmt.setInt(3, drv.getD_phone());
	            insertStmt.setString(4, drv.getD_email());
	            insertStmt.setString(5, drv.getD_password());
	
	            int rowsInserted = insertStmt.executeUpdate();
	            return rowsInserted > 0;
	
	        } catch (Exception e) {
	            e.printStackTrace();
	            return false;
	        }
	    }


		
		
		public driver validateDriver(String demail, String dpassword) {
		    String query = "SELECT * FROM driver WHERE d_email = ? AND d_password = ?";
		    try (Connection conn = DBConnect.getConnection();
		         PreparedStatement stmt = conn.prepareStatement(query)) {

		        stmt.setString(1, demail);
		        stmt.setString(2, dpassword);
		        ResultSet rs = stmt.executeQuery();

		        if (rs.next()) {
		            driver drv = new driver();
		            drv.setD_id(rs.getInt("d_id"));
		            drv.setD_name(rs.getString("d_name"));
		            drv.setD_nic(rs.getString("d_nic"));
		            drv.setD_phone(rs.getInt("d_phone"));
		            drv.setD_email(rs.getString("d_email"));
		            drv.setD_status(rs.getString("d_status"));

		            System.out.println("✅ Driver Login Successful: " + drv.getD_name()); // Debugging log
		            return drv; // ✅ Successful Login
		        } else {
		            System.out.println("❌ Driver Login Failed: No matching credentials found.");
		        }

		    } catch (Exception e) {
		        System.out.println("❌ Database Error: " + e.getMessage());
		        e.printStackTrace();
		    }
		    return null; // ❌ Login Failed
		}


		
		
		
		public ArrayList<driver> getAllDriver() {
			try {
				ArrayList<driver> listDrv = new ArrayList<>();
			
				String query = "select * from driver";

		        Statement statement = DBConnect.getConnection().createStatement();
		        ResultSet rs = statement.executeQuery(query);
		        while(rs.next()) {
		            driver drv = new driver();
		            drv.setD_id(rs.getInt("d_id"));
		            drv.setD_name(rs.getString("d_name"));
		            drv.setD_nic(rs.getString("d_nic"));
		            drv.setD_phone(rs.getInt("d_phone"));
		            drv.setD_email(rs.getString("d_email"));
		            drv.setD_password(rs.getString("d_password"));
		            listDrv.add(drv);
		        }
		        return listDrv;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return null;
		    }
		}
		
		
		public void deleteDriver(driver drv) {
		    try {
		        String query = "Delete from driver where d_email = '" + drv.getD_email() + "'";

		        Statement statement = DBConnect.getConnection().createStatement();
		        statement.executeUpdate(query);

		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		}
		
		
		  public void updatedriver(driver driver) {
			try {
				
				String query = "update driver SET d_name = '"+driver.getD_name()+"', d_nic='"+driver.getD_nic()+"', d_phone='"+driver.getD_phone()+"' , d_email= '"+driver.getD_email()+"', d_password='"+driver.getD_password()+"' where d_email='"+driver.getD_email()+"' ";
				
				Statement statement = DBConnect.getConnection().createStatement();
				statement.executeUpdate(query);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	}
