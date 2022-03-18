package controller.user;

import dao.AddressDao;
import dao.CardItemDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/cart")
// Hiển thị các sản phẩm có trong cửa hàng
public class Cart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        int cartId = Integer.parseInt(session.getAttribute("cartId").toString());
        String email = session.getAttribute("email").toString();

        CardItemDao cardItemDao = new CardItemDao();
        req.setAttribute("list", cardItemDao.loadCardItem(cartId));
        AddressDao addressDao = new AddressDao();
        req.setAttribute("address", addressDao.findAddressByEmail(email));
//        req.setAttribute("listAddress", addressDao.loadListAddress(email));

        req.getRequestDispatcher("WEB-INF/jsp/cart.jsp").forward(req, resp);
    }
}
