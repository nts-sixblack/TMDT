package controller.user;

import dao.CardDao;
import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registration")
public class UserSignUp extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        User user = new User();
        user.setName(req.getParameter("name").toString());
        user.setEmail(req.getParameter("email").toString());
        user.setPassword(req.getParameter("password").toString());
        UserDao userDao = new UserDao();
        String email = userDao.newUser(user);
        if (email != ""){
            CardDao cardDao = new CardDao();
            cardDao.newCard(email);
            resp.sendRedirect("sign-in");
        } else {
            resp.sendRedirect("sign-up");
        }
    }
}
