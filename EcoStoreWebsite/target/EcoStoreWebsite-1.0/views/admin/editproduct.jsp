<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <c:if test="${not empty message}">
                        <div class="text-center float-left alert alert-${alert}">${message}</div>
                    </c:if>
                    <div class="card-header">
                        <strong class="card-title">Chỉnh sửa sản phẩm</strong>
                    </div>
                    <div class="card-body card-block">
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="name"
                                                                 class=" form-control-label">Tên sản phẩm</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="name"
                                                                    name="name" class="form-control"
                                                                    value="${product.name}"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="price"
                                                                 class=" form-control-label">Giá (VNĐ)</label></div>
                                <div class="col-12 col-md-9"><input type="number" id="price"
                                                                    name="text-input" class="form-control"
                                                                    value="${product.price}"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="discount"
                                                                 class=" form-control-label">Giảm giá (%)</label></div>
                                <div class="col-12 col-md-9"><input type="number" id="discount"
                                                                    name="text-input" class="form-control"
                                                                    value="${product.discount}"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="description"
                                                                 class=" form-control-label">Mô tả</label></div>
                                <div class="col-12 col-md-9"> <textarea rows="30" id="description" name="description"
                                                                        class="form-control">${product.description}</textarea>
                                </div>

                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Thể
                                    loại</label></div>
                                <div class="col-12 col-md-9">
                                    <select name="categoryId" class="form-control">
                                        <c:forEach var="item" items="${categories}">
                                            <c:if test="${item.id == product.categoryId}">
                                                <option value="${item.id}" selected>${item.name}</option>
                                            </c:if>
                                            <c:if test="${item.id != product.categoryId}">
                                                <option value="${item.id}">${item.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">Nhà
                                    cung cấp</label></div>
                                <div class="col-12 col-md-9">
                                    <select name="supplierId" class="form-control">
                                        <c:forEach var="item" items="${suppliers}">
                                            <c:if test="${item.id == product.supplierId}">
                                                <option value="${item.id}" selected>${item.name}</option>
                                            </c:if>
                                            <c:if test="${item.id != product.supplierId}">
                                                <option value="${item.id}">${item.name}</option>
                                            </c:if>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label
                                        class="form-control-label">Trạng thái</label></div>
                                <div class="col-12 col-md-9"><select name="status" class="form-control">
                                    <c:if test="${product.status == 1}">
                                        <option value="1" selected>Hoạt động</option>
                                        <option value="0">Tạm ngưng</option>
                                    </c:if>
                                    <c:if test="${product.status == 0}">
                                        <option value="1">Hoạt động</option>
                                        <option value="0" selected>Tạm ngưng</option>
                                    </c:if>
                                </select></div>
                            </div>
                            <div class="row form-group justify-content-start">
                                <div class="col col-md-3"><label class="form-control-label">Hình
                                    ảnh</label></div>
                                <div class="col-sm-12 col-md-2">
                                    <input type="file" id="file-multiple-input" name="file-multiple-input" multiple="" class="form-control-file">
                                </div>

    <%--                                <div class="col-sm-12 col-md-2">--%>
<%--                                    <div class="custom-input-file"--%>
<%--                                         style="background-image: url('images/product/mm2.jpg');">--%>
<%--                                        <label class="uploadPhoto">--%>
<%--                                            Chọn--%>
<%--                                            <input type="file" class="change-image" name="image" id="image">--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </div>
                            <%--                                 <div class="row form-group">--%>
                            <%--                                    <div class="col col-md-3"><label for="file-multiple-input"--%>
                            <%--                                            class=" form-control-label">Multiple File input</label></div>--%>
                            <%--                                    <div class="col-12 col-md-9"><input type="file" id="file-multiple-input"--%>
                            <%--                                            name="file-multiple-input" multiple="" class="form-control-file"></div>--%>
                            <%--                                </div>--%>
                            <div class="mt-5 row justify-content-center">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-dot-circle-o"></i> Lưu
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->
<script>
    let editor = '';
    $(document).ready(function () {
        editor = CKEDITOR.replace('description', {
            language: "vi"
        });
    });
</script>
</body>
</html>
