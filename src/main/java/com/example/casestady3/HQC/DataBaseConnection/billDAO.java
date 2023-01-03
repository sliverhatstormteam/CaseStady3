package com.example.casestady3.HQC.DataBaseConnection;

import com.example.casestady3.HQC.model.Bill;
import com.example.casestady3.HQC.model.BillInfo;
import com.example.casestady3.HQC.model.Kind;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class billDAO {
    public static List<Bill> getAll() {
        List<Bill> bills = new ArrayList<>();
        String sql = "Select * from bill";
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int billID = resultSet.getInt("billID");
                int userID = resultSet.getInt("userID");
                int productID = resultSet.getInt("productID");
                double total = resultSet.getInt("total");
                String datetime = resultSet.getString("datetime");
                bills.add(new Bill(billID, userID,productID,total,datetime));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(bills);
        return bills;
    }
    public static List<BillInfo> getBillInfo() {
        List<BillInfo> billinfos = new ArrayList<>();
        String sql = "SELECT bill.billID, userID,user.name,bill.total,date   FROM fashiondb.bill join user on bill.userID = user.iduser";
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int billID = resultSet.getInt("billID");
                int userID = resultSet.getInt("userID");
                String name= resultSet.getString("name");
                double total = resultSet.getInt("total");
                String datetime = resultSet.getString("date");
                billinfos.add(new BillInfo(billID, userID,name,total,datetime));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(billinfos);
        return billinfos;
    }

}
