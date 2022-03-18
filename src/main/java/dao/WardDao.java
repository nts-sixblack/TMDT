package dao;

import connect.Data;
import model.Ward;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class WardDao {
    private final String name = Data.name;

    public List<Ward> listProvince(){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Province";
            Statement statement = connection.createStatement();
            List<Ward> list = new ArrayList<Ward>();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()){
                Ward ward = new Ward();
                ward.setId(resultSet.getInt(1));
                ward.setAddress(resultSet.getString(2));
                list.add(ward);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public List<Ward> listDistrict(int provinceId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Province p join district d on p.provinceId = d.provinceId where p.provinceId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, provinceId);
            List<Ward> list = new ArrayList<Ward>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Ward ward = new Ward();
                ward.setId(resultSet.getInt(4));
                ward.setAddress(resultSet.getString(5));
                list.add(ward);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public List<Ward> listWard(int districtId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".district d join"+name+".ward w on d.districtId = w.districtId where d.districtId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, districtId);
            List<Ward> list = new ArrayList<Ward>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Ward ward = new Ward();
                ward.setId(resultSet.getInt(5));
                ward.setAddress(resultSet.getString(6));
                list.add(ward);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public String informationWard(int wardId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".province p join "+name+".district d on p.provinceId = d.provinceId join "+name+".ward w on d.districtId = w.districtId where w.wardId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, wardId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getString(9)+" - "+resultSet.getString(5)+" - "+resultSet.getString(2);
            }
            return null;
        } catch (Exception e){
            return null;
        }
    }

    public Ward findWardByShopId(int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select w.log, w.lat from "+name+".ward w join "+name+".addressShop a on w.wardId = a.wardId join "+name+".shop s on s.shopId = a.shopId where s.ShopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            ResultSet resultSet = preparedStatement.executeQuery();
            Ward ward = new Ward();
            if (resultSet.next()){
                ward.setLog(resultSet.getString(1));
                ward.setLat(resultSet.getString(2));
            }
            return ward;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
