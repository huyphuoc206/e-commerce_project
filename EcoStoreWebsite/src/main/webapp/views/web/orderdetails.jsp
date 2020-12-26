<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chi tiết đơn hàng</title>
</head>
<body>
    <!-- page -->
    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="<c:url value='/trang-chu'/>">Trang chủ</a>
                        <i>|</i>
                    </li>
                    <li>Chi tiết đơn hàng</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="container product-sec1 px-sm-4 px-3 py-sm-5 py-3 mb-4 mt-5">
        <article class="card">
            <header class="card-header"> Đơn hàng của tôi / Theo dõi </header>
            <div class="card-body">
                <h6>Mã đơn hàng: <span>1</span></h6>
                <article class="card mt-3">
                    <div class="card-body row">
                        <div class="col"> <strong>Địa chỉ:</strong> <br>Biên Hòa Đồng Nai </div>
                        <div class="col"> <strong>Trạng thái:</strong> <br> Đang giao </div>
                        <div class="col"> <strong>Dự kiến nhận vào:</strong> <br> 23/6/2020 </div>
                    </div>
                </article>
                <div class="track">
                    <div class="step active"> <span class="icon"> <i class="fa fa-clock"></i> </span> <span
                            class="text">Đang chờ</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-check"></i> </span> <span
                            class="text">Đã xác nhận</span> </div>
                    <div class="step active"> <span class="icon"> <i class="fa fa-truck"></i> </span> <span
                            class="text"> Đang giao </span> </div>
                    <div class="step"> <span class="icon"> <i class="fa fa-box"></i> </span> <span class="text">Thành
                                công</span> </div>
                </div>
                <hr>
                <ul class="row">
                    <li class="col-md-4">
                        <figure class="itemside mb-3">
                            <div class="aside"><img src="images/m2.jpg" class="td-img"></div>
                            <figcaption class="info align-self-center">
                                <p class="title">TV LG</p> <span class="text-muted">5.000.000đ </span>
                                <p class="quantity">Số lượng: <span>1</span></p>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="col-md-4">
                        <figure class="itemside mb-3">
                            <div class="aside"><img src="images/m3.jpg" class="td-img"></div>
                            <figcaption class="info align-self-center">
                                <p class="title">TV Samsung</p> <span class="text-muted">3.500.000đ
                                    </span>
                                <p class="quantity">Số lượng: <span>1</span></p>
                            </figcaption>
                        </figure>
                    </li>
                    <li class="col-md-4">
                        <figure class="itemside mb-3">
                            <div class="aside"><img src="images/m5.jpg" class="td-img"></div>
                            <figcaption class="info align-self-center">
                                <p class="title">Loa LG</p><span class="text-muted">500.000đ
                                    </span>
                                <p class="quantity">Số lượng: <span>1</span></p>
                            </figcaption>
                        </figure>
                    </li>
                </ul>
                <hr>
                <div class="row justify-content-between">
                    <a href="orderhistory.html" class="btn btn-warning m-3" data-abc="true"> <i
                            class="fa fa-chevron-left"></i> Quay lại lịch sử đơn hàng</a>
                    <a href="#deleteOrder" class="btn btn-danger pr-5 pl-5 m-3" data-toggle="modal"><i
                            class="fa fa-trash mr-2" aria-hidden="true"></i>Hủy đơn hàng</a>
                </div>

            </div>
        </article>
        <!-- Delete Modal HTML -->
        <div id="deleteOrder" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">
                            <h4 class="modal-title">Hủy đơn hàng </h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <p>Bạn chắc chắn muốn hủy đơn hàng này?</p>
                            <p class="text-warning"><small>Hành động này sẽ không thể khôi phục lại.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Quay lại">
                            <input type="submit" class="btn btn-danger" value="Hủy đơn hàng">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
