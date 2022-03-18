package dao;

import connect.Data;
import model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrderDao {
    private final String name = Data.name;

    //    tạo 1 đơn giao hàng mới
    public int newOrder(Order order){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".Orderr (email, name, status, totalMoney, address, shipMoney, wardId, shipId) values(?, ?, ?, ?, ?, ?, ?, ?) SELECT @@IDENTITY asLastID";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, order.getEmail());
            preparedStatement.setString(2, order.getName());
            preparedStatement.setInt(3, order.getStatus());
            preparedStatement.setInt(4, order.getTotalPrice());
            preparedStatement.setString(5, order.getAddress());
            preparedStatement.setInt(6, order.getShipMoney());
            preparedStatement.setInt(7, order.getWardId());
            preparedStatement.setInt(8, 1);
            int orderId = 0;
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                orderId = resultSet.getInt(1);
            }
            return orderId;
        } catch (Exception e){
            e.printStackTrace();
            return 0;
        }
    }

//    tìm kiếm 1 đưwon hàng
    public Order findOrder(int orderId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".orderr where orderId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            Order order = new Order();
            if (resultSet.next()){
                order.setId(orderId);
                order.setEmail(resultSet.getString(2));
                order.setName(resultSet.getString(3));
                order.setStatus(resultSet.getInt(4));
                order.setTime(resultSet.getString(5));
                order.setTotalPrice(resultSet.getInt(6));

                order.setAddress(resultSet.getString(7));
                order.setXaId(resultSet.getInt(8));
                order.setWardId(resultSet.getInt(9));
                order.setShipMoney(resultSet.getInt(10));
                OrderItemDao orderItemDao = new OrderItemDao();
                order.setListOrder(orderItemDao.findOrderItem(orderId));
            }
            return order;
        } catch (Exception e){
            return null;
        }
    }

//    danh sách các đơn đặt hàng của ai đó
    public List findListOrder(String email, int status){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".orderr where email = ? and status = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setInt(2, status);

            ResultSet resultSet = preparedStatement.executeQuery();
            List<Order> list = new ArrayList<>();
            while (resultSet.next()){
                Order order = new Order();
                order.setId(resultSet.getInt(1));
                order.setStatus(resultSet.getInt(4));
                order.setTotalPrice(resultSet.getInt(6));
                order.setShipMoney(resultSet.getInt(10));

                OrderItemDao orderItemDao = new OrderItemDao();
                order.setListOrder(orderItemDao.findOrderItem(order.getId()));

                list.add(order);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

//    đếm số lượng đơn hàng của 1 ai đó
    public int countOrder(String email, int status){
        try {
            Connection connection = Data.getConnection();
            String sql = "select count(email) from "+name+".orderr where email=? and status = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setInt(2, status);
            ResultSet resultSet = preparedStatement.executeQuery();
            int count = 0;
            if (resultSet.next()){
                count = resultSet.getInt(1);
            }
            return count;
        } catch (Exception e){
            return 0;
        }
    }

    public void checkStatusOrder(int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select o.OrderId, o.status from "+name+".OrderItem oi join "+name+".Orderr o on o.OrderId = oi.OrderId where oi.OrderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int orderId = 0;
            boolean status = false;
            if (resultSet.next()){
                orderId = resultSet.getInt(1);
                if (resultSet.getInt(2) == 3) status = true;
            }

            sql = "select oi.status from "+name+".OrderItem oi join "+name+".Orderr o on o.OrderId = oi.OrderId where oi.OrderId = ?";
            PreparedStatement preparedStatement1 = connection.prepareStatement(sql);
            preparedStatement1.setInt(1, orderId);
            resultSet = preparedStatement1.executeQuery();
            boolean check = true, q = true;
            while (resultSet.next()){
                if (resultSet.getInt(1) == 0||resultSet.getInt(1) == 1){
                    check = false;
                }
                if (resultSet.getInt(1) == 0){
                    q = false;
                }
            }
            if (q == true && status == false){
                sql = "update "+name+".orderr set status = 1 where orderId = ?";
                PreparedStatement preparedStatement2 = connection.prepareStatement(sql);
                preparedStatement2.setInt(1, orderId);
                preparedStatement2.executeUpdate();
            }
            if (check == true && status == false){
                sql = "update "+name+".orderr set status = 2 where orderId = ?";
                PreparedStatement preparedStatement2 = connection.prepareStatement(sql);
                preparedStatement2.setInt(1, orderId);
                preparedStatement2.executeUpdate();
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public boolean updateStutusOrder(int orderId){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".orderr set status = 3 where orderId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderId);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public List findListOrderByShipper(int wardId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select distinct o.name, u.phone, o.address, o.shipMoney, o.OrderId, o.totalMoney, o.orderId\n" +
                    "                    from "+name+".Orderr o join OrderItem oi on o.OrderId = oi.OrderId\n" +
                    "                    join "+name+".Shipp s on s.ShipId = o.shipId\n" +
                    "                    join "+name+".Shipper sp on s.ShipId= sp.ShipId\n" +
                    "                    join "+name+".Userr u on u.email = o.email\n" +
                    "                    where sp.wardId = ? and o.status = 2 and oi.status = 2";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, wardId);
            List<Order> list = new ArrayList<Order>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Order order = new Order();
                order.setName(resultSet.getString(1));
                order.setPhone(resultSet.getString(2));
                order.setAddress(resultSet.getString(3));
                order.setShipMoney(resultSet.getInt(4));
                order.setId(resultSet.getInt(5));
                OrderItemDao orderItemDao = new OrderItemDao();
                order.setListOrder(orderItemDao.findOrderItem(order.getId()));
                order.setTotalPrice(resultSet.getInt(6));
                order.setId(resultSet.getInt(7));

                list.add(order);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public List findListOrderByShip(){
        try {
            Connection connection = Data.getConnection();
            String sql = "select o.name, u.phone, o.address, o.shipMoney, o.OrderId, o.totalMoney, ads.address\n" +
                    "                    from "+name+".Orderr o join OrderItem oi on o.OrderId = oi.OrderId\n" +
                    "                    join "+name+".Shipp s on s.ShipId = o.shipId\n" +
                    "                    join "+name+".Shipper sp on s.ShipId= sp.ShipId\n" +
                    "                    join "+name+".Userr u on u.email = o.email\n" +
                    "                    join "+name+".Product p on p.productId = oi.productId\n" +
                    "                    join "+name+".shop sh on sh.shopId = p.shopId\n" +
                    "                    join "+name+".addressShop ads on sh.shopId = ads.shopId\n" +
                    "                    where oi.status = 5";
            Statement statement = connection.createStatement();
            List<Order> list = new ArrayList<Order>();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Order order = new Order();
                order.setName(resultSet.getString(1));
                order.setPhone(resultSet.getString(2));
                order.setAddress(resultSet.getString(3));
                order.setShipMoney(resultSet.getInt(4));
                order.setId(resultSet.getInt(5));
                OrderItemDao orderItemDao = new OrderItemDao();
                order.setListOrder(orderItemDao.findOrderItem(order.getId()));
                order.setTotalPrice(resultSet.getInt(6));
                order.setShopAddress(resultSet.getString(7));
                list.add(order);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
