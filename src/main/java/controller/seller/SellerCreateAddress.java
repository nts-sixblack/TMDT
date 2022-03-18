package controller.seller;

import dao.WardDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-create-address")
public class SellerCreateAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        WardDao wardDao = new WardDao();
        req.setAttribute("list", wardDao.listProvince());
        req.getRequestDispatcher("WEB-INF/jsp/seller-create-address.jsp").forward(req, resp);
    }
}
