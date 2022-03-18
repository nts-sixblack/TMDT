package controller.seller;

import dao.OrderItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-confirm-orderitem")
public class SellerConfirmOrderItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int orderItemId = Integer.parseInt(req.getParameter("orderItemId").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
//        chuyển status của order sang 1: trạng thái đã xác nhận mặt hàng
        orderItemDao.updateStatusOrder(orderItemId, 1);

        resp.sendRedirect("seller-to-ship");
    }
}
