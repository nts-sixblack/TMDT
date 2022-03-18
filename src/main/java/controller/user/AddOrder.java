package controller.user;

import dao.CardItemDao;
import dao.OrderDao;
import dao.OrderItemDao;
import dao.UserDao;
import model.CardItem;
import model.Order;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-order")
// Đặt hàng
public class AddOrder extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();

        int countItem = Integer.parseInt(req.getParameter("countItem").toString());
        if (countItem > 0){

            int cardId = Integer.parseInt(session.getAttribute("cartId").toString());
//        get information user
            String email = session.getAttribute("email").toString();
            String address = req.getParameter("address").toString();
            int wardId = Integer.parseInt(req.getParameter("wardId").toString());
            int shipMoney = Integer.parseInt(req.getParameter("ship").toString());

            if(wardId==0){
                resp.sendRedirect("user-address");
            } else {
                UserDao userDao = new UserDao();
                User user = new User();
                user = userDao.findUser(email);
//        create new order
                int totalPrice = Integer.parseInt(req.getParameter("totalPrice"));
                Order order = new Order();
                order.setEmail(email);
                order.setName(user.getName());
                order.setAddress(address);
                order.setTotalPrice(totalPrice);
                order.setStatus(0);
                order.setShipMoney(shipMoney);
                order.setWardId(wardId);
                OrderDao orderDao = new OrderDao();
                int orderId = orderDao.newOrder(order);

                List<CardItem> list = new ArrayList<CardItem>();
                for (int i = 1; i<countItem; i++){
                    CardItem cardItem = new CardItem();
                    CardItem cardItem1 = new CardItem();
                    CardItemDao cardItemDao = new CardItemDao();
                    int idCardItem = Integer.parseInt(req.getParameter("idItem"+i));
                    cardItem1 = cardItemDao.findCard(idCardItem);
                    int numberItem = Integer.parseInt(req.getParameter("numberItem"+i));

                    cardItem.setId(idCardItem);
                    cardItem.setCardId(cardItem1.getCardId());
                    cardItem.setProductId(cardItem1.getProductId());
                    cardItem.setNumberProduct(numberItem);
                    cardItem.setNameProduct(cardItem1.getNameProduct());
                    cardItem.setPrice(cardItem1.getPrice());

                    list.add(cardItem);
                }

                OrderItemDao orderItemDao = new OrderItemDao();
                if (orderItemDao.newOrderItem(list, orderId)){
                    CardItemDao cardItemDao = new CardItemDao();
                    session.setAttribute("countCartItem", cardItemDao.countCartItem(cardId));
                    resp.sendRedirect("user-order");
                } else {
                    resp.sendRedirect("cart");
                }
            }
        } else {
            resp.sendRedirect("cart");
        }


    }
}
