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
    <link rel="stylesheet" href="./css/shipper/shipper-unitInfo.css">

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
    <div class="unitInfo-container">
        <h2>Cập nhật thông tin</h2>
        <div class="info-form box-shadow">
            <p>Tên đơn vị: </p>
            <input type="text" value="@Name">
            <p>Số điện thoại hỗ trợ: </p>
            <input type="text" value="09423423423">
            <p>Thời gian hoạt động từ: </p>
            <input type="date">
            <p>đến: </p>
            <input type="date">
            <p><b>Giới hạn vận chuyển</b></p>
            <p></p>
            <p>Giá trị đơn hàng tối đa: </p>
            <input type="text">
            <p>Khối lượng tối đa: </p>
            <input type="text">
            <p>Cân nặng tối thiểu: </p>
            <input type="text">
            <p></p>
            <button class="button button__accept btn_update">
                Cập nhật
            </button>
        </div>



    </div>
</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
