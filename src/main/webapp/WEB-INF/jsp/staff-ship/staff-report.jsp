<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div class="report-container box-shadow">
        <div class="form-text">
            <h3>Thông tin đơn hàng</h3>
            <p></p>
            <p>Mã đơn hàng:</p>
            <span><c:out value="${order.id}"/></span>
            <p>Tên người nhận:</p>
            <span><c:out value="${order.name}"/></span>
            <p>Số điện thoại:</p>
            <span><c:out value="${order.phone}"/></span>
            <p>Địa chỉ:</p>
            <span><c:out value="${order.address}"/></span>
            <c:forEach var="orderItem" items="${order.listOrder}">
                <p>Tên:</p>
                <span><c:out value="${orderItem.nameProduct}"/></span>
                <p>Số lượng:</p>
                <span><c:out value="${orderItem.numberProduct}"/></span>
                <p>Giá:</p>
                <span><c:out value="${orderItem.price}"/></span>
            </c:forEach>
            <p>Tổng tiền sản phầm: </p>
            <span><c:out value="${order.totalPrice}"/></span>
            <p>Phí giao hàng:</p>
            <span><c:out value="${order.shipMoney}"/></span>
            <p>Tổng tiền:</p>
            <span><c:out value="${order.shipMoney + order.totalPrice}"/></span>
        </div>
        <div class="form-report flex-center">
            <a href="#" class="button button__refuse">
                Hoàn hàng
            </a>
            <a href="staff-confirm?id=<c:out value="${order.id}"/>" class="button button__success">
                Giao hàng thành công
            </a>
        </div>
    </div>


</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
