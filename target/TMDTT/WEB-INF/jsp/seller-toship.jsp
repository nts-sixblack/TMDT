<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:53 PM
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
    <link rel="stylesheet" href="./css/form-portal-sale-order.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>

    <div class="seller-content-container">
        <div class="form-portal-sale-order" id="form-ajax">
            <div class="navbar">
                <ul>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            Tất cả--%>
<%--                        </a>--%>
<%--                    </li>--%>
                    <li>
                        <a href="seller-to-ship" class="is-active">
                            Chờ xác nhận
                        </a>
                    </li>
                    <li>
                        <button onclick="product()">
                            <a href="#">
                                Chờ lấy hàng
                            </a>
                        </button>
                    </li>
                    <li>
                        <button onclick="delivering()">
                            <a href="#">
                                Đang giao
                            </a>
                        </button>
                    </li>
                    <li>
                        <button onclick="delivered()">
                            <a href="#">
                                Đã giao
                            </a>
                        </button>
                    </li>
                    <li>
                        <button onclick="cancelled()">
                            <a href="#">
                                Đơn huỷ
                            </a>
                        </button>
                    </li>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            Trả hàng--%>
<%--                        </a>--%>
<%--                    </li>--%>
                </ul>
            </div>

            <div class="box_content">
                <div class="list-product">
                    <ul>
                        <li>
                            Sản phẩm
                        </li>
                        <li>
                            Số lượng
                        </li>
                        <li>
                            Trạng thái
                        </li>
                        <li>
                            Vận chuyển
                        </li>
                    </ul>
                    <c:choose>
                        <c:when test="${count > 0}">
                            <div class="box-card-product">
                                <c:forEach var="orderItem" items="${list}">
                                    <div class="card-product">
                                        <img src="<c:out value="${orderItem.image}"/>">
                                        <p><c:out value="${orderItem.nameProduct}"/><c:forEach var="valueItem" items="${orderItem.listValue}"><c:out value="${valueItem.valueName}"/></c:forEach> </p>
                                        <span class="gross-product">
                                            <c:out value="${orderItem.numberProduct}"/>
                                        </span>
                                        <span class="status-product">
                                            Chờ xác nhận
                                        </span>
                                        <p class="shipping-unit">

                                        </p>
                                            <button class="acp">
                                                <a href="seller-confirm-orderitem?orderItemId=<c:out value="${orderItem.id}"/>">
                                                    Xác nhận
                                                </a>
                                            </button>
                                        <button class="ref">
                                            Từ chối
                                        </button>
                                    </div>
                                </c:forEach>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="empty_order">
                                <img src="./images/empty_order.png" alt="">
                            </div>
                        </c:otherwise>
                    </c:choose>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    function product(){
        $.ajax({
            url: "/TMDT/seller-to-ship-product",
            type: "post",
            success: function(data){
                var formAjax = document.getElementById('form-ajax')
                formAjax.innerHTML = data
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
    function delivering(){
        $.ajax({
            url: "/TMDT/seller-to-ship-delivering",
            type: "post",
            success: function(data){
                var formAjax = document.getElementById('form-ajax')
                formAjax.innerHTML = data
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
    function delivered(){
        $.ajax({
            url: "/TMDT/seller-to-ship-delivered",
            type: "post",
            success: function(data){
                var formAjax = document.getElementById('form-ajax')
                formAjax.innerHTML = data
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
    function cancelled(){
        $.ajax({
            url: "/TMDT/seller-to-ship-cancelled",
            type: "post",
            success: function(data){
                var formAjax = document.getElementById('form-ajax')
                formAjax.innerHTML = data
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }

</script>

</html>
