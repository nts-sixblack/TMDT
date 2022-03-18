<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 8:58 PM
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
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/account-notify.css">
    <link rel="stylesheet" href="./css/account-option.css">
    <title>Thông báo</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="account-container">
        <div class="account-sideBar">
            <div class="account-infor">
                <img src="./images/avt/khacvu_avt.JPG">
                <p>Tài khoản của</p>
                <h4>@username</h4>
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
                        <a href="user-notifycation" class="is-active">
                            <ion-icon name="notifications-circle-outline"></ion-icon>
                            <p>Thông báo</p>
                        </a>
                    </li>
                    <li>
                        <a href="user-address">
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
        <div class="account-notify">
            <h3>Thông báo</h3>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>
            <div class="card_notify">
                <img src="./images/img-products/iphone5.jpeg" alt="">
                <h4>Bạn có đơn hàng đang được giao đến</h4>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Praesentium sint ipsam inventore eos magni deserunt quas debitis amet quibusdam dignissimos omnis natus, corrupti cumque consectetur minus distinctio ad dolorem sit? Explicabo
                    ea enim atque maiores nemo earum tempore. Sit, molestiae?</p>
                <button>Xem chi tiết</button>
            </div>


        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
