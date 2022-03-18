<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:51 PM
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
    <title>Kênh người bán</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
    <link rel="stylesheet" href="./css/seller-infor.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>
    <div class="seller-content-container">
        <div class="seller-inf-container">
            <div class="seller_card-item">
                <h3>Đổi mật khẩu</h3>
                <form action="seller-changepass-controller" method="post">
                    <div class="form-edit">

                        <p>Mật khẩu cũ</p>
                        <input type="password" name="oldPassword" placeholder="Nhập mật khẩu cũ">
                        <p>Mật khẩu mới</p>
                        <input type="password" name="newPassword" placeholder="Mật khẩu từ 6 đến 32 kí tự">
                        <p>Nhập lại</p>
                        <input type="password" placeholder="Nhập lại mật khẩu mới">
                        <div class="btn-submit">
                            <button onclick="setVisible_changePass();" type="submit">
                                Đổi mật khẩu
                            </button>
                        </div>

                    </div>
                </form>

            </div>
        </div>

    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</html>
