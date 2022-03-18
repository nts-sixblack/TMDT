<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 8:57 PM
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
    <link rel="stylesheet" href="./css/account-edit.css">
    <link rel="stylesheet" href="./css/account-option.css">
    <title>Thông tin tài khoản</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="account-container">
        <div class="account-sideBar">
            <div class="account-infor">
                <img src="./images/avt/khacvu_avt.JPG">
                <p>Tài khoản của</p>
                <h4><c:out value="${user.name}"/></h4>
            </div>
            <div class="account-option">
                <ul>
                    <li>
                        <a href="user" class="is-active">
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
        <div class="account-edit">
            <h3>Thông tin tài khoản</h3>
            <form action="user-update-information" method="post">
                <div class="form-edit">
                    <input type="text" value="${user.id}" name="id" hidden>
                    <p>Họ và Tên</p>
                    <input type="text" value="<c:out value="${user.name}"/>" name="name">
                    <p>Số điện thoại</p>
                    <input type="text" value="<c:out value="${user.phone}"/>" name="phone">
                    <p>Email</p>
                    <input type="text" value="<c:out value="${user.email}"/>" placeholder="Email" name="email">
                    <p>Giới tính</p>
                    <div class="select-gender">
                        <c:choose>
                            <c:when test="${user.gender == 0}">
                                <input type="radio" id="male" name="gender" value="1">
                                <label for="male">Nam</label>
                                <input type="radio" id="female" name="gender" checked value="0">
                                <label for="female">Nữ</label>
                            </c:when>
                            <c:when test="${user.gender == 1}">
                                <input type="radio" id="male" name="gender" checked value="1">
                                <label for="male">Nam</label>
                                <input type="radio" id="female" name="gender" value="0">
                                <label for="female">Nữ</label>
                            </c:when>
                            <c:otherwise>
                                <input type="radio" id="male" name="gender" value="1">
                                <label for="male">Nam</label>
                                <input type="radio" id="female" name="gender" value="0">
                                <label for="female">Nữ</label>
                            </c:otherwise>
                        </c:choose>

                    </div>

                    <%--                <p>Ngày sinh</p>--%>
                    <%--                <div class="birdthday">--%>
                    <%--                    <input type="gender" name="gender">--%>
                    <%--                    <select>--%>
                    <%--                        <option value="0">Ngày</option>--%>
                    <%--                        <option value="1">1</option>--%>
                    <%--                        <option value="2">2</option>--%>
                    <%--                        <option value="3">3</option>--%>
                    <%--                        <option value="4">4</option>--%>
                    <%--                        <option value="5">5</option>--%>
                    <%--                        <option value="6">6</option>--%>
                    <%--                        <option value="7">7</option>--%>
                    <%--                        <option value="8">8</option>--%>
                    <%--                        <option value="9">9</option>--%>
                    <%--                        <option value="10">10</option>--%>
                    <%--                        <option value="11">11</option>--%>
                    <%--                        <option value="12">12</option>--%>
                    <%--                        <option value="13">13</option>--%>
                    <%--                        <option value="14">14</option>--%>
                    <%--                        <option value="15">15</option>--%>
                    <%--                        <option value="16">16</option>--%>
                    <%--                        <option value="17">17</option>--%>
                    <%--                        <option value="18">18</option>--%>
                    <%--                        <option value="19">19</option>--%>
                    <%--                        <option value="20">20</option>--%>
                    <%--                        <option value="21">21</option>--%>
                    <%--                        <option value="22">22</option>--%>
                    <%--                        <option value="23">23</option>--%>
                    <%--                        <option value="24">24</option>--%>
                    <%--                        <option value="25">25</option>--%>
                    <%--                        <option value="26">26</option>--%>
                    <%--                        <option value="27">27</option>--%>
                    <%--                        <option value="28">28</option>--%>
                    <%--                        <option value="29">29</option>--%>
                    <%--                        <option value="30">30</option>--%>
                    <%--                        <option value="31">31</option>--%>
                    <%--                    </select>--%>
                    <%--                    <select>--%>
                    <%--                        <option value="0">Tháng</option>--%>
                    <%--                        <option value="1">1</option>--%>
                    <%--                        <option value="2">2</option>--%>
                    <%--                        <option value="3">3</option>--%>
                    <%--                        <option value="4">4</option>--%>
                    <%--                        <option value="5">5</option>--%>
                    <%--                        <option value="6">6</option>--%>
                    <%--                        <option value="7">7</option>--%>
                    <%--                        <option value="8">8</option>--%>
                    <%--                        <option value="9">9</option>--%>
                    <%--                        <option value="10">10</option>--%>
                    <%--                        <option value="11">11</option>--%>
                    <%--                        <option value="12">12</option>--%>
                    <%--                    </select>--%>
                    <%--                    <input type="text" placeholder="Năm sinh">--%>
                    <%--                </div>--%>
                    <div class="changePass-form" style="display: none;">
                        <p>Mật khẩu cũ</p>
                        <input type="password" placeholder="Nhập mật khẩu cũ">
                        <p>Mật khẩu mới</p>
                        <input type="password" placeholder="Mật khẩu từ 6 đến 32 kí tự">
                        <p>Nhập lại</p>
                        <input type="password" placeholder="Nhập lại mật khẩu mới">
                    </div>
                    <div class="btn-submit">
                        <button type="submit">
                            Cập nhật
                        </button>
                    </div>

                </div>

            </form>
        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</html>
