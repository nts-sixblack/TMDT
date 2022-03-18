<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="sidebar">
    <ul class="sidebar__list-item">
        <li class="sidebar__item">
            <a href="#">
                <ion-icon name="file-tray-full-outline"></ion-icon>
                <b>Đơn hàng</b>
            </a>
            <ul class="sidebar__list-childitem">
                <li class="sidebar__childitem">
                    <a href="staff-wait">
                        <p>Hàng chờ giao</p>
                    </a>
                    <a href="staff-delivering">
                        <p>Hàng đang giao</p>
                    </a>
                    <a href="staff-delivered">
                        <p>Hàng đã giao</p>
                    </a>
                </li>

            </ul>
        </li>

        <li class="sidebar__item">
            <a href="#">
                <ion-icon name="settings-outline"></ion-icon>
                <b>Thiết lập</b>
            </a>
            <ul class="sidebar__list-childitem">
                <li class="sidebar__childitem">
                    <a href="staff-account">
                        <p>Tài khoản</p>
                    </a>
<%--                    <a href="staff-profile.html">--%>
<%--                        <p>Thông tin cá nhân</p>--%>
<%--                    </a>--%>
                </li>
            </ul>
        </li>


    </ul>
</div>

