package com.example.casestady3.HQC.model;

public class BillInfo {
    private int billID;
    private int userID;
    private String name;
    private double total;
    private String date;

    public BillInfo(int billID, int userID, String name, double total, String date) {
        this.billID = billID;
        this.userID = userID;
        this.name = name;
        this.total = total;
        this.date = date;
    }

    public BillInfo() {
    }

    public BillInfo(int userID, String name, double total) {
        this.userID = userID;
        this.name = name;
        this.total = total;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
}
