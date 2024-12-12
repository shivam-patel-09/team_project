package com.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.web.bean.AddToCartBean;
import com.web.bean.OrderBean;

public class addToCartDao {

	public static int addToCart(int productQty, int productPrice, int productId, int userId, String image, String pname) {
		try {
			Connection conn = ConnectionDB.getConnection();
			String insertQuery = "INSERT INTO `tbl_addtocart`(`amount`, `product_id`, `quantity`, `total_amount`, `user_master_id`, `image_name`, product_name) VALUES (?, ?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setInt(1, productPrice);
			ps.setInt(2, productId);
			ps.setInt(3, productQty);
			ps.setInt(4, (productPrice * productQty));
			ps.setInt(5, userId);
			ps.setString(6, image);
			ps.setString(7, pname);
			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	
	public static List<AddToCartBean> getAddToCartList(int userId){
		List<AddToCartBean> list = new ArrayList<AddToCartBean>();
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "SELECT `add_cart_id`, `amount`, `product_id`, `quantity`, `total_amount`, `user_master_id`, `image_name`, product_name  FROM  `tbl_addtocart` WHERE user_master_id = ?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				AddToCartBean addToCartBean = new AddToCartBean();
				addToCartBean.setAdd_cart_id(rs.getInt("add_cart_id"));
				addToCartBean.setAmount(rs.getInt("amount"));
				addToCartBean.setProduct_id(rs.getInt("product_id"));
				addToCartBean.setQuantity(rs.getInt("quantity"));
				addToCartBean.setTotal_amount(rs.getInt("total_amount"));
				addToCartBean.setImage_name(rs.getString("image_name"));
				addToCartBean.setPname(rs.getString("product_name"));
				list.add(addToCartBean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	public static void deleteFromCart(int add_cart_id) {
		try {
			Connection conn = ConnectionDB.getConnection();
			String insertQuery = "DELETE FROM `tbl_addtocart` WHERE  `add_cart_id` = ?";
			PreparedStatement ps = conn.prepareStatement(insertQuery);
			ps.setInt(1, add_cart_id);
			int i = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	

	public static List<OrderBean> getOrderList(int userId){
		List<OrderBean> list = new ArrayList<OrderBean>();
		try {
			Connection conn = ConnectionDB.getConnection();
			String selectQuery = "SELECT c.image_name, c.quantity, c.add_cart_id, c.product_name, o.billing_address,o.order_status_name,o.total_amount, o.order_id FROM `tbl_addtocart` as c inner join tbl_order o on c.add_cart_id = o.add_cart_id WHERE c.user_master_id=?";
			PreparedStatement ps = conn.prepareStatement(selectQuery);
			ps.setInt(1, userId);

			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				OrderBean orderBean = new OrderBean();
				orderBean.setImageName(rs.getString("image_name"));
				orderBean.setQty(rs.getInt("quantity"));
				orderBean.setCartId(rs.getInt("add_cart_id"));
				orderBean.setProductName(rs.getString("product_name"));
				orderBean.setBillingAddress(rs.getString("billing_address"));
				orderBean.setStatusName(rs.getString("order_status_name"));
				orderBean.setTotalAmount(rs.getString("total_amount"));
				orderBean.setOrderId(rs.getInt("order_id"));
				list.add(orderBean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}

	
	
}
