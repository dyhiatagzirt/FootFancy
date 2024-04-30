package com.footfancy.servlet;

import com.footfancy.beans.Shoes;
import com.footfancy.beans.UserInfo;
import com.footfancy.database.ShoesDAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class GetAllShoesServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		if (session.getAttribute("user") == null) {
			UserInfo user = new UserInfo();
			session.setAttribute("user", user);
		}

		try {
			List<Shoes> shoesList = ShoesDAO.getAllShoes();
			request.setAttribute("shoesList", shoesList);
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			throw new ServletException("Error retrieving shoes", e);
		}
	}
}
