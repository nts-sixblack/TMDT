<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html lang="en">--%>

<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <link rel="stylesheet" href="./css/header.css">--%>
<%--    <link rel="stylesheet" href="./css/footer.css">--%>
<%--    <link rel="stylesheet" href="./css/color.css">--%>
<%--    <title>Document</title>--%>
<%--</head>--%>

<%--<body>--%>
<div class="header-container">
    <div class="header-logo">
        <a href="#">
            <img src="./images/logo.jpeg">
        </a>
    </div>
    <div class="header-search">
        <input type="text" placeholder="Tìm kiếm ...">
        <ion-icon name="search-outline"></ion-icon>
    </div>
    <div class="header-cart">
        <ion-icon name="cart-outline"></ion-icon>
        <span>0</span>
    </div>
    <div class="header-account">
        <ion-icon name="person-outline"></ion-icon>

        <!-------------//NOT SIGNED IN------------>
        <div class="header-account-text">
            <p>Đăng kí/ Đăng nhập</p>
            <p>Tài Khoản</p>
        </div>

        <div class="header-account-option">
            <div class="header-account-option-item">

                <a href="#">Đăng Nhập</a>
            </div>
            <div class="header-account-option-item">
                <a href="#">Đăng Kí</a>
            </div>
            <div class="header-account-option-item">
                <i class="fab fa-facebook-f"></i>
                <a href="#">Đăng nhập bằng Facebook</a>
            </div>
            <div class="header-account-option-item">
                <i class="fab fa-google"></i>
                <a href="#">Đăng nhập bằng Google</a>
            </div>
        </div>

        <!-------------//SIGNED IN------------>
        <!-- <div class="header-account-text">
            <p>Tài Khoản</p>
            <p>
                @username
                <i class="fas fa-caret-down"></i>
            </p>
        </div>

        <div class="header-account-option">
            <ul class="header-account-properties-option">
                <li>Tài khoản của tôi</li>
                <li>Đơn mua</li>
                <li>Thông báo</li>
                <li>Hỗ trợ</li>
                <li>Đăng xuất</li>
            </ul>
        </div> -->
        <!---------------------------------------->
    </div>
    <div class="header-search-suggested">
        <p>Đề xuất:</p>
        <ul>
            <li>abc</li>
            <li>abc</li>
            <li>abc</li>
            <li>abc</li>
            <li>abc</li>
        </ul>
    </div>
    <div class="header-seller">
        <a href="#">
            <ion-icon name="storefront-outline"></ion-icon>
            <p>Kênh bán hàng</p>
        </a>
    </div>
</div>
<div class="main-container">

</div>
<div class="footer-container">
    <div class="nguyenthanhsau footer">
        <div class="footer_avt-author">
            <img src="https://static2.yan.vn/YanNews/2167221/202102/facebook-cap-nhat-avatar-doi-voi-tai-khoan-khong-su-dung-anh-dai-dien-e4abd14d.jpg">
            <div class="name-author">
                <h3>Nguyễn Thanh Sáu</h3>
            </div>
        </div>
        <div class="number_phone author_grid">
            <ion-icon name="call-outline"></ion-icon>
            <span><b>Number phone</b></span>
            <span>0987654321</span>
        </div>
        <a class="link_fb author_grid" href="https://www.facebook.com/SixBlack0000">
            <ion-icon name="logo-facebook"></ion-icon>
            <span><b>Facebook</b></span>
            <span>Thanh Sáu</span>
        </a>
        <a class="link_email author_grid" href="#">
            <ion-icon name="mail-outline"></ion-icon>
            <span><b>Email</b></span>
            <span>ntsau.20it7@vku.udn.vn</span>
        </a>
        <a class="link_insta author_grid" href="#">
            <ion-icon name="logo-instagram"></ion-icon>
            <span><b>Instagram</b></span>
            <span>nts_sixblack</span>
        </a>



    </div>
    <div class="nguyenkhacvu footer">
        <div class="footer_avt-author">
            <img src="../images/avt/khacvu_avt.JPG">
            <div class="name-author">
                <h3>Nguyễn Khắc Vũ</h3>
            </div>
        </div>
        <div class="number_phone author_grid">
            <ion-icon name="call-outline"></ion-icon>
            <span><b>Number phone</b></span>
            <span>0943709345</span>
        </div>
        <a class="link_fb author_grid" href="https://www.facebook.com/heisvu">
            <ion-icon name="logo-facebook"></ion-icon>
            <span><b>Facebook</b></span>
            <span>Khac Vu</span>
        </a>
        <a class="link_email author_grid" href="#">
            <ion-icon name="mail-outline"></ion-icon>
            <span><b>Email</b></span>
            <span>nkvu.20it7@vku.udn.vn</span>
        </a>
        <a href="https://voz.vn/u/vunk123.1749791/" class="link_voz author_grid">
            <img src="../images/icon/logo_voz.png" alt="">
            <span><b>VOZ</b></span>
            <span>vunk123</span>
        </a>

    </div>
</div>

<%--</body>--%>
<%--<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>--%>
<%--<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>--%>
<%--<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>--%>

<%--</html>--%>
