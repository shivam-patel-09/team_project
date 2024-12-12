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
import com.web.dao.SignUpDao;
import com.web.dao.addToCartDao;

/**
 * Servlet implementation class addToCart
 */
@WebServlet("/addToCart")
public class addToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addToCart() {
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

		List<AddToCartBean> cartBean = addToCartDao.getAddToCartList(loggerInfo.getUserId());
		
		request.setAttribute("addToCartList", cartBean);
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String imageName, pname;
		int productQty, productPrice, productId;
		
		productQty = Integer.parseInt(request.getParameter("quantity").toString());
		productPrice = Integer.parseInt(request.getParameter("amount").toString());
		productId = 12;
		 imageName = request.getParameter("imageName").toString();
		 pname=request.getParameter("pname").toString();
		System.out.println("Pname : "+pname);

		HttpSession session = request.getSession();
		LoggerInfo loggerInfo = (LoggerInfo)session.getAttribute("loggerInfo");
		addToCartDao.addToCart(productQty, productPrice, productId, loggerInfo.getUserId(), imageName, pname);
		List<AddToCartBean> list = addToCartDao.getAddToCartList(loggerInfo.getUserId());
		request.setAttribute("addToCartList", list);
		loggerInfo = SignUpDao.getUpdatedCartQty(loggerInfo);
		RequestDispatcher rd = request.getRequestDispatcher("fancy1.jsp");
		rd.forward(request, response);
	}
}
