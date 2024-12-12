package com.web.controller;

import org.json.JSONObject;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

public class Payment {
	public static String onliePayment()
	{
		String orderId = "";
		try {
			RazorpayClient client = new RazorpayClient("rzp_test_rEARbPmOMhB9x5", "cPJW1HCxxTq6heigXFhKwvPh");
			  JSONObject orderRequest = new JSONObject();
			  orderRequest.put("amount", 123400); // amount in the smallest currency unit
			  orderRequest.put("currency", "INR");
			  orderRequest.put("receipt", "order_rcptid_Batch11_11");

			  Order order = client.Orders.create(orderRequest);
			  String str = order.toString().replaceAll("\"", "");
			  JSONObject getId = new JSONObject(str);
			  orderId = getId.getString("id");
			  System.out.println(""+order);
			  System.out.println("Id..."+getId.getString("id"));
			} catch (RazorpayException e) {
			  // Handle Exception
			  System.out.println(e.getMessage());
			}
		return orderId;
	}
}
