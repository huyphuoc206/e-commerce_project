<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa đơn hàng</title>
</head>
<body>
            <div class="content mt-3">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong class="card-title">Chỉnh sửa đơn hàng</strong>
                                </div>
                                <div class="card-body card-block">
                                    <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="text-input" class=" form-control-label">Mã
                                                đơn hàng</label></div>
                                            <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                                name="text-input" class="form-control" disabled></div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="select" class=" form-control-label">Trạng
                                                thái</label></div>
                                            <div class="col-12 col-md-9">
                                                <select name="category" id="category" class="form-control">
                                                    <option value="0">Đang chờ</option>
                                                    <option value="1">Đã xác nhận</option>
                                                    <option value="2">Đang giao</option>
                                                    <option value="3">Thành công</option>
                                                    <option value="4">Đã hủy</option>
                                                </select>
                                            </div>
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


                            </div>
                        </div>
                    </div>
                </div><!-- .animated -->
            </div><!-- .content -->
</body>
</html>
