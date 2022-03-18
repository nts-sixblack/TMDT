package controller.user;

import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/user-update-information")
public class UserUpdateInformation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        User user = new User();
        user.setId(Integer.parseInt(req.getParameter("id")));
        user.setName(req.getParameter("name").toString());
        user.setPhone(req.getParameter("phone").toString());
        user.setEmail(req.getParameter("email").toString());
        user.setGender(Integer.parseInt(req.getParameter("gender")));
        HttpSession session = req.getSession();

        UserDao userDao = new UserDao();
        if (userDao.updateInformation(user)){
            resp.sendRedirect("user");
        } else {
            resp.sendRedirect("home");
        }

    }
}
