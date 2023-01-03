package com.example.casestady3.HQC.model;

public class BillDetail {
    private int productID;
    private int billID;
    private int amount;
    private double price;

    public BillDetail(int productID, int billID, int amount, double price) {
        this.productID = productID;
        this.billID = billID;
        this.amount = amount;
        this.price = price;
    }

    public BillDetail() {
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
