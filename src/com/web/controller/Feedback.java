package com.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.web.bean.FeedbackBean;
import com.web.bean.LoggerInfo;
import com.web.dao.FeedbackDao;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public Feedback() {
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
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String feedback_message;
		int productId;
		
		HttpSession session = request.getSession();

		feedback_message = request.getParameter("feedback_message").toString();
		LoggerInfo loggerInfo = (LoggerInfo)session.getAttribute("loggerInfo");
		productId = 12;
		
		FeedbackBean bean = new FeedbackBean();
		bean.setFeedback_message(feedback_message);
		bean.setUser_master_id(loggerInfo.getUserId());
		bean.setProduct_id(productId);
		FeedbackDao.Feedback(bean);

		
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	
	}

}
