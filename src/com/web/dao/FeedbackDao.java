package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.web.bean.FeedbackBean;

public class FeedbackDao {
	public static int Feedback(FeedbackBean bean) {
		try {
			Connection conn = ConnectionDB.getConnection();
		
			String insertQuery ="INSERT INTO `tbl_feedback`(`feedback_date`, `feedback_message`, `user_master_id`, `product_id`)  VALUES (now(),?,?,?)";
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setString(1,bean.getFeedback_message());
			ps.setInt(2, bean.getUser_master_id());
			ps.setInt(3, bean.getProduct_id());
	
			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 1;
	}


}
