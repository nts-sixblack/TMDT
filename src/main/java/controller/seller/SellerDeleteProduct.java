package controller.seller;

import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-delete-product")
public class SellerDeleteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int productId = Integer.parseInt(req.getParameter("productId").toString());
        System.out.println(productId);
        ProductDao productDao = new ProductDao();
        productDao.deleteProduct(productId);

        System.out.println(req.getRequestURL());
        System.out.println(req.getRequestURI());
        resp.sendRedirect("seller-all-product");
    }
}
