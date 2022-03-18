<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%--<div class="header-container">--%>
<%--    <div class="header-logo">--%>
<%--        <a href="home">--%>
<%--            <img src="./images/logo.jpeg">--%>
<%--        </a>--%>
<%--    </div>--%>
<%--    <div class="header-search">--%>
<%--        <input type="text" placeholder="Tìm kiếm ...">--%>
<%--        <ion-icon name="search-outline"></ion-icon>--%>
<%--    </div>--%>
<%--    <div class="header-cart">--%>
<%--        <c:choose>--%>
<%--            <c:when test="${login > 0}">--%>
<%--                <a href="cart">--%>
<%--                    <ion-icon name="cart-outline"></ion-icon>--%>
<%--                    <span><c:out value="${countCartItem}"/></span>--%>
<%--                </a>--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <a href="sign-in">--%>
<%--                    <ion-icon name="cart-outline"></ion-icon>--%>
<%--                    <span>0</span>--%>
<%--                </a>--%>
<%--            </c:otherwise>--%>
<%--        </c:choose>--%>
<%--    </div>--%>
<%--    <div class="header-account">--%>
<%--        <ion-icon name="person-outline"></ion-icon>--%>

<%--        <c:choose>--%>
<%--            <c:when test="${login > 0}">--%>
<%--                <!-------------//SIGNED IN------------>--%>
<%--                <div class="header-account-text">--%>
<%--                    <p>Tài Khoản</p>--%>
<%--                    <p>--%>
<%--                        <c:out value="${name}"/>--%>
<%--                        <i class="fas fa-caret-down"></i>--%>
<%--                    </p>--%>
<%--                </div>--%>

<%--                <div class="header-account-option">--%>
<%--                    <ul class="header-account-list-option">--%>
<%--                        <li><a href="user">Tài khoản của tôi</a></li>--%>
<%--                            &lt;%&ndash;                <li>Đơn mua</li>&ndash;%&gt;--%>
<%--                        <li><a href="user-notifycation">Thông báo</a></li>--%>
<%--                        <li><a href="#">Hỗ trợ</a></li>--%>
<%--                        <li><a href="log-out">Đăng xuất</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--                <!---------------------------------------->--%>
<%--            </c:when>--%>
<%--            <c:otherwise>--%>
<%--                <!-------------//NOT SIGNED IN------------>--%>
<%--                <div class="header-account-text">--%>
<%--                    <p>Đăng kí/ Đăng nhập</p>--%>
<%--                    <p>Tài Khoản </p>--%>
<%--                </div>--%>

<%--                <div class="header-account-option">--%>
<%--                    <div class="header-account-option-item">--%>

<%--                        <a href="sign-in">Đăng Nhập</a>--%>
<%--                    </div>--%>
<%--                    <div class="header-account-option-item">--%>
<%--                        <a href="sign-up">Đăng Kí</a>--%>
<%--                    </div>--%>
<%--                    <div class="header-account-option-item">--%>
<%--                        <i class="fab fa-facebook-f"></i>--%>
<%--                        <a href="#">Đăng nhập bằng Facebook</a>--%>
<%--                    </div>--%>
<%--                    <div class="header-account-option-item">--%>
<%--                        <i class="fab fa-google"></i>--%>
<%--                        <a href="#">Đăng nhập bằng Google</a>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--&lt;%&ndash;                ------------------------------------&ndash;%&gt;--%>
<%--            </c:otherwise>--%>
<%--        </c:choose>--%>

<%--    </div>--%>
<%--    <div class="header-search-suggested">--%>
<%--        <p>Đề xuất:</p>--%>
<%--        <ul>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--        </ul>--%>
<%--    </div>--%>
<%--    <div class="header-seller">--%>
<%--        <a href="seller-signin">--%>
<%--            <ion-icon name="storefront-outline"></ion-icon>--%>
<%--            <p>Kênh bán hàng</p>--%>
<%--        </a>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div class="header-seller">--%>
<%--    <a href="seller-index.html">--%>
<%--        <ion-icon name="storefront-outline"></ion-icon>--%>
<%--        <p>Bán Hàng Cùng Chúng Tôi</p>--%>
<%--    </a>--%>
<%--</div>--%>

<div class="header-container">
    <div class="header-logo">
        <a href="home">
            <img src="./images/logo.jpeg">
        </a>
    </div>
    <form action="search-product">
        <div class="header-search">
            <input type="text" placeholder="Tìm kiếm ..." name="name">
            <button style="border: none; background: inherit">
                <ion-icon name="search-outline"></ion-icon>
            </button>
        </div>
    </form>
    <div class="header-cart">
        <c:choose>
            <c:when test="${login > 0}">
                <a href="cart">
                    <ion-icon name="cart-outline"></ion-icon>
                    <span><c:out value="${countCartItem}"/></span>
                </a>
            </c:when>
            <c:otherwise>
                <a href="sign-in">
                    <ion-icon name="cart-outline"></ion-icon>
                    <span>0</span>
                </a>
            </c:otherwise>
        </c:choose>
    </div>
    <div class="header-account">
        <ion-icon name="person-outline"></ion-icon>
        <c:choose>
            <c:when test="${login > 0}">
                <!-------------//SIGNED IN------------>
                <div class="header-account-text">
                    <p>Tài Khoản</p>
                    <p>
                        <c:out value="${name}"/>
                        <i class="fas fa-caret-down"></i>
                    </p>
                </div>

                <div class="header-account-option">
                    <ul class="header-account-list-option">
                        <li>
                            <a href="user">
                                <ion-icon name="person-circle-outline"></ion-icon>
                                Tài khoản của tôi
                            </a>
                        </li>
<%--                        <li>--%>
<%--                            <a href="user-notifycation">--%>
<%--                                <ion-icon name="list-circle-outline"></ion-icon>--%>
<%--                                Đơn mua--%>
<%--                            </a>--%>
<%--                        </li>--%>
                        <li>
                            <a href="user-notifycation">
                                <ion-icon name="notifications-circle-outline"></ion-icon>
                                Thông báo
                            </a>
                        </li>
                        <li>
                            <a href="user-order">
<%--                                <ion-icon name="information-circle-outline"></ion-icon>--%>
                                <ion-icon name="document-text-outline"></ion-icon>
                                Đơn hàng
                            </a>
                        </li>
                        <li>
                            <a href="log-out">
                                <ion-icon name="log-out-outline"></ion-icon>
                                Đăng xuất
                            </a>
                        </li>
                    </ul>
                </div>
                <!---------------------------------------->
            </c:when>
            <c:otherwise>
                <!-------------//NOT SIGNED IN------------>
                <div class="header-account-text">
                    <p>Đăng kí/ Đăng nhập</p>
                    <p>Tài Khoản</p>
                </div>

                <div class="header-account-option">
                    <div class="header-account-option-item">
                        <a href="sign-in">Đăng Nhập</a>
                    </div>
                    <div class="header-account-option-item">
                        <a href="sign-up">Đăng Kí</a>
                    </div>
                    <div class="header-account-option-item">
                        <i class="fab fa-facebook-f"></i>
                        <a href="#">Đăng nhập bằng Facebook</a>
                    </div>
                    <div class="header-account-option-item">
                        <i class="fab fa-google"></i>
                        <a href="#">Đăng nhập bằng Google</a>
                    </div>
                    <div class="header-account-option-item">
                        <a href="shipper-login">Đăng nhập ship</a>
                    </div>
                    <div class="header-account-option-item">
                        <a href="staff-login">Đăng nhập shiper</a>
                    </div>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
<%--    <div class="header-search-suggested">--%>
<%--        <p>Đề xuất:</p>--%>
<%--        <ul>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--            <li>abc</li>--%>
<%--        </ul>--%>
<%--    </div>--%>
    <div class="header-seller">
        <a href="seller-signin">
            <ion-icon name="storefront-outline"></ion-icon>
            <p>Kênh bán hàng</p>
        </a>
    </div>
</div>

