<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách hãng sản xuất</strong>
                    </div>
                    <div class="card-header">
                        <div class="float-right">
                            <a href="#addSupplierModal" class="btn btn-success" data-toggle="modal"><i
                                    class="fa fa-plus-circle" aria-hidden="true"></i> <span>Thêm</span></a>
                            <a href="#deleteSupplierModal" class="btn btn-danger" data-toggle="modal"><i
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
                                <th class="text-center">Tên hãng sản xuất</th>
                                <th class="text-center">Mã hãng sản xuất</th>
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
                                <td>Samsung</td>
                                <td class="text-center">samsung
                                </td>
                                <td class="text-center">
                                    <a href="editsupplier.html" class="edit"><i class="fa fa-pencil"
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
                                <td>LG</td>
                                <td class="text-center">lg
                                </td>
                                <td class="text-center">
                                    <a href="editsupplier.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Panasonic</td>
                                <td class="text-center">panasonic
                                </td>
                                <td class="text-center">
                                    <a href="editsupplier.html" class="edit"><i class="fa fa-pencil"
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
                    <h4 class="modal-title">Thêm hãng sản xuất</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên hãng sản xuất</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mã hãng sản xuất</label>
                        <input type="text" class="form-control" required>
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
<div id="deleteSupplierModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa hãng sản xuất </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những hãng sản xuất này?</p>
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
