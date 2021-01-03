<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa người dùng</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Chỉnh sửa người dùng</strong>
                    </div>
                    <div class="card-body card-block">
                        <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Tên tài khoản</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="text-input" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Mật khẩu</label></div>
                                <div class="col-12 col-md-9"><input type="password" id="text-input"
                                                                    name="text-input" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Họ tên</label></div>
                                <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                    name="text-input" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Hình đại diện</label></div>
                                <div class="col-12 col-md-9"><div class="custom-input-file">
                                    <label class="uploadPhoto">
                                        Chọn
                                        <input type="file" class="change-avatar" name="avatar" id="avatar">
                                    </label>
                                </div></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Email</label></div>
                                <div class="col-12 col-md-9"><input type="email" id="text-input"
                                                                    name="text-input" class="form-control"></div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3"><label for="text-input"
                                                                 class=" form-control-label">Số điện thoại</label></div>
                                <div class="col-12 col-md-9"><input type="tel" class="form-control" id="phone" pattern="[0]{1}[0-9]{9}"
                                                                    name="phone" required
                                                                    oninvalid="this.setCustomValidity('Hãy nhập số điện thoại!')"
                                                                    oninput="this.setCustomValidity('')"></div>
                            </div>


                            <div class="row form-group">
                                <div class="col col-md-3"><label for="select" class=" form-control-label">Trạng thái
                                </label></div>
                                <div class="col-12 col-md-9">
                                    <select name="category" id="category" class="form-control">
                                        <option value="0">Tạm khóa</option>
                                        <option value="1">Hoạt động</option>
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
