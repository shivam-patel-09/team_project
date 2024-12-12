package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.web.bean.LoggerInfo;
import com.web.bean.SignUpBean;

public class SignUpDao {

	public static int signUp(SignUpBean bean) {
		try {
			Connection conn = ConnectionDB.getConnection();
			String insertQuery = "INSERT INTO `tbl_usermaster`(  `user_address`,`user_contact`, `user_dob`, `user_password`, `user_email_id`, `user_first_name`, `user_last_name`, user_type_id) VALUES "
					+ "(?,?,?,?,?,?,?,3)";
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setString(1, bean.getUser_address());
			ps.setString(2, bean.getUser_contact());
			ps.setString(3, bean.getUser_DOB());
			ps.setString(4, bean.getUser_password());
			ps.setString(5, bean.getUser_email_id());
			ps.setString(6, bean.getUser_first_name());
			ps.setString(7, bean.getUser_last_name());
			

			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 1;
	}
	
	public static LoggerInfo loginCheck(String userName, String userPassword){
		LoggerInfo info = new LoggerInfo();
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "select * from tbl_usermaster where user_email_id = '"+userName+"' and user_password = '"+userPassword+"'";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				info.setAddress(rs.getString("user_address"));
				info.setContact(rs.getString("user_contact"));
				info.setEmail(rs.getString("user_email_id"));
				info.setFullname(rs.getString("user_first_name") + " " +rs.getString("user_last_name"));
				info.setUserId(rs.getInt("user_master_id"));
			}
			int user_master_id = 0;
			if(user_master_id > 0){
				int totalQty = 0;
				selectQuery = "SELECT quantity FROM tbl_addtocart WHERE user_master_id = "+user_master_id;
				System.out.println("selectQuery : "+selectQuery);
				PreparedStatement ps1 = conn.prepareStatement(selectQuery);
				ResultSet rs1 = ps1.executeQuery();
				while(rs1.next()){
					totalQty += rs1.getInt("quantity");
				}
				info.setCartQty(totalQty);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println("Qty : "+info.getCartQty());
		return info;
	}
	public static LoggerInfo getUpdatedCartQty(LoggerInfo loggerInfo){
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "select * from tbl_usermaster where user_email_id = ? and user_password = ?";
			
				int totalQty = 0;
				selectQuery = "SELECT quantity FROM tbl_addtocart WHERE user_master_id = "+loggerInfo.getUserId();
				System.out.println("selectQuery : "+selectQuery);
				PreparedStatement ps1 = conn.prepareStatement(selectQuery);
				ResultSet rs1 = ps1.executeQuery();
				while(rs1.next()){
					totalQty += rs1.getInt("quantity");
				}
				loggerInfo.setCartQty(totalQty);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		System.out.println("Qty : "+loggerInfo.getCartQty());
		return loggerInfo;
	}
	public static LoggerInfo loginCheck(String userName){
		LoggerInfo info = new LoggerInfo();
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "select * from tbl_usermaster where user_email_id = ?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setString(1, userName);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				info.setAddress(rs.getString("user_address"));
				info.setContact(rs.getString("user_contact"));
				info.setEmail(rs.getString("user_email_id"));
				info.setFullname(rs.getString("user_first_name") + " " +rs.getString("user_last_name"));
				info.setPassword(rs.getString("user_password"));
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return info;
	}
}

