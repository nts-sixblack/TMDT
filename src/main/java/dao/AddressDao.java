package dao;

import connect.Data;
import model.Address;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AddressDao {
    private final String name = Data.name;

    public boolean newAddress(Address address){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".address (address, wardId, email, name, phone, decription, type) values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            WardDao wardDao = new WardDao();
            preparedStatement.setString(1, wardDao.informationWard(address.getWardId()));
            preparedStatement.setInt(2, address.getWardId());
            preparedStatement.setString(3, address.getEmail());
            preparedStatement.setString(4, address.getName());
            preparedStatement.setString(5, address.getPhone());
            preparedStatement.setString(6, address.getDecription());
            preparedStatement.setInt(7, 1);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List loadListAddress(String email){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".address where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            List<Address> list = new ArrayList<>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Address address = new Address();
                address = findAddressByAddressId(resultSet.getInt(1));
                list.add(address);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public Address findAddressByAddressId(int addressId){
        try {
            Connection connection = Data.getConnection();
            String sql ="select * from "+name+".Address a join ward w on w.wardId = a.wardId where a.addressId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, addressId);
            ResultSet resultSet = preparedStatement.executeQuery();
            Address address = new Address();
            if (resultSet.next()){
                address.setId(resultSet.getInt(1));
                address.setAddress(resultSet.getString(2));
                address.setWardId(resultSet.getInt(3));
                address.setEmail(resultSet.getString(4));
                address.setName(resultSet.getString(5));
                address.setDecription(resultSet.getString(7));
                address.setPhone(resultSet.getString(8));
                address.setLog(resultSet.getString(13));
                address.setLat(resultSet.getString(14));
            }

            return address;
        } catch (Exception e){
            return null;
        }
    }

    public Address findAddressByEmail(String email){
        try {
            Connection connection = Data.getConnection();
            String sql ="select * from "+name+".Address a join ward w on w.wardId = a.wardId where a.email = ? and a.type = 1";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            Address address = new Address();
            if (resultSet.next()){
                address.setId(resultSet.getInt(1));
                address.setAddress(resultSet.getString(2));
                address.setWardId(resultSet.getInt(3));
                address.setEmail(resultSet.getString(4));
                address.setName(resultSet.getString(5));
                address.setDecription(resultSet.getString(7));
                address.setPhone(resultSet.getString(8));
                address.setLog(resultSet.getString(13));
                address.setLat(resultSet.getString(14));
            }

            return address;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean deleteAddress(int addressId){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete from "+name+".address where addressId =?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, addressId);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }
//    //////////////////////////////////
public boolean newAddressShop(Address address){
    try {
        Connection connection = Data.getConnection();
        String sql = "insert into "+name+".addressShop (address, wardId, shopId, name, phone, decription) values(?, ?, ?, ?, ?, ?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        WardDao wardDao = new WardDao();
        preparedStatement.setString(1, wardDao.informationWard(address.getWardId()));
        preparedStatement.setInt(2, address.getWardId());
        preparedStatement.setInt(3, address.getShopId());
        preparedStatement.setString(4, address.getName());
        preparedStatement.setString(5, address.getPhone());
        preparedStatement.setString(6, address.getDecription());

        return preparedStatement.executeUpdate() > 0;
    } catch (Exception e){
        e.printStackTrace();
        return false;
    }
}

    public List loadListAddressShop(int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".addressShop where shopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            List<Address> list = new ArrayList<>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Address address = new Address();
                address = findAddressShopByAddressId(resultSet.getInt(1));
                list.add(address);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public Address findAddressShopByAddressId(int addressId){
        try {
            Connection connection = Data.getConnection();
            String sql ="select * from "+name+".AddressShop a join ward w on w.wardId = a.wardId where a.addressId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, addressId);
            ResultSet resultSet = preparedStatement.executeQuery();
            Address address = new Address();
            if (resultSet.next()){
                address.setId(resultSet.getInt(1));
                address.setAddress(resultSet.getString(2));
                address.setWardId(resultSet.getInt(3));
                address.setShopId(resultSet.getInt(4));
                address.setName(resultSet.getString(5));
                address.setDecription(resultSet.getString(7));
                address.setPhone(resultSet.getString(8));
                address.setLog(resultSet.getString(16));
                address.setLat(resultSet.getString(17));
            }

            return address;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean deleteAddressShop(int addressId){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete from "+name+".addressShop where addressId =?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, addressId);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }
    public int countAddressShop(int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select count(addressId) from "+name+".addressShop where shopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
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
}
