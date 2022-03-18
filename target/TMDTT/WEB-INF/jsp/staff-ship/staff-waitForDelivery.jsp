<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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



            <ul class="table__row">
                <li class="table__row-item">
                    #223kh423hk
                </li>
                <li class="table__row-item">
                    Nguyen Van A
                </li>
                <li class="table__row-item">
                    09423423412
                </li>
                <li class="table__row-item">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                </li>
                <li class="table__row-item flex-center">
                    3
                </li>
                <li class="table__row-item">
                    111.000 d
                </li>
                <li class="table__row-item ">
                    33.000 d
                </li>
                <li class="table__row-item">
                    366.000 d
                </li>
                <li class="table__row-item flex-end">
                    <a class="button button__accept">
                        Nhận giao
                    </a>
                </li>
            </ul>

            <ul class="table__row">
                <li class="table__row-item">
                    #223kh423hk
                </li>
                <li class="table__row-item">
                    Nguyen Van A
                </li>
                <li class="table__row-item">
                    09423423412
                </li>
                <li class="table__row-item">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                </li>
                <li class="table__row-item flex-center">
                    3
                </li>
                <li class="table__row-item">
                    111.000 d
                </li>
                <li class="table__row-item ">
                    33.000 d
                </li>
                <li class="table__row-item">
                    366.000 d
                </li>
                <li class="table__row-item flex-end">
                    <a class="button button__picked">
                        Đã nhận
                    </a>
                </li>
            </ul>




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
