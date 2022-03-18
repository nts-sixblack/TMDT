package controller.seller;

import dao.CategoryDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-addproduct")
// gọi đến trang thêm mới sản phẩm
public class SellerAddProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        CategoryDao categoryDao = new CategoryDao();
        req.setAttribute("listCategory", categoryDao.loadCategory());

        req.getRequestDispatcher("WEB-INF/jsp/seller-addproduct.jsp").forward(req, resp);
    }
}
