package dao;

import connect.Data;
import model.Ship;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShipDao {
    private final String name = Data.name;

    //    đăng nhập
    public Ship login(String userName, String password){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".shipp where userName = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                Ship ship = new Ship();
                ship.setId(resultSet.getInt(1));
                ship.setName(resultSet.getString(2));
                ship.setDecription(resultSet.getString(3));

//                Shipper shipper = new Shipper();
//                shipper.setId(resultSet.getInt(1));
//                shipper.setName(resultSet.getString(2));
//                shipper.setAddress(resultSet.getString(3));
//                shipper.setWard(resultSet.getInt(4));
//                shipper.setShipId(resultSet.getInt(5));
                return ship;
            } else {
                return null;
            }
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

}
