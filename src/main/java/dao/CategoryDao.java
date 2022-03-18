package dao;

import connect.Data;
import model.ProductCategory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    private final String name = Data.name;

    //    thêm mới 1 loại hàng
    public boolean newCategory(ProductCategory productCategory){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".ProductCategory (name, image) values(?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, productCategory.getName());
            preparedStatement.setString(2, productCategory.getImage());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    cập nhập thông tin loại hàng
    public boolean updateCategory(ProductCategory productCategory){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".ProductCategory set name=?, image=? where CategoryId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, productCategory.getName());
            preparedStatement.setString(2, productCategory.getImage());
            preparedStatement.setInt(3, productCategory.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    xóa loại hàng
    public boolean deleteCategory(ProductCategory productCategory){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete from "+name+".ProductCategory where CategoryId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productCategory.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    load danh sách tất cả cả loại hàng
    public List loadCategory(){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ProductCategory";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            List<ProductCategory> list = new ArrayList<ProductCategory>();
            while (resultSet.next()){
                ProductCategory productCategory = new ProductCategory();
                productCategory.setId(resultSet.getInt(1));
                productCategory.setName(resultSet.getString(2));
                productCategory.setImage(resultSet.getString(3));

                list.add(productCategory);
            }

            return list;
        } catch (Exception e){
            return null;
        }
    }
}
