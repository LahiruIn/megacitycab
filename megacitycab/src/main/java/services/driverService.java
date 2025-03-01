package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import controller.DBConnect;
import model.driver;

public class driverService {
	
		public void regDriver(driver drv) {
				
				try {
					
					String query = "insert into driver values('"  +drv.getD_id()+"','"
							                                        +drv.getD_name()+"','"
												                    +drv.getD_nic()+"','"
												                    +drv.getD_phone()+"','"        
												                    +drv.getD_email()+"','"
												                    +drv.getD_password()+"')";
											                    
					Statement statement = DBConnect.getConnection().createStatement();
					statement.executeUpdate(query);
					
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		
		
		public boolean validate(driver drv) {
			try {
				
				String query = "select * from driver where d_email = '"+drv.getD_email()+"' and d_password='"+drv.getD_password()+"'";
			    
				Statement statement = DBConnect.getConnection().createStatement();
				
				ResultSet rs = statement.executeQuery(query);
				
				if(rs.next()) {
					return true;
				}
			
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return false;
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
		
		}
