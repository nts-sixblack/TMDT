<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/shipper/inc/main-layout.css">
    <link rel="stylesheet" href="./css/shipper/inc/shipper-header.css">
    <link rel="stylesheet" href="./css/shipper/inc/sidebar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/staff-ship/staff-listOrder.css">

    <title>Staff</title>
</head>

<body>
<jsp:include page="inc/header.jsp"/>

<jsp:include page="inc/sidebar.jsp"/>

<div class="main-container">
    <div class="table-container box-shadow">
        <ul class="table__navbar-list">
            <li class="table__navbar-item">
                Mã đơn hàng
            </li>
            <li class="table__navbar-item">
                Tên người nhận
            </li>
            <li class="table__navbar-item">
                Số điện thoại
            </li>
            <li class="table__navbar-item flex-center">
                Hàng giao đến
            </li>
            <li class="table__navbar-item">
                Số lượng
            </li>
            <li class="table__navbar-item">
                Giá
            </li>

            <li class="table__navbar-item">
                Phí giao hàng
            </li>
            <li class="table__navbar-item">
                Tổng tiền
            </li>
            <li class="table__navbar-item">
                <!-- ///// -->
            </li>
        </ul>

        <div class="table-content">
            <!-- item-table -->
            <c:forEach items="${list}" var="order">
                <c:set var="index" value="1"/>
                <c:forEach var="orderItem" items="${order.listOrder}">
                    <ul class="table__row">
                        <li class="table__row-item">
                            <c:out value="${orderItem.id}"/>
                        </li>
                        <li class="table__row-item">
                            <c:out value="${order.name}"/>
                        </li>
                        <li class="table__row-item">
                            <c:out value="${order.phone}"/>
                        </li>
                        <li class="table__row-item">
                            <p><c:out value="${order.address}"/></p>
                        </li>
                        <li class="table__row-item flex-center">
                            <c:out value="${orderItem.numberProduct}"/>
                        </li>
                        <li class="table__row-item">
                            <c:out value="${orderItem.price}"/>
                        </li>
                        <li class="table__row-item ">
                            <c:if test="${index == 1}"><c:out value="${order.shipMoney}"/></c:if>
                        </li>
                        <li class="table__row-item">
                            <c:if test="${index == 1}"><c:out value="${order.totalPrice}"/></c:if>
                        </li>
                        <li class="table__row-item flex-end">
                            <a class="button button__report" href="staff-report?id=<c:out value="${order.id}"/>">
                                Báo cáo trạng thái
                            </a>
                        </li>
                    </ul>
                    <c:set var="index" value="2"/>
                </c:forEach>
            </c:forEach>

            <!-- empty item-table -->
            <ul class="table__content-empty">
                Không tìm thấy bản ghi nào!
            </ul>
        </div>

    </div>
</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>