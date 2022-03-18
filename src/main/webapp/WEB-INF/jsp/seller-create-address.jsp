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
    <link rel="stylesheet" href="./css/seller-create-address.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>

    <div class="seller-content-container">
        <div class="create-address-container seller_card-item">
            <h3>Thêm địa chỉ mới</h3>
            <form action="seller-create-address-controller" method="post">
                <div class="form-input">
                    <p>Họ & Tên:</p>
                    <input name="name" type="text" placeholder="Nhập Họ và Tên">
                    <p>Số điện thoại: </p>
                    <input name="phone" type="text" placeholder="Nhập số điện thoại">
                    <p>Tỉnh/Thành phố:</p>
                    <select name="province" id="province" onchange="loadDistrict()">
                        <option value="">---</option>
                        <c:forEach var="ward" items="${list}">
                            <option value="<c:out value="${ward.id}"/>"><c:out value="${ward.address}"/></option>
                        </c:forEach>
                    </select>
                    <p>Quận huyện:</p>
                    <select name="district" id="district" onchange="loadWard()">
                        <option value="">--</option>
                    </select>
                    <p>Phường xã:</p>
                    <select name="ward" id="ward">
                        <option value="">--</option>
                    </select>
                    <p>Địa chỉ:</p>
                    <textarea name="decription" cols="30" rows="6" placeholder="Nhập địa chỉ chi tiết"></textarea>
<%--                    <p></p>--%>
<%--                    <div>--%>
<%--                        <label>Đánh dấu để xác nhận tác dụng của địa chỉ này</label>--%>
<%--                        <br>--%>
<%--                        <label>Nếu chỉ có 1 cơ sở thì phải đánh dấu cả 3</label>--%>
<%--                    </div>--%>
<%--                    <p></p>--%>
<%--                    <div class="option">--%>
<%--                        <input name="defaul" type="checkbox" id="default-address" value="1" checked>--%>
<%--                        <label for="default-address">Đặt làm địa chỉ mặc định</label>--%>

<%--                        <input name="receive" type="checkbox" id="go-address" value="1">--%>
<%--                        <label for="go-address">Đặt làm địa chỉ lấy hàng</label>--%>

<%--                        <input name="returnn" type="checkbox" id="back-address" value="1">--%>
<%--                        <label for="back-address">Đặt làm địa chỉ trả hàng</label>--%>
<%--                    </div>--%>
                    <p></p>
                    <button class="submit">
                        Lưu
                    </button>
                </div>
            </form>
        </div>

    </div>
</div>

</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
    function loadDistrict(){
        var provinceId = document.getElementById("province").value
        $.ajax({
            url: "/TMDT/listDistrict",
            type: "post",
            data: {
                provinceId:provinceId
            },
            success: function(data){
                var list = document.getElementById("district");
                list.innerHTML = data;
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
    function loadWard(){
        var districtId = document.getElementById("district").value
        $.ajax({
            url: "/TMDT/listWard",
            type: "post",
            data: {
                districtId:districtId
            },
            success: function(data){
                var list = document.getElementById("ward");
                list.innerHTML = data;
            },
            error: function(xhr){
                alert("faul"+xhr);
            }
        })
    }
</script>
</html>
