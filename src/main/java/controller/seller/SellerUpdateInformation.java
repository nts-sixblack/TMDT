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

@WebServlet("/seller-update-information")
public class SellerUpdateInformation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        Shop shop = new Shop();
        shop.setId(Integer.parseInt(session.getAttribute("shopId").toString()));
        shop.setUserName(req.getParameter("userName").toString());
        shop.setName(req.getParameter("name").toString());
        shop.setPhone(req.getParameter("phone").toString());
        shop.setEmail(req.getParameter("email").toString());
        shop.setAddress(req.getParameter("address").toString());

        ShopDao shopDao = new ShopDao();
        if (shopDao.updateShop(shop)){
            resp.sendRedirect("seller-information");
        } else {
            req.getRequestDispatcher("WEB-INF/jsp/seller-information.jsp").forward(req, resp);
        }
    }
}
