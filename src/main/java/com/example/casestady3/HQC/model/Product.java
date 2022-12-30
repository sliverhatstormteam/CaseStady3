package com.example.casestady3.model;

public class Product {
    private int productID;
    private String productName;
    private String brand;
    private String img;
    private double  price;
    private int kindID;
    private String description;
    private String color;

    public Product() {
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getKindID() {
        return kindID;
    }

    public void setKindID(int kindID) {
        this.kindID = kindID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Product(int productID, String productName, String brand, String img, double price, int kind, String description, String color) {
        this.productID = productID;
        this.productName = productName;
        this.brand = brand;
        this.img = img;
        this.price = price;
        this.kindID = kind;
        this.description = description;
        this.color = color;
    }
}
