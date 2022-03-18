package dao;

import connect.Data;
import model.Properties;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PropertiesDao {
    private final String name = Data.name;

    public boolean newProperties(int productDetailId, List<Properties> list){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".properties (name, productDetailId) values(?, ?) SELECT @@IDENTITY asLastID ";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (Properties properties:list){
                preparedStatement.setString(1, properties.getName());
                preparedStatement.setInt(2, productDetailId);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()){
                    int propertiesId = resultSet.getInt(1);
                    System.out.println(propertiesId);
                    ValueDao valueDao = new ValueDao();
                    valueDao.newValue(propertiesId, properties.getValue());
                }
            }

            return true;

        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List listProperties(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select pro.PropertiesId, pro.name\n" +
                    "from "+name+".Properties pro join ProductDetail pd on pd.ProductDetailId = pro.ProductDetailId\n" +
                    "join "+name+".Product p on p.ProductDetailId = pd.ProductDetailId\n" +
                    "where p.ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            List<Properties> list = new ArrayList<Properties>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Properties properties = new Properties();
                ValueDao valueDao = new ValueDao();
                int propertiesId = resultSet.getInt(1);
                properties.setId(propertiesId);
                properties.setName(resultSet.getString(2));
                properties.setValue(valueDao.listValue(propertiesId));

                list.add(properties);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }
}
