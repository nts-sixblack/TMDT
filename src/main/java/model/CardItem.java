package model;

import java.util.List;

public class CardItem {
    private int id;
    private int cardId;
    private int productId;
    private String nameProduct;
    private int numberProduct;
    private int price;
    private List<ValueItem> listValue;
    private String image;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCardId() {
        return cardId;
    }

    public void setCardId(int cardId) {
        this.cardId = cardId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getNumberProduct() {
        return numberProduct;
    }

    public void setNumberProduct(int numberProduct) {
        this.numberProduct = numberProduct;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<ValueItem> getListValue() {
        return listValue;
    }

    public void setListValue(List<ValueItem> listValue) {
        this.listValue = listValue;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
