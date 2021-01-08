<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/api-web-user"/>
<c:url var="AccountSettingsURL" value="/chinh-sua-thong-tin"/>
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
        <form id="formSubmit" action="" class="form-horizontal">
            <c:if test="${not empty message}">
                <div class="text-center alert alert-${alert}">${message}</div>
            </c:if>
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Hình đại diện</label>
                </div>
                <div class="col-12 col-md-9">
                    <div class="custom-input-file" style="background-image: url('${user.avatar}');">
                        <label class="uploadPhoto">
                            Chọn
                            <input type="file" class="change-avatar" name="avatar" value="${user.avatar}">
                        </label>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Họ tên</label></div>
                <div class="col-12 col-md-9"><input type="text"  name="fullname" class="form-control" value="${user.fullname}">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Email</label></div>
                <div class="col-12 col-md-9"><input type="email" name="email" class="form-control" value="${user.email}">
                </div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Số điện thoại</label>
                </div>
                <div class="col-12 col-md-9"><input type="tel" class="form-control" id="phone" pattern="[0]{1}[0-9]{9}"
                                                    name="phone" required oninvalid="this.setCustomValidity('Hãy nhập số điện thoại!')"
                                                    oninput="this.setCustomValidity('')" value="${user.phone}"></div>
            </div>
            <div class="row form-group">
                <div class="col col-md-3"><label class=" form-control-label">Mật khẩu</label></div>
                <div class="col-12 col-md-9"><a href="<c:url value='/doi-mat-khau'/>" class="btn btn-warning" data-abc="true"> Đổi mật
                    khẩu</a></div>
            </div>
            <div class="row justify-content-center">
                <button id="updateUserBtn" type="submit" class="btn btn-primary btn-sm mr-2">
                    <i class="fa fa-dot-circle-o"></i> Lưu
                </button>

            </div>
        </form>
    </div>

<script>
    $('#updateUserBtn').click(function (e) {
        if($('#formSubmit')[0].checkValidity()) {
            e.preventDefault();
            let data = {};
            let formData = $('#formSubmit').serializeArray();
            $.each(formData, function (i, v) {
                data['' + v.name] = v.value
            });
            data['id'] = ${user.id};
            console.log(data);
            updateUserBtn(data);
        }
    })

    function updateUserBtn(data) {
        $('.load').show();
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function (result) {
                $('.load').hide();
                if(result !== null)
                    window.location.href = "${AccountSettingsURL}?message=update_information_success&alert=success";
                else
                    window.location.href = "${AccountSettingsURL}?message=update_information_fail&alert=danger";
            },
            error: function (error) {
                $('.load').hide();
                window.location.href = "${AccountSettingsURL}?message=system_error&alert=danger";
            }
        })
    }
</script>
</body>
</html>
