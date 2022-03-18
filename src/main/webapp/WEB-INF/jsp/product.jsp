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
                            Yêu thích
                        </a> <c:out value="${product.name}"/> </h3>
                    <div class="review-product">
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star"></ion-icon>
                        <ion-icon name="star-outline"></ion-icon>
                        <a>
                            (1,7k lượt đánh giá)
                        </a> |
                        <a>
                            2,3k đã bán
                        </a>
                    </div>
                </div>
            </div>
            <form action="addProduct" method="post">
                <div class="mid-product-container">
                    <div class="price-product">
                        <%--                    <div class="initial-price">--%>
                        <%--                        ₫246.000--%>
                        <%--                    </div>--%>
                        <div class="current-price">
                            ₫<span id="price"><c:out value="${product.price}"/></span>
                        </div>
                        <%--                    <div class="discount-price">--%>
                        <%--                        -50% Giảm--%>
                        <%--                    </div>--%>
                    </div>
                    <div class="delivery-address">
                        <%--                    Giao đến abc,xyz--%>
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
                        <p>Số lượng</p>
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
                                Thêm vào giỏ hàng
                                </button>
                            </c:when>
                            <c:otherwise>
                                <a href="sign-in" style="text-decoration: none">
                                    <p class="add-to-cart">
                                        <ion-icon name="cart-outline"></ion-icon>
                                        Thêm vào giỏ hàng
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
<%--                        <p>Đánh giá</p>--%>
<%--                    </div>--%>
<%--                    <div class="item-product">--%>
<%--                        <p><b>30</b></p>--%>
<%--                        <p>Sản phẩm</p>--%>
<%--                    </div>--%>
                </div>
                <div class="seller-acction">
<%--                    <button class="action-follow">--%>
<%--                        Theo Dõi--%>
<%--                    </button>--%>
                    <a href="shop?shopId=<c:out value="${product.shopId}"/>">
                        <button class="action-view">
                            Xem Shop
                        </button>
                    </a>
<%--                    <button class="action-chat">--%>
<%--                        Liên Hệ--%>
<%--                    </button>--%>
                </div>
                <div class="seller-description">

                </div>
            </div>

        </div>
    </div>
    <h4>Sản phẩm tương tự</h4>
    <div class="similar-product">
        <c:forEach var="product" items="${listProduct}">
            <a class="card-similar-product" href="<c:out value="${product.id}"/>">
                <img src="<c:out value="${product.image[0].image}"/>">
                <p class="name-card-similar-product"><c:out value="${product.name}"/></p>
                <p class="price-card-similar-product">
                    <span><c:out value="${product.price}"/></span>
                </p>
<%--                <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--                <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
                <span class="hot-card-similar-product">
                    Yêu thích
                </span>
            </a>
        </c:forEach>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
<%--        <a class="card-similar-product" href="#">--%>
<%--            <img src="./images/img-products/iphone5.jpeg">--%>
<%--            <p class="name-card-similar-product">( Xả kho ) Điện thoại Iphone 5S Qte 32/16Gb Quốc tế Chính hãng</p>--%>
<%--            <p class="price-card-similar-product">--%>
<%--                đ<span>123.000</span>--%>
<%--            </p>--%>
<%--            <span class="sold-card-similar-product">đã bán: 3.2k</span>--%>
<%--            <span class="discount-card-similar-product">--%>
<%--                    Giảm 50%--%>
<%--                </span>--%>
<%--            <span class="hot-card-similar-product">--%>
<%--                    Yêu thích--%>
<%--                </span>--%>
<%--        </a>--%>
    </div>
    <h4>Mô tả sản phẩm</h4>
    <div class="description-product">
        <span><c:out value="${product.decription}"/></span>
<%--            <span>Chào Quý khách hàng Shopee.--%>
<%--            Shop thang.chac2 là shop thuộc hệ thống phân phối của SV_Mobile.--%>
<%--            Xin giới thiệu với mọi người:--%>
<%--            Điện Thoại Iphone 5 Quốc Tế Chính Hãng Apple với mức giá tốt nhất; chỉ hơn máy đen trắng một chút.--%>
<%--            Dù là máy cũ nhưng hình thức còn rất đẹp: từ cơ bản cho tới full box đẹp như mới.--%>
<%--            Chức năng: Hoạt động tốt--%>
<%--            Nghe to, gọi rõ, cảm ứng mượt mà,--%>
<%--            Lướt web, xem youtobe, chơi facebook, zalo, chơi game thoải mái luôn.--%>
<%--            Định vị tốt, phát wifi căng đét.--%>
<%--            Máy trước khi bán ra đã được kiểm tra và test rất kỹ, không một lỗi lầm--%>
<%--            Bảo Hành: (1 năm trách nhiệm về phần mềm cho máy)--%>
<%--            Bảo hàng phần cứng: Mặc định từ 1 đến 12 tháng.--%>
<%--            Đổi trả trong 30 ngày đầu nếu phát hiện lỗi--%>
<%--            Giao hàng, kiểm máy mới trả tiền.--%>
<%--            Pin đã kiểm tra còn dùng tốt, đáp ứng đủ các nhu cầu cơ bản.--%>
<%--            Hỗ trợ ID App cho khách để tải tất cả các ứng dụng nếu khách chưa biết.--%>
<%--            Hỗ trợ chọn IOS cho khách nếu có nhu cầu.--%>
<%--            Hỗ trợ khách chọn màu thoải mái, khách đặt hàng chỉ việc nhắn tin màu máy cần mua, shop sẽ gửi đúng màu máy khách yêu cầu.--%>
<%--            Máy vỏ xấu: vỏ xấu, có móp, pin yếu.--%>
<%--            Phân loại: 90-95%: Hình thức cũ theo thời gian, pin cơ bản đủ đáp ứng nhu cầu.--%>
<%--            Phân loại: 98-99%: Máy đẹp, pin tốt, tặng cường lực, ốp lưng, ốp viền cho khách mua máy.--%>
<%--            Phân loại Full Box: Như mới; full mọi thứ như mua tại App Store; full hộp; full phụ kiện, tai nghe. Đổi mới không cần lý do; bảo hành 365 ngày cho khách mua sản phẩm.--%>
<%--            Hỗ trợ giao lưu, đổi trả, lên đời máy trọn đời cho khách đã mua sản phẩm.--%>
<%--            Quý khách nhanh tay lựa chọn cho mình một siêu phẩm này nhé.--%>
<%--            Địa chỉ: SV_Mobile: 40 đường Đức Thắng – Phường Đức thắng – Quận Bắc Từ Liêm – Hà Nội.--%>
<%--            Hỗ trợ bán hàng: Mr Thắng: 09345 09479--%>
<%--            Hotline: 056 757 9999--%>

<%--            #SV_Mobile: Giá sinh viên, chất lượng quốc tế.--%>
<%--            #SV_mobile: Khách hàng là người thân.--%>
<%--            #SV Mobile: Cần là có, liên hệ là mua.--%>
<%--            Lưu ý: Khách mua máy, nhớ nhắn tin màu máy cần mua tại mục chat, hoặc sẽ có nhân viên bên shop gọi điện xác nhận đơn hàng và màu máy cần mua.--%>
<%--            Vui lòng đọc kỹ thông tin, mua hàng xong nhớ conment đánh giá cho shop nhé.--%>
<%--            Cảm ơn Quý khách hàng đã tin tưởng và ủng hộ trong suốt thời gian qua.--%>

<%--            #diethoaiiphone5 #iphone5quocte #iphone5chinhhang #iphone5renhat #iphone5--%>


<%--            #iphone #iphone5 #iphone5s #iphone5c #iphonechinhhang #svmobine #iphone4s #iphonerenhat--%>
<%--            </span>--%>

    </div>
    <h4>Đánh giá - Nhận xét từ khách hàng</h4>
    <div class="review-product-customer">

        <div class="review-total">
            <p><b><c:out value="${averageStar}"/>/5</b></p><%--780 lượt đánh giá--%>
        </div>
        <div class="review-filter">
            Lọc bình luận:
            <p>Tất cả</p>
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
<%--                <p>Tham gia vào 20/2/2012</p>--%>
            </div>
            <div class="content-cmt">
                <span>Đánh giá: <b>5</b> <i class="fas fa-star"></i></span>
                <div class="content-cmt_seller-name">Đã mua từ <i class="fas fa-check-circle"></i> <c:out value="${vote.nameCustomer}"/>
<%--                    <span class="name-properties-product"> | Iphone 5 - máy trần</span>--%>
                </div>
                <div class="content-cmt_text">
                    <span><c:out value="${vote.comment}"/> </span>
                </div>
<%--                <div class="content-cmt_img">--%>
<%--                    <img src="./images/img-products/images.jpeg">--%>
<%--                    <img src="./images/img-products/iphone5.jpeg">--%>
<%--                </div>--%>
                <p class="content-cmt_since">
<%--                    Nhận xét vào 30/2/2020--%>
                </p>
                <button class="content-cmt_btn-like">
<%--                    <span>34</span>--%>
                    Hữu ích
                </button>
            </div>
        </c:forEach>


<%--        <div class="users-infor">--%>
<%--            <img src="./images/cmtor-avt.jpeg">--%>
<%--            <h5 class="username-users-infor">@username</h5>--%>
<%--            <p>Tham gia vào 20/2/2012</p>--%>
<%--        </div>--%>
<%--        <div class="content-cmt">--%>
<%--            <span>Đánh giá: <b>5</b> <i class="fas fa-star"></i></span>--%>
<%--            <div class="content-cmt_seller-name">Đã mua từ <i class="fas fa-check-circle"></i> @sellername--%>
<%--                <span class="name-properties-product"> | Iphone 5 - máy trần</span>--%>
<%--            </div>--%>
<%--            <div class="content-cmt_text">--%>
<%--                <span>Nói chung là hài lòng! Giá tốt so với thị trường nếu mình add thêm km thẻ Hsbc. Trên description ghi là đời mới ko sạc ko earphone, ai dè giao về còn full phụ kiện mừng húm. Máy mua nay đc hơn 2 tuần rồi, chưa có vđề j. Mình đặt giao hàng nhanh nên ko bị trục trặc j hết. Nói chung toẹt zời ông mặt trời nha mấy chế. À nhắc các bạn đã đc update sim 4g mới của mobiphone thì đi thay phôi sim mới ko thì bị nóng máy khi update lên ios 14 ạ</span>--%>
<%--            </div>--%>
<%--            <div class="content-cmt_img">--%>
<%--                <img src="./images/img-products/images.jpeg">--%>
<%--                <img src="./images/img-products/iphone5.jpeg">--%>
<%--            </div>--%>
<%--            <p class="content-cmt_since">--%>
<%--                Nhận xét vào 30/2/2020--%>
<%--            </p>--%>
<%--            <button class="content-cmt_btn-like">--%>
<%--                <span>34</span>--%>
<%--                Hữu ích--%>
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