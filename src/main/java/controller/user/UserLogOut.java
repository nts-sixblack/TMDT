package controller.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/log-out")
public class UserLogOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        session.removeAttribute("user");
        session.removeAttribute("email");
        session.removeAttribute("name");
        session.removeAttribute("login");
        session.removeAttribute("cartId");
        session.removeAttribute("countCartItem");

        resp.sendRedirect("home");
    }
}
