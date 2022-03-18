package controller.staff;

import dao.ShipperDao;
import model.Shipper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/staff-login")
public class Login extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                req.setCharacterEncoding("UTF-8");

                req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-login.jsp").forward(req, resp);
        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
                req.setCharacterEncoding("UTF-8");
                HttpSession session = req.getSession();
                String userName = req.getParameter("email");
                String password = req.getParameter("password");
                ShipperDao shipperDao = new ShipperDao();
                Shipper shipper = new Shipper();
                shipper = shipperDao.login(userName, password);
                if (shipper == null){
                        req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-login.jsp").forward(req, resp);
                } else {
                        session.setAttribute("shipper", shipper);
                        resp.sendRedirect("staff-delivering");
//                        req.getRequestDispatcher("WEB-INF/jsp/staff-ship/staff-delivering.jsp").forward(req, resp);
                }
        }
}
