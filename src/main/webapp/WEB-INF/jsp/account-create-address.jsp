<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/18/2021
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/account-option.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
    <link rel="stylesheet" href="./css/account-create-address.css">
    <title>Document</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>
<div class="main-container">
    <div class="account-container">
        <div class="account-sideBar">
            <div class="account-infor">
                <img src="./images/avt/khacvu_avt.JPG">
                <p>Tài khoản của</p>
                <h4><c:out value="${name}"/></h4>
            </div>
            <div class="account-option">
                <ul>
                    <li>
                        <a href="user">
                            <ion-icon name="person-circle-outline"></ion-icon>
                            <p>Thông tin tài khoản</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-changepass">
                            <ion-icon name="lock-open-outline"></ion-icon>
                            <p>Đổi mật khẩu</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-notifycation">
                            <ion-icon name="notifications-circle-outline"></ion-icon>
                            <p>Thông báo</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-address" class="is-active">
                            <ion-icon name="navigate-circle-outline"></ion-icon>
                            <p>Sổ địa chỉ</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-order">
                            <ion-icon name="document-text-outline"></ion-icon>
                            <p>Đơn hàng</p>
                        </a>
                    </li>

                </ul>
            </div>

        </div>
        <div class="account-create-address">
            <h3>Tạo địa chỉ mới</h3>
            <form action="add-address-controller" method="post">
                <div class="form-input seller_card-item">
                    <input hidden type="text" name="email" value="<c:out value="${email}"/>">
                    <p>Họ và tên:</p>
                    <input type="text" placeholder="Nhập họ tên" name="name">
                    <p>Số điện thoại:</p>
                    <input type="text" placeholder="Nhập số điện thoại" name="phone">
                    <p>Tỉnh/Thành phố:</p>
                    <select name="province" id="province" onchange="loadDistrict()">
                        <option value="">---</option>
                        <c:forEach var="ward" items="${listProvince}">
                            <option value="<c:out value="${ward.id}"/>"><c:out value="${ward.address}"/></option>
                        </c:forEach>
                    </select>
                    <p>Quận huyện:</p>
                    <select name="district" id="district" onchange="loadWard()">
                        <option>--</option>
                    </select>
                    <p>Phường xã:</p>
                    <select name="ward" id="ward">
                        <option>--</option>
                    </select>
                    <p>Địa chỉ:</p>
                    <textarea name="decription" id="" rows="7" placeholder="Nhập địa chỉ"></textarea>
                    <%--                <input type="checkbox" id="is-default">--%>
                    <%--                <label for="is-default">--%>
                    <%--                    Đặt làm địa chỉ mặc định--%>
                    <%--                </label>--%>
                    <button class="submit">
                        Cập nhật
                    </button>
                </div>
            </form>

        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function loadDistrict(){
        var provinceId = document.getElementById("province").value
        $.ajax({
            url: "/TMDT/listDistrict",
            type: "post",
            data: {
                provinceId:provinceId
            },
            success: function(data){
                var list = document.getElementById("district");
                list.innerHTML = data;
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
    function loadWard(){
        var districtId = document.getElementById("district").value
        $.ajax({
            url: "/TMDT/listWard",
            type: "post",
            data: {
                districtId:districtId
            },
            success: function(data){
                var list = document.getElementById("ward");
                list.innerHTML = data;
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
</script>

</html>
