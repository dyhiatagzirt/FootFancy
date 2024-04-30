package com.footfancy.servlet;

import com.footfancy.beans.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class RemoveFromBasketServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserInfo user = (UserInfo) session.getAttribute("user");

		int basketId = Integer.parseInt(request.getParameter("basketId"));

		user.getBasket()
				.removeIf(b -> b.getId() == basketId);
		session.setAttribute("user", user);
		response.sendRedirect(request.getContextPath() + "/displayBasket");
	}
}
