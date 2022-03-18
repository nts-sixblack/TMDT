package model;

import java.util.List;

public class Properties {
    private int id;
    private String name;
    private List value;

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

    public List getValue() {
        return value;
    }

    public void setValue(List value) {
        this.value = value;
    }
}
