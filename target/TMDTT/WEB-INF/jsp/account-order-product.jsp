<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/account-order.css">
    <link rel="stylesheet" href="./css/account-option.css">
    <title>Đơn hàng chờ lấy hàng</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="account-container">
        <div class="account-sideBar">
            <div class="account-infor">
                <img src="./images/avt/khacvu_avt.JPG">
                <p>Tài khoản của</p>
                <h4><c:out value="${name}"/></h4>
            </div>
            <div class="account-option">
                <ul>
                    <li>
                        <a href="user">
                            <ion-icon name="person-circle-outline"></ion-icon>
                            <p>Thông tin tài khoản</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-changepass">
                            <ion-icon name="lock-open-outline"></ion-icon>
                            <p>Đổi mật khẩu</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-notifycation">
                            <ion-icon name="notifications-circle-outline"></ion-icon>
                            <p>Thông báo</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-address">
                            <ion-icon name="navigate-circle-outline"></ion-icon>
                            <p>Sổ địa chỉ</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-order" class="is-active">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <p>Đơn hàng</p>
                        </a>
                    </li>

                </ul>
            </div>

        </div>
        <div class="account-order">
            <div class="navbar-order">
                <ul>
                    <li>
                        <a href="user-order">Tất cả</a>
                    </li>
                    <li>
                        <a href="user-order-confirmation">Chờ xác nhận</a>
                    </li>
                    <li class="is-active">
                        <a href="user-order-product">Chờ lấy hàng</a>
                    </li>
                    <li>
                        <a href="user-order-delivering">Đang giao</a>
                    </li>
                    <li>
                        <a href="user-order-delivered">Đã giao</a>
                    </li>
                    <li>
                        <a href="user-order-cancelled">Đã huỷ</a>
                    </li>
                </ul>
            </div>

            <div class="properties-order_1">
                <c:choose>
                    <c:when test="${count > 0}">
                        <c:forEach var="order" items="${list}">
                            <div class="card-list-order">
                                <div class="shop-infor">
                                    <p></p>
                                    <p></p>
                                    <p></p>
                                    <p class="status-order">
                                        Đang lấy hàng
                                    </p>
                                </div>
                                <c:forEach var="orderItem" items="${order.listOrder}">
                                    <div class="product-infor">
                                        <img src="<c:out value="${orderItem.image}"/>" alt="">
                                        <div>
                                            <p class="name"><c:out value="${orderItem.nameProduct}"/></p>
                                            <span>Phân loại hàng: <c:forEach var="value" items="${orderItem.listValue}"><c:out value="${value.valueName} "/></c:forEach> </span>
                                            <p>Số lượng: <c:out value="${orderItem.numberProduct}"/></p>
                                        </div>
                                        <span><c:out value="${orderItem.price}"/></span>
                                    </div>
                                </c:forEach>

                                <div class="total-price">
                                    <p>Phí ship: <span><c:out value="${order.shipMoney}"/></span></p>
                                    <p>Tổng số tiền: <span><c:out value="${order.totalPrice}"/></span></p>
                                </div>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div class="empty-properties">
                            <img src="./images/no_order.png" alt="">
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
