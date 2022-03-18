package controller.user;

import dao.OrderDao;
import model.Order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user-order-product")
public class UserOrderProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        String email = session.getAttribute("email").toString();
        OrderDao orderDao = new OrderDao();
//        1 là trạng thái status đang lấy hàng
        List<Order> list = new ArrayList<Order>();
        list = orderDao.findListOrder(email, 1);
        req.setAttribute("list", list);
        req.setAttribute("count", list.size());

        req.getRequestDispatcher("WEB-INF/jsp/account-order-product.jsp").forward(req, resp);
    }
}
