package controller.seller;

import dao.OrderItemDao;
import model.OrderItem;
import model.ValueItem;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/seller-to-ship-product")
public class SellerToShipProduct extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        HttpSession session = req.getSession();
        int shopId = Integer.parseInt(session.getAttribute("shopId").toString());
        OrderItemDao orderItemDao = new OrderItemDao();
        List<OrderItem> list = new ArrayList<OrderItem>();
//        1 là trạng thái của mặt hàng chờ lấy hangf
//        0 là trạng thái của đơn hàng đang chờ xác nhận (tất cả các mmawjthangf của đơn hàng đã được xác nhận thì đơn hàng mới được xác nhận)
        list = orderItemDao.listOrderItemByShopId(shopId, 1, 0);
        list.addAll(orderItemDao.listOrderItemByShopId(shopId, 1, 1));

        PrintWriter out = resp.getWriter();
        out.println("" +
                "            <div class=\"navbar\">\n" +
                "                <ul>\n" +
                "                    <li>\n" +
                "                        <a href=\"seller-to-ship\">\n" +
                "                            Chờ xác nhận\n" +
                "                        </a>\n" +
                "                    </li>\n" +
                "                    <li>\n" +
                "                        <button onclick=\"product()\">\n" +
                "                            <a href=\"#\" class=\"is-active\">\n" +
                "                                Chờ lấy hàng\n" +
                "                            </a>\n" +
                "                        </button>\n" +
                "                    </li>\n" +
                "                    <li>\n" +
                "                        <button onclick=\"delivering()\">\n" +
                "                            <a href=\"#\">\n" +
                "                                Đang giao\n" +
                "                            </a>\n" +
                "                        </button>\n" +
                "                    </li>\n" +
                "                    <li>\n" +
                "                        <button onclick=\"delivered()\">\n" +
                "                            <a href=\"#\">\n" +
                "                                Đã giao\n" +
                "                            </a>\n" +
                "                        </button>\n" +
                "                    </li>\n" +
                "                    <li>\n" +
                "                        <button onclick=\"cancelled()\">\n" +
                "                            <a href=\"#\">\n" +
                "                                Đơn huỷ\n" +
                "                            </a>\n" +
                "                        </button>\n" +
                "                    </li>\n" +
                "                </ul>\n" +
                "            </div>\n" +
                "            <div class=\"box_content\">\n" +
                "                <div class=\"list-product\">\n" +
                "                    <ul>\n" +
                "                        <li>\n" +
                "                            Sản phẩm\n" +
                "                        </li>\n" +
                "                        <li>\n" +
                "                            Số lượng\n" +
                "                        </li>\n" +
                "                        <li>\n" +
                "                            Trạng thái\n" +
                "                        </li>\n" +
                "                        <li>\n" +
                "                            Vận chuyển\n" +
                "                        </li>\n" +
                "                    </ul>\n");
                if (list.size() > 0){
                    out.println("<div class=\"box-card-product\">\n");
                    for (OrderItem orderItem:list){
                        out.println("" +
                                "                                    <div class=\"card-product\">\n" +
                                "                                        <img src=\""+orderItem.getImage()+"\">\n" +
                                "                                        <p>"+orderItem.getNameProduct());
                                for (ValueItem valueItem:orderItem.getListValue()){
                                    out.println(valueItem.getValueName()+" ");
                                }
//                                "<c:forEach var=\"valueItem\" items=\"${orderItem.listValue}\"><c:out value=\"${valueItem.valueName}\"/></c:forEach>" +
                                out.println(""+
                                " </p>\n" +
                                "                                        <span class=\"gross-product\">\n" + orderItem.getNumberProduct()+
                                "                                        </span>\n" +
                                "                                        <span class=\"status-product\">\n" +
                                "                                            Chờ lấy hàng\n" +
                                "                                        </span>\n" +
                                "                                        <p class=\"shipping-unit\">\n" +
                                "                                        </p>\n" +
                                "                                            <button class=\"acp\">\n" +
                                "                                                <a href=\"seller-product-orderitem?orderItemId="+orderItem.getId()+"\">\n" +
                                "                                                    Xác nhận\n" +
                                "                                                </a>\n" +
                                "                                            </button>\n" +
                                "                                    </div>");
                    }
                    out.println("</div>");
                } else {
                    out.println("" +
                            "                            <div class=\"empty_order\">\n" +
                            "                                <img src=\"./images/empty_order.png\" alt=\"\">\n" +
                            "                            </div>");
                }
                out.println(""+
                "                </div>\n" +
                "            </div>\n");

    }
}
