package com.web.controller;

import org.json.JSONObject;

public class JsonValue {
	public static void main(String args[]) {

		String str = "{'amount':50000,'amount_paid':0,'notes':[],'created_at':1679727842,'amount_due':50000,'currency':'INR','receipt':'order_rcptid_Demo_11','id':'order_LVfTqMal6AFgPc','entity':'order','offer_id':null,'status':'created','attempts':0}";
		JSONObject orderRequest = new JSONObject(str);
		System.out.println("Testing..."+orderRequest.getString("id"));
	}

}
