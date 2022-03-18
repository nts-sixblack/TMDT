package controller.user;

import dao.AddressDao;
import model.Address;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/add-address-controller")
public class UserAddAddressController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        Address address = new Address();
        address.setEmail(req.getParameter("email").toString());
        address.setName(req.getParameter("name").toString());
        address.setPhone(req.getParameter("phone").toString());
        address.setWardId(Integer.parseInt(req.getParameter("ward").toString()));
        address.setDecription(req.getParameter("decription").toString());

        AddressDao addressDao = new AddressDao();
        addressDao.newAddress(address);
        resp.sendRedirect("user-address");

    }
}
