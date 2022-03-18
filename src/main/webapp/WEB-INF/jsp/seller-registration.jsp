<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/sale-registration.css">
</head>

<body>
<div class="register-container">
    <div class="banner">
        <img src="./images/sales-reigister.png" alt="">
    </div>
    <form action="seller-registration" method="post">
        <div class="form-input">
            <h2>Bán hàng cùng chúng tôi</h2>
            <b>Họ và tên</b>
            <span>Điền họ và tên như trên CMND/Giấy Căn Cước</span>
            <input type="text" name="username" placeholder="Nhập đầy đủ họ tên">
            <b>Tên cửa hàng</b>
            <input type="text" name="name" placeholder="Nhập tên cửa hàng">
            <b>Địa chỉ email</b>
            <input type="text" name="email" placeholder="Nhập địa chỉ email">
            <b>Số điện thoại</b>
            <input type="text" name="phone" placeholder="Nhập số điện thoại" onkeypress="isInputNumbers(event);">
<%--            <b>Ngành hàng chính cửa hàng sẽ bán</b>--%>
<%--            <select name="category" id="">--%>
<%--                <c:forEach items="${listCategory}" var="category">--%>
<%--                    <option value="${category.id}"><c:out value="${category.name}"/></option>--%>
<%--                </c:forEach>--%>
<%--            </select>--%>
            <b>Mật khẩu</b>
            <input type="password" name="password" placeholder="Tạo mật khẩu">
            <b>Xác nhận mật khẩu</b>
            <input type="password" placeholder="Nhập lại mật khẩu">
            <button class="btn-submit" type="submit">
                Đăng kí ngay
            </button>
        </div>
    </form>
    <div class="logo">
        <img src="./images/logo.jpeg">
    </div>
</div>

</body>



<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="./js/onlyInputNumbers.js"></script>

</html>
