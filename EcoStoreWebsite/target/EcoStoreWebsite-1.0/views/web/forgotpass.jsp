<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quên mật khẩu</title>
</head>
<body>
    <!-- page -->
    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="<c:url value='/trang-chu'/>">Trang chủ</a>
                        <i>|</i>
                    </li>
                    <li>Quên Mật Khẩu</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- page -->
    <!--login-->
    <div class="container">
        <div class="row justify-content-center">
            <div class="modal-body col-sm-6">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="email" class="col-form-label">Email</label>
                        <input type="email" class="form-control" id="email" placeholder=" " name="email" required=""
                               oninvalid="this.setCustomValidity('Hãy nhập email của bạn!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Gửi">
                    </div>
                    <p class="text-center dont-do mt-3">Bạn chưa có tài khoản?
                        <a href="register.html">
                            Đăng ký ngay</a>
                    </p>
                </form>
            </div>
        </div>

    </div>
    <!--login-->
</body>
</html>
