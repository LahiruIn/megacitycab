package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.customer;

public class customerService {
	
	public void regCustomer(customer cus) {
		
		try {
			
			String query = "insert into customer values('"  +cus.getC_id()+"','"
					                                        +cus.getC_name()+"','"
															+cus.getC_address()+"','"
										                    +cus.getC_nic()+"','"
										                    +cus.getC_phone()+"','"        
										                    +cus.getC_email()+"','"
										                    +cus.getC_password()+"')";
									                    
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public customer validateCustomer(String email, String password) {
        String query = "SELECT * FROM customer WHERE c_email = ? AND c_password = ?";
        try (Connection conn = DBConnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // ✅ Create a Customer object
                customer cus = new customer();
                cus.setC_id(rs.getInt("c_id"));
                cus.setC_name(rs.getString("c_name"));
                cus.setC_address(rs.getString("c_address"));
                cus.setC_nic(rs.getString("c_nic"));
                cus.setC_phone(rs.getInt("c_phone"));
                cus.setC_email(rs.getString("c_email"));

                return cus;  // ✅ Return the customer object
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // ❌ Return null if login fails
    }

	
	
	public ArrayList<customer> getAllCustomer() {
        ArrayList<customer> customerList = new ArrayList<>();
        String query = "SELECT * FROM customer";

        try (Connection conn = DBConnect.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query);
             ResultSet rs = stmt.executeQuery()) {

            System.out.println("✅ Executing Query: " + query);

            while (rs.next()) {
                customer cus = new customer();
                cus.setC_id(rs.getInt("c_id"));
                cus.setC_name(rs.getString("c_name"));
                cus.setC_address(rs.getString("c_address"));
                cus.setC_nic(rs.getString("c_nic"));
                cus.setC_phone(rs.getInt("c_phone"));  // ✅ Fix Data Type
                cus.setC_email(rs.getString("c_email"));
                cus.setC_password(rs.getString("c_password"));

                customerList.add(cus);
                System.out.println("🔹 Customer Found: " + cus.getC_id() + " | " + cus.getC_name());
            }

            System.out.println("✅ Total Customers Found: " + customerList.size());

        } catch (Exception e) {
            System.out.println("❌ Error Fetching Customers: " + e.getMessage());
            e.printStackTrace();
        }

        if (customerList.isEmpty()) {
            System.out.println("⚠️ No customers found in the database.");
        }

        return customerList;
    }



	
	
	public void deleteCustomer(customer cus) {
	    try {
	        String query = "Delete from customer where c_email = '" + cus.getC_email() + "'";

	        Statement statement = DBConnect.getConnection().createStatement();
	        statement.executeUpdate(query);

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}


	}
