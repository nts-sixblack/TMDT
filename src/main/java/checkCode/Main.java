package checkCode;

import connect.Data;

import java.sql.Connection;

public class Main {
    public static void main(String[] args) {

//        ProductDao productDao = new ProductDao();
//        productDao.deleteProduct(29);
//        OrderDao orderDao = new OrderDao();
//        List<Order> list = new ArrayList<Order>();
//        list = orderDao.findListOrderByShip();
//        System.out.println(list.size());
//        for (Order order:list){
//            List<OrderItem> orderItemList = new ArrayList<OrderItem>();
//            orderItemList = order.getListOrder();
//            for (OrderItem orderItem:orderItemList){
//                System.out.println("mã đơn hàng: "+orderItem.getId());
//                System.out.println("người nhân: "+order.getName());
//                System.out.println("số điện thoại: "+order.getPhone());
//                System.out.println("giao hàng từ: "+order.getShopAddress());
//                System.out.println("giao hàng đến: "+order.getAddress());
//                System.out.println("số lượng: "+orderItem.getNumberProduct());
//                System.out.println("giá: "+orderItem.getPrice());
//                System.out.println("phí giao hàng: "+order.getShipMoney());
//
//                System.out.println("++++++++++++++");
//            }
//            System.out.println("-------------------------------------------");
//        }
//
//        OrderDao orderDao = new OrderDao();
//        orderDao.findListOrderByShip();

//        OrderDao orderDao = new OrderDao();
//        List<Order> list = new ArrayList<Order>();
//        list = orderDao.findListOrderByShip();
//        for(Order order:list){
//            System.out.println(order.getId());
//            System.out.println(order.getAddress());
//
//        }

//        ShipDao shipperDao = new ShipDao();
//        if (shipperDao.login("vanchuyen@gmail.com", "123456789")!=null){
//            System.out.println("ok");
//        } else {
//            System.out.println("false");
//        }

        try {
            Connection connection = Data.getConnection();
            System.out.println(connection);
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
