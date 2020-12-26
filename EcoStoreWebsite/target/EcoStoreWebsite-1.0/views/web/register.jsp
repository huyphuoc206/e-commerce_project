<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký</title>
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
                    <li>Đăng Ký</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->
    <!--register-->
    <div class="container">
        <div class="row justify-content-center">
            <div class="modal-body col-sm-6">
                <form action="#" method="post">
                    <div class="form-group">
                        <label for="fullname" class="col-form-label">Họ tên</label>
                        <input type="text" class="form-control" id="fullname" placeholder=" " name="fullname"
                               required="" oninvalid="this.setCustomValidity('Hãy nhập họ tên của bạn!')"
                               oninput="this.setCustomValidity('')">
                    </div>

                    <div class="form-group">
                        <label for="email" class="col-form-label">Email</label>
                        <input type="email" class="form-control" id="email" placeholder=" " name="email" required=""
                               oninvalid="this.setCustomValidity('Hãy nhập email của bạn!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-form-label">Số điện thoại</label>
                        <input type="tel" class="form-control" id="phone" pattern="[0]{1}[0-9]{9}" placeholder=" "
                               name="phone" required="" oninvalid="this.setCustomValidity('Hãy nhập số điện thoại!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <label for="username" class="col-form-label">Tên đăng nhập</label>
                        <input type="text" class="form-control" id="username" placeholder=" " name="username"
                               required="" maxlength="20"
                               oninvalid="this.setCustomValidity('Hãy nhập tên đăng nhập của bạn!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <label for="password1" class="col-form-label">Mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="password" id="password1"
                               minlength="7" required="" oninvalid="this.setCustomValidity('Mật khẩu phải trên 6 ký tự!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <label for="password2" class="col-form-label">Nhập lại mật khẩu</label>
                        <input type="password" class="form-control" placeholder=" " name="Confirm Password"
                               id="password2" required="" oninvalid="this.setCustomValidity('Mật khẩu không khớp!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="sub-w3l">
                        <div class="custom-control custom-checkbox mr-sm-2">
                            <input type="checkbox" class="custom-control-input" id="customControlAutosizing2">
                            <label class="custom-control-label" for="customControlAutosizing2">
                                Tôi chấp nhận các <a href="terms.html" target="_blank">Điều khoản & Điều
                                kiện</a></label>
                        </div>
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Đăng ký">
                    </div>
                </form>
            </div>
        </div>

    </div>
    <!--register-->
</body>
</html>
