package controller.user;

import dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user-changepass-controller")
public class UserUpdatePassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        HttpSession session = req.getSession();
        String email = session.getAttribute("email").toString();

        UserDao userDao = new UserDao();
        if (userDao.checkPass(email, oldPassword)){
            userDao.updatePass(email, newPassword);
            resp.sendRedirect("user");
        } else {
            resp.sendRedirect("home");
        }

    }
}
