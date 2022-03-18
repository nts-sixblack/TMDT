package model;

import java.util.List;

public class Order {
    private int id;
    private String email;
    private String name;
    private String address; // đây là địa chỉ người nhận
    private String shopAddress;
    private List listOrder;
//    status: 0 là đã đặt hàng, đang chờ xác nhận
//    status: 1 là đã đã xác nhận
//    status: 2 là đã đã giao cho shipper + đơn vị ship
//    status: 3 là đã đã giao cho khách
    private int status;
    private int xaId;
    private int wardId;
    private String time;
    private int totalPrice;
    private int shipMoney;
    private String phone;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShopAddress() {
        return shopAddress;
    }

    public void setShopAddress(String shopAddress) {
        this.shopAddress = shopAddress;
    }

    public List getListOrder() {
        return listOrder;
    }

    public void setListOrder(List listOrder) {
        this.listOrder = listOrder;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getXaId() {
        return xaId;
    }

    public void setXaId(int xaId) {
        this.xaId = xaId;
    }

    public int getWardId() {
        return wardId;
    }

    public void setWardId(int wardId) {
        this.wardId = wardId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getShipMoney() {
        return shipMoney;
    }

    public void setShipMoney(int shipMoney) {
        this.shipMoney = shipMoney;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
