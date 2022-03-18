package controller.seller;

import dao.OrderItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

// update status orderitem from chờ lấy hàng sang đang giao
@WebServlet("/seller-product-orderitem")
public class SellerProductOrderItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int orderItemId = Integer.parseInt(req.getParameter("orderItemId"));
        OrderItemDao orderItemDao = new OrderItemDao();
//        chuyển trang thái status order sang 5: trạng thái đã chuyển hàng cho kho
        orderItemDao.updateStatusOrder(orderItemId, 5);

        resp.sendRedirect("seller-to-ship");
    }
}
