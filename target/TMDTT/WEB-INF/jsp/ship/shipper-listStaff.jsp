<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/9/2021
  Time: 9:37 PM
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
    <link rel="stylesheet" href="./css/shipper/shipper-listStaff.css">
    <title>Shipper</title>
</head>

<body>
<div class="header">
    <ul>
        <li class="header__logo">
            <img src="=./images/logo.jpeg" alt="">
        </li>
        <li class="header__title">
            <p>Kênh Giao Hàng</p>
        </li>
        <li class="header__account">
            <a href="#">
                <img src="=./images/seller-avt.jpeg" alt="avatar" class="header__account--avt">
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
        <h2>Danh sách người giao hàng</h2>
        <div class="filter-navbar">
            <input type="search" placeholder="Mã nhân viên"..>
            <select name="" id="">
                <option value="">Khu vực</option>
                <option value=""></option>
                <option value=""></option>
            </select>
            <button type="submit" class="submitFilter">
                <ion-icon name="search-outline"></ion-icon>
            </button>
        </div>
        <div class="table-container box-shadow">
            <ul class="table__navbar-list">
                <li class="table__navbar-item">
                    <!-- ////// -->
                </li>
                <li class="table__navbar-item">
                    Tên
                </li>
                <li class="table__navbar-item">
                    CCCD/CMND
                </li>
                <li class="table__navbar-item">
                    Ngày sinh
                </li>
                <li class="table__navbar-item">
                    Số điện thoại
                </li>
                <li class="table__navbar-item">
                    Khu vực
                </li>
                <li class="table__navbar-item">
                    <!-- ////// -->
                </li>
            </ul>
            <div class="table-content">
                <ul class="table__row">
                    <li class="table__row-item avatar">
                        <img src="./images/seller-avt.jpeg" alt="">
                    </li>
                    <li class="table__row-item">
                        <p>Nguyen Van A</p>
                    </li>
                    <li class="table__row-item">
                        <p>42342342342</p>
                    </li>
                    <li class="table__row-item">
                        <p>22/33/1023</p>
                    </li>
                    <li class="table__row-item">
                        <p>09423423234</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam, harum?</p>
                    </li>
                    <li class="table__row-item ">
                        <a href="#" class="button button__accept">
                            Thông tin chi tiết
                        </a>
                        <a href="#" class="button button__refuse">
                            Khai trừ
                        </a>
                    </li>
                </ul>
                <ul class="table__row">
                    <li class="table__row-item avatar">
                        <img src="./images/seller-avt.jpeg" alt="">
                    </li>
                    <li class="table__row-item">
                        <p>Nguyen Van A</p>
                    </li>
                    <li class="table__row-item">
                        <p>42342342342</p>
                    </li>
                    <li class="table__row-item">
                        <p>22/33/1023</p>
                    </li>
                    <li class="table__row-item">
                        <p>09423423234</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam, harum?</p>
                    </li>
                    <li class="table__row-item ">
                        <a href="#" class="button button__accept">
                            Thông tin chi tiết
                        </a>
                        <a href="#" class="button button__refuse">
                            Khai trừ
                        </a>
                    </li>
                </ul>
                <ul class="table__row">
                    <li class="table__row-item avatar">
                        <img src="./images/seller-avt.jpeg" alt="">
                    </li>
                    <li class="table__row-item">
                        <p>Nguyen Van A</p>
                    </li>
                    <li class="table__row-item">
                        <p>42342342342</p>
                    </li>
                    <li class="table__row-item">
                        <p>22/33/1023</p>
                    </li>
                    <li class="table__row-item">
                        <p>09423423234</p>
                    </li>
                    <li class="table__row-item">
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ullam, harum?</p>
                    </li>
                    <li class="table__row-item ">
                        <a href="#" class="button button__accept">
                            Thông tin chi tiết
                        </a>
                        <a href="#" class="button button__refuse">
                            Khai trừ
                        </a>
                    </li>
                </ul>
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
