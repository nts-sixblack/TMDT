<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:03 PM
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
  <link rel="stylesheet" href="./jquery/jquery.exzoom.css">
  <link href='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.css' rel='stylesheet' />
  <link rel="stylesheet" href="./css/color.css">
  <link rel="stylesheet" href="./css/cartt.css">
  <link rel="stylesheet" href="./css/header.css">
  <link rel="stylesheet" href="./css/footer.css">
  <link rel="stylesheet" href="./css/input_number.css">
  <title>Giỏ hàng</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
  <div class="cart-container">
    <c:choose>
      <c:when test="${countCartItem == 0}">
        <div class="cart-null">
        <img src="./images/cart/empty-cart.png" alt="">
        <p>Không có sản phẩm nào trong giỏ hàng của bạn.</p>
        <a href="home">Tiếp tục mua sắm</a>
        </div>
      </c:when>
      <c:otherwise>
        <div class="cart-main">
              <div class="cart">
                  <div class="cart_list-order">
                      <div class="navbar-cart_list-order">
                          <input type="checkbox" id="select-all" onchange="checkAll()">
                          <label for="select-all">Chọn tất cả</label>
                          <p>Đơn giá</p>
                          <p>Số lượng</p>
                          <p>Thành tiền</p>

                          <ion-icon name="trash-outline"></ion-icon>
                      </div>
                      <c:forEach var="shopCartItem" items="${list}">
                          <div class="card_cart-list-order">
                              <div class="select-shop">
                                  <input type="checkbox" name="" class="checkShop" onclick="checkShop(this)">
                                  <label><b><c:out value="${shopCartItem.shopName}"/></b></label>
<%--                                  kinh độ--%>
                                  <p hidden><c:out value="${shopCartItem.ward.log}"/></p>
<%--                                  vĩ độ--%>
                                  <p hidden><c:out value="${shopCartItem.ward.lat}"/></p>
                                  <p class="distance" hidden>0</p>
                              </div>

                              <!------------------------>
                              <ul>
                                  <c:forEach var="cartItem" items="${shopCartItem.list}">
                                      <li class="order-item">
                                          <input type="checkbox" class="select-item checkItem" onclick="choose()">
                                          <p hidden><c:out value="${cartItem.id}"/></p>
                                          <img src="<c:out value="${cartItem.image}"/>" alt="">
                                          <div class="in4-product">
                                              <h5><c:out value="${cartItem.nameProduct}"/></h5>
                                              <span class="type">
                                                  <c:forEach var="value" items="${cartItem.listValue}"><c:out value="${value.valueName}  "/></c:forEach>
<%--                                            Đen - 8TB - 1024GB RAM--%>
                                              </span>
                                          </div>
                                          <span class="current-price"><c:out value="${cartItem.price}"/></span>
                                          <div class='ctrl cart-poisition'>
                                              <div class='ctrl-button' onclick="decrement(this)">-</div>
                                              <div class='ctrl-counter'>
                                                  <input class='ctrl-counter-input ctrl-counter-num' maxlength='10' type='text' value='<c:out value="${cartItem.numberProduct}"/>'>
<%--                                                  <div class='ctrl-counter-num'>0</div>--%>
                                              </div>
                                              <div class='ctrl-button' onclick="increment(this)">+</div>
                                          </div>
                                          <div class="total-price">
                                              <b><c:out value="${cartItem.price * cartItem.numberProduct}"/></b>
                                          </div>
                                          <a href="deleteCartItem?cartItemId=<c:out value="${cartItem.id}"/>">
                                              <ion-icon name="trash-outline"></ion-icon>
                                          </a>
                                      </li>
                                  </c:forEach>
                              </ul>
                          </div>
                      </c:forEach>

                  </div>
                  <form action="add-order" method="post">
                      <div class="side-cart">
                          <div class="shipping-address">
                              <b>Giao tới</b>
                              <b><c:out value="${user.name}"/> | <c:out value="${user.phone}"/></b>
                              <p><c:out value="${ address.address}"/></p>
                              <input type="text" hidden name="address" value="<c:out value="${address.address}"/>">
<%--                              kinh độ--%>
                              <p hidden id="log"><c:out value="${address.log}"/></p>
<%--                              vĩ độ--%>
                              <p hidden id="lat"><c:out value="${address.lat}"/></p>
<%--                          <a>Thay đổi</a>--%>
                              <input type="text" hidden name="wardId" value="<c:out value="${address.wardId}"/>">
                          </div>
<%--                      <div class="cart-counpon">--%>
<%--                          <p>Khuyến mãi</p>--%>
<%--                          <a>--%>
<%--                              <ion-icon name="ticket-outline"></ion-icon>--%>
<%--                              Chọn hoặc nhập mã khuyến mãi--%>
<%--                          </a>--%>

<%--                      </div>--%>
                          <div class="price-item">
                              <p>Tạm tính</p>
                              <span id="sumPrice">0</span>
                              <p>Phí vận chuyển</p>
                              <span id="ship">0</span>
                          </div>
                          <input type="text" name="countItem" value="0" id="countItem" hidden>
                          <div hidden id="valueItem"></div>
                          <input type="text" name="totalPrice" id="price" value="0" hidden>
                          <input type="text" name="ship" id="totalMoneyShip" hidden value="0">
                          <div class="price-total">
                              <p>Tổng cộng:</p>
                              <span id="totalPrice"> 0 </span>
                          </div>
                          <button class="cart-submit" type="submit">
                              Mua hàng
                          </button>
                      </div>
                  </form>
              </div>
          </div>
      </c:otherwise>
    </c:choose>

  </div>
</div>
</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src='https://api.mapbox.com/mapbox-gl-js/v2.3.1/mapbox-gl.js'></script>
<script src="https://unpkg.com/@turf/turf@6/turf.min.js"></script>
<script src="./js/inputNumber.js"></script>
<script src="./js/cartt.js"></script>

</html>
