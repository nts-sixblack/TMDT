package dao;

import connect.Data;
import model.ProductDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDetailDao {
    private final String name = Data.name;

    //    thêm mới sản phẩm
    public int newProductDetail(ProductDetail productDetail){
        try {
            Connection connection = Data.getConnection();
            String sql = "insert into "+name+".ProductDetail (name, decription, price, number ) values(?, ?, ?, ?) SELECT @@IDENTITY asLastID";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, productDetail.getName());
            preparedStatement.setString(2, productDetail.getDecription());
            preparedStatement.setInt(3, productDetail.getPrice());
            preparedStatement.setInt(4, productDetail.getNumber());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getInt(1);
            } else {
                return 0;
            }
        } catch (Exception e){
//            e.printStackTrace();
            return 0;
        }
    }

//    cập nhập thông tin sản phẩm
    public boolean updateProductDetail(ProductDetail productDetail){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".ProductDetail set name=?, decription=?, price=?, number=? where ProductDetailId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, productDetail.getName());
            preparedStatement.setString(2, productDetail.getDecription());
            preparedStatement.setInt(3, productDetail.getPrice());
            preparedStatement.setInt(4, productDetail.getNumber());
            preparedStatement.setInt(5, productDetail.getId());

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    cập nhập số lượng sản phẩm
    public boolean addNumberProductDetail(int id, int number){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".ProductDetail set number=? where ProductDetailId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, number);
            preparedStatement.setInt(2, id);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    cập nhập giá
    public boolean updatePrice(int id, int price){
        try {
            Connection connection = Data.getConnection();
            String sql = "update "+name+".ProductDetail set price=? where ProductDetailId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, price);
            preparedStatement.setInt(2, id);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

//    xóa thông tin sản phẩm
    public boolean deleteProductDetail(int id){
        try {
            Connection connection = Data.getConnection();
//            Xóa ProductDetail
            String sql = "delete from "+name+".ProductDetail where ProductDetailId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

//    tìm thông tin sản phẩm theo id
    public ProductDetail findProductDetail(int id){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ProductDetail where ProductDetailID=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            ProductDetail productDetail = new ProductDetail();
            if (resultSet.next()){
                productDetail.setId(id);
                productDetail.setName(resultSet.getString(2));
                productDetail.setDecription(resultSet.getString(3));
                productDetail.setPrice(resultSet.getInt(4));
                productDetail.setNumber(resultSet.getInt(5));
            }

            return productDetail;
        } catch (Exception e){
            return null;
        }
    }

//    tìm kiếm thông tin sản phẩm (theo tên)
    public List findProductDetail(String name){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".ProductDetail where name like /'%?%/'";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ProductDetail> list = new ArrayList<ProductDetail>();
            if (resultSet.next()){
                ProductDetail productDetail = new ProductDetail();
                productDetail.setId(resultSet.getInt(1));
                productDetail.setName(resultSet.getString(2));
                productDetail.setDecription(resultSet.getString(3));
                productDetail.setPrice(resultSet.getInt(4));
                productDetail.setNumber(resultSet.getInt(5));

                list.add(productDetail);
            }

            return list;
        } catch (Exception e){
            return null;
        }
    }

    public void reduceNumberProduct(int orderItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select pd.ProductDetailId\n" +
                    "from "+name+".OrderItem oi join "+name+".Product p on p.ProductId = oi.ProductId\n" +
                    "join "+name+".ProductDetail pd on pd.ProductDetailId = p.ProductDetailId\n" +
                    "where OrderItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                reduceNUmber(resultSet.getInt(1));
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    public void reduceNUmber(int produceDetailId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select number from "+name+".ProductDetail where productDetailId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, produceDetailId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int number = resultSet.getInt(1) - 1;
                String query = "update "+name+".productDetail set number = ? where productDetailId = ?";
                PreparedStatement preparedStatement1 = connection.prepareStatement(query);
                preparedStatement1.setInt(1, number);
                preparedStatement1.setInt(2, produceDetailId);
                preparedStatement1.executeUpdate();
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
