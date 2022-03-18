<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="seller-sidebar">
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="cube-outline"></ion-icon>
      <b>Vận chuyển</b>
    </a>
    <ul>
      <li>
        <a href="seller-to-ship">Quản lí vận chuyển</a>
      </li>
      <li>
        <a href="#">Cài đặt vận chuyển</a>
      </li>
    </ul>
  </div>
  <div class="sidebar-menu-item">
    <a href="seller-order">
      <ion-icon name="reader-outline"></ion-icon>
      <b>Quản lí đơn hàng</b>
    </a>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="bag-handle-outline"></ion-icon>
      <b>Quản lí sản phẩm</b>
    </a>
    <ul>
      <li>
        <a href="seller-all-product">Tất cả sản phẩm</a>
      </li>
      <li>
        <a href="seller-addproduct">Thêm sản phẩm</a>
      </li>
      <li>
        <a href="#">Sản phẩm vi phạm</a>
      </li>
    </ul>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="pricetags-outline"></ion-icon>
      <b>Kênh Marketing</b>
    </a>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="wallet-outline"></ion-icon>
      <b>Tài chính</b>
    </a>
    <ul>
      <li>
        <a href="seller-income">Doanh thu</a>
      </li>
      <li>
        <a href="#">Tài khoản ngân hàng</a>
      </li>
      <li>
        <a href="#">Thiết lập thanh toán</a>
      </li>
    </ul>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="stats-chart-outline"></ion-icon>
      <b>Dữ liệu</b>
    </a>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="chatbubbles-outline"></ion-icon>
      <b>Chăm sóc khách hàng</b>
    </a>

  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="storefront-outline"></ion-icon>
      <b>Quản lí Shop</b>
    </a>
    <ul>
      <li>
        <a href="seller-rating">Đánh giá Shop</a>
      </li>
      <li>
        <a href="seller-profile">Hồ sơ Shop</a>
      </li>
      <li>
        <a href="#">Báo cáo của tôi</a>
      </li>

    </ul>
  </div>
  <div class="sidebar-menu-item">
    <a href="#">
      <ion-icon name="settings-outline"></ion-icon>
      <b>Thiết lập shop</b>
    </a>
    <ul>
      <li>
        <a href="seller-address">Địa chỉ</a>
      </li>
      <li>
        <a href="seller-information">Tài khoản</a>
      </li>
      <li>
        <a href="seller-changepass">Đổi mật khẩu</a>
      </li>
    </ul>
  </div>
  <div class="sidebar-menu-item">
    <a href="seller-logout">
      <ion-icon name="log-out-outline"></ion-icon>
      <b>Đăng xuất</b>
    </a>
  </div>
</div>
