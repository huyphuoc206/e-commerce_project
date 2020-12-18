<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/18/2020
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý trang thông tin cửa hàng</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách thông tin cửa hàng</strong>
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
                                <th class="text-center">Địa chỉ</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Facebook</th>
                                <th class="text-center">Instagram</th>
                                <th class="text-center fa-twtter">Twitter</th>
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
                                <td>111 Đường ... Phường ... Quận ... </td>
                                <td>ecostore@gmail.com</td>
                                <td>0901000200</td>
                                <td>Eco-facebook</td>
                                <td>Eco-instagram</td>
                                <td>Eco-twitter</td>

                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt động
                                </td>
                                <td class="text-center">
                                    <a href="editinformation.html" class="edit"><i class="fa fa-pencil"
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
                    <h4 class="modal-title">Thêm thông tin cửa hàng</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class=" row form-group">
                        <label>Địa chỉ</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label>Số điện thoại</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label>Facebook</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label>Instagram</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
                        <label>Twitter</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="row form-group">
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
                    <h4 class="modal-title">Xóa thông tin cửa hàng </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những thông tin cửa hàng này?</p>
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
