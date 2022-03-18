package dao;

import connect.Data;
import model.Shipper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShipperDao {
    private final String name = Data.name;

    //    tìm kiếm shipper theo địa chỉ và đơn vị vận chuyển
    public int findShipper(int xaId, int shipId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Shipper where xaId = ? and shipId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, xaId);
            preparedStatement.setInt(2, shipId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int shipperId = 0;
            if (resultSet.next()){
                shipperId = resultSet.getInt(1);
            }
            return shipperId;
        } catch (Exception e){
            return 0;
        }
    }

//    thêm mới 1 shipper
    public static boolean newShipperr(Shipper shipper){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into tmdt.shipper (name, addres, xaId, shipId, userName, password) values(?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shipper.getName());
            preparedStatement.setString(2, shipper.getAddress());
            preparedStatement.setInt(3, shipper.getWard());
            preparedStatement.setInt(4, shipper.getShipId());
            preparedStatement.setString(5, shipper.getUserName());
            preparedStatement.setString(6, shipper.getPassword());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    đăng nhập
    public Shipper login(String userName, String password){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".shipper where userName = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                Shipper shipper = new Shipper();
                shipper.setId(resultSet.getInt(1));
                shipper.setName(resultSet.getString(2));
                shipper.setAddress(resultSet.getString(3));
                shipper.setWard(resultSet.getInt(4));
                shipper.setShipId(resultSet.getInt(5));
                shipper.setPhone(resultSet.getString(8));
                shipper.setDate(resultSet.getString(9));
                shipper.setCmnd(resultSet.getString(10));

                return shipper;
            } else {
                return null;
            }
        } catch (Exception e){
            return null;
        }
    }

//    kiểm tra tên đăng nhập đã tồn tại
    public boolean newShipper(Shipper shippep){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".shipper where username = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, shippep.getUserName());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return false;
            } else {
                return newShipperr(shippep);
            }
        } catch (Exception e){
            return false;
        }
    }

    public boolean checkPass(int id, String oldPass){
        try {
            Connection connection = Data.getConnection();
            String sql = "select password from "+name+".shipper where shipperId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                if (resultSet.getString(1).equals(oldPass)){
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (Exception e){
            return false;
        }
    }

    public boolean newPass(int id, String newPass){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".shipper set password = ? where shipperId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, newPass);
            preparedStatement.setInt(2, id);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

}
