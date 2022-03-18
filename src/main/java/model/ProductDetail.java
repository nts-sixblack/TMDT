package model;

import java.util.List;

public class ProductDetail {
    private int id;
    private String name;
    private String decription;
    private int price;
    private int number;
    private List properties;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public List getProperties() {
        return properties;
    }

    public void setProperties(List properties) {
        this.properties = properties;
    }
}
