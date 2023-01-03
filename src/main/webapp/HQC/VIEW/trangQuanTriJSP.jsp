<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 12/27/2022
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
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
<!-- Modal thêm -->
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
            <h1><a href="index.html" class="logo">Amin <span>Bảng quản lí Admin</span></a></h1>
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
                    <a href="${pageContext.request.contextPath}/bill"><span class="fa fa-briefcase mr-3"></span> Quản lí Hoá đơn</a>
                </li>

            </ul>

            <div class="mb-5">
                <h3 class="h6 mb-3">Lọc sản phẩm</h3>
                <form action="${pageContext.request.contextPath}/crud" class="subscribe-form">
                    <div class="form-group d-flex">
                        <table>
                            <tr>
                                <td>
                                    <input id="inputsearch" name="key" type="text" class="form-control" placeholder="Nhập vào tên" onkeypress="">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input name="price1" type="text" class="form-control" placeholder="Nhập vào giá" value="0">
                                </td>
                                <td>
                                    <input name="price2" type="text" class="form-control" placeholder="Nhập vào giá" value="500000000">
                                </td>
                            </tr>
                            <tr>
                                <td> <button type="submit" class="btn btn-primary">Lọc</button>
                                </td>
                            </tr>
                        </table>
                        <div class="icon"><span class="icon-paper-plane"></span></div>

                    </div>
                </form>
            </div>

            <div class="footer">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">Colorlib.com</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>

        </div>
    </nav>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">Bảng quản lí sản phẩm:</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et</p>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
            Tạo mới
        </button>
        <c:forEach var="edit" items="${products}">
        <!-- Modal edit-->
            <div class="modal fade" id="staticBackdrop${edit.productID}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabe">Chỉnh sửa thông tin sản phẩm</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                                <%--<input name="productID" placeholder="nhập id"><br>--%>
                            <form method="post" action="${pageContext.request.contextPath}/editProduct">
                                <label><input name="productID" placeholder="nhập id"   value="${edit.productID}" readonly></label><br>
                                <label><input name="productName"      placeholder="nhập tên"  value="${edit.productName}">       </label><br>
                                <label><input name="img"       placeholder="nhập ảnh"  value="${edit.img}">               </label><br>
                                <label><input name="price"     placeholder="nhập giá"  value="${edit.price}">             </label><br>
                                <label><input name="brand"     placeholder="nhập hãng" value="${edit.brand}">             </label><br>
                                <select name="kindID" id="kindedit">
                                    <c:forEach var="p" items="${kinds}">
                                        <option value=${p.kindID}>${p.kindName}</option>
                                    </c:forEach>
                                </select><br>
                                <label><input name="color" placeholder="nhập màu sắc" value="${edit.color}"></label><br>
                                <label><input name="description" placeholder="nhập mô tả" value="${edit.description}"></label><br>
                                <button type="submit" >Edit</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>

        <table id="myTable" class="table table-striped">
            <thead>
            <tr>
                <th>id Sản phẩm</th>
                <th>Hãng</th>
                <th>Tên sản phẩm</th>
                <th>Ảnh</th>
                <th>Giá</th>
                <th>Loại</th>
                <th>Mô tả</th>
                <th>Màu sắc</th>
            </tr>
            </thead>
            <tbody>
            <%--@elvariable id="products" type="java.util.List"--%>
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
<%--                    <td><a href="${pageContext.request.contextPath}/editProduct?id=${p.productID}"--%>
<%--                           class="btn btn-warning">Sửa</a></td>--%>
                    <td>
                        <button id="${p.productID}" type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#staticBackdrop${p.productID}">
                            Sửa
                        </button>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/deleteProduct?id=${p.productID}"
                           class="btn btn-danger">Xoá</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
<script>
    function myFunction() {
        // Declare variables
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("inputsearch");
        filter = input.value.toUpperCase();
        table = document.getElementById("tableProduct");
        tr = table.getElementsByTagName("tr");

        // Loop through all table rows, and hide those who don't match the search query
        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1];
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
<script src="<c:url value="/HQC/resource/js/jquery.min.js"/>"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/main.js"></script>
</body>
</html>