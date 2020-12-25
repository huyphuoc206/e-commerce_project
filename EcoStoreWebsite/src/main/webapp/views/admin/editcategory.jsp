<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var="APIurl" value="/api-admin-category"/>
<c:url var="CategoryUrl" value="/quan-tri/the-loai"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa thể loại</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Chỉnh sửa thể loại</strong>
                    </div>
                    <div class="card-body card-block">
                        <form id="formSubmit" class="form-horizontal">
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                        class=" form-control-label">Tên thể loại</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="name" value="${categoryModel.name}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Mã
                                    thể loại</label></div>
                                <div class="col-12 col-md-9"><input type="text"
                                                                    name="code" value="${categoryModel.code}" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Trạng thái</label></div>
                                <div class="col-12 col-md-9">
                                    <select id="status" name="status" class="form-control">
                                        <c:if test="${categoryModel.status == 1}">
                                            <option value="1" selected>Hoạt động</option>
                                            <option value="0">Tạm ngưng</option>
                                        </c:if>
                                        <c:if test="${categoryModel.status == 0}">
                                            <option value="1">Hoạt động</option>
                                            <option value="0" selected>Tạm ngưng</option>
                                        </c:if>
                                    </select>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <button id="updateCategory" type="button" class="btn btn-primary btn-sm mr-2">
                                    <i class="fa fa-dot-circle-o"></i> Lưu
                                </button>
                            </div>
                            <input type="hidden" value="${categoryModel.id}" id="id" name="id" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->
<script>
    $('#updateCategory').click(function (e) {
        e.preventDefault();
        let data = {}; // mang object name: value
        let formData = $('#formSubmit').serializeArray();
        // vong lap
        $.each(formData, function(i,v) {
            data[''+v.name] = v.value
        });
        updateCategory(data);
    })

    function updateCategory(data) {
        $.ajax({
            url: '${APIurl}',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify(data),
            dataType: 'json',
            success: function(result) {
                // result chinh la NewsModel ma Server tra ve
                window.location.href = "${CategoryUrl}";
            },
            error: function(error) {
                /* window.location.href = "${Newsurl}?type=list&page=1&maxPageItems=2&message=error_system&alert=danger";*/
            }
        })
    }
</script>
</body>
</html>
