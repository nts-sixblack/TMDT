package controller.seller;

import dao.AddressDao;
import model.Address;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/seller-create-address-controller")
public class SellerCreateAddressController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        Address address = new Address();
        address.setShopId(shopId);
        address.setName(req.getParameter("name"));
        address.setPhone(req.getParameter("phone"));
        address.setWardId(Integer.parseInt(req.getParameter("ward")));
        address.setDecription(req.getParameter("decription"));

        AddressDao addressDao = new AddressDao();
        addressDao.newAddressShop(address);

        resp.sendRedirect("seller-address");
    }
}
