<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý người dùng </title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách người dùng</strong>
                    </div>
                    <div class="card-header">
                        <div class="float-right">
                            <a href="#addUserModal" class="btn btn-success" data-toggle="modal"><i
                                    class="fa fa-plus-circle" aria-hidden="true"></i> <span>Thêm</span></a>
                            <a href="#deleteUserModal" class="btn btn-danger" data-toggle="modal"><i
                                    class="fa fa-trash-o" aria-hidden="true"></i> <span>Xóa</span></a>
                        </div>
                    </div>
                    <div class="card-body">
                        <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="selectAll">
                                                    <label for="selectAll"></label>
                                                </span>
                                </th>
                                <th class="text-center">Tên tài khoản</th>
                                <th class="text-center">Mật khẩu</th>
                                <th class="text-center">Hình đại diện</th>
                                <th class="text-center">Họ tên</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Vai trò</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">Thao tác</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                    <label for="checkbox1"></label>
                                                </span>
                                </td>
                                <td>admin</td>
                                <td>123</td>
                                <td class="text-center"><img src="images/avatar/1.jpg" class="td-img"
                                                             alt="Not found"></td>
                                <td>Huy Phước</td>
                                <td>huyphuoc206@gmail.com</td>
                                <td class="text-center">0919990334</td>
                                <td>Quản trị</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt
                                    động</td>
                                <td class="text-center">
                                    <a href="edituser.html" class="edit"><i class="fa fa-pencil"
                                                                            aria-hidden="true" data-toggle="tooltip"
                                                                            title="Chỉnh sửa"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox2" name="options[]" value="1">
                                                    <label for="checkbox2"></label>
                                                </span>
                                </td>
                                <td>admin2</td>
                                <td>123</td>
                                <td class="text-center"><img src="images/avatar/2.jpg" class="td-img"
                                                             alt="Not found"></td>
                                <td>Thanh Tôn</td>
                                <td>thanhton@gmail.com</td>
                                <td class="text-center">0919849334</td>
                                <td>Quản trị</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt
                                    động</td>
                                <td class="text-center">
                                    <a href="edituser.html" class="edit"><i class="fa fa-pencil"
                                                                            aria-hidden="true" data-toggle="tooltip"
                                                                            title="Chỉnh sửa"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox3" name="options[]" value="1">
                                                    <label for="checkbox3"></label>
                                                </span>
                                </td>
                                <td>admin2</td>
                                <td>123</td>
                                <td class="text-center"><img src="images/avatar/3.jpg" class="td-img"
                                                             alt="Not found"></td>
                                <td>Minh Nhật</td>
                                <td>minhnhat@gmail.com</td>
                                <td class="text-center">0918237834</td>
                                <td>Quản trị</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt
                                    động</td>
                                <td class="text-center">
                                    <a href="edituser.html" class="edit"><i class="fa fa-pencil"
                                                                            aria-hidden="true" data-toggle="tooltip"
                                                                            title="Chỉnh sửa"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox4" name="options[]" value="1">
                                                    <label for="checkbox4"></label>
                                                </span>
                                </td>
                                <td>php</td>
                                <td>123</td>
                                <td class="text-center"><img src="images/avatar/4.jpg" class="td-img"
                                                             alt="Not found"></td>
                                <td>Phạm Huy Phước</td>
                                <td>hp@gmail.com</td>
                                <td class="text-center">0918237834</td>
                                <td>Khách hàng</td>
                                <td class="text-center"><span class="status text-danger">&bull;</span> Tạm
                                    khóa</td>
                                <td class="text-center">
                                    <a href="edituser.html" class="edit"><i class="fa fa-pencil"
                                                                            aria-hidden="true" data-toggle="tooltip"
                                                                            title="Chỉnh sửa"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- .animated -->
</div><!-- .content -->


<!-- Add Modal HTML -->
<div id="addUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Thêm người dùng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên tài khoản</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mật khẩu</label>
                        <input type="password" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Họ tên</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label for="avatar" class="col-sm-3 form-control-label">Hình
                            đại diện</label>
                        <div class="col-sm-3">
                            <div class="custom-input-file">
                                <label class="uploadPhoto">
                                    Chọn
                                    <input type="file" class="change-avatar" name="avatar" id="avatar">
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-form-label">Số điện thoại</label>
                        <input type="tel" class="form-control" id="phone" pattern="[0]{1}[0-9]{9}" name="phone"
                               required oninvalid="this.setCustomValidity('Hãy nhập số điện thoại!')"
                               oninput="this.setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <label>Vai trò</label>
                        <select name="category" id="category" class="form-control">
                            <option value="0">Quản trị</option>
                            <option value="1">Khách hàng</option>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <input type="submit" class="btn btn-success" value="Thêm">
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa người dùng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những người dùng này?</p>
                    <p class="text-warning"><small>Hành động này sẽ không thể khôi phục lại.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Hủy">
                    <input type="submit" class="btn btn-danger" value="Xóa">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
