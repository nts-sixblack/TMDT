<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:05 PM
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
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/productt-portfolio-form.css">
    <link rel="stylesheet" href="./css/header.css">
    <title>Danh sách sản phẩm</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="product-portfolio-form">
        <div class="side-filter">
            <a href="#" class="all-product-portfolio">
                <h4>
                    <ion-icon name="properties-outline"></ion-icon>
                    Tất cả danh mục
                </h4>
            </a>
            <!-- <hr> -->
            <div class="sublist-product-portfolio">
                <a href="#" class="active">
                    <ion-icon name="caret-forward-outline"></ion-icon>
                    Thời Trang Nam
                </a>
            </div>
            <div class="search-filter">
                <h4>
                    <img src="https://img.icons8.com/ios/50/000000/filter--v1.png" /> Bộ lọc tìm kiếm
                </h4>
                <p><b>Nơi bán</b></p>
                <a href="#">
                    <input type="checkbox" id="nb-hanoi" name="hanoi" value="hanoi">
                    <label for="nb-hanoi">Hà Nội</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="nb-danang" name="danang" value="danang">
                    <label for="nb-danang">Đà Nẵng</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="nb-tphcm" name="tphcm" value="tphcm">
                    <label for="nb-tphcm">TP. Hồ Chí Minh</label>
                </a><br>

                <p class="other-province-search-filter">
                    Khác
                    <ion-icon name="caret-down-outline"></ion-icon>
                </p>
            </div>
            <!-- <hr> -->
            <div class="shipping-unit-filter">
                <p><b>Đơn vị vận chuyển</b></p>
                <a href="#">
                    <input type="checkbox" id="vc-hanoi" name="hnoi" value="hani">
                    <label for="vc-hanoi">Hà Nội</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="vc-danang" name="anang" value="dnang">
                    <label for="vc-danang">Đà Nẵng</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="vc-tphcm" name="tphc" value="tpcm">
                    <label for="vc-tphcm">TP. Hồ Chí Minh</label>
                </a><br>
            </div>
            <div class="local-filter">
                <p><b>Thương hiệu</b></p>
                <a href="#">
                    <input type="checkbox" id="th-hanoi" name="anoi" value="haoi">
                    <label for="th-hanoi">Hà Nội</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="th-danang" name="danag" value="danag">
                    <label for="th-danang">Đà Nẵng</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="th-tphcm" name="phcm" value="phcm">
                    <label for="th-tphcm">TP. Hồ Chí Minh</label>
                </a><br>
            </div>
            <!-- <hr> -->
            <div class="price-range-filter">
                <p><b>Khoảng giá</b></p>
                <input type="text" maxlength="13" placeholder="₫ TỪ" class="price-range_input">
                <ion-icon name="remove-outline"></ion-icon>
                <input type="text" maxlength="13" placeholder="₫ ĐẾN" class="price-range_input">
                <button>
                    áp dụng
                </button>
            </div>
            <!-- <hr> -->
            <div class="status-product-filter">
                <p><b>Tình trạng</b></p>
                <a href="#">
                    <input type="checkbox" id="new-product" name="new-product" value="new-product">
                    <label for="new-product">Mới</label>
                </a><br>
                <a href="#">
                    <input type="checkbox" id="old-product" name="old-product" value="old-product">
                    <label for="old-product">Qua sử dụng</label>
                </a><br>

            </div>
            <!-- <hr> -->
            <div class="rate-filter">
                <p><b>Đánh giá</b></p>
                <a href="#">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                </a><br>
                <a href="#">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    trở lên
                </a><br>
                <a href="#">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    trở lên
                </a><br>
                <a href="#">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    trở lên
                </a><br>
                <a href="#">
                    <ion-icon name="star"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    <ion-icon name="star-outline"></ion-icon>
                    trở lên
                </a><br>
            </div>
            <button class="clear-all-choose">
                Xoá tất cả
            </button>
        </div>
        <div class="main-products">
            <div class="navbar-main-products">
                <p>Sắp xếp theo</p>
                <button class="popular-sort active">
                    Phổ biến
                </button>
                <button class="new-sort">
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

            <c:forEach items="${listProduct}" var="product">
                <a class="card-main-products" href="product?productId=<c:out value="${product.id}"/>">
                    <img src="<c:out value="${product.image[0].image}"/>">
                    <p class="name-card-main-products"><c:out value="${product.name}"/></p>
                    <p class="price-card-main-products">
                        đ<span><c:out value="${product.price}"/></span>
                    </p>
<%--                    <span class="sold-card-main-products">đã bán: 3.2k</span>--%>
                    <span class="discount-card-main-products">
                        Giảm 50%
                    </span>
                    <span class="hot-card-main-products">
                        Yêu thích
                    </span>
                    <c:set var="image" value="${product.image}"/>
                <%--                    <div class="rate-products">--%>
<%--                        <ion-icon name="star"></ion-icon>--%>
<%--                        <ion-icon name="star"></ion-icon>--%>
<%--                        <ion-icon name="star"></ion-icon>--%>
<%--                        <ion-icon name="star"></ion-icon>--%>
<%--                        <ion-icon name="star-outline"></ion-icon>--%>
<%--                    </div>--%>
<%--                    <p class="root-price-card-main-products">--%>
<%--                        đ246.000--%>
<%--                    </p>--%>
                    <p class="selling-address__card-main-products">
                        Hà nội
<%--                        <c:out value="${product.address}"/>--%>
                    </p>
                </a>
            </c:forEach>

        </div>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="../js/product-portfolio-form.js"></script>

</html>
