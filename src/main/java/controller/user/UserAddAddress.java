package controller.user;

import dao.WardDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user-add-address")
public class UserAddAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        WardDao wardDao = new WardDao();
        req.setAttribute("listProvince", wardDao.listProvince());
        req.getRequestDispatcher("WEB-INF/jsp/account-create-address.jsp").forward(req, resp);
    }
}
