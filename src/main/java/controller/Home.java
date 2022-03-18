package controller;

import dao.ProductDao;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/home")
// Giao diện chính
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        ProductDao productDao = new ProductDao();
        req.setAttribute("list", productDao.findListProductNext(0));

        req.getRequestDispatcher("WEB-INF/jsp/home.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");

        int number = Integer.parseInt(req.getParameter("number").toString());
        List<Product> list = new ArrayList<Product>();
        ProductDao productDao = new ProductDao();
        String string="aaaaaa";
        list = productDao.findListProductNext(number);
        PrintWriter out = resp.getWriter();
        for (Product product: list){
            out.println("<a href=\"product?productId="+product.getId()+"\">" +
                    "<div class=\"card-suggest-products\">\n" +
                    "                <img src=\""+product.getImage().get(0).getImage()+"\">\n" +
                    "                <p class=\"name-card-suggest-products\">"+product.getName()+"</p>\n" +
                    "                <p class=\"price-card-suggest-products\">\n" +
                    "                    <span>"+product.getPrice()+"</span>\n" +
                    "                </p>\n" +
                    "                <span class=\"sold-products-card\">đã bán: 3.2k</span>\n" +
                    "                <span class=\"discount-products-card\">\n" +
                    "                    Giảm 50%\n" +
                    "                </span>\n" +
                    "                <span class=\"hot-products-card\">\n" +
                    "                    Yêu thích\n" +
                    "                </span>\n" +
                    "            </div>" +
                    "</a>");
        }
    }
}
