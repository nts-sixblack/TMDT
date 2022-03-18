package controller.staff;

import dao.OrderDao;
import model.Order;
import model.Shipper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/staff-delivering")
public class Delivering extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        Shipper shipper = (Shipper) session.getAttribute("shipper");
        int wardId = shipper.getWard();
        System.out.println(wardId);
        OrderDao orderDao = new OrderDao();
        List<Order> list = new ArrayList<Order>();
        list = orderDao.findListOrderByShipper(wardId);
        req.setAttribute("list", list);
        req.setAttribute("count", list.size());
        System.out.println(list.size());

        req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-delivering.jsp").forward(req, resp);
    }

}
