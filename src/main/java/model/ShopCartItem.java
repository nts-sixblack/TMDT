package model;

import java.util.List;

public class ShopCartItem {
    private String shopName;
    private int shopId;
    private List<CardItem> list;
    private String log;
    private String lat;
    private Ward ward;

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

    public List<CardItem> getList() {
        return list;
    }

    public void setList(List<CardItem> list) {
        this.list = list;
    }

    public String getLog() {
        return log;
    }

    public void setLog(String log) {
        this.log = log;
    }

    public String getLat() {
        return lat;
    }

    public void setLat(String lat) {
        this.lat = lat;
    }

    public Ward getWard() {
        return ward;
    }

    public void setWard(Ward ward) {
        this.ward = ward;
    }
}
