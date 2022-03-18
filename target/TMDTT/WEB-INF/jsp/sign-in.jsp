<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<html>
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
        <p>Đăng Nhập</p>
    </div>
    <div class="header-bar-support">
        <a href="#">Cần trợ giúp?</a>
    </div>
</div>
<div class="container">
    <form action="login" method="post">
        <div class="form-signin">
            <p>Đăng Nhập</p>
            <input type="text" placeholder="Email/Số điện thoại/Tên đăng nhập" name="username">
            <input type="password" placeholder="Mật khẩu" name="password">
            <label>
                <button type="submit">
                    Đăng nhập
                </button>
            </label>

            <a href="#">Quên mật khẩu</a>
            <span>Hoặc tiếp tục bằng</span>
            <hr>
            <div class="other-with">
                <input type="text" hidden id="facebook">
                <label for="facebook" class="other-with-item">
                    <i class="fab fa-facebook-f"></i>
                    <p>Facebook</p>
                </label>
                <input type="text" hidden id="google">
                <label for="google" class="other-with-item">
                    <i class="fab fa-google"></i>
                    <p>Google</p>
                </label>
            </div>
            <span>Chưa có tài khoản? <a href="sign-up">Đăng kí</a></span>
        </div>
    </form>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
</html>
