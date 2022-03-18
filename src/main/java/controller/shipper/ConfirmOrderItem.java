package controller.shipper;

import dao.OrderItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/shipper-confirm")
public class ConfirmOrderItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int orderItemId = Integer.parseInt(req.getParameter("id").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
//        2 là trạng thái đã giao cho shipper
        orderItemDao.updateStatusOrder(orderItemId, 2);

        resp.sendRedirect("shipper-newOrder");
    }
}
