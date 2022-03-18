package controller.shipper;

import dao.OrderDao;
import model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/shipper-newOrder")
public class newOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        OrderDao orderDao = new OrderDao();
        List<Order> list = new ArrayList<Order>();
        list = orderDao.findListOrderByShip();
        req.setAttribute("list", list);

        req.getRequestDispatcher("WEB-INF/jsp/ship/shipper-newOrder.jsp").forward(req, resp);
    }
}
