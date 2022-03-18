package controller.user;

import dao.CardItemDao;
import model.CardItem;
import model.ValueItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/addProduct")
// Thêm sản phẩm vào giỏ hàng
public class AddProductCart extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        CardItem cardItem = new CardItem();
        HttpSession session = req.getSession();
        int cardId = Integer.parseInt(session.getAttribute("cartId").toString());

        int productId = Integer.parseInt(req.getParameter("productId").toString());
        int cartId = Integer.parseInt(session.getAttribute("cartId").toString());
        int price = Integer.parseInt(req.getParameter("price").toString());
        int countProperties = Integer.parseInt(req.getParameter("countProperties").toString());
        int number = Integer.parseInt(req.getParameter("inputNumber").toString());
        String nameProduct = req.getParameter("nameProduct").toString();

        cardItem.setCardId(cartId);
        cardItem.setProductId(productId);
        cardItem.setPrice(price);
        cardItem.setNumberProduct(number);
        cardItem.setNameProduct(nameProduct);

        List<ValueItem> list = new ArrayList<ValueItem>();
        if (countProperties > 0){
            for (int i = 0; i<countProperties; i++){
                ValueItem valueItem = new ValueItem();
                valueItem.setValueName(req.getParameter("nameValue"+i));
                valueItem.setPropertiesName(req.getParameter("nameProperties"+i));
                valueItem.setValueId(Integer.parseInt(req.getParameter("idValue"+i)));

                list.add(valueItem);
            }
        }
        cardItem.setListValue(list);
        CardItemDao cardItemDao = new CardItemDao();
        if (cardItemDao.newCardItem(cardItem)){
            session.setAttribute("countCartItem", cardItemDao.countCartItem(cardId));
            resp.sendRedirect("cart");
        } else {
            resp.sendRedirect("home");
        }

    }
}
