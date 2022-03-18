package controller.seller;

import dao.ShopDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/seller-profile")
public class SellerProfile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        ShopDao shopDao = new ShopDao();
        req.setAttribute("shop", shopDao.findShop(shopId));

        req.getRequestDispatcher("WEB-INF/jsp/seller-profile.jsp").forward(req, resp);
    }
}
