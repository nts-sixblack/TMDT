package dao;

import connect.Data;
import model.ValueItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ValueItemDao {
    private final String name = Data.name;

    //    thêm list các ValueItem mới
    public boolean newValueItem(List<ValueItem> valueItems, int cartId){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".ValueItem (value, propertiesName, cartItemId, valueId) values( ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (ValueItem valueItem: valueItems){
                preparedStatement.setString(1, valueItem.getValueName());
                preparedStatement.setString(2, valueItem.getPropertiesName());
                preparedStatement.setInt(3, cartId);
                preparedStatement.setInt(4, valueItem.getValueId());
                preparedStatement.executeUpdate();
            }

            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

//      thêm giá trị orderItem cho ValueItem, remove cartItem
    public boolean addOrder(int cartItemId, int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".Valueitem set orderItemId = ?, CartItemId=NULL where CartItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            preparedStatement.setInt(2, cartItemId);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    tìm kiếm các valueItem theo cartItemId
    public List findValueItemByCartItemId(int cartItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ValueItem where CartItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cartItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ValueItem> list = new ArrayList<ValueItem>();
            while (resultSet.next()){
                ValueItem valueItem = new ValueItem();
                valueItem.setId(resultSet.getInt(1));
                valueItem.setValueName(resultSet.getString(2));
                valueItem.setPropertiesName(resultSet.getString(3));
                valueItem.setValueId(resultSet.getInt(6));

                list.add(valueItem);

            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

// tìm kiếm các valueItem theo OrderItemId
    public List findValueItemByOrderItemId(int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ValueItem where OrderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ValueItem> list = new ArrayList<ValueItem>();
            while (resultSet.next()){
                ValueItem valueItem = new ValueItem();
                valueItem.setId(resultSet.getInt(1));
                valueItem.setValueName(resultSet.getString(2));
                valueItem.setPropertiesName(resultSet.getString(3));
                valueItem.setValueId(resultSet.getInt(6));

                list.add(valueItem);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean deleteValueItem(int cartItemId){
        try {
            Connection connection = Data.getConnection();
            String sql ="delete from "+name+".valueItem where cartItemId =?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cartItemId);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

}
