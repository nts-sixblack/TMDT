<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/9/2021
  Time: 9:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar">
    <ul class="sidebar__list-item">
        <li class="sidebar__item">
            <a href="shipper-listOrder">
                <ion-icon name="file-tray-full-outline"></ion-icon>
                <b>Đơn hàng</b>
            </a>
            <ul class="sidebar__list-childitem">
                <li class="sidebar__childitem">
                    <a href="shipper-listOrder">
                        <p>Tất cả Đơn hàng</p>
                    </a>
                </li>
                <li class="sidebar__childitem">
                    <a href="shipper-newOrder">
                        <p>Đơn hàng mới</p>
                    </a>
                </li>
                <li class="sidebar__childitem">
                    <a href="shipper-deliveried">
                        <p>Đơn hàng đang giao</p>
                    </a>
                </li>
                <li class="sidebar__childitem">
                    <a href="shipper-delivery">
                        <p>Đơn hàng đã giao</p>
                    </a>
                </li>
            </ul>
        </li>
        <li class="sidebar__item">
            <a href="shipper-listStaff">
                <ion-icon name="bicycle-outline"></ion-icon>
                <b>Người giao hàng</b>
            </a>
        </li>
        <li class="sidebar__item">
            <a href="shipper-unitInfo">
                <ion-icon name="settings-outline"></ion-icon>
                <b>Thông tin đơn vị</b>
            </a>
        </li>


    </ul>
</div>
