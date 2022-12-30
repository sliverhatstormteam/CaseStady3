<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 12/27/2022
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create Product</h1>
<form method="post" action="/crud">
    <input name="productID" placeholder="nhập id"><br>
    <input name="brand" placeholder="nhập hãng"><br>
    <input name="productName" placeholder="nhập hãng"><br>
    <input name="img" placeholder="nhập link ảnh"><br>
    <input name="price" placeholder="nhập giá"><br>
    <input name="kind" placeholder="nhập loại xe"><br>
    <input name="decscription" placeholder="nhập mô tả"><br>
    <button type="submit">Create</button>
</form>
</body>
</html>
