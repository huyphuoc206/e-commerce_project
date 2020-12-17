<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lịch sử mua hàng</title>
</head>
<body>
    <!-- page -->
    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="index.html">Trang Chủ</a>
                        <i>|</i>
                    </li>
                    <li>Lịch sử đơn hàng</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Order history -->
    <div class="container product-sec1 px-sm-4 px-3 py-sm-5 py-3 mb-4 mt-5">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th scope="col" class="text-center">Mã đơn hàng</th>
                <th scope="col" class="text-center">Ngày đặt hàng</th>
                <th scope="col" class="text-center">Tổng trị giá</th>
                <th scope="col" class="text-center">Trạng thái</th>
                <th scope="col" class="text-center">Thao tác<table></table>
                </th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row" class="text-center">1</th>
                <td class="text-center">20/6/2020</td>
                <td class="text-center">5.000.000đ</td>
                <td class="text-center"><span class="status text-warning">&bull;</span>Đang chờ</td>
                <td class="text-center">
                    <a href="orderdetails.html" class="detail-icon"><i class="fa fa-eye" aria-hidden="true"
                                                                       data-toggle="tooltip" title="Xem chi tiết"></i></a>
                </td>
            </tr>
            <tr>
                <th scope="row" class="text-center">2</th>
                <td class="text-center">30/7/2020</td>
                <td class="text-center">15.000.000đ</td>
                <td class="text-center"><span class="status text-primary">&bull;</span>Đang giao</td>
                <td class="text-center">
                    <a href="orderdetails.html" class="detail-icon"><i class="fa fa-eye" aria-hidden="true"
                                                                       data-toggle="tooltip" title="Xem chi tiết"></i></a>
                </td>
            </tr>
            <tr>
                <th scope="row" class="text-center">3</th>
                <td class="text-center">5/8/2020</td>
                <td class="text-center">30.000.000đ</td>
                <td class="text-center"><span class="status text-success">&bull;</span>Thành công</td>
                <td class="text-center">
                    <a href="orderdetails.html" class="detail-icon"><i class="fa fa-eye" aria-hidden="true"
                                                                       data-toggle="tooltip" title="Xem chi tiết"></i></a>
                </td>
            </tr>
            <tr>
                <th scope="row" class="text-center">4</th>
                <td class="text-center">5/8/2020</td>
                <td class="text-center">13.000.000đ</td>
                <td class="text-center"><span class="status text-danger">&bull;</span>Đã hủy</td>
                <td class="text-center">
                    <a href="orderdetails.html" class="detail-icon"><i class="fa fa-eye" aria-hidden="true"
                                                                       data-toggle="tooltip" title="Xem chi tiết"></i></a>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
    <!-- end order history -->
</body>
</html>
