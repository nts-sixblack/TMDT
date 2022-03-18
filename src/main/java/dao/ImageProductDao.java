package dao;

import connect.Data;
import model.ImageProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ImageProductDao {
    private final String name = Data.name;

    //    thêm 1 danh sách các ảnh cho 1 sản phẩm
    public boolean newListImage(List<ImageProduct> list, int productDetailId){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".ImageProduct (image, ProductDetailId) values(?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (ImageProduct imageProduct:list){
                preparedStatement.setString(1, imageProduct.getImage());
                preparedStatement.setInt(2, productDetailId);
                preparedStatement.executeUpdate();
            }
            return true;
        } catch (Exception e){
//            e.printStackTrace();
            return false;
        }
    }

//    load ra danh sách ảnh của 1 sản phẩm
    public List loadListImage(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select imgp.ImageProductId, imgp.Image \n" +
                    "from "+name+".ImageProduct imgp join "+name+".ProductDetail pd on pd.ProductDetailId = imgp.ProductDetailId\n" +
                    "join "+name+".Product p on p.ProductDetailId = pd.ProductDetailId\n" +
                    "where p.ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ImageProduct> listImage = new ArrayList<ImageProduct>();
            while (resultSet.next()){
                ImageProduct imageProduct = new ImageProduct();
                imageProduct.setId(resultSet.getInt(1));
                imageProduct.setImage(resultSet.getString(2));

                listImage.add(imageProduct);
            }
            return listImage;
        } catch (Exception e){
            return null;
        }
    }

//    xóa toàn bộ ảnh của 1 sản phẩm
    public boolean deleteListImage(int productID){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete from "+name+".ImageProduct where ProductDetailId = (select ProductDetailId from "+name+".Product where ProductId = ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productID);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    xóa một bức ảnh nào đos
    public boolean deleteImage(int id){
        try {
            Connection connection = Data.getConnection();
            String sql = "delete from "+name+".imageProduct where ImageProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public String findImage(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select top 1 imp.image\n" +
                    "from "+name+".Product p join ProductDetail pd on pd.ProductDetailId = p.ProductDetailId\n" +
                    "join "+name+".ImageProduct imp on pd.ProductDetailId = imp.ProductDetailId\n" +
                    "where p.ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getString(1);
            } else {
                return null;
            }
        } catch (Exception e){
            return null;
        }
    }
}
