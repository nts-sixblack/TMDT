package controller.user;

import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user")
public class UserInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        session.removeAttribute("user");
        String email = session.getAttribute("email").toString();

        UserDao userDao = new UserDao();
        session.setAttribute("user",userDao.findUser(email));

        req.getRequestDispatcher("WEB-INF/jsp/account-edit.jsp").forward(req, resp);
    }
}
