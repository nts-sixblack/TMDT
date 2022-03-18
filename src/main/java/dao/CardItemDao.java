package dao;

import connect.Data;
import model.CardItem;
import model.Product;
import model.ShopCartItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CardItemDao {
    private final String name = Data.name;

    //    thêm mới 1 sản phẩm vào giỏ hàng
    public boolean newCardItem(CardItem cardItem){
        try {
            Connection connection = Data.getConnection();
            int cartItemId = 0;
            String sql = "insert into "+name+".CardItem (CardId, productId, number, price ) values(?, ?, ?, ? ) SELECT @@IDENTITY asLastID";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cardItem.getCardId());
            preparedStatement.setInt(2,cardItem.getProductId());
            preparedStatement.setInt(3, cardItem.getNumberProduct());
            preparedStatement.setInt(4, cardItem.getPrice());
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                cartItemId = resultSet.getInt(1);
            }
            if (cartItemId > 0){
                ValueItemDao valueItemDao = new ValueItemDao();
                return valueItemDao.newValueItem(cardItem.getListValue(), cartItemId);
            } else {
                return false;
            }
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

//    hiển thị danh sách các sản phẩm trong giỏ hàng
    public List loadCardItem(int cartId){
        try {
//            select ra shopid của những mặt hàng có trong giỏ, mục đích là để hiện thị các mặt hàng này theo danh sách shop
//            từ shopId này, select ra các thông tin CartItem có trong giỏ hàng tính theo cửa hàng
//            từ cardItemId, select các value tương ứng của nó
//            danh sách trả về 1 list, list này gồm nhiều list(mỗi list tương ứng 1 cửa hàng), các list này lại chứa thông tin sản phẩm
            Connection connection = Data.getConnection();
            String sql = "select DISTINCT s.ShopId , s.name\n" +
                    "from "+name+".CardItem ci join "+name+".Product p on p.ProductId = ci.ProductId\n" +
                    "join "+name+".shop s on s.ShopId = p.ShopId\n" +
                    "where ci.CardId=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cartId);
            ResultSet resultSet = preparedStatement.executeQuery();
            List<ShopCartItem> list = new ArrayList<ShopCartItem>();
            while (resultSet.next()){
                ShopCartItem shopCartItem = new ShopCartItem();
                WardDao wardDao = new WardDao();
                int shopId = resultSet.getInt(1);
                shopCartItem.setShopId(shopId);
                shopCartItem.setShopName(resultSet.getString(2));
                shopCartItem.setWard(wardDao.findWardByShopId(shopId));

//                System.out.println(shopId);

                String query = "select ci.CardItemId, p.ProductId, pd.name, ci.number, ci.price\n" +
                        "from "+name+".CardItem ci join "+name+".Product p on p.ProductId = ci.ProductId\n" +
                        "join "+name+".shop s on s.ShopId = p.ShopId\n" +
                        "join "+name+".ProductDetail pd on p.ProductDetailId = pd.ProductDetailId\n" +
                        "where s.ShopId=? and ci.CardId = ?";
                PreparedStatement preparedStatement1 = connection.prepareStatement(query);
                preparedStatement1.setInt(1, shopId);
                preparedStatement1.setInt(2, cartId);
                List<CardItem> cardItemList = new ArrayList<CardItem>();
                ResultSet resultSet1 = preparedStatement1.executeQuery();
                while (resultSet1.next()){
                    ImageProductDao imageProductDao = new ImageProductDao();
                    CardItem cardItem = new CardItem();
                    cardItem.setId(resultSet1.getInt(1));
                    cardItem.setProductId(resultSet1.getInt(2));
                    cardItem.setNameProduct(resultSet1.getString(3));
                    cardItem.setNumberProduct(resultSet1.getInt(4));
                    cardItem.setPrice(resultSet1.getInt(5));
                    cardItem.setImage(imageProductDao.findImage(cardItem.getProductId()));

//                    System.out.println(cardItem.getId());
//                    System.out.println(cardItem.getProductId());
//                    System.out.println(cardItem.getNameProduct());
//                    System.out.println(cardItem.getPrice());
//                    System.out.println(cardItem.getNumberProduct());
//                    System.out.println(cardItem.getImage());

                    ValueItemDao valueItemDao = new ValueItemDao();
                    cardItem.setListValue(valueItemDao.findValueItemByCartItemId(cardItem.getId()));

                    cardItemList.add(cardItem);

//                    System.out.println("//////////////");
                }

                shopCartItem.setList(cardItemList);
                list.add(shopCartItem);
            }
            return list;
        } catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

//    tìm kiếm carditem theo id
    public CardItem findCard(int cardItemId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select * from "+name+".cardItem where CardItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cardItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            CardItem cardItem = new CardItem();
            if (resultSet.next()){
                cardItem.setId(resultSet.getInt(1));
                cardItem.setCardId(resultSet.getInt(2));
                cardItem.setProductId(resultSet.getInt(3));
                cardItem.setNumberProduct(resultSet.getInt(4));

                ProductDao productDao = new ProductDao();
                Product product = productDao.findProduct(cardItem.getProductId());
                cardItem.setNameProduct(product.getName());
                cardItem.setPrice(product.getPrice());
            }

            return cardItem;
        } catch (Exception e){
            return null;
        }
    }

//    xóa sản phẩm ra khỏi giỏ hàng
    public boolean deleteCardItem(int id){
        try {
            Connection connection = Data.getConnection();
            ValueItemDao valueItemDao = new ValueItemDao();
            valueItemDao.deleteValueItem(id);
            String sql = "delete from "+name+".carditem where CardItemId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            return preparedStatement.executeUpdate() > 0;
        } catch (Exception e){
            return false;
        }
    }

    public int countCartItem(int cartId){
        try {
            Connection connection = Data.getConnection();
            String sql = "select count (CardItemId) from "+name+".CardItem where CardId = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, cartId);
            int count = 0;
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                count = resultSet.getInt(1);
            }
            return count;
        } catch (Exception e){
            return 0;
        }
    }


}
