<%--
  Created by IntelliJ IDEA.
  User: SixBlack
  Date: 11/10/2021
  Time: 2:12 PM
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
    <link rel="stylesheet" href="./css/shipper/inc/main-layout.css">
    <link rel="stylesheet" href="./css/shipper/inc/shipper-header.css">
    <link rel="stylesheet" href="./css/shipper/inc/sidebar.css">
    <link rel="stylesheet" href="./css/color.css">
    <link rel="stylesheet" href="./css/staff-ship/staff-style.css">
    <link rel="stylesheet" href="./css/toast-style.css">
    <title>Staff</title>
</head>

<body>
<jsp:include page="inc/header.jsp"/>

<jsp:include page="inc/sidebar.jsp"/>

<div class="main-container">
    <div class="medium-container box-shadow">
        <h2>Đổi mật khẩu</h2>
        <form action="staff-changePass" method="post">
            <div class="form-input">
                <p>Mật khẩu cũ:</p>
                <input type="password" required name="oldPass" value="<c:out value="${oldPass}"/>">
                <p>Mật khẩu mới:</p>
                <input type="password" required name="newPass" value="<c:out value="${newPass}"/>">
                <p>Mật khẩu mới:</p>
                <input type="password" required name="confirmNewPass">
                <p></p>
                <button class="button button__accept staff-custom">
                    Đổi mật khẩu
                </button>
            </div>
        </form>
    </div>
</div>

<c:if test="${not empty type}">
    <div id="toast"></div>
</c:if>


</body>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="./js/toast.js"></script>

<c:if test="${not empty type}">
    <script>
        toast({
            title: 'Thông báo',
            message: '<c:out value="${message}"/>',
            // type: 'info',
            // type: 'success'
            type: '<c:out value="${type}"/>'
            // type: 'warning'
            // type: 'error'
        });
    </script>
</c:if>

</html>
