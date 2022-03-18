package controller.shipper;

import dao.ShipDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/shipper-login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        req.getRequestDispatcher("WEB-INF/jsp/ship/shipper-login.jsp").forward(req, resp);
//        resp.sendRedirect("shipper-newOrder");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        ShipDao shipperDao = new ShipDao();
        if (shipperDao.login(email, password)!= null){
            resp.sendRedirect("shipper-newOrder");
        } else {
            resp.sendRedirect("home");
        }
    }
}
