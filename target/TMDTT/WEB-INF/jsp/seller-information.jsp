<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:52 PM
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
            <form action="seller-update-information" method="post">
                <div class="seller_card-item">
                    <h3>Thông tin tài khoản</h3>
                    <div class="form-edit">
                        <p>Họ và Tên</p>
                        <input type="text" name="userName" value="<c:out value="${shop.userName}"/>">
                        <p hidden>Tên cửa hàng</p>
                        <input hidden type="text" name="name" value="<c:out value="${shop.name}"/>">
                        <p>Số điện thoại</p>
                        <input type="text" name="phone" value="<c:out value="${shop.phone}"/>">
                        <p>Địa chỉ</p>
                        <input type="text" name="address" value="<c:out value="${shop.address}"/>">
                        <p hidden>Email</p>
                        <input hidden type="text" name="email" value="<c:out value="${shop.email}"/>" placeholder="Email">
                        <%--                    <p>Giới tính</p>--%>
                        <%--                    <div class="select-gender">--%>
                        <%--                        <input type="radio" id="male" name="gender" value="male">--%>
                        <%--                        <label for="male">Nam</label>--%>
                        <%--                        <input type="radio" id="female" name="gender" value="female">--%>
                        <%--                        <label for="female">Nữ</label>--%>
                        <%--                    </div>--%>

                        <%--                    <p>Ngày sinh</p>--%>
                        <%--                    <div class="birdthday">--%>
                        <%--                        <input type="date">--%>
                        <%--                    </div>--%>
                        <div class="changePass-form" style="display: none;">
                            <p>Mật khẩu cũ</p>
                            <input type="password" placeholder="Nhập mật khẩu cũ">
                            <p>Mật khẩu mới</p>
                            <input type="password" placeholder="Mật khẩu từ 6 đến 32 kí tự">
                            <p>Nhập lại</p>
                            <input type="password" placeholder="Nhập lại mật khẩu mới">
                        </div>
                        <div class="btn-submit">
                            <button type="submit">
                                Cập nhật
                            </button>
                        </div>

                    </div>
                </div>
            </form>
        </div>

    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</html>
