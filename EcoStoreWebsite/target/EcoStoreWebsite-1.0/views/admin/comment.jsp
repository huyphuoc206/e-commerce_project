<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý bình luận</title>
</head>
<body>
        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Danh sách bình luận</strong>
                            </div>
                            <div class="card-header">
                                <div class="float-right">
                                    <a href="#deleteCommentModal" class="btn btn-danger" data-toggle="modal"><i
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
                                        <th class="text-center">Tên người dùng</th>
                                        <th class="text-center">Tên sản phẩm</th>
                                        <th class="text-center">Nội dung</th>
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
                                        <td>Huy Phước</td>
                                        <td>Tivi LG 4K
                                        </td>
                                        <td>Sản phẩm xịn sò, chất lượng.
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox" id="checkbox2" name="options[]" value="1">
                                                            <label for="checkbox2"></label>
                                                        </span>
                                        </td>
                                        <td>Minh Nhật</td>
                                        <td>Máy giặt Panasonic
                                        </td>
                                        <td>Giá cả hợp lý
                                        </td>

                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                                        <span class="custom-checkbox">
                                                            <input type="checkbox" id="checkbox3" name="options[]" value="1">
                                                            <label for="checkbox3"></label>
                                                        </span>
                                        </td>
                                        <td>Thanh Tôn</td>
                                        <td> Máy lạnh Panasonic
                                        </td>
                                        <td>10 điểm
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

        <!-- Delete Modal HTML -->
        <div id="deleteCommentModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h4 class="modal-title">Xóa bình luận </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn chắc chắn muốn xóa những bình luận này?</p>
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
