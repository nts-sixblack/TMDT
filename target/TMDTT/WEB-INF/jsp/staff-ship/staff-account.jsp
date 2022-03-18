<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/shipper/inc/main-layout.css">
    <link rel="stylesheet" href="./css/shipper/inc/shipper-header.css">
    <link rel="stylesheet" href="./css/shipper/inc/sidebar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/staff-ship/staff-style.css">


    <title>Staff</title>
</head>

<body>
<jsp:include page="inc/header.jsp"/>
<jsp:include page="inc/sidebar.jsp"/>

<div class="main-container">
    <div class="medium-container box-shadow">
        <h2>Thông tin cá nhân</h2>
        <div class="avatar-staff flex-center">
            <img src="./images/seller-avt.jpeg" alt="">
        </div>
        <div class="form-profile">
            <p>Họ và tên:</p>
            <span><c:out value="${shipper.name}"/></span>
            <p>Liên hệ:</p>
            <span><c:out value="${shipper.phone}"/></span>
            <p>Ngày sinh:</p>
            <span><c:out value="${shipper.date}"/></span>
            <p>CCCD/CMND:</p>
            <span><c:out value="${shipper.cmnd}"/></span>
            <p>Hoạt động ở</p>
            <span><c:out value="${shipper.address}"/></span>
        </div>
    </div>
    <div class="medium-container box-shadow">
        <h2>Tài khoản</h2>
        <ul class="account-select">
            <li class="account-option">
                <ion-icon name="key-outline"></ion-icon>
                <div class="account-option-mess">
                    <h4>Mật khẩu</h4>
                    <p>Bạn nên sử dụng mật khẩu mạnh mà mình chưa sử dụng ở đâu khác</p>
                </div>
                <a href="staff-changePass" class="button button__picked">
                    Chỉnh sửa
                </a>
            </li>
        </ul>
    </div>
</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
