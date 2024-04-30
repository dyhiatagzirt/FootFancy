package com.footfancy.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PayementServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String totalPrice = request.getParameter("totalPrice");

		request.setAttribute("totalPrice", totalPrice);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/card_form.jsp");
		dispatcher.forward(request, response);
	}

}
