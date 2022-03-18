package dao;

import connect.Data;
import model.Shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShopDao {
    private final String name = Data.name;

    //    tạo mới 1 cửa hàng
    public boolean newShop(Shop shop){

        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".shop (name, phone, email, password, username, avatar, background) values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shop.getName());
            preparedStatement.setString(2, shop.getPhone());
            preparedStatement.setString(3, shop.getEmail());
            preparedStatement.setString(4, shop.getPassword());
            preparedStatement.setString(5, shop.getUserName());
            preparedStatement.setString(6, "./images/seller-avt.jpeg");
            preparedStatement.setString(7, "./images/background-store/background-1.jpeg");

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    cập nhập thông tin cửa hàng
    public boolean updateShop(Shop shop){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".shop set name=?, phone=?, email=?, username=?, address=? where ShopId=?";

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shop.getName());
            preparedStatement.setString(2, shop.getPhone());
            preparedStatement.setString(3, shop.getEmail());
            preparedStatement.setString(4, shop.getUserName());
            preparedStatement.setString(5, shop.getAddress());
            preparedStatement.setInt(6, shop.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    xóa cửa hàng
    public boolean deleteShop(Shop shop){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete  from "+name+".shop where ShopId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shop.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    tìm cửa hàng(theo id)
    public Shop findShop(int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Shop where ShopId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            ResultSet resultSet = preparedStatement.executeQuery();
            Shop shop = new Shop();
            if (resultSet.next()){
                shop.setId(shopId);
                shop.setName(resultSet.getString(2));
                shop.setPhone(resultSet.getString(3));
                shop.setAddress(resultSet.getString(4));
                shop.setDecription(resultSet.getString(5));
                shop.setEmail(resultSet.getString(6));
                shop.setUserName(resultSet.getString(9));
                ImageShopDao imageShopDao = new ImageShopDao();
                shop.setImage(imageShopDao.loadLisImage(shop.getId()));
                shop.setAvatar(resultSet.getString(10));
                shop.setBackground(resultSet.getString(11));

            }
            return shop;
        } catch (Exception e){
            return null;
        }
    }

//    tìm của hàng(theo tên)
    public List findShop(String name){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".shop where name like /'%?%/'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<Shop> list = new ArrayList<Shop>();
            if (resultSet.next()){
                Shop shop = new Shop();
                shop.setId(resultSet.getInt(1));
                shop.setName(resultSet.getString(2));
                shop.setPhone(resultSet.getString(3));
                shop.setAddress(resultSet.getString(4));
                shop.setDecription(resultSet.getString(5));

                list.add(shop);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

//    kiểm tra đăng nhập cửa hàng
    public Shop checkLogin(String email, String password){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".shop where email=? and password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            Shop shop = new Shop();
            if (resultSet.next()){
                shop.setId(resultSet.getInt(1));
                shop.setName(resultSet.getString(2));
                shop.setPhone(resultSet.getString(3));
                shop.setAddress(resultSet.getString(4));
                shop.setDecription(resultSet.getString(5));
                shop.setEmail(email);
                shop.setPassword(password);
            } else {
                return null;
            }
            return shop;
        } catch (Exception e){
            return null;
        }
    }

    public boolean checkPass(int id, String pass){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Shop where ShopId = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.setString(2, pass);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return true;
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }

    public boolean updatePass(int id, String pass){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".Shop set password = ? where ShopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, pass);
            preparedStatement.setInt(2, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    update information of shop
    public boolean updateInformation(Shop shop){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".shop set name=?, decription = ? where shopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shop.getName());
            preparedStatement.setString(2, shop.getDecription());
            preparedStatement.setInt(3, shop.getId());
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public boolean updateAvatar(String avatar, int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".shop set avatar = ? where shopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, avatar);
            preparedStatement.setInt(2, shopId);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public boolean updateBackground(String background, int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".shop set background = ? where shopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, background);
            preparedStatement.setInt(2, shopId);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }
}
