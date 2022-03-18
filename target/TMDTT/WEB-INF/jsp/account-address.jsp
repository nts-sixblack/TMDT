<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 8:57 PM
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
    <link rel="stylesheet" href="./css/account-address.css">
    <link rel="stylesheet" href="./css/account-option.css">
    <title>Địa chỉ</title>
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
                        <a href="user-address" class="is-active">
                            <ion-icon name="navigate-circle-outline"></ion-icon>
                            <p>Sổ địa chỉ</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-order">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <p>Đơn hàng</p>
                        </a>
                    </li>

                </ul>
            </div>

        </div>
        <div class="account-address">
            <h3>Sổ địa chỉ</h3>
            <a class="create-new-address seller_card-item" href="user-add-address">
                <ion-icon name="add-outline"></ion-icon>
            </a>

            <c:forEach var="address" items="${list}">
                <div class="account-address-item seller_card-item">
                    <h4><c:out value="${address.name}"/>
                        <span class="check-default">
                            <ion-icon name="checkmark-circle-outline"></ion-icon>
<%--                            <c:if test="${address.type > 0}">--%>
<%--                                Mặc định--%>
<%--                            </c:if>--%>
                        </span>
                    </h4>
                    <p><span>Địa chỉ: </span><c:out value="${address.decription}, ${address.address} "/></p>
                    <p><span>Số điện thoại: </span><c:out value="${address.phone}"/></p>
                    <a href="user-delete-address?addressId=<c:out value="${address.id}"/>">
                        <button>Xoá</button>
                    </a>
<%--                    <a href="#">Chỉnh sửa</a>--%>
                </div>
            </c:forEach>

        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
