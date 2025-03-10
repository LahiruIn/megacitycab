package services;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import controller.DBConnect;
import model.admin;


public class adminService {
	
	public admin validateAdmin(String email, String password) {
        admin adm = null;
        
        try (Connection con = DBConnect.getConnection()) {
            String query = "SELECT * FROM admin WHERE a_email = ? AND a_password = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, password);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                adm = new admin();
                adm.setA_name(rs.getString("a_name"));
                adm.setA_email(rs.getString("a_email"));
                adm.setA_password(rs.getString("a_password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return adm; // Returns null if credentials are incorrect
    }
}
	


