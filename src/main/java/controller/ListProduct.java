package controller;

import dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listproduct")
// Hiển thị list các sản phẩm
public class ListProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int categoryId = 0;
        String name = "";

//        nếu tìm danh sách sản phẩm theo CategoryId
        if (req.getParameter("categoryId") != null){
            categoryId = Integer.parseInt(req.getParameter("categoryId").toString());
            ProductDao productDao = new ProductDao();

            req.setAttribute("listProduct", productDao.findListProductCategoryId(categoryId));
            req.getRequestDispatcher("WEB-INF/jsp/product-portfolio-form.jsp").forward(req, resp);
        }
//        Nếu tìm danh sách sản phẩm theo tên
        if (req.getParameter("name") != null){
            name =req.getParameter("name").toString();
            ProductDao productDao = new ProductDao();
            req.setAttribute("listProduct", productDao.findListProduct(name));
            req.getRequestDispatcher("WEB-INF/jsp/product-portfolio-form.jsp").forward(req, resp);
        }

    }
}
