package controller;

import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/search-product")
public class SearchProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String name = req.getParameter("name");
        ProductDao productDao = new ProductDao();
        req.setAttribute("listProduct", productDao.findListProduct(name));

        req.getRequestDispatcher("WEB-INF/jsp/product-portfolio-form.jsp").forward(req, resp);
    }
}
