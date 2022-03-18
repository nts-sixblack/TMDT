<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kênh người bán</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/seller-index.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>

    <div class="seller-content-container">
        <div class="index-container">
            <div class="main-seller">
                <div class="seller_card-item work-notify">
                    <a href="#">
                        <span>0</span>
                        <p>Chờ xác nhận</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Chờ lấy hàng</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Đã xử lí</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Đơn huỷ</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Trả hàng</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Sản phẩm bị tạm khoá</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Sản phẩm hết hàng</p>
                    </a>
                    <a href="#">
                        <span>0</span>
                        <p>Chờ xác nhận</p>
                    </a>

                </div>
                <div class="seller_card-item">
                    <div class="title">
                        <h3>Dữ liệu bán hàng</h3><span> ( Tuần qua )</span>
                        <a href="#">
                            Xem thêm
                            <ion-icon name="chevron-forward-outline"></ion-icon>
                        </a>
                    </div>
                    <div class="chart">
                        <canvas id="index_chart"></canvas>
                    </div>
                    <div class="item">
                        <p>Tỷ lệ mua hàng</p>
                        <span>0.0%</span>
                    </div>
                    <div class="item">
                        <p>Đơn hàng</p>
                        <span>0</span>
                    </div>
                    <div class="item">
                        <p>Lượt truy cập</p>
                        <span>0</span>
                    </div>




                </div>
            </div>
            <div class="side-seller">
                <div class="seller_card-item notifi">
                    <h3>Thông báo</h3>
                    <ul>
                        <li>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus maiores beatae vitae modi qui iste omnis ratione laboriosam ipsum? Numquam ut porro aliquid! Impedit fuga voluptatibus, nobis unde cumque fugit!
                            <p>xx/xx/20xx</p>
                        </li>
                        <li>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus maiores beatae vitae modi qui iste omnis ratione laboriosam ipsum? Numquam ut porro aliquid! Impedit fuga voluptatibus, nobis unde cumque fugit!
                            <p>xx/xx/20xx</p>
                        </li>
                    </ul>
                </div>
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
