package controller.seller;

import dao.ProductDao;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/seller-all-product")
// hiển thị danh sách các sản phẩm của shop
public class SellerAllProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        ProductDao productDao = new ProductDao();
        List<Product> list = new ArrayList<Product>();
        list = productDao.findListProductShopId(shopId);
        req.setAttribute("list", list);
        req.setAttribute("countProduct", list.size());

        req.getRequestDispatcher("WEB-INF/jsp/seller-allproduct.jsp").forward(req, resp);
    }
}
