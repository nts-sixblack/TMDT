<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/11/2021
  Time: 3:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kênh người bán</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/seller-allproduct.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>
<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>
    <div class="seller-content-container">
        <!-- ---------------DIV 1---------------- -->
        <div class="seller_card-item all-product">
<%--            <div class="nav-allproduct">--%>
<%--                <ul>--%>
<%--                    <li>--%>
<%--                        <a href="#" class="is-active">Tất cả</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="#">Đang hoạt động</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="#">Hết hàng</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="#">Vi phạm</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="#">Đã ẩn</a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
            <div class="count-product">
                <p><c:out value="${countProduct}"/> Sản phẩm</p>
            </div>
            <div class="container-product">
                <div class="nav card-item">
                    <p>Tên sản phẩm</p>
                    <p>Phân loại hàng</p>
                    <p>Giá (VNĐ)</p>
                    <p>Kho hàng</p>
<%--                    <p>Đã bán</p>--%>
                    <p>Xóa</p>
                    <!-- <p>Sửa</p> -->
                    <!-- <p>Gỡ sản phẩm</p> -->
                </div>
                <c:choose>
                    <c:when test="${countProduct > 0}">
                        <c:forEach var="product" items="${list}">
                            <div class="card-item">
                                <div class="name-pr">
                                    <img src="<c:out value="${product.image[0].image}"/>" alt="">
                                    <p>
                                        <c:out value="${product.name}"/>
                                    </p>
                                </div>
                                <!-- <p>Phân loại hàng</p> -->
                                <span>
                                    <c:out value="${product.categoryName}"/>
                                </span>
                                <!-- <p>Giá (VNĐ)</p> -->
                                <span>
                                    <c:out value="${product.price}"/>
                                </span>
                                <!-- <p>Kho hàng</p> -->
                                <span>
                                    <c:out value="${product.number}"/>
                                </span>
                                <!-- <p>Đã bán</p> -->
<%--                                <span>--%>
<%--                                    20--%>
<%--                                </span>--%>
                                <!-- <p>Trạng thái</p> -->
<%--                                <span>--%>
<%--                                    Ẩn/ hiện--%>
<%--                                </span>--%>
<%--                                <button class="edit-pr">--%>
<%--                                    <ion-icon name="pencil-outline"></ion-icon>--%>
<%--                                </button>--%>
                                <button class="delete-pr">
                                    <a href="seller-delete-product?productId=<c:out value="${product.id}"/>">
                                        <ion-icon name="trash-outline"></ion-icon>
                                    </a>
                                </button>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="empty-card">
                            <img src="./images/empty_order.png" alt="">
                        </div>
                    </c:otherwise>
                </c:choose>

<%--                <div class="card-item">--%>
<%--                    <div class="name-pr">--%>
<%--                        <img src="./images/img-products/iphone5.jpeg" alt="">--%>
<%--                        <p>--%>
<%--                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, praesentium!--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <!-- <p>Phân loại hàng</p> -->--%>
<%--                    <span>--%>
<%--                            thoi trang abcd--%>
<%--                        </span>--%>
<%--                    <!-- <p>Giá (VNĐ)</p> -->--%>
<%--                    <span>--%>
<%--                            123.000--%>
<%--                        </span>--%>
<%--                    <!-- <p>Kho hàng</p> -->--%>
<%--                    <span>--%>
<%--                            123--%>
<%--                        </span>--%>
<%--                    <!-- <p>Đã bán</p> -->--%>
<%--                    <span>--%>
<%--                            20--%>
<%--                        </span>--%>
<%--                    <!-- <p>Trạng thái</p> -->--%>
<%--                    <span>--%>
<%--                            Ẩn/ hiện--%>
<%--                        </span>--%>
<%--                    <button class="edit-pr">--%>
<%--                        <ion-icon name="pencil-outline"></ion-icon>--%>
<%--                    </button>--%>
<%--                    <button class="delete-pr">--%>
<%--                        <ion-icon name="trash-outline"></ion-icon>--%>
<%--                    </button>--%>
<%--                </div>--%>
<%--                <div class="card-item">--%>
<%--                    <div class="name-pr">--%>
<%--                        <img src="./images/img-products/iphone5.jpeg" alt="">--%>
<%--                        <p>--%>
<%--                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus, praesentium!--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <!-- <p>Phân loại hàng</p> -->--%>
<%--                    <span>--%>
<%--                            thoi trang abcd--%>
<%--                        </span>--%>
<%--                    <!-- <p>Giá (VNĐ)</p> -->--%>
<%--                    <span>--%>
<%--                            123.000--%>
<%--                        </span>--%>
<%--                    <!-- <p>Kho hàng</p> -->--%>
<%--                    <span>--%>
<%--                            123--%>
<%--                        </span>--%>
<%--                    <!-- <p>Đã bán</p> -->--%>
<%--                    <span>--%>
<%--                            20--%>
<%--                        </span>--%>
<%--                    <!-- <p>Trạng thái</p> -->--%>
<%--                    <span>--%>
<%--                            Ẩn/ hiện--%>
<%--                        </span>--%>
<%--                    <button class="edit-pr">--%>
<%--                        <ion-icon name="pencil-outline"></ion-icon>--%>
<%--                    </button>--%>
<%--                    <button class="delete-pr">--%>
<%--                        <ion-icon name="trash-outline"></ion-icon>--%>
<%--                    </button>--%>
<%--                </div>--%>
            </div>
        </div>

    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="./js/onlyInputNumbers.js"></script>

</html>
