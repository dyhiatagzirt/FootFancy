package com.footfancy.servlet;

import com.footfancy.beans.*;
import com.footfancy.database.ShoesDAO;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;

public class AddToBasketServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserInfo user = (UserInfo) session.getAttribute("user");

        try {
            String shoeId = request.getParameter("shoeId");
            int size = Integer.parseInt(request.getParameter("size"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // Supposons que getShoeById récupère l'objet Shoes correspondant
            Shoes shoe = ShoesDAO.getShoeById(shoeId);
            ShoesInfo shoesInfo = new ShoesInfo(shoe, size);

            user.addBasket(shoesInfo, quantity);
            session.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/displayBasket");
        } catch (Exception e) {
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
