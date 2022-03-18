<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/9/2021
  Time: 8:26 PM
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
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="./css/sign-in.css">
    <link rel="stylesheet" href="./css/color.css">
</head>

<body>
<div class="header-bar">
    <div class="header-bar-logo">
        <img src="https://logodownload.org/wp-content/uploads/2014/09/google-logo-1.png">
    </div>
    <div class="header-bar-name">
        <p>Kênh bán hàng</p>
    </div>
    <div class="header-bar-support">
        <a href="#">Cần trợ giúp?</a>
    </div>
</div>
<div class="container">
    <form action="shipper-login" method="post">
        <div class="form-signin seller">
            <p>Đăng Nhập</p>
            <form action="shipper-login" method="post">
                <input type="text" name="email" placeholder="Email">
                <input type="password" name="password" placeholder="Mật khẩu">
                <button type="submit">
                    <label>
                        Đăng nhập
                    </label>
                </button>
            </form>

            <a href="#">Quên mật khẩu</a>
            <span>Hoặc tiếp tục bằng</span>
            <hr>
            <div class="other-with">
                <label class="other-with-item">
                    <i class="fab fa-facebook-f"></i>
                    <p>Facebook</p>
                </label>
                <label class="other-with-item">
                    <i class="fab fa-google"></i>
                    <p>Google</p>
                </label>
            </div>
            <span>Chưa có tài khoản? <a href="seller-signup">Đăng kí</a></span>
            <%--        <span class="status">Sai mật khẩu....</span>--%>
        </div>
    </form>
    <div class="img">
        <img src="./images/seller-sign-in.png" alt="">
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>

</html>

