<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 4:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<div class="header">
    <ul>
        <li class="header__logo">
            <img src="./images/logo.jpeg" alt="">
        </li>
        <li class="header__title">
            <p>Kênh Giao Hàng</p>
        </li>
        <li class="header__account">
            <a href="#">
                <img src="./images/seller-avt.jpeg" alt="avatar" class="header__account--avt">
                <p class="header__account--name"><c:out value="${shipper.name}"/></p>
            </a>

        </li>
        <li class="header__notify">
            <ion-icon name="notifications-outline"></ion-icon>
            <div class="notify-box">
                <ul>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>
                    <li class="item-notify">
                        <img src="./images/logo.jpeg" alt="">
                        <div class="content">
                            <h4>Cập nhật đơn hàng #fsdfsd</h4>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Numquam laboriosam sit consequuntur!</p>
                            <span><ion-icon name="time-outline"></ion-icon> xx/yy/zzzz</span>
                        </div>
                    </li>

                </ul>
                <button>
                    <a href="#">Xem tất cả</a>
                </button>
            </div>
        </li>
        <li class="header__logout">
            <a href="shipper-logout">
                <ion-icon name="log-out-outline"></ion-icon>
            </a>
        </li>
    </ul>
</div>

