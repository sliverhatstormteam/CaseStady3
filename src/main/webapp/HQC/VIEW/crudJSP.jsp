<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 12/27/2022
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>cờ rờ u đê</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/style.css">

</head>
<body>
<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4">
            <h1><a href="index.html" class="logo">Portfolic <span>Portfolio Agency</span></a></h1>
            <ul class="list-unstyled components mb-5">
                <li class="active">
                    <a href="#"><span class="fa fa-home mr-3"></span> Home</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-user mr-3"></span> About</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-briefcase mr-3"></span> Works</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-sticky-note mr-3"></span> Blog</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-suitcase mr-3"></span> Gallery</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-cogs mr-3"></span> Services</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-paper-plane mr-3"></span> Contacts</a>
                </li>
            </ul>

            <div class="mb-5">
                <h3 class="h6 mb-3">Subscribe for newsletter</h3>
                <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                        <div class="icon"><span class="icon-paper-plane"></span></div>
                        <input type="text" class="form-control" placeholder="Enter Email Address">
                    </div>
                </form>
            </div>

            <div class="footer">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib.com</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
            <!-- Page Content  -->
            <div class="container mt-3">
                <h2>hehe</h2>
                <p>Bảng quản lí thông tin:</p>
                <a href="/VIEW/createJSP.jsp" class="btn btn-success">Create</a>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>id Sản phẩm</th>
                        <th>Hãng</th>
                        <th>Tên sản phẩm</th>
                        <th>Ảnh</th>
                        <th>Giá</th>
                        <th>Loại</th>
                        <th>Mô tả</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="p" items="${products}">
                        <tr>
                            <td>${p.productID}</td>
                            <td>${p.productName}</td>
                            <td>${p.brand}</td>
                            <td><img src="${p.img}" width="250" height="200"></td>
            <%--                <c:if test="${p.role}"><td style="color: green">Admin</td></c:if>--%>
            <%--                <c:if test="${!p.role}"><td style="color: red">User</td> </c:if>--%>
                            <td>${p.price}</td>
                            <td>${p.kindID}</td>
                            <td>${p.description}</td>
                            <td>${p.color}</td>
                            <td><a href="/editProduct?id=${p.productID}" class="btn btn-warning" >Edit</a></td>
                            <td><a href="/deleteProduct?id=${p.productID}" class="btn btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </nav>



</div>

<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/popper.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script src="resource/js/main.js"></script>
</body>

</body>




</html>
