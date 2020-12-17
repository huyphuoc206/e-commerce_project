<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý sản phẩm</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách sản phẩm</strong>
                    </div>
                    <div class="card-header">
                        <div class="float-right">
                            <a href="#addProductModal" class="btn btn-success" data-toggle="modal"><i
                                    class="fa fa-plus-circle" aria-hidden="true"></i> <span>Thêm</span></a>
                            <a href="#deleteProductModal" class="btn btn-danger" data-toggle="modal"><i
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
                                <th class="text-center">Tên SP</th>
                                <th class="text-center">Hình ảnh</th>
                                <th class="text-center">Giá</th>
                                <th class="text-center">Giảm giá</th>
                                <th class="text-center">Mô tả</th>
                                <th class="text-center">Thể loại</th>
                                <th class="text-center">Hãng</th>
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
                                <td>Máy giặt ABC</td>
                                <td class="text-center"><img src="images/product/m8.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Máy giặt giá rẻ</td>
                                <td class="text-center">Máy giặt</td>
                                <td class="text-center">Panasonic</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Tivi ABC</td>
                                <td class="text-center"><img src="images/product/m4.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Tivi giá rẻ</td>
                                <td class="text-center">Tivi</td>
                                <td class="text-center">LG</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
                                <td>Loa ABC</td>
                                <td class="text-center"><img src="images/product/mm2.jpg" class="td-img"
                                                             alt="Not found">
                                </td>
                                <td class="text-center">8000000</td>
                                <td class="text-center">20%</td>
                                <td>Loa xịn</td>
                                <td class="text-center">Loa</td>
                                <td class="text-center">Bose</td>
                                <td class="text-center">
                                    <a href="editproduct.html" class="edit"><i class="fa fa-pencil"
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
<div id="addProductModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Thêm sản phẩm</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input type="text" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giá</label>
                        <input type="number" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Giảm giá (%)</label>
                        <input type="number" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="textarea-input" id="textarea-input" rows="9" class="form-control"
                                  required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Thể loại</label>
                        <select name="category" id="category" class="form-control">
                            <option value="0">Chọn thể loại</option>
                            <option value="1">Ti vi</option>
                            <option value="2">Tủ lạnh</option>
                            <option value="3">Máy giặt</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Hãng</label>
                        <select name="supplier" id="supplier" class="form-control">
                            <option value="0">Chọn hãng</option>
                            <option value="1">LG</option>
                            <option value="2">Samsung</option>
                            <option value="3">Panasonic</option>
                        </select>
                    </div>
                    <div class="row form-group">
                        <label for="image" class="col-sm-3 form-control-label">Hình
                            ảnh</label>
                        <div class="col-sm-3">
                            <div class="custom-input-file">
                                <label class="uploadPhoto">
                                    Chọn
                                    <input type="file" class="change-image" name="image">
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="custom-input-file">
                                <label class="uploadPhoto">
                                    Chọn
                                    <input type="file" class="change-image" name="image">
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="custom-input-file">
                                <label class="uploadPhoto">
                                    Chọn
                                    <input type="file" class="change-image" name="image">
                                </label>
                            </div>
                        </div>
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
<div id="deleteProductModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa sản phẩm </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những sản phẩm này?</p>
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
