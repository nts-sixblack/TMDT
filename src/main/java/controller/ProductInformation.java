package controller;

import dao.ProductDao;
import dao.VoteDao;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/product")
// Thông tin đầy đủ của 1 sản phẩm
public class ProductInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int productId = Integer.parseInt(req.getParameter("productId").toString());
        ProductDao productDao = new ProductDao();
        Product product = new Product();
        product = productDao.findProduct(productId);
        VoteDao voteDao = new VoteDao();

        req.setAttribute("product", product);
        req.setAttribute("listProduct", productDao.findListProductCategoryId(product.getCategoryId()));
        req.setAttribute("listComment", voteDao.listComment(productId));
        req.setAttribute("averageStar", voteDao.averageStar(productId));

        req.getRequestDispatcher("WEB-INF/jsp/product.jsp").forward(req, resp);
    }
}
