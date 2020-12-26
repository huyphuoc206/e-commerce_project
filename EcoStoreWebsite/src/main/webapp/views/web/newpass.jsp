<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mật khẩu mới</title>
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
                    <li>Mật Khẩu Mới</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->

    <!--forgot pass-->
    <div class="container">
        <div class="row justify-content-center">
            <div class="modal-body col-sm-6">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="password1" class="col-form-label">Mật khẩu mới</label>
                        <input type="password" class="form-control" placeholder=" " name="password" id="password1"
                               required="">
                    </div>
                    <div class="form-group">
                        <label for="password2" class="col-form-label">Nhập lại mật khẩu mới</label>
                        <input type="password" class="form-control" placeholder=" " name="Confirm Password"
                               id="password2" required="" oninvalid="this.setCustomValidity('Mật khẩu không khớp!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Lưu thay đổi">
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!--forgot pass-->
</body>
</html>
