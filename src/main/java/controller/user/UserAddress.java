package controller.user;

import dao.AddressDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user-address")
public class UserAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        String email  = session.getAttribute("email").toString();
        AddressDao addressDao = new AddressDao();
        req.setAttribute("list", addressDao.loadListAddress(email));

        req.getRequestDispatcher("WEB-INF/jsp/account-address.jsp").forward(req, resp);
    }
}
