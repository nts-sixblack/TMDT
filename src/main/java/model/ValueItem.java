package model;

public class ValueItem {
    private int id;
    private String valueName;
    private String propertiesName;
    private int price;
    private int cartId;
    private int orderId;
    private int valueId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getValueName() {
        return valueName;
    }

    public void setValueName(String valueName) {
        this.valueName = valueName;
    }

    public String getPropertiesName() {
        return propertiesName;
    }

    public void setPropertiesName(String propertiesName) {
        this.propertiesName = propertiesName;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getValueId() {
        return valueId;
    }

    public void setValueId(int valueId) {
        this.valueId = valueId;
    }
}
