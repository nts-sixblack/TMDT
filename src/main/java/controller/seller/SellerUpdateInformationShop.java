package controller.seller;

import dao.ImageShopDao;
import dao.ShopDao;
import model.ImageShop;
import model.Shop;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/seller-update-information-shop")
public class SellerUpdateInformationShop extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        Shop shop = new Shop();
        ShopDao shopDao = new ShopDao();
        ImageShopDao imageShopDao = new ImageShopDao();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());

        String avatar = req.getParameter("avatar").toString();
        String background = req.getParameter("background").toString();
        if (!avatar.equals("")){
            shopDao.updateAvatar(avatar, shopId);
        }
        if (!background.equals("")){
            shopDao.updateBackground(background, shopId);
        }

        int quantityImage = Integer.parseInt(req.getParameter("quantityImage").toString());
        List<ImageShop> list = new ArrayList<ImageShop>();
        for (int i = 1; i<=quantityImage; i++){
            ImageShop imageShop = new ImageShop();
            imageShop.setImage(req.getParameter("nameImage"+i));
            list.add(imageShop);
        }
        imageShopDao.insertImage(shopId, list);

        resp.sendRedirect("seller-profile");
    }
}
