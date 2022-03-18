package controller.seller;

import dao.ShopDao;
import model.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-registration")
public class SellerSignUp extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Shop shop = new Shop();
        shop.setUserName(req.getParameter("username").toString());
        shop.setName(req.getParameter("name").toString());
        shop.setEmail(req.getParameter("email").toString());
        shop.setPhone(req.getParameter("phone").toString());
        shop.setPassword(req.getParameter("password").toString());

        ShopDao shopDao = new ShopDao();
        if (shopDao.newShop(shop)){
            resp.sendRedirect("seller-signin");
        } else {
            resp.sendRedirect("seller-signup");
        }
    }
}
