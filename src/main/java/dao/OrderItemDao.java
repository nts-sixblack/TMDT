package dao;

import connect.Data;
import model.CardItem;
import model.OrderItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class OrderItemDao {
    private final String name = Data.name;

    //    tìm kiếm các OrderItem trong order
    public List findOrderItem(int orderId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".orderItem where orderId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderId);
            List<OrderItem> list = new ArrayList<OrderItem>();
            ResultSet resultSet  = preparedStatement.executeQuery();
            while (resultSet.next()){
                ImageProductDao imageProductDao = new ImageProductDao();
                ProductDao productDao = new ProductDao();
                OrderItem orderItem = new OrderItem();
                orderItem.setId(resultSet.getInt(1));
                orderItem.setOrderId(orderId);
                orderItem.setProductId(resultSet.getInt(3));
                orderItem.setNameProduct(productDao.findNameProductById(orderItem.getProductId()));
                orderItem.setNumberProduct(resultSet.getInt(4));
                orderItem.setPrice(resultSet.getInt(5));
                orderItem.setStatus(resultSet.getInt(6));
                orderItem.setImage(imageProductDao.findImage(orderItem.getProductId()));


                ValueItemDao valueItemDao = new ValueItemDao();
                orderItem.setListValue(valueItemDao.findValueItemByOrderItemId(orderItem.getId()));
                list.add(orderItem);
            }

            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public OrderItem findOrderItemById(int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".orderItem where orderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            OrderItem orderItem = new OrderItem();
            ResultSet resultSet  = preparedStatement.executeQuery();
            while (resultSet.next()){
                ImageProductDao imageProductDao = new ImageProductDao();
                ProductDao productDao = new ProductDao();
                orderItem.setId(resultSet.getInt(1));
                orderItem.setProductId(resultSet.getInt(3));
                orderItem.setNameProduct(productDao.findNameProductById(orderItem.getProductId()));
                orderItem.setNumberProduct(resultSet.getInt(4));
                orderItem.setPrice(resultSet.getInt(5));
                orderItem.setStatus(resultSet.getInt(6));
                orderItem.setImage(imageProductDao.findImage(orderItem.getProductId()));

                ValueItemDao valueItemDao = new ValueItemDao();
                orderItem.setListValue(valueItemDao.findValueItemByOrderItemId(orderItem.getId()));
            }

            return orderItem;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    //    thêm orderItem mới
    public boolean newOrderItem(List<CardItem> list, int orderId){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".OrderItem (OrderId, ProductId, number, price, status) values (?, ?, ?, ?, ?) select @@IDENTITY asId";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (CardItem cardItem:list){
                preparedStatement.setInt(1, orderId);
                preparedStatement.setInt(2, cardItem.getProductId());
                preparedStatement.setInt(3, cardItem.getNumberProduct());
                preparedStatement.setInt(4, cardItem.getPrice());
                preparedStatement.setInt(5, 0);

                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()){
                    ValueItemDao valueItemDao = new ValueItemDao();
//                    int orderItemId = resultSet.getInt(1);
                    valueItemDao.addOrder(cardItem.getId(), resultSet.getInt(1));
                    CardItemDao cardItemDao = new CardItemDao();
                    cardItemDao.deleteCardItem(cardItem.getId());
                }
            }

            return  true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

//    cập nhập trạng thái đơn hàng
    public void updateStatusOrder(int orderItemId, int status){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".orderItem set status = ? where orderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, status);
            preparedStatement.setInt(2, orderItemId);
            preparedStatement.executeUpdate();
            ValueDao valueDao = new ValueDao();
            valueDao.reduceNumberValue(orderItemId);
            ProductDetailDao productDetailDao = new ProductDetailDao();
            productDetailDao.reduceNumberProduct(orderItemId);

            OrderDao orderDao = new OrderDao();
            orderDao.checkStatusOrder(orderItemId);

        } catch (Exception e){
            e.printStackTrace();
        }
    }

//    danh sách sản orderItem theo cửa hàng
    public List listOrderItemByShopId(int shopId, int orderItemstatus, int orderStatus){
        try {
            Connection connection = Data.getConnection();
            String sql = "select oi.OrderItemId, pd.name, oi.number, p.productId\n" +
                    "from "+name+".OrderItem oi join Product p on p.ProductId = oi.ProductId\n" +
                    "join "+name+".Shop s on s.ShopId = p.ShopId\n" +
                    "join "+name+".ProductDetail pd on pd.ProductDetailId = p.ProductDetailId\n" +
                    "join "+name+".Orderr o on o.OrderId = oi.OrderId\n" +
                    "where s.ShopId = ? and oi.status = ? and o.status = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            preparedStatement.setInt(2, orderItemstatus);
            preparedStatement.setInt(3, orderStatus);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<OrderItem> list = new ArrayList<OrderItem>();
            while (resultSet.next()){
                OrderItem orderItem = new OrderItem();
                orderItem.setId(resultSet.getInt(1));
                orderItem.setNameProduct(resultSet.getString(2));
                orderItem.setNumberProduct(resultSet.getInt(3));
                int productId = resultSet.getInt(4);
                ImageProductDao imageProductDao = new ImageProductDao();
                orderItem.setImage(imageProductDao.findImage(productId));
                ValueItemDao valueItemDao = new ValueItemDao();
                orderItem.setListValue(valueItemDao.findValueItemByOrderItemId(orderItem.getId()));

                list.add(orderItem);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

//    list các orderItem chưa đánh giá
    public List listProductNotVote(String email){
        try {
            Connection connection = Data.getConnection();
            String sql = "select oi.OrderItemId, oi.ProductId, oi.number, oi.price, oi.status\n" +
                    "from "+name+".OrderItem oi join "+name+".Orderr o on o.OrderId = oi.OrderId\n" +
                    "where o.status = 3 and o.email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            List<OrderItem> list = new ArrayList<OrderItem>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                ImageProductDao imageProductDao = new ImageProductDao();
                ProductDao productDao = new ProductDao();
                OrderItem orderItem = new OrderItem();
                orderItem.setId(resultSet.getInt(1));
                orderItem.setProductId(resultSet.getInt(2));
                orderItem.setNameProduct(productDao.findNameProductById(orderItem.getProductId()));
                orderItem.setNumberProduct(resultSet.getInt(3));
                orderItem.setPrice(resultSet.getInt(4));
                orderItem.setStatus(resultSet.getInt(5));
                orderItem.setImage(imageProductDao.findImage(orderItem.getProductId()));

                ValueItemDao valueItemDao = new ValueItemDao();
                orderItem.setListValue(valueItemDao.findValueItemByOrderItemId(orderItem.getId()));
                list.add(orderItem);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

}
