package com.footfancy.servlet;

import com.footfancy.beans.UserInfo;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "DisplayBasketServlet", urlPatterns = { "/displayBasket" })
public class DisplayBasketServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserInfo user = (UserInfo) session.getAttribute("user");

        request.setAttribute("shoesInBasket", user.getBasket());
        RequestDispatcher dispatcher = request.getRequestDispatcher("basket.jsp");
        dispatcher.forward(request, response);
    }
}
