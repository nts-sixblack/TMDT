<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/11/2021
  Time: 3:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kênh người bán</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/seller-profile.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>
<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>
    <div class="seller-content-container">
        <div class="seller_card-item profile-container">
            <div class="profile-container--title">
                <h2>Hồ Sơ Shop</h2>
                <span>Xem tình trạng Shop và cập nhật hồ sơ Shop của bạn</span>
            </div>
            <form action="seller-update-information-shop" method="post">
                <div class="profile-container--content">
                    <div class="side">
                        <div class="edit-img" style="background-image: url('<c:out value="${shop.background}"/>');">
                            <div class="seller-infor">
                                <img src="<c:out value="${shop.avatar}"/>" alt="">
                                <div class="text">
                                    <h4><c:out value="${shop.name}"/></h4>
                                    <%--                                <p>Tham gia ngày xx/yy/zzzz</p>--%>
                                    <%--                                <p>Người theo dõi: 0&nbsp;&nbsp;|&nbsp;&nbsp;Đang theo dõi: 0</p>--%>
                                </div>
                            </div>
                        </div>
                        <div class="btn-edit">
                            <label class="change-avt">
                                Cập nhật ảnh đại diện
                            </label>
                            <label class="change-bgr">
                                Cập nhật ảnh bìa
                            </label>
                        </div>
                        <input type="text" value="<c:out value="${shop.background}"/>" hidden name="background">
                        <input type="text" value="<c:out value="${shop.avatar}"/>" hidden name="avatar">
                    </div>
                    <div class="main">
                        <h3>Tên Shop</h3>
                        <input type="text" maxlength="50" value="<c:out value="${shop.name}"/> ">
                        <h3>
                            Mô tả hình ảnh
                        </h3>
                        <div class="inputImage-container">
                            <input type="file" id="file-input" accept="image/*" multiple hidden onchange="preview()">
                            <label for="file-input">
                                <ion-icon name="cloud-upload-outline"></ion-icon>
                                Choose Files
                            </label>
                            <span id="num-of-files">No files chosen</span>
                            <div class="box-inputImg" id="images">
                                <ion-icon name="images-outline"></ion-icon>
                            </div>
                            <input type="checkbox" onclick="save()">
                            <label>Xác nhận cập nhập ảnh </label>
                        </div>
                        <div id="quantityImage" hidden></div>
                        <div id="nameImage" hidden></div>
                        <h3>
                            Mô tả Shop
                        </h3>
                        <textarea id="w3review" name="w3review" rows="10">
                            <c:out value="${shop.decription}"/>
                        </textarea>
                    </div>
                    <div class="btn-save">
                        <button type="submit">Lưu</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://sdk.amazonaws.com/js/aws-sdk-2.982.0.min.js"></script>
<script src="./js/inputImageShopInformation.js"></script>
<script src="./js/onlyInputNumbers.js"></script>

</html>
