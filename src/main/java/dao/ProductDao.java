package dao;

import connect.Data;
import model.ImageProduct;
import model.Product;
import model.ProductDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private final String name = Data.name;

    //    tìm kiếm sản phẩm theo id
    public Product findProduct(int id){
        Product product = new Product();
        product.setId(id);
        try {
            // dựa vào id sản phẩm, join đến ProductDetail để lấy name, decription, price, number
            Connection connection = Data.getConnection();
            String sql = "select pd.name, pd.decription, pd.price , pd.number \n" +
                    "from "+name+".ProductDetail pd join Product p on p.ProductDetailId = pd.ProductDetailId\n" +
                    "where p.ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                product.setName(resultSet.getString(1));
                product.setDecription(resultSet.getString(2));
                product.setPrice(resultSet.getInt(3));
                product.setNumber(resultSet.getInt(4));
            }

            //dựa vào id của sản phẩm, join đến productDetail, join đến ImageProduct để lấy danh sách ảnh
           sql = "select imgp.ImageProductId, imgp.Image \n" +
                   "from "+name+".ImageProduct imgp join "+name+".ProductDetail pd on pd.ProductDetailId = imgp.ProductDetailId\n" +
                   "join "+name+".Product p on p.ProductDetailId = pd.ProductDetailId\n" +
                   "where p.ProductId = ?";
           preparedStatement = connection.prepareStatement(sql);
           preparedStatement.setInt(1, id);
           resultSet = preparedStatement.executeQuery();
           List<ImageProduct> listImage = new ArrayList<ImageProduct>();
           while (resultSet.next()){
               ImageProduct imageProduct = new ImageProduct();
               imageProduct.setId(resultSet.getInt(1));
               imageProduct.setImage(resultSet.getString(2));

               listImage.add(imageProduct);
           }
           product.setImage(listImage);

//           dựa vào id của sản phẩm, join đến shop để lấy shopId, shopName
           sql = "select s.ShopId, s.name\n" +
                   "from "+name+".Product p join Shop s on p.ShopId = s.ShopId\n" +
                   "where p.ProductId = ?";
           preparedStatement = connection.prepareStatement(sql);
           preparedStatement.setInt(1, id);
           resultSet = preparedStatement.executeQuery();
           if (resultSet.next()){
               product.setShopId(resultSet.getInt(1));
               product.setShopName(resultSet.getString(2));
           }

//           dừa vào id của sản phẩm, join đến category để lấy categoryId, categoryName
            sql = "select pc.CategoryId, pc.name\n" +
                    "from "+name+".Product p join "+name+".ProductCategory pc on p.CategoryId = pc.CategoryId\n" +
                    "where p.ProductId = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                product.setCategoryId(resultSet.getInt(1));
                product.setCategoryName(resultSet.getString(2));
            }

//            dựa vào productID, join đến productDetail, join đến Properties để lấy danh sahcs Properties
            PropertiesDao propertiesDao = new PropertiesDao();
            product.setProperties(propertiesDao.listProperties(id));

        } catch (Exception e){

        }

        return product;
    }

//    Lấy productDetailId từ ProductId
    public int findProductDetailId(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select "+name+".ProductDetailId from Product where ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int productDetailId = 0;
            if (resultSet.next()){
                productDetailId = resultSet.getInt(1);
            }
            return productDetailId;
        } catch (Exception e){
            return 0;
        }
    }


//    thêm mới sản phẩm
    public boolean newProduct(Product product){
        try {
            Connection connection = Data.getConnection();
//            new ProdcutDetal
            ProductDetail productDetail = new ProductDetail();
            productDetail.setName(product.getName());
            productDetail.setDecription(product.getDecription());
            productDetail.setPrice(product.getPrice());
            productDetail.setNumber(product.getNumber());
            ProductDetailDao productDetailDao = new ProductDetailDao();
            int productDetailId = 0;
            productDetailId = productDetailDao.newProductDetail(productDetail);
//            System.out.println(productDetailId);
            ImageProductDao imageProductDao = new ImageProductDao();
            imageProductDao.newListImage(product.getImage(), productDetailId);

//            thêm các thuộc tính cho sản phâẩm
            PropertiesDao propertiesDao = new PropertiesDao();
            propertiesDao.newProperties(productDetailId, product.getProperties());

            String sql = "insert into "+name+".product (ProductDetailId, CategoryId, ShopId) values(?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productDetailId);
            preparedStatement.setInt(2, product.getCategoryId());
            preparedStatement.setInt(3, product.getShopId());

            return  preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
//            e.printStackTrace();
            return false;
        }
    }

//    xóa sản phẩm
    public boolean deleteProduct(int productId){
        try {
            Connection connection = Data.getConnection();
            int check = 0;
//            lấy productDetail Id từ product
            int productDetailId = findProductDetailId(productId);
            System.out.println("productDetailID: "+productDetailId);

            //            xóa productDetail
            ProductDetailDao productDetailDao = new ProductDetailDao();
            if (productDetailDao.deleteProductDetail(productDetailId)){
                check = -2;
            }

            if (check == 0) return true;
            return false;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

//    cập nhập thông tin sản phẩm
    public boolean updateProduct(Product product){
        try {
            Connection connection = Data.getConnection();
            int productDetailId = findProductDetailId(product.getId());

            ProductDetailDao productDetailDao = new ProductDetailDao();
            ProductDetail productDetail = new ProductDetail();
            productDetail.setId(productDetailId);
            productDetail.setName(product.getName());
            productDetail.setDecription(product.getDecription());
            productDetail.setPrice(product.getPrice());
            product.setNumber(product.getNumber());

            return productDetailDao.updateProductDetail(productDetail);
        } catch (Exception e){
            return false;
        }
    }

//    tìm kiếm sản phẩm theo tên
    public List findListProduct(String name){
        try {
//        từ tên đầu vào, tìm kiếm theo tên trong productDetail rồi join đến product để lấy được danh sách product id, gọi lại hàm findProduct by Id để lấy được thông tin product đó và thêm vào list
        Connection connection = Data.getConnection();
        List<Product> list = new ArrayList<Product>();
        String sql = "select pd.name, pd.price, p.ProductId, s.address\n" +
                "from "+name+".ProductDetail pd \n" +
                "join "+name+".Product p on pd.ProductDetailId = p.ProductDetailId \n" +
                "join "+name+".Shop s on p.ShopId = s.ShopId\n" +
                "where pd.name like '%"+name+"%'";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()){
            int productId = resultSet.getInt(3);
            Product product = new Product();
            product.setName(resultSet.getString(1));
            product.setPrice(resultSet.getInt(2));
            product.setId(productId);
            product.setAddress(resultSet.getString(4));
            List<ImageProduct> imageProductList = new ArrayList<ImageProduct>();
            ImageProductDao imageProductDao = new ImageProductDao();
            ImageProduct imageProduct = new ImageProduct();
            imageProduct.setImage(imageProductDao.findImage(productId));
            imageProductList.add(imageProduct);
            product.setImage(imageProductList);

            list.add(product);
        }
        return list;

        } catch (Exception e){
            return null;
        }
    }

//    tìm kiếm sản phẩm theo CatgoryId
    public List findListProductCategoryId(int categoryId){
        try {
            Connection connection = Data.getConnection();
            List<Product> list = new ArrayList<Product>();
            String sql = "select top 6 pd.name, pd.price, p.ProductId, s.address\n" +
                    "from "+name+".ProductDetail pd \n" +
                    "join "+name+".Product p on pd.ProductDetailId = p.ProductDetailId \n" +
                    "join "+name+".Shop s on p.ShopId = s.ShopId\n" +
                    "join "+name+".ProductCategory pc on pc.CategoryId = p.CategoryId \n" +
                    "where pc.CategoryId=?\n";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, categoryId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int productId = resultSet.getInt(3);
                Product product = new Product();
                product.setName(resultSet.getString(1));
                product.setPrice(resultSet.getInt(2));
                product.setId(productId);
                product.setAddress(resultSet.getString(4));
                List<ImageProduct> imageProductList = new ArrayList<ImageProduct>();
                ImageProductDao imageProductDao = new ImageProductDao();
                ImageProduct imageProduct = new ImageProduct();
                imageProduct.setImage(imageProductDao.findImage(productId));
                imageProductList.add(imageProduct);
                product.setImage(imageProductList);

                list.add(product);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

//    tìm kiếm list sản phẩm theo shopId
    public List findListProductShopId(int shopId){
        try {
            Connection connection = Data.getConnection();
            List<Product> list = new ArrayList<Product>();
            String sql = "select pd.name, pd.price, p.ProductId, s.address, pd.number, pc.name\n" +
                    "from "+name+".ProductDetail pd \n" +
                    "join "+name+".Product p on pd.ProductDetailId = p.ProductDetailId \n" +
                    "join "+name+".Shop s on p.ShopId = s.ShopId\n" +
                    "join "+name+".ProductCategory pc on pc.CategoryId = p.CategoryId \n" +
                    "where s.shopId=?\n";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int productId = resultSet.getInt(3);
                Product product = new Product();
                product.setName(resultSet.getString(1));
                product.setPrice(resultSet.getInt(2));
                product.setId(productId);
                product.setAddress(resultSet.getString(4));
                product.setNumber(resultSet.getInt(5));
                product.setCategoryName(resultSet.getString(6));
                List<ImageProduct> imageProductList = new ArrayList<ImageProduct>();
                ImageProductDao imageProductDao = new ImageProductDao();
                ImageProduct imageProduct = new ImageProduct();
                imageProduct.setImage(imageProductDao.findImage(productId));
                imageProductList.add(imageProduct);
                product.setImage(imageProductList);

                list.add(product);
            }
            return list;
        } catch (Exception e){
            return null;
        }
    }

    public int countProductInSHop(int shopId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select count(productId) from "+name+".Product p join Shop s on s.ShopId = p.ShopId where s.ShopId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, shopId);
            ResultSet resultSet = preparedStatement.executeQuery();
            int count = 0;
            if (resultSet.next()){
                count = resultSet.getInt(1);
            }
            return count;
        } catch (Exception e){
            return 0;
        }
    }

    public List findListProductNext(int number){
        try {
            Connection connection = Data.getConnection();
            List<Product> list = new ArrayList<Product>();
            String sql = "select pd.name, pd.price, p.ProductId, s.address, pd.number\n" +
                    "from "+name+".ProductDetail pd \n" +
                    "join "+name+".Product p on pd.ProductDetailId = p.ProductDetailId \n" +
                    "join "+name+".Shop s on p.ShopId = s.ShopId\n" +
                    "join "+name+".ProductCategory pc on pc.CategoryId = p.CategoryId \n" +
                    "order by p.ProductId";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1, number);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int productId = resultSet.getInt(3);
                Product product = new Product();
                product.setName(resultSet.getString(1));
                product.setPrice(resultSet.getInt(2));
                product.setId(productId);
                product.setAddress(resultSet.getString(4));
                product.setNumber(resultSet.getInt(5));
                List<ImageProduct> imageProductList = new ArrayList<ImageProduct>();
                ImageProductDao imageProductDao = new ImageProductDao();
                ImageProduct imageProduct = new ImageProduct();
                imageProduct.setImage(imageProductDao.findImage(productId));
                imageProductList.add(imageProduct);
                product.setImage(imageProductList);

                list.add(product);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

//    tên sản phẩm dwuaj vào id
    public String findNameProductById(int productId){
        try {
            Connection connection = Data.getConnection();
            String sql ="select pd.name from "+name+".Product p join ProductDetail pd on pd.ProductDetailId = p.ProductDetailId where p.ProductId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, productId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                return resultSet.getString(1);
            }
            return null;
        } catch (Exception e){
            return null;
        }
    }

}


