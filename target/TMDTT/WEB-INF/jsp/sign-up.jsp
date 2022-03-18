<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:54 PM
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
  <title>Đăng ký tài khoản</title>
  <link rel="stylesheet" href="./css/sign-in.css">
  <link rel="stylesheet" href="./css/color.css">
</head>

<body>
<div class="header-bar">
  <div class="header-bar-logo">
    <img src="./images/logo.jpeg" alt="">
  </div>
  <div class="header-bar-name">
    <p>Tạo tài khoản</p>
  </div>
  <div class="header-bar-support">
    <a href="#">Cần trợ giúp?</a>
  </div>
</div>
<div class="container">
  <div class="img">
    <img src="./images/sign-up.png" alt="">
  </div>
  <form action="registration" method="post">
    <div class="form-signin">
      <p>Đăng kí tài khoản</p>
      <%--    <input type="text" placeholder="Số điện thoại" maxlength="15" onkeypress="isInputNumbers(event)">--%>
      <%--    <input type="text" placeholder="Tạo tên đăng nhập" maxlength="50" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}">--%>
      <input type="text" name="name" placeholder="Họ và tên" maxlength="50">
      <input type="mail" name="email" placeholder="Địa chỉ email" maxlength="50">
      <input type="password" name="password" placeholder="Đặt mật khẩu từ 6 kí tự trở lên" id="createPass" onchange="minValue();">
      <input type="password" placeholder="Nhập lại mật khẩu" id="confPass" onkeyup="comparePass();">
      <button type="submit">
        <label id="btnCreateAccount">
          Tạo tài khoản
        </label>
      </button>
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
      <span><a href="sign-in">Đăng nhập</a></span>
      <span id="signup-status">

            </span>
    </div>
  </form>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script src="./js/sign-in.js"></script>
<script src="./js/onlyInputNumbers.js"></script>

</html>
