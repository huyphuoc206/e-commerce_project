<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý phương thức thanh toán</title>
</head>
<body>

<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách phương thức thanh toán</strong>
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
                                <th class="text-center">Tên phương thức</th>
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
                                <td>Thanh toán tiền mặt</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt động
                                </td>
                                <td class="text-center">
                                    <a href="editpayment.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Ví Airpay</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt động</td>
                                </td>
                                <td class="text-center">
                                    <a href="editpayment.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Thẻ tín dụng/ghi nợ</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Hoạt động</td>
                                </td>
                                <td class="text-center">
                                    <a href="editpayment.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Ví Momo</td>
                                <td class="text-center"><span class="status text-danger">&bull;</span>Tạm khóa</td>
                                </td>
                                <td class="text-center">
                                    <a href="editpayment.html" class="edit"><i class="fa fa-pencil"
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
<div id="addSupplierModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Thêm phương thức thanh toán</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên phương thức</label>
                        <input type="text" class="form-control" required>
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
                    <h4 class="modal-title">Xóa phương thức thanh toán </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những phương thức thanh toán này?</p>
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
