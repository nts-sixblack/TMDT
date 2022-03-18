package dao;

import connect.Data;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private final String name = Data.name;

    //    tạo 1 tk user mới
    public String newUser(User user){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".userr (email, name, password) values(?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getPassword());
            if (preparedStatement.executeUpdate() > 0){
                return user.getEmail();
            } else {
                return null;
            }

        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

//    kiểm tra đăng nhập
    public User checkLogin(String email, String password){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Userr where email=? and password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            User user = new User();
            if (resultSet.next()){
                user.setEmail(email);
                user.setName(resultSet.getString(2));
                user.setPassword(password);
                user.setPhone(resultSet.getString(7));
                user.setGender(resultSet.getInt(5));

            } else {
                return null;
            }
            return user;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    public boolean updateInformation(User user){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".Userr set name = ?, phone = ?, gender = ? where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(4, user.getEmail());
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getPhone());
            preparedStatement.setInt(3, user.getGender());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public User findUser(String email){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Userr where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            User user = new User();
            if (resultSet.next()){
                user.setEmail(resultSet.getString(1));
                user.setName(resultSet.getString(2));
                user.setPassword(resultSet.getString(3));
//                user.setAddress(resultSet.getString(4));
                user.setPhone(resultSet.getString(7));
                user.setGender(resultSet.getInt(5));
            }
            return user;
        } catch (Exception e){
            return null;
        }
    }

    public boolean checkPass(String email, String pass){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".Userr where email = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
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

    public boolean updatePass(String email, String pass){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".Userr set password = ? where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, pass);
            preparedStatement.setString(2, email);
            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }
}
