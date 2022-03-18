<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/staff-ship/staff-sign.css">
    <title>Shipper</title>
</head>

<body>
<div class="bg">
    <h2>
        Đăng Nhập
    </h2>
    <form action="staff-login" method="post">
        <div class="form-input">
            <input type="text" name="email" placeholder="Tên đăng nhập">
            <input type="password" name="password" placeholder="Mật khẩu">
            <button type="submit">
                Đăng nhập
            </button>
        </div>
    </form>
</div>
</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
