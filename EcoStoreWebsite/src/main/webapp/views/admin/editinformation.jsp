<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/18/2020
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="APIurl" value="/api-admin-information"/>
<c:url var="InformationURL" value="/quan-tri/thong-tin"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa thông tin cửa hàng</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Chỉnh sửa thông tin cửa hàng</strong>
                    </div>
                    <div class="card-body card-block">
                        <form id="formSubmit" class="form-horizontal">
                            <div class="row form-group">

                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Địa chỉ</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="address" value="${informationModel.address}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Email</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="email" value="${informationModel.email}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Số điện thoại</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="phone" value="${informationModel.phone}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Facebook</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="facebookLink" value="${informationModel.facebookLink}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Instagram</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="instagramLink" value="${informationModel.instagramLink}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                                                 class=" form-control-label">Twitter</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="twitterLink" value="${informationModel.twitterLink}" class="form-control"></div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Trạng thái</label></div>
                                <div class="col-12 col-md-9">
                                    <select id="status" name="status" class="form-control">
                                        <c:if test="${informationModel.status == 1}">
                                            <option value="1" selected>Hoạt động</option>
                                            <option value="0">Tạm ngưng</option>
                                        </c:if>
                                        <c:if test="${informationModel.status == 0}">
                                            <option value="1">Hoạt động</option>
                                            <option value="0" selected>Tạm ngưng</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <button id="updateInformation" type="submit" class="btn btn-primary btn-sm mr-2">
                                    <i class="fa fa-dot-circle-o"></i> Lưu
                                </button>
                            </div>
                            <input type="hidden" name="id" value="${informationModel.id}">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->
<script>
    $('#updateInformation').click(function (e) {
        e.preventDefault();
        let data = {}; // mang object name: value
        let formData = $('#formSubmit').serializeArray();
        // vong lap
        $.each(formData, function(i,v) {
            data[''+v.name] = v.value
        });
        updateInformation(data);
    })

    function updateInformation(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function(result) {
                // result chinh la NewsModel ma Server tra ve
                window.location.href = "${InformationURL}";
            },
            error: function(error) {
                /* window.location.href = "${InformationURL}?type=list&page=1&maxPageItems=2&message=error_system&alert=danger";*/
            }
        })
    }
</script>
</body>
</html>
