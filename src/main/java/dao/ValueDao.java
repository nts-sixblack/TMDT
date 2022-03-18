package dao;

import connect.Data;
import model.Value;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ValueDao {
    private final String name = Data.name;

    public boolean newValue(int propertiesID, List<Value> list){

        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".value(name, propertiesId, price, number) values (?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for(Value value:list){
                preparedStatement.setString(1, value.getName());
                preparedStatement.setInt(2, propertiesID);
                preparedStatement.setInt(3, value.getPrice());
                preparedStatement.setInt(4, value.getNumber());

                preparedStatement.execute();
            }
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List listValue(int propertiesId){
        try{
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Value where propertiesId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, propertiesId);
            List<Value> list = new ArrayList<Value>();
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                Value value = new Value();
                value.setId(resultSet.getInt(1));
                value.setName(resultSet.getString(2));
                value.setPrice(resultSet.getInt(4));
                value.setNumber(resultSet.getInt(5));

                list.add(value);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

//    get valueId
    public void reduceNumberValue(int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select v.ValueId from "+name+".OrderItem oi join "+name+".ValueItem vi on oi.OrderItemId = vi.OrderItemId join "+name+".Value v on v.ValueId = vi.valueId where oi.OrderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                reduceNumber(resultSet.getInt(1));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    private void reduceNumber(int valueId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select number from "+name+".Value where ValueId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, valueId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int number = resultSet.getInt(1) - 1;
                String query = "update "+name+".value set number = ? where valueId = ?";
                PreparedStatement preparedStatement1 = connection.prepareStatement(query);
                preparedStatement1.setInt(1, number);
                preparedStatement1.setInt(2, valueId);
                preparedStatement1.executeUpdate();
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
