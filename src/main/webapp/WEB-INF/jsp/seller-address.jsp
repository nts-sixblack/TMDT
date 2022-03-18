<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/18/2021
  Time: 5:16 PM
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
  <title>Kênh người bán</title>
  <link rel="stylesheet" href="./css/seller-navbar.css">
  <link rel="stylesheet" href="./css/color.css">
  <link rel="stylesheet" href="./css/seller-address.css">
  <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
  <jsp:include page="include/seller-sidebar.jsp"/>

  <div class="seller-content-container">
    <div class="address-container seller_card-item">
      <div class="head-box">
        <div class="title">
          <h3>Địa Chỉ</h3>
          <p>Quản lý việc vận chuyển và địa chỉ giao hàng của bạn</p>
        </div>
        <c:if test="${count == 0}">
          <a class="btn-address" href="seller-create-address">
            <ion-icon name="add-outline"></ion-icon>
            <p>Thêm Địa Chỉ Mới</p>
          </a>
        </c:if>
      </div>

      <c:choose>
        <c:when test="${count > 0}">
          <ul class="list-address">
            <c:forEach var="address" items="${list}">
              <li class="list-item">
                <i class="fas fa-map-marked-alt"></i>
                <ul class="properties-address">
<%--                  <c:if test="${address.defaul > 0}">--%>
<%--                    <li>Địa chỉ mặc định</li>--%>
<%--                  </c:if>--%>
<%--                  <c:if test="${address.receive > 0}">--%>
<%--                    <li>Địa chỉ nhận hàng</li>--%>
<%--                  </c:if>--%>
<%--                  <c:if test="${address.returnn > 0}">--%>
<%--                    <li>Địa chỉ trả hàng</li>--%>
<%--                  </c:if>--%>
                </ul>
                <div class="content">
                  <p>Họ & Tên: </p>
                  <span><c:out value="${address.name}"/></span>
                  <p>Số điện thoại:</p>
                  <span><c:out value="${address.phone}"/></span>
                  <p>Địa chỉ:</p>
                  <span><c:out value="${address.decription}, ${address.address}"/></span>
                </div>
                <a href="seller-delete-address?addressId=<c:out value="${address.id}"/>" class="btn-edit">Xóa</a>
              </li>
            </c:forEach>
          </ul>
        </c:when>
        <c:otherwise>
          <div class="empty-list">
            <img src="./images/empty_order.png" alt="">
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
