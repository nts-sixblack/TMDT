<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/9/2021
  Time: 9:36 PM
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
    <link rel="stylesheet" href="./css/shipper/shipper-newOrder.css">
    <link rel="stylesheet" href="./css/shipper/shipper-deliveryOrder.css">
    <title>Shipper</title>
</head>

<body>
<div class="header">
    <ul>
        <li class="header__logo">
            <img src="./images/logo.jpeg" alt="">
        </li>
        <li class="header__title">
            <p>Kênh Giao Hàng</p>
        </li>
        <li class="header__account">
            <a href="#">
                <img src="./images/seller-avt.jpeg" alt="avatar" class="header__account--avt">
                <p class="header__account--name">@SHIPPER NAME</p>
            </a>

        </li>
        <li class="header__notify">
            <ion-icon name="notifications-outline"></ion-icon>
            <div class="notify-box">
                <ul>

                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>

                </ul>
                <button>
                    <a href="#">Xem tất cả</a>
                </button>
            </div>
        </li>
        <li class="header__logout">
            <a href="#">
                <ion-icon name="log-out-outline"></ion-icon>
            </a>
        </li>
    </ul>
</div>

<jsp:include page="inc/sidebar.jsp"/>

<div class="main-container">
    <div class="newOrder-container">
        <h2>Đơn hàng mới</h2>
        <div class="filter-navbar">
            <input type="search" placeholder="Mã đơn hàng..">
            <p>Thời gian từ: </p>
            <input type="date">
            <p> - </p>
            <input type="date">
            <button type="submit" class="submitFilter">
                <ion-icon name="search-outline"></ion-icon>
            </button>
        </div>
        <div class="table-container box-shadow">
            <ul class="table__navbar-list">
                <li class="table__navbar-item">
                    Mã đơn hàng
                </li>
                <li class="table__navbar-item flex-center">
                    Hàng giao từ
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
                    Tổng tiền
                </li>
                <li class="table__navbar-item">
                    Phí giao hàng
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
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </li>
                    <li class="table__row-item">
                        3
                    </li>
                    <li class="table__row-item">
                        111.000 d
                    </li>
                    <li class="table__row-item">
                        333.000 d
                    </li>
                    <li class="table__row-item ">
                        33.000 d
                    </li>
                    <li class="table__row-item">
                        <a class="button button__accept">
                            Xác nhận giao hàng
                        </a>
                        <a class="button button__refuse">
                            Từ chối
                        </a>
                    </li>
                </ul>
                <ul class="table__row">
                    <li class="table__row-item">
                        #223kh423hk
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </li>

                    <li class="table__row-item flex-center ">
                        3
                    </li>
                    <li class="table__row-item">
                        111.000 d
                    </li>
                    <li class="table__row-item">
                        333.000 d
                    </li>
                    <li class="table__row-item ">
                        33.000 d
                    </li>
                    <li class="table__row-item flex-center">
                        <a class="button button__report" href="#">
                            Trạng thái đơn hàng
                        </a>
                    </li>
                </ul>
                <ul class="table__row">
                    <li class="table__row-item">
                        #223kh423hk
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </li>
                    <li class="table__row-item">
                        3
                    </li>
                    <li class="table__row-item">
                        111.000 d
                    </li>
                    <li class="table__row-item">
                        333.000 d
                    </li>
                    <li class="table__row-item ">
                        33.000 d
                    </li>
                    <li class="table__row-item flex-center">
                        <a class="button button__success">
                            Giao hàng thành công
                        </a>
                    </li>
                </ul>

                <ul class="table__row">
                    <li class="table__row-item">
                        #223kh423hk
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. </p>
                    </li>
                    <li class="table__row-item">
                        3
                    </li>
                    <li class="table__row-item">
                        111.000 d
                    </li>
                    <li class="table__row-item">
                        333.000 d
                    </li>
                    <li class="table__row-item ">
                        33.000 d
                    </li>
                    <li class="table__row-item flex-center">
                        <a class="button button__refuse">
                            Hoàn hàng
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
</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
