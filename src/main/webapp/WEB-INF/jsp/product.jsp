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

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./jquery/jquery.exzoom.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/product.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/footer.css">
    <link rel="stylesheet" href="./css/input_number.css">
    <link rel="stylesheet" href="./css/select-properties.css">
    <title>Products</title>
</head>

<body>
<jsp:include page="include/header.jsp"/>
<div class="main-container">
    <div class="product-container">
        <div class="image-product-container">
            <div class="exzoom" id="exzoom">
                <!-- Images -->
                <div class="exzoom_img_box">
                    <ul class='exzoom_img_ul'>
                        <c:forEach items="${product.image}" var="image">
                            <li><img src="<c:out value="${image.image}"/>" /></li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="exzoom_nav"></div>
                <!-- Nav Buttons -->
                <p class="exzoom_btn">
                    <a href="javascript:void(0);" class="exzoom_prev_btn">
                        <ion-icon name="chevron-back-outline"></ion-icon>
                    </a>
                    <a href="javascript:void(0);" class="exzoom_next_btn">
                        <ion-icon name="chevron-forward-outline"></ion-icon>
                    </a>
                </p>
            </div>
        </div>
        <div class="in4-product-container">
            <div class="head-product-container">
                <div class="name-product">
                    <h3>
                        <a class="popularity-product">
                            Y??u th??ch
                        </a> <c:out value="${product.name}"/> </h3>
                    <div class="review-product">
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star-outline"></ion-icon>
                        <a>
                            (1,7k l?????t ????nh gi??)
                        </a> |
                        <a>
                            2,3k ???? b??n
                        </a>
                    </div>
                </div>
            </div>
            <form action="addProduct" method="post">
                <div class="mid-product-container">
                    <div class="price-product">
                        <%--                    <div class="initial-price">--%>
                        <%--                        ???246.000--%>
                        <%--                    </div>--%>
                        <div class="current-price">
                            ???<span id="price"><c:out value="${product.price}"/></span>
                        </div>
                        <%--                    <div class="discount-price">--%>
                        <%--                        -50% Gi???m--%>
                        <%--                    </div>--%>
                    </div>
                    <div class="delivery-address">
                        <%--                    Giao ?????n abc,xyz--%>
                    </div>
                    <!----------//\\---(FOR)-------------------->
                    <c:set var="index" value="0"/>
                    <input type="text" id="countProperties" value="0" hidden name="countProperties">
                    <input type="text" name="productId" value="<c:out value="${product.id}"/>" hidden>
                    <input type="text" name="price" value="<c:out value="${product.price}"/>" id="inputPrice" hidden>
                    <input type="text" name="nameProduct" value="<c:out value="${product.name}"/>" hidden>
                    <c:forEach items="${product.properties}" var="properties">
                        <div class="product-attributes">
                            <div class="name-product-attributes">
                                <p><c:out value="${properties.name}"/></p>
                                <p hidden><c:out value="${index}"/></p>
                                <input type="text" name="nameValue<c:out value="${index}"/>" value="0" hidden>
                                <input type="text" name="idValue<c:out value="${index}"/>" value="0" hidden>
                                <input hidden type="text" name="nameProperties<c:out value="${index}"/>" value="<c:out value="${properties.name}"/>">
                            </div>
                            <div class="list-product-attributes">
                                <ul>
                                    <c:forEach items="${properties.value}" var="value">
                                        <c:choose>
                                            <c:when test="${value.number > 0}">
                                                <li class="item-properties">
                                                    <div onclick="choose(this)">
                                                        <p ><c:out value="${value.name}"/></p>
                                                        <p hidden class="price"><c:out value="${value.price}"/></p>
                                                        <p hidden class="idValue"><c:out value="${value.id}"/></p>
                                                    </div>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li class="is-null">
                                                    <div>
                                                        <p ><c:out value="${value.name}"/></p>
                                                        <p hidden class="price"><c:out value="${value.price}"/></p>
                                                        <p hidden class="idValue"><c:out value="${value.id}"/></p>
                                                    </div>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>

                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <c:set var="index" value="${index + 1}"/>
                    </c:forEach>

                    <!----------//\\----------------------->
                    <div class="quantity-ordered">
                        <p>S??? l?????ng</p>
                        <div class='ctrl'>
                            <div class='ctrl-button' onclick="decrement(this)">-</div>
                            <div class='ctrl-counter'>
                                <input class='ctrl-counter-input ctrl-counter-num' maxlength='10' type='text' id="inputNumber" value='1' name="inputNumber">
                                <!-- <div class='ctrl-counter-num' id="numberProduct">0</div> -->
                            </div>
                            <div class='ctrl-button' onclick="increment(this)">+</div>
                        </div>
                    </div>

                    <div class="add-product">
                        <c:choose>
                            <c:when test="${cartId > 0}">
                                <button class="add-to-cart" type="submit">
                                <ion-icon name="cart-outline"></ion-icon>
                                Th??m v??o gi??? h??ng
                                </button>
                            </c:when>
                            <c:otherwise>
                                <a href="sign-in" style="text-decoration: none">
                                    <p class="add-to-cart">
                                        <ion-icon name="cart-outline"></ion-icon>
                                        Th??m v??o gi??? h??ng
                                    </p>
                                </a>
                            </c:otherwise>
                        </c:choose>


                        <%--                    <button class="buy-now">--%>
                        <%--                        Mua Ngay--%>
                        <%--                    </button>--%>
                    </div>

                </div>
            </form>

            <div class="side-product-container">
                <div class="seller-infor">
                    <h5 class="name-seller">
                        <c:out value="${product.shopName}"/>
                    </h5>
                    <img src="./images/seller-avt.jpeg">
<%--                    <div class="item-review">--%>
<%--                        <p><b>3k</b></p>--%>
<%--                        <p>????nh gi??</p>--%>
<%--                    </div>--%>
<%--                    <div class="item-product">--%>
<%--                        <p><b>30</b></p>--%>
<%--                        <p>S???n ph???m</p>--%>
<%--                    </div>--%>
                </div>
                <div class="seller-acction">
<%--                    <button class="action-follow">--%>
<%--                        Theo D??i--%>
<%--                    </button>--%>
                    <a href="shop?shopId=<c:out value="${product.shopId}"/>">
                        <button class="action-view">
                            Xem Shop
                        </button>
                    </a>
<%--                    <button class="action-chat">--%>
<%--                        Li??n H???--%>
<%--                    </button>--%>
                </div>
                <div class="seller-description">

                </div>
            </div>

        </div>
    </div>
    <h4>S???n ph???m t????ng t???</h4>
    <div class="similar-product">
        <c:forEach var="product" items="${listProduct}">
            <a class="card-similar-product" href="<c:out value="${product.id}"/>">
                <img src="<c:out value="${product.image[0].image}"/>">
                <p class="name-card-similar-product"><c:out value="${product.name}"/></p>
                <p class="price-card-similar-product">
                    <span><c:out value="${product.price}"/></span>
                </p>
<%--                <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--                <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
                <span class="hot-card-similar-product">
                    Y??u th??ch
                </span>
            </a>
        </c:forEach>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( X??? kho ) ??i???n tho???i Iphone 5S Qte 32/16Gb Qu???c t??? Ch??nh h??ng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                ??<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">???? b??n: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Gi???m 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Y??u th??ch--%>
<%--                </span>--%>
<%--        </a>--%>
    </div>
    <h4>M?? t??? s???n ph???m</h4>
    <div class="description-product">
        <span><c:out value="${product.decription}"/></span>
<%--            <span>Ch??o Qu?? kh??ch h??ng Shopee.--%>
<%--            Shop thang.chac2 l?? shop thu???c h??? th???ng ph??n ph???i c???a SV_Mobile.--%>
<%--            Xin gi???i thi???u v???i m???i ng?????i:--%>
<%--            ??i???n Tho???i Iphone 5 Qu???c T??? Ch??nh H??ng Apple v???i m???c gi?? t???t nh???t; ch??? h??n m??y ??en tr???ng m???t ch??t.--%>
<%--            D?? l?? m??y c?? nh??ng h??nh th???c c??n r???t ?????p: t??? c?? b???n cho t???i full box ?????p nh?? m???i.--%>
<%--            Ch???c n??ng: Ho???t ?????ng t???t--%>
<%--            Nghe to, g???i r??, c???m ???ng m?????t m??,--%>
<%--            L?????t web, xem youtobe, ch??i facebook, zalo, ch??i game tho???i m??i lu??n.--%>
<%--            ?????nh v??? t???t, ph??t wifi c??ng ????t.--%>
<%--            M??y tr?????c khi b??n ra ???? ???????c ki???m tra v?? test r???t k???, kh??ng m???t l???i l???m--%>
<%--            B???o H??nh: (1 n??m tr??ch nhi???m v??? ph???n m???m cho m??y)--%>
<%--            B???o h??ng ph???n c???ng: M???c ?????nh t??? 1 ?????n 12 th??ng.--%>
<%--            ?????i tr??? trong 30 ng??y ?????u n???u ph??t hi???n l???i--%>
<%--            Giao h??ng, ki???m m??y m???i tr??? ti???n.--%>
<%--            Pin ???? ki???m tra c??n d??ng t???t, ????p ???ng ????? c??c nhu c???u c?? b???n.--%>
<%--            H??? tr??? ID App cho kh??ch ????? t???i t???t c??? c??c ???ng d???ng n???u kh??ch ch??a bi???t.--%>
<%--            H??? tr??? ch???n IOS cho kh??ch n???u c?? nhu c???u.--%>
<%--            H??? tr??? kh??ch ch???n m??u tho???i m??i, kh??ch ?????t h??ng ch??? vi???c nh???n tin m??u m??y c???n mua, shop s??? g???i ????ng m??u m??y kh??ch y??u c???u.--%>
<%--            M??y v??? x???u: v??? x???u, c?? m??p, pin y???u.--%>
<%--            Ph??n lo???i: 90-95%: H??nh th???c c?? theo th???i gian, pin c?? b???n ????? ????p ???ng nhu c???u.--%>
<%--            Ph??n lo???i: 98-99%: M??y ?????p, pin t???t, t???ng c?????ng l???c, ???p l??ng, ???p vi???n cho kh??ch mua m??y.--%>
<%--            Ph??n lo???i Full Box: Nh?? m???i; full m???i th??? nh?? mua t???i App Store; full h???p; full ph??? ki???n, tai nghe. ?????i m???i kh??ng c???n l?? do; b???o h??nh 365 ng??y cho kh??ch mua s???n ph???m.--%>
<%--            H??? tr??? giao l??u, ?????i tr???, l??n ?????i m??y tr???n ?????i cho kh??ch ???? mua s???n ph???m.--%>
<%--            Qu?? kh??ch nhanh tay l???a ch???n cho m??nh m???t si??u ph???m n??y nh??.--%>
<%--            ?????a ch???: SV_Mobile: 40 ???????ng ?????c Th???ng ??? Ph?????ng ?????c th???ng ??? Qu???n B???c T??? Li??m ??? H?? N???i.--%>
<%--            H??? tr??? b??n h??ng: Mr Th???ng: 09345 09479--%>
<%--            Hotline: 056 757 9999--%>

<%--            #SV_Mobile: Gi?? sinh vi??n, ch???t l?????ng qu???c t???.--%>
<%--            #SV_mobile: Kh??ch h??ng l?? ng?????i th??n.--%>
<%--            #SV Mobile: C???n l?? c??, li??n h??? l?? mua.--%>
<%--            L??u ??: Kh??ch mua m??y, nh??? nh???n tin m??u m??y c???n mua t???i m???c chat, ho???c s??? c?? nh??n vi??n b??n shop g???i ??i???n x??c nh???n ????n h??ng v?? m??u m??y c???n mua.--%>
<%--            Vui l??ng ?????c k??? th??ng tin, mua h??ng xong nh??? conment ????nh gi?? cho shop nh??.--%>
<%--            C???m ??n Qu?? kh??ch h??ng ???? tin t?????ng v?? ???ng h??? trong su???t th???i gian qua.--%>

<%--            #diethoaiiphone5 #iphone5quocte #iphone5chinhhang #iphone5renhat #iphone5--%>


<%--            #iphone #iphone5 #iphone5s #iphone5c #iphonechinhhang #svmobine #iphone4s #iphonerenhat--%>
<%--            </span>--%>

    </div>
    <h4>????nh gi?? - Nh???n x??t t??? kh??ch h??ng</h4>
    <div class="review-product-customer">

        <div class="review-total">
            <p><b><c:out value="${averageStar}"/>/5</b></p><%--780 l?????t ????nh gi??--%>
        </div>
        <div class="review-filter">
            L???c b??nh lu???n:
            <p>T???t c???</p>
            <p>5 Sao</p>
            <p>4 Sao</p>
            <p>3 Sao</p>
            <p>2 Sao</p>
            <p>1 Sao</p>
        </div>
        <!---------//COMMENT FROM USER---------->
        <c:forEach var="vote" items="${listComment}">
            <div class="users-infor">
                <img src="./images/cmtor-avt.jpeg">
                <h5 class="username-users-infor"><c:out value="${vote.nameCustomer}"/> </h5>
<%--                <p>Tham gia v??o 20/2/2012</p>--%>
            </div>
            <div class="content-cmt">
                <span>????nh gi??: <b>5</b> <i class="fas fa-star"></i></span>
                <div class="content-cmt_seller-name">???? mua t??? <i class="fas fa-check-circle"></i> <c:out value="${vote.nameCustomer}"/>
<%--                    <span class="name-properties-product"> | Iphone 5 - m??y tr???n</span>--%>
                </div>
                <div class="content-cmt_text">
                    <span><c:out value="${vote.comment}"/> </span>
                </div>
<%--                <div class="content-cmt_img">--%>
<%--                    <img src="./images/img-products/images.jpeg">--%>
<%--                    <img src="./images/img-products/iphone5.jpeg">--%>
<%--                </div>--%>
                <p class="content-cmt_since">
<%--                    Nh???n x??t v??o 30/2/2020--%>
                </p>
                <button class="content-cmt_btn-like">
<%--                    <span>34</span>--%>
                    H???u ??ch
                </button>
            </div>
        </c:forEach>


<%--        <div class="users-infor">--%>
<%--            <img src="./images/cmtor-avt.jpeg">--%>
<%--            <h5 class="username-users-infor">@username</h5>--%>
<%--            <p>Tham gia v??o 20/2/2012</p>--%>
<%--        </div>--%>
<%--        <div class="content-cmt">--%>
<%--            <span>????nh gi??: <b>5</b> <i class="fas fa-star"></i></span>--%>
<%--            <div class="content-cmt_seller-name">???? mua t??? <i class="fas fa-check-circle"></i> @sellername--%>
<%--                <span class="name-properties-product"> | Iphone 5 - m??y tr???n</span>--%>
<%--            </div>--%>
<%--            <div class="content-cmt_text">--%>
<%--                <span>N??i chung l?? h??i l??ng! Gi?? t???t so v???i th??? tr?????ng n???u m??nh add th??m km th??? Hsbc. Tr??n description ghi l?? ?????i m???i ko s???c ko earphone, ai d?? giao v??? c??n full ph??? ki???n m???ng h??m. M??y mua nay ??c h??n 2 tu???n r???i, ch??a c?? v????? j. M??nh ?????t giao h??ng nhanh n??n ko b??? tr???c tr???c j h???t. N??i chung to???t z???i ??ng m???t tr???i nha m???y ch???. ?? nh???c c??c b???n ???? ??c update sim 4g m???i c???a mobiphone th?? ??i thay ph??i sim m???i ko th?? b??? n??ng m??y khi update l??n ios 14 ???</span>--%>
<%--            </div>--%>
<%--            <div class="content-cmt_img">--%>
<%--                <img src="./images/img-products/images.jpeg">--%>
<%--                <img src="./images/img-products/iphone5.jpeg">--%>
<%--            </div>--%>
<%--            <p class="content-cmt_since">--%>
<%--                Nh???n x??t v??o 30/2/2020--%>
<%--            </p>--%>
<%--            <button class="content-cmt_btn-like">--%>
<%--                <span>34</span>--%>
<%--                H???u ??ch--%>
<%--            </button>--%>
<%--        </div>--%>
    </div>
</div>
</body>
<script src="./js/choose-value.js"></script>
<script src="https://kit.fontawesome.com/22e87e415b.js" crossorigin="anonymous"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="./js/inputNumber.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="./jquery/jquery.exzoom.js"></script>
<script src="./js/imgzoom.js"></script>

</html>