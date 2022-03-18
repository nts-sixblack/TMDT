<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<div class="seller-navbar">
  <img src="./images/logo.jpeg">
  <div class="content-box">
    <p>Kênh người bán</p>
  </div>
  <div class="seller-infor">
    <img src="./images/seller-avt.jpeg">
    <p><c:out value="${shopName}"/></p>
  </div>
<%--  <div class="navbar-action">--%>
<%--    <div class="notification-wrap">--%>
<%--      <ion-icon name="notifications-outline"></ion-icon>--%>
<%--    </div>--%>
<%--    <div class="dropdown-btn">--%>
<%--      <ion-icon name="grid-outline"></ion-icon>--%>
<%--    </div>--%>
<%--  </div>--%>
</div>

