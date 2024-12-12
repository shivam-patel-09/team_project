package com.web.bean;

public class AddToCartBean {
	
	int add_cart_id, amount, product_id, quantity, total_amount,
			user_master_id;
	String image_name, pname;

	
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public int getAdd_cart_id() {
		return add_cart_id;
	}

	public void setAdd_cart_id(int add_cart_id) {
		this.add_cart_id = add_cart_id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal_amount() {
		return total_amount;
	}

	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}

	public int getUser_master_id() {
		return user_master_id;
	}

	public void setUser_master_id(int user_master_id) {
		this.user_master_id = user_master_id;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	

}
