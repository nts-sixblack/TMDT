package controller.user;

import dao.CardItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteCartItem")
public class DeleteCartItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int cartItemId = Integer.parseInt(req.getParameter("cartItemId").toString());
        CardItemDao cardItemDao = new CardItemDao();
        if (cardItemDao.deleteCardItem(cartItemId)){
            resp.sendRedirect("cart");
        } else {
            resp.sendRedirect("home");
        }
    }
}
