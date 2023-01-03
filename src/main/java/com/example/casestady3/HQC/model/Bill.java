package com.example.casestady3.HQC.model;

public class Bill {
    private int billID;
    private int userID;
    private int productID;
    private double total;
    private String date;
    private String status;

    public Bill(int userID, int productID, double total) {
        this.userID = userID;
        this.productID = productID;
        this.total = total;
    }

    public Bill(int billID, int userID, int productID, double total, String date) {
        this.billID = billID;
        this.userID = userID;
        this.productID = productID;
        this.total = total;
        this.date = date;
    }

    public Bill() {
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
