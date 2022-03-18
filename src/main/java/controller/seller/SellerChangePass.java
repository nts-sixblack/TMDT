package controller.seller;

import dao.ShopDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/seller-changepass-controller")
public class SellerChangePass extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());

        String oldPass = req.getParameter("oldPassword").toString();
        String newPass = req.getParameter("newPassword").toString();
        ShopDao shopDao = new ShopDao();
        if (shopDao.checkPass(shopId, oldPass)){
            shopDao.updatePass(shopId, newPass);
            resp.sendRedirect("seller-order");
        } else {
            resp.sendRedirect("seller-changepass");
        }
    }
}
