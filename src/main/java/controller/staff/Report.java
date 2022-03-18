package controller.staff;

import dao.OrderDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/staff-report")
public class Report extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int orderId = Integer.parseInt(req.getParameter("id").toString());
        OrderDao orderDao = new OrderDao();
        req.setAttribute("order", orderDao.findOrder(orderId));

        req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-report.jsp").forward(req, resp);
    }
}
