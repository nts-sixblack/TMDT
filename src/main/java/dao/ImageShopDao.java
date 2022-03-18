package dao;

import connect.Data;
import model.ImageShop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ImageShopDao {
    private final String name = Data.name;

    public boolean insertImage(int shopId, List<ImageShop> list){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".imageShop (image, shopId) values(?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (ImageShop imageShop: list){
                preparedStatement.setString(1, imageShop.getImage());
                preparedStatement.setInt(2, shopId);
                preparedStatement.executeUpdate();
            }
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List loadLisImage(int shopid){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ImageShop where shopid = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopid);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ImageShop> list = new ArrayList<ImageShop>();
            while (resultSet.next()){
                ImageShop imageShop = new ImageShop();
                imageShop.setId(resultSet.getInt(1));
                imageShop.setImage(resultSet.getString(2));
                list.add(imageShop);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }
}
