<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/18/2021
  Time: 5:20 PM
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
    <link rel="stylesheet" href="./css/seller-income.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
    <link rel="stylesheet" href="./css/scrollbar.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>

    <div class="seller-content-container">
        <div class="income-container">
            <div class="main">
                <div class="seller_card-item">
                    <h3>Tổng Quan</h3>
                    <div class="overview">
                        <div class="will-pay">
                            <h4>Sẽ thanh toán</h4>
                            <p>Tổng cộng</p>
                            <b>₫<span>0</span></b>
                        </div>
                        <div class="paid">
                            <h4>
                                Đã thanh toán
                            </h4>
                            <div class="box-paid">
                                <div>
                                    <p>Tuần này</p>
                                    <b>₫<span>0</span></b>

                                </div>
                                <div>
                                    <p>Tháng này</p>
                                    <b class="small-font">₫<span>0</span></b>
                                </div>
                                <div>
                                    <p>Tổng cộng</p>
                                    <b class="small-font">₫<span>0</span></b>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="seller_card-item detail">
                    <h3>Chi Tiết</h3>
                    <ul class="navbar">
                        <li class="is-active">Sẽ Thanh Toán</li>
                        <li>Đã Thanh Toán</li>
                    </ul>
                    <div class="table-content">
                        <ul>
                            <li class="row-table head">
                                <p>Mã đơn hàng</p>
                                <p>Người mua</p>
                                <p>Ngày thanh toán dự kiến</p>
                                <p>Trạng thái</p>
                                <p>Số tiền</p>
                            </li>
                            <li class="is-empty">
                                <img src="./images/empty_order.png" alt="">
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                        </ul>
                    </div>


                </div>
                <div class="seller_card-item detail">
                    <h3>Chi Tiết</h3>
                    <ul class="navbar">
                        <li>Sẽ Thanh Toán</li>
                        <li class="is-active">Đã Thanh Toán</li>
                    </ul>
                    <div class="table-content">
                        <ul>
                            <li class="row-table head">
                                <p>Mã đơn hàng</p>
                                <p>Người mua</p>
                                <p>Ngày thanh toán dự kiến</p>
                                <p>Trạng thái</p>
                                <p>Số tiền</p>
                            </li>
                            <li class="is-empty">
                                <img src="./images/empty_order.png" alt="">
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                            <li class="row-table item">
                                <p>#kfhksd4234</p>
                                <p>@username</p>
                                <p>xx/yy/zzzz</p>
                                <p>Đang abc</p>
                                <p>123.000</p>
                            </li>
                        </ul>
                    </div>


                </div>
            </div>
            <div class="side seller_card-item">
                <h3>Báo cáo thu nhập</h3>
                <ul class="list-report">
                    <li>
                        <a href="#">Tháng 8 - 2021</a>
                    </li>
                    <li>
                        <a href="#">Tháng 8 - 2021</a>
                    </li>
                    <li>
                        <a href="#">Tháng 8 - 2021</a>
                    </li>
                    <li>
                        <a href="#">Tháng 8 - 2021</a>
                    </li>
                    <li>
                        <a href="#">Tháng 8 - 2021</a>
                    </li>
                </ul>
                <a href="#" class="view-all">Xem Tất Cả</a>
            </div>
        </div>


    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
<script src="./js/seller-index_chart.js"></script>

</html>
