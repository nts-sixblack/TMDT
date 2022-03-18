package controller.user;

import dao.OrderItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/vote-product")
public class UserVoteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int orderItemId = Integer.parseInt(req.getParameter("orderItemId").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
        req.setAttribute("orderItem", orderItemDao.findOrderItemById(orderItemId));

        req.getRequestDispatcher("WEB-INF/jsp/account-vote-product.jsp").forward(req, resp);
    }
}
