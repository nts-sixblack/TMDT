<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/11/2021
  Time: 3:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="./css/seller-rating.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>
<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>
    <div class="seller-content-container">
        <div class="seller_card-item rating-container">
            <div class="rating-container--title">
                <div>
                    <h2>Đánh Giá Shop</h2>
                    <span>Xem đánh giá Shop của bạn</span>
                </div>
                <div class="rate-point">
                    <span><b>0.0</b> / 5</span>
                </div>
            </div>
            <div class="rating-container--content">
                <ul class="nav">
                    <li>
                        <a href="#" class="is-active">Tất cả</a>
                    </li>
                    <li>
                        <a href="#">5 sao</a>
                    </li>
                    <li>
                        <a href="#">4 sao</a>
                    </li>
                    <li>
                        <a href="#">3 sao</a>
                    </li>
                    <li>
                        <a href="#">2 sao</a>
                    </li>
                    <li>
                        <a href="#">1 sao</a>
                    </li>
                </ul>
                <div class="detail">
                    <ul class="detail-nav">
                        <li>Thông tin sản phẩm</li>
                        <li>Đánh giá</li>
                        <li>Người đánh giá</li>
                        <li>Bình luận</li>
                    </ul>
                    <div class="detail-list">
                        <div class="empty-list">
                            <img src="./images/empty_order.png" alt="">
                        </div>
                        <ul>
                            <li>
                                <div class="in4-product">
                                    <img src="./images/img-products/iphone5.jpeg">
                                    <p class="name-product">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore earum quibusdam autem.</p>
                                </div>
                                <span class="rating">4*</span>
                                <span class="name-user">@username</span>
                                <p class="user-cmt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam explicabo consequuntur numquam sapiente officiis aut quidem facere consectetur, dolore doloribus, porro dignissimos vitae accusamus nesciunt aperiam deserunt
                                    esse dolor ab aspernatur? Repudiandae reprehenderit modi nemo impedit veritatis earum ipsa laboriosam ea maxime. Id numquam optio nam adipisci maiores modi. Necessitatibus magnam odio reprehenderit dignissimos,
                                    laborum voluptates aliquam eum ut, eius voluptatem commodi reiciendis inventore itaque in harum! Iusto temporibus voluptate culpa quod, nostrum accusantium repudiandae et eaque, nesciunt commodi eligendi omnis dicta
                                    esse nobis vitae deserunt laborum ab a voluptatum dolorum. Blanditiis, similique aliquid. Quam laboriosam maxime quibusdam perspiciatis dolor.</p>
                            </li>
                            <li>
                                <div class="in4-product">
                                    <img src="./images/img-products/iphone5.jpeg">
                                    <p class="name-product">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore earum quibusdam autem.</p>
                                </div>
                                <span class="rating">4*</span>
                                <span class="name-user">@username</span>
                                <p class="user-cmt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam explicabo consequuntur numquam sapiente officiis aut quidem facere consectetur, dolore doloribus, porro dignissimos vitae accusamus nesciunt aperiam deserunt
                                    esse dolor ab aspernatur? Repudiandae reprehenderit modi nemo impedit veritatis earum ipsa laboriosam ea maxime. Id numquam optio nam adipisci maiores modi. Necessitatibus magnam odio reprehenderit dignissimos,
                                    laborum voluptates aliquam eum ut, eius voluptatem commodi reiciendis inventore itaque in harum! Iusto temporibus voluptate culpa quod, nostrum accusantium repudiandae et eaque, nesciunt commodi eligendi omnis dicta
                                    esse nobis vitae deserunt laborum ab a voluptatum dolorum. Blanditiis, similique aliquid. Quam laboriosam maxime quibusdam perspiciatis dolor.</p>
                            </li>
                            <li>
                                <div class="in4-product">
                                    <img src="./images/img-products/iphone5.jpeg">
                                    <p class="name-product">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore earum quibusdam autem.</p>
                                </div>
                                <span class="rating">4*</span>
                                <span class="name-user">@username</span>
                                <p class="user-cmt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam explicabo consequuntur numquam sapiente officiis aut quidem facere consectetur, dolore doloribus, porro dignissimos vitae accusamus nesciunt aperiam deserunt
                                    esse dolor ab aspernatur? Repudiandae reprehenderit modi nemo impedit veritatis earum ipsa laboriosam ea maxime. Id numquam optio nam adipisci maiores modi. Necessitatibus magnam odio reprehenderit dignissimos,
                                    laborum voluptates aliquam eum ut, eius voluptatem commodi reiciendis inventore itaque in harum! Iusto temporibus voluptate culpa quod, nostrum accusantium repudiandae et eaque, nesciunt commodi eligendi omnis dicta
                                    esse nobis vitae deserunt laborum ab a voluptatum dolorum. Blanditiis, similique aliquid. Quam laboriosam maxime quibusdam perspiciatis dolor.</p>
                            </li>
                            <li>
                                <div class="in4-product">
                                    <img src="./images/img-products/iphone5.jpeg">
                                    <p class="name-product">Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore earum quibusdam autem.</p>
                                </div>
                                <span class="rating">4*</span>
                                <span class="name-user">@username</span>
                                <p class="user-cmt">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam explicabo consequuntur numquam sapiente officiis aut quidem facere consectetur, dolore doloribus, porro dignissimos vitae accusamus nesciunt aperiam deserunt
                                    esse dolor ab aspernatur? Repudiandae reprehenderit modi nemo impedit veritatis earum ipsa laboriosam ea maxime. Id numquam optio nam adipisci maiores modi. Necessitatibus magnam odio reprehenderit dignissimos,
                                    laborum voluptates aliquam eum ut, eius voluptatem commodi reiciendis inventore itaque in harum! Iusto temporibus voluptate culpa quod, nostrum accusantium repudiandae et eaque, nesciunt commodi eligendi omnis dicta
                                    esse nobis vitae deserunt laborum ab a voluptatum dolorum. Blanditiis, similique aliquid. Quam laboriosam maxime quibusdam perspiciatis dolor.</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="./js/input_image.js"></script>
<script src="./js/onlyInputNumbers.js"></script>
<script src="./js/seller-addproduct.js"></script>

</html>
