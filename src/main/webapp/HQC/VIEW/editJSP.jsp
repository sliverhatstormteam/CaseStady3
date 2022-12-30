<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 12/27/2022
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit</title>
</head>
<body>
<h1>Edit Product</h1>
<form method="post" >
  <input name="productID" placeholder="nhập id" value="" readonly><br>
  <input name="brand" placeholder="nhập hãng"><br>
  <input name="productName" placeholder="nhập hãng"><br>
  <input name="img" placeholder="nhập link ảnh"><br>
  <input name="price" placeholder="nhập giá"><br>
  <input name="kindID" placeholder="nhập mã loại xe"><br>
  <input name="decscription" placeholder="nhập mô tả"><br>
  <input name="color" placeholder="nhập màu sắc"><br>
  <button type="submit">Create</button>
</form>
</body>
</html>
