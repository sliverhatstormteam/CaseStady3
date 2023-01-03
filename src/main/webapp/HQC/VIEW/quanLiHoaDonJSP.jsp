<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 1/1/2023
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Sidebar 05</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/HQC/resource/css/style.css">
</head>
<body>
<!-- Button trigger modal -->
<%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">--%>
<%--    Launch static backdrop modal--%>
<%--</button>--%>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Thêm sản phẩm</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form method="post" action="${pageContext.request.contextPath}/crud">
                    <%--                    <input name="productID" placeholder="nhập id"><br>--%>
                    <input name="brand" placeholder="nhập hãng" required><br>
                    <input name="productName" placeholder="nhập tên xe" required><br>
                    <input name="img" placeholder="nhập link ảnh" required><br>
                    <input name="price" placeholder="nhập giá" required><br>
                    <select name="kindID" id="kind">
                        <c:forEach var="p" items="${kinds}">
                            <option value=${p.kindID}>${p.kindName}</option>
                        </c:forEach>
                    </select><br>
                    <input name="decscription" placeholder="nhập mô tả" required><br>
                    <input name="color" placeholder="nhập màu sắc" required><br>
                    <button type="submit">Tạo sản phẩm</button>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Understood</button>
            </div>
        </div>
    </div>
</div>


<div class="wrapper d-flex align-items-stretch">
<nav id="sidebar" style="background-color: #0b2e13">
    <div class="custom-menu">
        <button style="" type="button" id="sidebarCollapse" class="btn btn-primary ">
            <i class="fa fa-bars"></i>
            <span class="sr-only">Toggle Menu</span>
        </button>
    </div>
    <div class="p-4">
        <h1><a href="index.html" class="logo">Admin <span>Bảng quản lí</span></a></h1>
        <ul class="list-unstyled components mb-5">
            <li class="active">
                <a href="#"><span class="fa fa-home mr-3"></span> Trang chủ</a>
            </li>
            <li>
                <a href="#"><span class="fa fa-user mr-3"></span> Quản lí user</a>
            </li>
            <li>
                <a href="#"><span class="fa fa-briefcase mr-3"></span> Thống kê </a>
            </li>
            <li>
                <a href="#"><span class="fa fa-briefcase mr-3"></span> Quản lí Hoá đơn</a>
            </li>

        </ul>

<%--        <div class="mb-5">--%>
<%--            <h3 class="h6 mb-3">Subscribe for newsletter</h3>--%>
<%--            <form action="#" class="subscribe-form">--%>
<%--                <div class="form-group d-flex">--%>
<%--                    <div class="icon"><span class="icon-paper-plane"></span></div>--%>
<%--                    <input type="text" class="form-control" placeholder="Enter Email Address">--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>

        <div class="footer">
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a
                        href="https://colorlib.com" target="_blank">Colorlib.com</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
        </div>

    </div>
</nav>

<!-- Page Content -->
<div id="content" class="p-4 p-md-5 pt-5">
<h2 class="mb-4">Bảng quản lí Hoá đơn:</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et</p>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    Tạo mới
</button>
<c:forEach var="bill" items="${billinfos}">
    <!-- Modal edit-->
    <div class="modal fade" id="staticBackdrop${bill.billID}" data-bs-backdrop="static"
    data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
    <h5 class="modal-title" id="staticBackdropLabe">Thông tin hoá đơn:</h5>
    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">
        
    <%--<input name="productID" placeholder="nhập id"><br>--%>
    <p>Khách hàng:${bill.name}</p>
    <p>Thời gian mua:${bill.date}</p>
        <table id="myTable" class="table table-striped">
            <thead>
            <tr>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá</th>
            </tr>
            </thead>
            <tbody>

                <%--@elvariable id="products" type="java.util.List"--%>
            <c:forEach var="detail" items="${billDetails}">
                <tr>
                    <c:if test="${detail.billID == bill.billID}">
                        <td>${detail.productID}</td>
                        <td>${detail.amount}</td>
                        <td>${detail.price}</td>
                    </c:if>


                </tr>
            </c:forEach>
            </tbody>
        </table>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Understood</button>
        </div>
        </div>
        </div>
        </div>
    </c:forEach>

    <table class="table table-striped">
    <thead>
    <tr>
    <th>id Hoá đơn</th>
    <th>id người dùng</th>
    <th>Tên người dùng</th>
    <th>Tổng hoá đơn</th>
    <th>Ngày giao dịch</th>
    </tr>
    </thead>
    <tbody>
    <%--@elvariable id="products" type="java.util.List"--%>
    <c:forEach var="bill" items="${billinfos}">
        <tr>
            <td>${bill.billID}</td>
            <td>${bill.userID}</td>
            <td>${bill.name}</td>
            <td>${bill.total}</td>
            <td>${bill.date}</td>

            <td>
                <button id="${bill.billID}" type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop${bill.billID}">
                    Xem chi tiết
                </button>
            </td>
            <td><a href="${pageContext.request.contextPath}/deleteProduct?id=${bill.billID}"
                   class="btn btn-danger">Xoá</a></td>
        </tr>
    </c:forEach>
    </tbody>
    </table>
    </div>

    </div>
    <script src="<c:url value="/HQC/resource/js/jquery.min.js"/>"></script>
    <script src="${pageContext.request.contextPath}/HQC/resource/js/popper.js"></script>
    <script src="${pageContext.request.contextPath}/HQC/resource/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/HQC/resource/js/main.js"></script>
    </body>
    </html>
