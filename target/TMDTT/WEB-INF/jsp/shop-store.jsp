<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:06 PM
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
    <link rel="stylesheet" href="./css/navbar-shop.css">
    <link rel="stylesheet" href="./css/shop-store.css">
    <title><c:out value="${shop.name}"/></title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="shop-container">
        <div class="shop-infor">
            <img src="<c:out value="${shop.avatar}"/>">
            <div class="shop-name">
                <p><b><c:out value="${shop.name}"/></b></p>
<%--                <span>1991 người theo dõi</span>--%>
            </div>
            <div>
<%--                <button>--%>
<%--                    Theo dõi--%>
<%--                </button>--%>
<%--                <button>Liên hệ</button>--%>
            </div>
            <div class="navbar-shop">
<%--                <ul>--%>
<%--                    <li class="is-active">--%>
<%--                        <a href="shop-store.html">Cửa Hàng</a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="shop-product.html">Sản Phẩm</a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
                <div>
                    <ion-icon name="search-outline"></ion-icon>
                    <input type="text" placeholder="Tìm kiếm">

                </div>

            </div>
        </div>
        <div class="shop-store">
            <div class="shop-description">
                <h4>Thông tin shop</h4>
                <div class="slide-infor">
                    <img src="./images/cmtor-avt.jpeg">
                </div>
                <div class="content">
                    <h4><c:out value="${shop.name}"/></h4>
                    <p><c:out value="${shop.decription}"/></p>
                </div>
            </div>
            <h4>Sản phẩm bán chạy</h4>
<%--            <div class="scroll-product">--%>
<%--                <c:forEach var="product" items="${list}">--%>
<%--                    <a class="card_scroll-product" href="#">--%>
<%--                        <img src="<c:out value="${product.image[0].image}"">--%>
<%--                        <p class="name-product"><c:out value="${product.name}"/></p>--%>
<%--                        <p class="price-product">--%>
<%--                            <c:out value="${product.price}"/>--%>
<%--                        </p>--%>
<%--&lt;%&ndash;                        <p class="sold-product">Đã bán: 2k3</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <span class="discount-product">&ndash;%&gt;--%>
<%--&lt;%&ndash;                            Giảm 50%&ndash;%&gt;--%>
<%--&lt;%&ndash;                        </span>&ndash;%&gt;--%>
<%--                        <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                    </a>--%>
<%--                </c:forEach>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--                <a class="card_scroll-product" href="#">--%>
<%--                    <img src="../images/img-products/iphone5.jpeg">--%>
<%--                    <p class="name-product">Điện Thoại iPhone 5 bộ nhớ16G/32G/64G - chính hãng Apple, bảo hành 12 tháng, đổi mới 30 ngày không cần lý do</p>--%>
<%--                    <p class="price-product">--%>
<%--                        ₫123.000--%>
<%--                    </p>--%>
<%--                    <p class="sold-product">Đã bán: 2k3</p>--%>
<%--                    <span class="discount-product">--%>
<%--                            Giảm 50%--%>
<%--                        </span>--%>
<%--                    <span class="hot-product">--%>
<%--                            Yêu thích--%>
<%--                        </span>--%>
<%--                </a>--%>
<%--            </div>--%>
            <h4>Sản Phẩm</h4>
            <div class="shop-product">
                <div class="side-bar">
                    <b>
                        <ion-icon name="properties-outline"></ion-icon>
                        Danh mục
                    </b>
                    <ul>
                        <li>
                            <a href="#">
                                AAAAAAAAAA
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                BBBBBBBBBB
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                CCCCCCCCC
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                DDDDDDDDDD
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="main-product">
                    <div class="navbar-main-products">
                        <p>Sắp xếp theo</p>
                        <button class="popular-sort active">
                            Mới nhất
                        </button>
                        <button class="seller-sort">
                            Bán chạy
                        </button>
                        <div class="select-box-price-sort">
                            <div class="options-container">
                                <div class="option">
                                    <input type="radio" class="radio" id="gettaller" name="category" />
                                    <label for="gettaller">Giá: Cao đến thấp</label>
                                </div>

                                <div class="option">
                                    <input type="radio" class="radio" id="descending" name="category" />
                                    <label for="descending">Giá: Thấp đến cao</label>
                                </div>
                            </div>

                            <div class="selected">
                                Giá
                            </div>
                        </div>
                    </div>
                    <!-------------//CARD-PRODUCT---------------------------------------->

                    <c:forEach var="product" items="${list}">
                        <a class="card-main-products" href="#">
                            <img src="<c:out value="${product.image[0].image}"/>">
                            <p class="name-card-main-products"><c:out value="${product.name}"/></p>
                            <p class="price-card-main-products">
                                <span><c:out value="${product.price}"/> </span>
                            </p>
<%--                            <span class="sold-card-main-products">đã bán: 3.2k</span>--%>
<%--                            <span class="discount-card-main-products">--%>
<%--                                Giảm 50%--%>
<%--                            </span>--%>
                            <span class="hot-card-main-products">
                                Yêu thích
                            </span>
                            <div class="rate-products">
                                <ion-icon name="star"></ion-icon>
                                <ion-icon name="star"></ion-icon>
                                <ion-icon name="star"></ion-icon>
                                <ion-icon name="star"></ion-icon>
                                <ion-icon name="star-outline"></ion-icon>
                            </div>
<%--                            <p class="root-price-card-main-products">--%>
<%--                                đ246.000--%>
<%--                            </p>--%>
                            <p class="selling-address__card-main-products">
                                Hà nội
                            </p>
                        </a>
                    </c:forEach>
<%--                    <a class="card-main-products" href="#">--%>
<%--                        <img src="../images/img-products/iphone5.jpeg">--%>
<%--                        <p class="name-card-main-products">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--                        <p class="price-card-main-products">--%>
<%--                            đ<span>123.000</span>--%>
<%--                        </p>--%>
<%--                        <span class="sold-card-main-products">đã bán: 3.2k</span>--%>
<%--                        <span class="discount-card-main-products">--%>
<%--                        Giảm 50%--%>
<%--                    </span>--%>
<%--                        <span class="hot-card-main-products">--%>
<%--                        Yêu thích--%>
<%--                    </span>--%>
<%--                        <div class="rate-products">--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star-outline"></ion-icon>--%>
<%--                        </div>--%>
<%--                        <p class="root-price-card-main-products">--%>
<%--                            đ246.000--%>
<%--                        </p>--%>
<%--                        <p class="selling-address__card-main-products">--%>
<%--                            Hà nội--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <a class="card-main-products" href="#">--%>
<%--                        <img src="../images/img-products/iphone5.jpeg">--%>
<%--                        <p class="name-card-main-products">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--                        <p class="price-card-main-products">--%>
<%--                            đ<span>123.000</span>--%>
<%--                        </p>--%>
<%--                        <span class="sold-card-main-products">đã bán: 3.2k</span>--%>
<%--                        <span class="discount-card-main-products">--%>
<%--                        Giảm 50%--%>
<%--                    </span>--%>
<%--                        <span class="hot-card-main-products">--%>
<%--                        Yêu thích--%>
<%--                    </span>--%>
<%--                        <div class="rate-products">--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star-outline"></ion-icon>--%>
<%--                        </div>--%>
<%--                        <p class="root-price-card-main-products">--%>
<%--                            đ246.000--%>
<%--                        </p>--%>
<%--                        <p class="selling-address__card-main-products">--%>
<%--                            Hà nội--%>
<%--                        </p>--%>
<%--                    </a>--%>
<%--                    <a class="card-main-products" href="#">--%>
<%--                        <img src="../images/img-products/iphone5.jpeg">--%>
<%--                        <p class="name-card-main-products">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--                        <p class="price-card-main-products">--%>
<%--                            đ<span>123.000</span>--%>
<%--                        </p>--%>
<%--                        <span class="sold-card-main-products">đã bán: 3.2k</span>--%>
<%--                        <span class="discount-card-main-products">--%>
<%--                        Giảm 50%--%>
<%--                    </span>--%>
<%--                        <span class="hot-card-main-products">--%>
<%--                        Yêu thích--%>
<%--                    </span>--%>
<%--                        <div class="rate-products">--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star"></ion-icon>--%>
<%--                            <ion-icon name="star-outline"></ion-icon>--%>
<%--                        </div>--%>
<%--                        <p class="root-price-card-main-products">--%>
<%--                            đ246.000--%>
<%--                        </p>--%>
<%--                        <p class="selling-address__card-main-products">--%>
<%--                            Hà nội--%>
<%--                        </p>--%>
<%--                    </a>--%>

                    <!-------------//CARD-PRODUCT---------------------------------------->

                </div>
            </div>
        </div>

    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="../js/product-portfolio-form.js"></script>

</html>
