<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 9/2/2021
  Time: 7:50 PM
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
    <script src="https://sdk.amazonaws.com/js/aws-sdk-2.982.0.min.js"></script>
    <title>Kênh người bán</title>
    <link rel="stylesheet" href="./css/seller-navbar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/seller-addproduct.css">
    <link rel="stylesheet" href="./css/seller_card-item.css">
</head>

<body>
<jsp:include page="include/seller-navbar.jsp"/>

<div class="seller-main-container">
    <jsp:include page="include/seller-sidebar.jsp"/>
    <div class="seller-content-container">
        <form action="add-product" method="post">
            <!-- ---------------DIV 1---------------- -->
            <div class="seller_card-item add_product">
                <h3>Thêm sản phẩm mới</h3>
                <p>Danh mục</p>
                <div class="category">
                    <select name="categoryId">
                        <c:forEach items="${listCategory}" var="category">
                            <option value="<c:out value="${category.id}"/>"><c:out value="${category.name}"/></option>
                        </c:forEach>

                    </select>
                </div>
                <p>*Tên sản phẩm</p>
                <input type="text" name="nameProduct">
                <p>Hình ảnh sản phẩm</p>
                <div class="inputImage-container">
                    <input type="file" id="file-input" accept=".jpg, .jpeg, .png" multiple hidden onchange="preview()">
                    <label for="file-input">
                        <ion-icon name="cloud-upload-outline"></ion-icon>
                        Choose Files
                    </label>
                    <span id="num-of-files">No files chosen</span>
                    <%--quantity number image--%>
                    <div id="quantityImage" hidden>
                    </div>
                    <%--information image (name: nameImage1, nameImage2 ; value)--%>
                    <div id="nameImage">
                    </div>

                    <div class="box-inputImg" id="images">
                        <ion-icon name="images-outline"></ion-icon>
                    </div>

                </div>
                <p>Mô tả sản phẩm</p>
                <textarea id="w3review" name="decription" rows="10"></textarea>
                <p>Xác nhận ảnh</p>
                <input type="checkbox" onclick="save()">
            </div>
            <!-- ---------------DIV 2---------------- -->
            <div class="seller_card-item add_product">
                <h3>Thông tin bán hàng</h3>
                <input type="number" id="numberProperties" value="0" name="numberProperties" hidden>
                <div class="container-group">

                </div>
                <div class="un-group" id="defaul">
                    <p>*Giá</p>
                    <input type="number" placeholder="VNĐ" onkeypress="isInputNumbers(event);">
                    <p>*Kho hàng</p>
                    <input type="number" placeholder="Số lượng hàng có trong kho" onkeypress="isInputNumbers(event);">
                </div>
                <div class="un-group" id="properties">
                </div>

                <div class="add-group-product" onclick="addProperties()">
                    <ion-icon name="add-circle-outline"></ion-icon>
                    Thêm nhóm phân loại
                </div>
                <div class="add-group-product" onclick="deleteProperties()">
                    <ion-icon name="trash-outline"></ion-icon>
                    Xóa nhóm phân loại
                </div>
            </div>
            <!-- ---------------DIV 3---------------- -->
<%--            <div class="seller_card-item add_product">--%>
<%--                <h3>Vận chuyển</h3>--%>
<%--                <p>*Cân nặng(gram) (sau khi đóng gói)</p>--%>
<%--                <input type="text" placeholder="gram" onkeypress="isInputNumbers(event);">--%>
<%--                <p>Kích thước đóng gói(cm)</p>--%>
<%--                <div class="size-product">--%>
<%--                    <input type="text" placeholder="Dài(cm)" onkeypress="isInputNumbers(event);">--%>
<%--                    <input type="text" placeholder="Rộng(cm)" onkeypress="isInputNumbers(event);">--%>
<%--                    <input type="text" placeholder="Cao(cm)" onkeypress="isInputNumbers(event);">--%>
<%--                </div>--%>
<%--            </div>--%>
            <div class="btn-submit">
                <button class="cancel">
                    Huỷ
                </button>
                <button type="submit">
                    Lưu
                </button>
            </div>
        </form>

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
