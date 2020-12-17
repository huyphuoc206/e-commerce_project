<%--
  Created by IntelliJ IDEA.
  User: LaptopUSAPro
  Date: 12/17/2020
  Time: 12:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý đơn hàng</title>
</head>
<body>
<div class="content mt-3">
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách đơn hàng</strong>
                    </div>
                    <div class="card-header">
                        <div class="float-right">
                            <a href="#deleteOrderModal" class="btn btn-danger" data-toggle="modal"><i
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
                                <th class="text-center">Mã đơn hàng</th>
                                <th class="text-center">Ngày tạo</th>
                                <th class="text-center">Tên khách hàng</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Địa chỉ</th>
                                <th class="text-center">Lời nhắn</th>
                                <th class="text-center">Tổng trị giá</th>
                                <th class="text-center">Trạng thái</th>
                                <th class="text-center">PT thanh toán</th>
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
                                <td class="text-center">1</td>
                                <td class="text-center">23/2/2020</td>
                                <td>Huy Phước</td>
                                <td class="text-center">0919990334</td>
                                <td>Biên Hòa Đồng Nai</td>
                                <td>Giao lúc 11:00 AM</td>
                                <td class="text-center">7.000.000đ</td>
                                <td class="text-center"><span class="status text-warning">&bull;</span>Đang
                                    chờ</td>
                                <td>Thanh toán tiền mặt</td>
                                <td class="text-center">
                                    <a href="editorder.html" class="edit"><i class="fa fa-pencil"
                                                                             aria-hidden="true" data-toggle="tooltip"
                                                                             title="Chỉnh sửa"></i></a>
                                    <a href="orderdetails.html" class="detail"><i class="fa fa-eye"
                                                                                  aria-hidden="true" data-toggle="tooltip"
                                                                                  title="Chi tiết"></i></a>

                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox2" name="options[]" value="1">
                                                    <label for="checkbox2"></label>
                                                </span>
                                </td>
                                <td class="text-center">2</td>
                                <td class="text-center">23/2/2020</td>
                                <td>Huy Phước</td>
                                <td class="text-center">0919990334</td>
                                <td>Biên Hòa Đồng Nai</td>
                                <td>Giao lúc 11:00 AM</td>
                                <td class="text-center">5.000.000đ</td>
                                <td class="text-center"><span class="status text-primary">&bull;</span>Đang
                                    giao</td>
                                <td>Thanh toán tiền mặt</td>
                                <td class="text-center">
                                    <a href="editorder.html" class="edit"><i class="fa fa-pencil"
                                                                             aria-hidden="true" data-toggle="tooltip"
                                                                             title="Chỉnh sửa"></i></a>
                                    <a href="orderdetails.html" class="detail"><i class="fa fa-eye"
                                                                                  aria-hidden="true" data-toggle="tooltip"
                                                                                  title="Chi tiết"></i></a>

                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox3" name="options[]" value="1">
                                                    <label for="checkbox3"></label>
                                                </span>
                                </td>
                                <td class="text-center">3</td>
                                <td class="text-center">23/2/2020</td>
                                <td>Huy Phước</td>
                                <td class="text-center">0919990334</td>
                                <td>Biên Hòa Đồng Nai</td>
                                <td>Giao lúc 11:00 AM</td>
                                <td class="text-center">5.000.000đ</td>
                                <td class="text-center"><span class="status text-success">&bull;</span>Thành
                                    công</td>
                                <td>Thanh toán tiền mặt</td>
                                <td class="text-center">
                                    <a href="editorder.html" class="edit"><i class="fa fa-pencil"
                                                                             aria-hidden="true" data-toggle="tooltip"
                                                                             title="Chỉnh sửa"></i></a>
                                    <a href="orderdetails.html" class="detail"><i class="fa fa-eye"
                                                                                  aria-hidden="true" data-toggle="tooltip"
                                                                                  title="Chi tiết"></i></a>

                                </td>
                            </tr>
                            <tr>
                                <td class="text-center">
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox4" name="options[]" value="1">
                                                    <label for="checkbox4"></label>
                                                </span>
                                </td>
                                <td class="text-center">4</td>
                                <td class="text-center">23/2/2020</td>
                                <td>Huy Phước</td>
                                <td class="text-center">0919990334</td>
                                <td>Biên Hòa Đồng Nai</td>
                                <td>Giao lúc 11:00 AM</td>
                                <td class="text-center">5.000.000đ</td>
                                <td class="text-center"><span class="status text-danger">&bull;</span>Đã
                                    hủy</td>
                                <td>Thanh toán tiền mặt</td>
                                <td class="text-center">
                                    <a href="editorder.html" class="edit"><i class="fa fa-pencil"
                                                                             aria-hidden="true" data-toggle="tooltip"
                                                                             title="Chỉnh sửa"></i></a>
                                    <a href="orderdetails.html" class="detail"><i class="fa fa-eye"
                                                                                  aria-hidden="true" data-toggle="tooltip"
                                                                                  title="Chi tiết"></i></a>

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
<div id="deleteOrderModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <h4 class="modal-title">Xóa đơn hàng </h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Bạn chắc chắn muốn xóa những đơn hàng này?</p>
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
