package com.example.casestady3.HQC.DataBaseConnection;

import com.example.casestady3.HQC.model.Kind;
import com.example.casestady3.HQC.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class KindDAO {
    public static List<Kind> getAll() {
        List<Kind> kinds = new ArrayList<>();
        String sql = "Select * from kind";
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int kindID = resultSet.getInt("kindID");
                String kindName = resultSet.getString("kindName");
                kinds.add(new Kind(kindID, kindName));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        System.out.println(kinds);
        return kinds;
    }
    public static boolean save(Kind kind) {
        String sql = "insert into kind(kindName) value (?)";
        Connection connection = DataConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1,product.getProductID());
            preparedStatement.setString(1, kind.getKindName());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean edit(Kind kind) {
        String sql = "update kind set kindName=? where kindID=?";
        Connection connection = DataConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,kind.getKindID());
            preparedStatement.setString(1, kind.getKindName());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Kind findById(int id){
        String sql = "select * from kind where kindID = "+ id;
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String kindName = resultSet.getString("kindName");


            return new Kind(id, kindName );
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void delete(int id){
        String sql ="delete FROM kind where kindID = "+id;
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
