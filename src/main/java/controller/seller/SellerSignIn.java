package controller.seller;

import dao.ShopDao;
import model.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/seller-login")
public class SellerSignIn extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        ShopDao shopDao = new ShopDao();
        Shop shop = new Shop();

        String email = req.getParameter("email").toString();
        String password = req.getParameter("password").toString();
        shop = shopDao.checkLogin(email, password);
        if (shop != null){
            resp.sendRedirect("seller-order");
            HttpSession session = req.getSession();
            session.setAttribute("shopId", shop.getId());
            session.setAttribute("shopName", shop.getName());
        } else {
            resp.sendRedirect("seller-signin");
        }
    }
}
