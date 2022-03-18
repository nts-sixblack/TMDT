package controller.user;

import dao.CardDao;
import dao.CardItemDao;
import dao.UserDao;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class UserSignIn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();

        UserDao userDao = new UserDao();
        User user = userDao.checkLogin(username, password);
        CardDao cardDao = new CardDao();
        CardItemDao cardItemDao = new CardItemDao();
        if (user != null){
            session.setAttribute("user", user);
            session.setAttribute("email", user.getEmail());
            session.setAttribute("name", user.getName());
            session.setAttribute("login", 1);
            int cardId = cardDao.findCard(user.getEmail());
            session.setAttribute("cartId", cardId);
            session.setAttribute("countCartItem", cardItemDao.countCartItem(cardId));
            resp.sendRedirect("home");
        } else {
            resp.sendRedirect("sign-in");
        }
    }
}
