<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/18/2020
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý giới thiệu</title>
</head>
<body>

<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách nội dung giới thiệu</strong>
                    </div>
                    <div class="card-header">
                        <div class="float-right">
                            <a href="#addSupplierModal" class="btn btn-success" data-toggle="modal"><i
                                    class="fa fa-plus-circle" aria-hidden="true"></i> <span>Thêm</span></a>
                            <a href="#deletePaymentModal" class="btn btn-danger" data-toggle="modal"><i
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
                                <th class="text-center">Nội dung</th>
                                <th class="text-center">Hình giới thiệu</th>
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
                                <td>Chúng tôi là Eco Store</td>
                                <td>Hình 1</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt động
                                </td>
                                <td class="text-center">
                                    <a href="editabout.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Chúng tôi vẫn là Eco Store</td>
                                <td>Hình 2</td>
                                <td class="text-center"><span class="status text-danger">&bull;</span>Tạm dừng</td>
                                </td>
                                <td class="text-center">
                                    <a href="editabout.html" class="edit"><i class="fa fa-pencil"
                                                                             aria-hidden="true" data-toggle="tooltip"
                                                                             title="Chỉnh sửa"></i></a>

                                </td>
                            </tr>

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
<div id="addSupplierModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Thêm nội dung giới thiệu</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Nội dung</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label for="avatar" class="col-sm-3 form-control-label">Hình
                            giới thiệu</label>
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
                        <label>Trạng thái</label>
                        <select name="supplier" id="supplier" class="form-control">
                            <option value="1">Hoạt động</option>
                            <option value="2">Tạm khóa</option>
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
<div id="deletePaymentModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa nội dung giới thiệu </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những nội dung giới thiệu này?</p>
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
