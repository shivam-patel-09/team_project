package com.web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.bean.AppConstant;
import com.web.bean.SignUpBean;
import com.web.dao.SendMailSSL;
import com.web.dao.SignUpDao;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String User_contact = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user_first_name, user_last_name, user_email_id, user_contact, user_DOB, user_password, user_address;

		user_first_name = request.getParameter("firstname").toString();
		user_last_name = request.getParameter("lasttname").toString();
		user_email_id = request.getParameter("emailId").toString();
		user_contact = request.getParameter("contactNo").toString();
		user_DOB = request.getParameter("dob").toString();
		user_password = request.getParameter("password").toString();
		user_address = request.getParameter("address").toString();
		
		SignUpBean bean = new SignUpBean();
		bean.setUser_first_name(user_first_name);
		bean.setUser_last_name(user_last_name);
		bean.setUser_email_id(user_email_id);
		bean.setUser_contact(user_contact);
		bean.setUser_DOB(user_DOB);
		bean.setUser_password(user_password);
		bean.setUser_address(user_address);
		
		
		
		SignUpDao.signUp(bean);
		String body = "Dear "+user_first_name + ", Thank you for register in our site. We provide best offer and service for you.";
		SendMailSSL.send(AppConstant.fromMail,AppConstant.fromPassword,user_email_id,"Registration Successfull",body); 
		response.sendRedirect("login.jsp");
	}

}
