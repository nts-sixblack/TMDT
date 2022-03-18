package model;

import java.util.List;

public class OrderItem {
    private int id;
    private int orderId;
    private int productId;
    private String nameProduct;
    private int numberProduct;
    private int price;
//    status: 0 là mới đặt hàng và đang chờ xác nhận
//    status: 1 là đã xác nhận và đang chờ lấy hàng giao cho shipper
//    status: 2 là đã lấy hàng giao cho shipper
//    status: 3 là đã được đánh giá
//    status: 4 là đã hủy
//    status: 5 là đã chuyển vào kho chờ shipper giao
    private int status;
    private List<ValueItem> listValue;
    private String image;
    private String shopName;
    private int shopId;
    private String address; // đây là địa chỉ shop

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<ValueItem> getListValue() {
        return listValue;
    }

    public void setListValue(List listValue) {
        this.listValue = listValue;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public int getShopId() {
        return shopId;
    }

    public void setShopId(int shopId) {
        this.shopId = shopId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
