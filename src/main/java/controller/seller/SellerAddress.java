package controller.seller;

import dao.AddressDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/seller-address")
public class SellerAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());

        AddressDao addressDao = new AddressDao();
        req.setAttribute("list", addressDao.loadListAddressShop(shopId));
        req.setAttribute("count", addressDao.countAddressShop(shopId));
        req.getRequestDispatcher("WEB-INF/jsp/seller-address.jsp").forward(req, resp);
    }
}
