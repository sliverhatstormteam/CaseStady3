package com.example.casestady3.HQC.DataBaseConnection;

import com.example.casestady3.HQC.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    public static List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        String sql = "Select * from product";
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {
                int productId = resultSet.getInt("productId");
                String brand = resultSet.getString("brand");
                String productName = resultSet.getString("productName");
                String img = resultSet.getString("img");
                double price = resultSet.getDouble("price");
                int kindID = resultSet.getInt("kindID");
                String decscription = resultSet.getString("decscription");
                String color = resultSet.getString("color");
                products.add(new Product(productId, brand, productName, img, price,kindID, decscription,color));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return products;
    }
    public static boolean save(Product product) {
        String sql = "insert into product(brand, productName, img, price, kindID, decscription, color) value (?,?,?,?,?,?,?)";
        Connection connection = DataConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1,product.getProductID());
            preparedStatement.setString(1, product.getBrand());
            preparedStatement.setString(2, product.getProductName());
            preparedStatement.setString(3, product.getImg());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getKindID());
            preparedStatement.setString(6, product.getDescription());
            preparedStatement.setString(7, product.getColor());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static boolean edit(Product product) {
        String sql = "update product set brand=?, productName=?, img=?, price=?,kind=?,decscription=?,color=? where id=?";
        Connection connection = DataConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
//            preparedStatement.setInt(1,product.getProductID());
            preparedStatement.setString(1, product.getBrand());
            preparedStatement.setString(2, product.getProductName());
            preparedStatement.setString(3, product.getImg());
            preparedStatement.setDouble(4, product.getPrice());
            preparedStatement.setInt(5, product.getKindID());
            preparedStatement.setString(6, product.getDescription());
            preparedStatement.setString(7, product.getColor());
            return preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static Product findById(int id){
        String sql = "select * from product where productID = "+ id;
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);
            resultSet.next();
            String brand = resultSet.getString("brand");
            String productName = resultSet.getString("productName");
            String img = resultSet.getString("img");
            int kindID = Integer.parseInt(resultSet.getString("kindID"));
            String decscription = resultSet.getString("decscription");
            double price = resultSet.getDouble("price");
            String color = resultSet.getString("color");


            return new Product(id, brand,productName,img,price, kindID,decscription,color );
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void delete(int id){
        String sql ="delete FROM product where productID = "+id;
        Connection connection = DataConnection.getConnection();
        try {
            Statement statement = connection.createStatement();
            statement.execute(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
