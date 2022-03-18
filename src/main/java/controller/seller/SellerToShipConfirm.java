package controller.seller;

import dao.OrderItemDao;
import model.OrderItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/seller-to-ship")
public class SellerToShipConfirm extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
        List<OrderItem> list = new ArrayList<OrderItem>();
//        0 là trạng thái của mặt hàng chờ xác nhận
//        0 là trạng thái của đơn hàng chờ xác nhận
        list = orderItemDao.listOrderItemByShopId(shopId, 0, 0);
        req.setAttribute("list",list);
        req.setAttribute("count", list.size());

        req.getRequestDispatcher("WEB-INF/jsp/seller-toship.jsp").forward(req, resp);
    }
}
