package com.web.bean;


public class FeedbackBean {
	
	int user_master_id, product_id;
    String feedback_message, feedback_date;
	
	 public int getUser_master_id() {
		return user_master_id;
	}
	public void setUser_master_id(int user_master_id) {
		this.user_master_id = user_master_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getFeedback_message() {
		return feedback_message;
	}
	public void setFeedback_message(String feedback_message) {
		this.feedback_message = feedback_message;
	}
	public String getFeedback_date() {
		return feedback_date;
	}
	public void setFeedback_date(String feedback_date) {
		this.feedback_date = feedback_date;
	}
	
}
