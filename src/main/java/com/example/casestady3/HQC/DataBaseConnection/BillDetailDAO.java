package com.example.casestady3.HQC.DataBaseConnection;

import com.example.casestady3.HQC.model.BillDetail;
import com.example.casestady3.HQC.model.BillInfo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BillDetailDAO {
    public static List<BillDetail> getBillDetail() {
        List<BillDetail> billDetails = new ArrayList<>();
        String sql = "SELECT *   FROM billdetail";
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int productID = resultSet.getInt("productID");
                int billID = resultSet.getInt("billID");
                int  amount= resultSet.getInt("amount");
                double price = resultSet.getInt("price");
                billDetails.add(new BillDetail(productID, billID,amount,price));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(billDetails);
        return billDetails;
    }
}
