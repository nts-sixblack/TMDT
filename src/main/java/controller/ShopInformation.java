package controller;

import dao.ProductDao;
import dao.ShopDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/shop")
public class ShopInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int shopId = Integer.parseInt(req.getParameter("shopId"));
        ShopDao shopDao = new ShopDao();
        ProductDao productDao = new ProductDao();

        req.setAttribute("list", productDao.findListProductShopId(shopId));
        req.setAttribute("shop", shopDao.findShop(shopId));

        req.getRequestDispatcher("WEB-INF/jsp/shop-store.jsp").forward(req, resp);
    }
}
