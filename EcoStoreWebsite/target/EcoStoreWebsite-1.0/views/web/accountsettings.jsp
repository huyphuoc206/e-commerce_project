<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thông tin tài khoản</title>
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
                    <li>Thông tin tài khoản</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container mt-5">
        <form action="" class="form-horizontal">
            <div class="row form-group">
                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Hình đại diện</label>
                </div>
                <div class="col-12 col-md-9">
                    <div class="custom-input-file" style="background-image: url('images/admin.jpg');">
                        <label class="uploadPhoto">
                            Chọn
                            <input type="file" class="change-avatar" name="avatar" id="avatar">
                        </label>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Họ tên</label></div>
                <div class="col-12 col-md-9"><input type="text" id="text-input" name="text-input" class="form-control">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Email</label></div>
                <div class="col-12 col-md-9"><input type="email" id="text-input" name="text-input" class="form-control">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Số điện thoại</label>
                </div>
                <div class="col-12 col-md-9"><input type="tel" class="form-control" id="phone" pattern="[0]{1}[0-9]{9}"
                                                    name="phone" required oninvalid="this.setCustomValidity('Hãy nhập số điện thoại!')"
                                                    oninput="this.setCustomValidity('')"></div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label for="text-input" class=" form-control-label">Mật khẩu</label></div>
                <div class="col-12 col-md-9"><a href="changepass.html" class="btn btn-warning" data-abc="true"> Đổi mật
                    khẩu</a></div>
            </div>
            <div class="row justify-content-center">
                <button type="submit" class="btn btn-primary btn-sm mr-2">
                    <i class="fa fa-dot-circle-o"></i> Lưu
                </button>
                <button type="reset" class="btn btn-danger btn-sm">
                    <i class="fa fa-ban"></i> Làm mới
                </button>
            </div>
        </form>
    </div>

</body>
</html>
