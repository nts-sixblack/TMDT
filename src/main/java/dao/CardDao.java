package dao;

import connect.Data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CardDao {
    private final String name = Data.name;

    //    Tạo mới 1 card, đây là nơi lưu các sản phẩm được đưa vảo giỏ hàng, tạo 1 lần duy nhất lúc tạo tk
    public boolean newCard(String email){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".Card (email) values(?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    tìm kiếm card theo userId, khỏi chạy lúc đăng nhập để xem được card của tk đó
    public int findCard(String email){
        try {
            Connection connection = Data.getConnection();
            String sql = "select cardId from "+name+".Card where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            int id=0;
            if (resultSet.next()){
                id = resultSet.getInt(1);
            }
            return id;
        }catch (Exception e){
            return 0;
        }
    }
}
