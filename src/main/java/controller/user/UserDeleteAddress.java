package controller.user;

import dao.AddressDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user-delete-address")
public class UserDeleteAddress extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        int addressId = Integer.parseInt(req.getParameter("addressId").toString());
        AddressDao addressDao = new AddressDao();
        addressDao.deleteAddress(addressId);
        resp.sendRedirect("user-address");
    }
}
