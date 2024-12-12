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

/**
 * Servlet implementation class loginCheck
 */
@WebServlet("/loginCheck")
public class loginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginCheck() {
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
		String userName = request.getParameter("userName").toString();
		String userPassword = request.getParameter("userPassword").toString();
		
		/*LoggerInfo info = SignUpDao.loginCheck(userName, userPassword);
	
		request.setAttribute("info", info);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);*/
		
		LoggerInfo info = SignUpDao.loginCheck(userName, userPassword);
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("loggerInfo", info);
		request.setAttribute("info", info);
		RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}
	
	

}
