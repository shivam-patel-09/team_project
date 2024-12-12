package com.web.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.bean.AddToCartBean;
import com.web.bean.LoggerInfo;
import com.web.bean.OrderBean;
import com.web.dao.addToCartDao;

/**
 * Servlet implementation class orderDetail
 */
@WebServlet("/orderDetail")
public class orderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		LoggerInfo loggerInfo = (LoggerInfo)session.getAttribute("loggerInfo");
		List<OrderBean> list = addToCartDao.getOrderList(loggerInfo.getUserId());
		request.setAttribute("orderList", list);
		RequestDispatcher rd = request.getRequestDispatcher("order.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
