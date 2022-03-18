package controller.user;

import dao.OrderDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user-order")
public class UserOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        String email = session.getAttribute("email").toString();
        OrderDao orderDao = new OrderDao();
//        0 là trạng thái status chờ xác nhận
        req.setAttribute("list1", orderDao.findListOrder(email, 0));
//        1 là trạng thái status đang chờ lấy hàng
        req.setAttribute("list2", orderDao.findListOrder(email, 1));
//        2 là trạng thái status đang giao
        req.setAttribute("list3", orderDao.findListOrder(email, 2));
//        3 là trạng thái status đã giao
        req.setAttribute("list4", orderDao.findListOrder(email, 3));
//        4 là trạng thái status đã hủy
        req.setAttribute("list5", orderDao.findListOrder(email, 4));
//        count là tổng số order của người nào đó
        req.setAttribute("count",orderDao.countOrder(email, 0) + orderDao.countOrder(email, 1) + orderDao.countOrder(email, 2) + orderDao.countOrder(email, 3));


        req.getRequestDispatcher("WEB-INF/jsp/account-order.jsp").forward(req, resp);
    }
}
