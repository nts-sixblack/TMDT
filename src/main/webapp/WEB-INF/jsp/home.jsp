<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 8/20/2021
  Time: 9:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>

<head>
<%--    <meta charset="UTF-8">--%>
<%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
<%--    <meta content="text/html; charset=UTF-8">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/header.css">
    <title>Trang chủ</title>
</head>

<body>

<jsp:include page="include/header.jsp"/>

<div class="main-container">
    <div class="banner">
        <div class="slide-banner">
            <img src="https://picsum.photos/900/280" alt="">
        </div>
        <div class="ticket-banner">
            <img src="https://picsum.photos/300" alt="">
        </div>
        <div class="ticket-banner">
            <img src="./images/slide/ticket.jpeg" alt="">

        </div>
    </div>
    <div class="product-portfolio">
        <h4>Danh mục</h4>
        <div class="list-product-portfolio">
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1">
                    <img src="./images/list_product/thoitrangnam.png">
                    <p>Thời trang nam</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=2">
                    <img src="./images/list_product/thoitrangnu.png">
                    <p>Thời trang nữ</p>
                </a>
            </div>

            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=3">
                    <img src="./images/list_product/iphone.png">
                    <p>Điện thoại & Phụ kiện</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=4">
                    <img src="./images/list_product/mevabe.png">
                    <p>Mẹ và bé</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=5">
                    <img src="./images/list_product/xbox.png">
                    <p>Thiết bị điện tử</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=6">
                    <img src="./images/list_product/dogiadung.png">
                    <p>Đồ gia dụng</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=7">
                    <img src="./images/list_product/macbook.png">
                    <p>máy tính & Laptop</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=8">
                    <img src="./images/list_product/makeup.png">
                    <p>Làm đẹp</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=9">
                    <img src="./images/list_product/camera.png">
                    <p>Máy ảnh</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=10">
                    <img src="./images/list_product/depnu.png">
                    <p>Giày dép nữ</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1009">
                    <img src="./images/list_product/dongho.png">
                    <p>Đồng hồ</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=1010">
                    <img src="./images/list_product/tuinu.png">
                    <p>Túi ví nữ</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1011">
                    <img src="./images/list_product/giaynam.png">
                    <p>Giày dép nam</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=1012">
                    <img src="./images/list_product/nhan.png">
                    <p>Phụ kiện & Trang sức nữ</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1013">
                    <img src="./images/list_product/xedap.png">
                    <p>Ô tô & Xe máy & Xe đạp</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=1014">
                    <img src="./images/list_product/sach.png">
                    <p>Nhà sách online</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1015">
                    <img src="./images/list_product/balo.png">
                    <p>Balo & Túi ví nam</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=1016">
                    <img src="./images/list_product/dochoi.png">
                    <p>Đồ chơi</p>
                </a>
            </div>
            <div class="col-list-product">
                <a class="item-list-product" href="listproduct?categoryId=1017">
                    <img src="./images/list_product/chamsocthucung.png">
                    <p>Chăm sóc thú cưng</p>
                </a>
                <a class="item-list-product" href="listproduct?categoryId=1018">
                    <img src="./images/list_product/thoitrangtre.png">
                    <p>Thời trang trẻ</p>
                </a>
            </div>

        </div>
    </div>
    <div class="search-trends">
        <h4>Xu hướng tìm kiếm</h4>
        <p class="loadmore-search-trends">
            <ion-icon name="sync-outline"></ion-icon>
            Xem thêm
        </p>

        <a class="card-search-trends" href="#">
            <img src="https://lesang.vn/images/san-pham/cap-anker-powerline-usb-c-ra-usb-c-2.0-0.9m-a81871557823803.jpg">
            <img src="https://ankervietnam.net/wp-content/uploads/2021/05/day-cap-sac-usb-type-c-to-lightning-chuan-mfi-cho-iphone-anker-powerline-ii-0-9m.jpg">
            <img src="https://vn-live-01.slatic.net/p/446d3011736443a06f68eba687c473d1.jpg">
            <div class="keyword-search-trends">
                <p><b>anker type c</b></p>
                <span class="number-products">.. sản phẩm</span>
            </div>
        </a>
        <a class="card-search-trends" href="#">
            <img src="https://lesang.vn/images/san-pham/cap-anker-powerline-usb-c-ra-usb-c-2.0-0.9m-a81871557823803.jpg">
            <img src="https://ankervietnam.net/wp-content/uploads/2021/05/day-cap-sac-usb-type-c-to-lightning-chuan-mfi-cho-iphone-anker-powerline-ii-0-9m.jpg">
            <img src="https://vn-live-01.slatic.net/p/446d3011736443a06f68eba687c473d1.jpg">
            <div class="keyword-search-trends">
                <p><b>anker type c</b></p>
                <span class="number-products">.. sản phẩm</span>
            </div>
        </a>
        <a class="card-search-trends" href="#">
            <img src="https://lesang.vn/images/san-pham/cap-anker-powerline-usb-c-ra-usb-c-2.0-0.9m-a81871557823803.jpg">
            <img src="https://ankervietnam.net/wp-content/uploads/2021/05/day-cap-sac-usb-type-c-to-lightning-chuan-mfi-cho-iphone-anker-powerline-ii-0-9m.jpg">
            <img src="https://vn-live-01.slatic.net/p/446d3011736443a06f68eba687c473d1.jpg">
            <div class="keyword-search-trends">
                <p><b>anker type c</b></p>
                <span class="number-products">.. sản phẩm</span>
            </div>
        </a>
        <a class="card-search-trends" href="#">
            <img src="https://lesang.vn/images/san-pham/cap-anker-powerline-usb-c-ra-usb-c-2.0-0.9m-a81871557823803.jpg">
            <img src="https://ankervietnam.net/wp-content/uploads/2021/05/day-cap-sac-usb-type-c-to-lightning-chuan-mfi-cho-iphone-anker-powerline-ii-0-9m.jpg">
            <img src="https://vn-live-01.slatic.net/p/446d3011736443a06f68eba687c473d1.jpg">
            <div class="keyword-search-trends">
                <p><b>anker type c</b></p>
                <span class="number-products">.. sản phẩm</span>
            </div>
        </a>



    </div>
    <div class="suggest-products" id="divLoadMore">
        <h4>Gợi ý hôm nay</h4>
        <c:forEach var="product" items="${list}">
            <a href="product?productId=<c:out value="${product.id}"/>">
                <div class="card-suggest-products">
                    <img src="<c:out value="${product.image[0].image}"/>">
                    <p class="name-card-suggest-products"><c:out value="${product.name}"/></p>
                    <p class="price-card-suggest-products">
                        <span><c:out value="${product.price}"/></span>
                    </p>
                    <span class="sold-products-card">đã bán: 3.2k</span>
                    <span class="discount-products-card">
                    Giảm 50%
                </span>
                    <span class="hot-products-card">
                    Yêu thích
                </span>
                </div>
            </a>
        </c:forEach>
<%--        <div class="card-suggest-products">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-suggest-products">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-suggest-products">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-products-card">đã bán: 3.2k</span>--%>
<%--            <span class="discount-products-card">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-products-card">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </div>--%>
    </div>
    <div class="loadmore-suggest-products">
        <button onclick="loadMore()">Xem thêm</button>
    </div>
</div>

</body>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function loadMore(){
        var number = document.getElementsByClassName("card-suggest-products").length
        $.ajax({
            url: "/TMDT/home",
            type: "post",
            data: {
                number:number
            },
            success: function(data){
                // alert(data);
                var list = document.getElementById("divLoadMore");
                list.innerHTML += data;
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
</script>
</html>
