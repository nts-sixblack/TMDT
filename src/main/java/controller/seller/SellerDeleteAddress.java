package controller.seller;

import dao.AddressDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/seller-delete-address")
public class SellerDeleteAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int addressId = Integer.parseInt(req.getParameter("addressId").toString());
        AddressDao addressDao = new AddressDao();
        addressDao.deleteAddressShop(addressId);
        resp.sendRedirect("seller-address");
    }
}
