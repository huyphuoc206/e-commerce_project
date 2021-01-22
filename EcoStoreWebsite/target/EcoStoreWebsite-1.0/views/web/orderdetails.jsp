<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="APIurl" value="/api-web-order"/>
<c:url var="OrderUrl" value="/theo-doi-don-hang"/>
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
            <c:if test="${not empty message}">
                <div class="text-center float-left alert alert-${alert}">${message}</div>
            </c:if>

        <c:if test="${empty orders || orders.size() == 0 }">
            <c:if test="${not empty message}">
                <div class="text-center alert alert-${alert} mr-auto ml-auto mt-5" style="width: 50%">${message}</div>
            </c:if>
            <c:if test="${empty message}">
                <div class="text-center alert alert-warning mr-auto ml-auto mt-5" style="width: 50%">Bạn chưa có đơn hàng nào.</div>
            </c:if>

            <div class="row justify-content-center">
                <a class="btn btn-info pt-1 pb-1 pr-4 pl-4" href="<c:url value="/trang-chu"/>">Tiếp tục mua sắm</a>
            </div>
        </c:if>
        <c:if test="${orders.size() > 0 }">
            <c:forEach var="item" items="${orders}">
                <div class="card-body">
                    <h6><strong>Mã đơn hàng: </strong><span>${item.id}</span></h6>
                    <article class="card mt-3">
                        <div class="card-body row">
                            <div class="col"> <strong>Địa chỉ:</strong> <br>${item.address}</div>
                            <c:if test="${item.status == 0}">
                                <div class="col"> <strong>Trạng thái:</strong> <br> Đang chờ </div>
                            </c:if>
                            <c:if test="${item.status == 1}">
                                <div class="col"> <strong>Trạng thái:</strong> <br> Đã xác nhận </div>
                            </c:if>
                            <c:if test="${item.status == 2}">
                                <div class="col"> <strong>Trạng thái:</strong> <br> Đang giao </div>
                            </c:if>
                            <c:if test="${item.status == 3}">
                                <div class="col"> <strong>Trạng thái:</strong> <br> Thành công </div>
                            </c:if>
                            <c:if test="${item.status == 4}">
                                <div class="col"> <strong>Trạng thái:</strong> <br> Đã hủy </div>
                            </c:if>
                            <div class="col"> <strong>Dự kiến nhận vào:</strong> <br> 23/6/2020 </div>
                        </div>
                    </article>

                        <c:if test="${item.status == 0}">
                        <div class="track">
                            <div class="step active"> <span class="icon"> <i class="fa fa-clock fa-stack"></i> </span> <span
                                    class="text">Đang chờ</span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-check fa-stack"></i> </span> <span
                                    class="text">Đã xác nhận</span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-truck fa-stack"></i> </span> <span
                                    class="text"> Đang giao </span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-box fa-stack"></i> </span> <span class="text">Thành
                                        công</span> </div>
                        </div>
                        <hr>
                        </c:if>
                        <c:if test="${item.status == 1}">
                        <div class="track">
                            <div class="step active"> <span class="icon"> <i class="fa fa-clock fa-stack"></i> </span> <span
                                    class="text">Đang chờ</span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-check fa-stack"></i> </span> <span
                                    class="text">Đã xác nhận</span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-truck fa-stack"></i> </span> <span
                                    class="text"> Đang giao </span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-box fa-stack"></i> </span> <span class="text">Thành
                                        công</span> </div>
                        </div>
                        <hr>
                        </c:if>
                        <c:if test="${item.status == 2}">
                        <div class="track">
                            <div class="step active"> <span class="icon"> <i class="fa fa-clock fa-stack"></i> </span> <span
                                    class="text">Đang chờ</span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-check fa-stack"></i> </span> <span
                                    class="text">Đã xác nhận</span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-truck fa-stack"></i> </span> <span
                                    class="text"> Đang giao </span> </div>
                            <div class="step"> <span class="icon"> <i class="fa fa-box fa-stack"></i> </span> <span class="text">Thành
                                        công</span>
                        </div>
                        <hr>
                        </c:if>
                        <c:if test="${item.status == 3}">
                        <div class="track">
                            <div class="step active"> <span class="icon"> <i class="fa fa-clock fa-stack"></i> </span> <span
                                    class="text">Đang chờ</span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-check fa-stack"></i> </span> <span
                                    class="text">Đã xác nhận</span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-truck fa-stack"></i> </span> <span
                                    class="text"> Đang giao </span> </div>
                            <div class="step active"> <span class="icon"> <i class="fa fa-box fa-stack"></i> </span> <span class="text">Thành
                                        công</span> </div>
                        </div>
                            <hr>
                        </c:if>


                    <ul class="row">
                        <c:if test="${item.status < 4}">
                            <c:forEach var="itemdetail" items="${item.list}">
                                <li class="col-md-4">
                                    <figure class="itemside mb-3">
                                        <div class="aside"><img src="<c:url value='${itemdetail.product.images.get(0)}'/>" class="td-img"></div>
                                        <figcaption class="info align-self-center">
                                            <a href="<c:url value='/chi-tiet-san-pham?id=${itemdetail.product.id}'/>"><p class="title">${itemdetail.product.name}</p></a>
                                            <span class="text-muted">${itemdetail.totalPrice}</span>
                                            <p class="quantity">Số lượng: <span>${itemdetail.quantity}</span></p>
                                        </figcaption>
                                    </figure>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    <hr>
                    <c:if test="${item.status == 4}">
                        <div class="text-left">Bạn đã hủy đơn hàng này!</div>
                        <div class="row justify-content-between">
                            <a class="btn btn-info pr-5 pl-5 m-3" href="<c:url value="/trang-chu"/>">Tiếp tục mua sắm</a>
                        </div>
                        <hr>
                    </c:if>

                    <c:if test="${item.status == 0}">
                        <div class="row justify-content-between">
                            <a href="#deleteOrder" class="btn btn-danger pr-5 pl-5 m-3" data-toggle="modal"><i
                                    class="fa fa-trash mr-2" aria-hidden="true"></i>Hủy đơn hàng</a>
                        </div>
                        <hr>
                        <div id="deleteOrder" class="modal fade">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form action="theo-doi-don-hang" method="post">
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
                                            <button id="updateStatus" type="submit" class="btn btn-danger">Hủy đơn hàng</button>
                                            <input type="hidden" value="${item.id}" id="id" name="id" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </c:forEach>
            <div class="card-body">
                <div class="row justify-content-between">
                    <a href="<c:url value='/lich-su-mua-hang'/>" class="btn btn-warning m-3" data-abc="true"> <i
                            class="fa fa-chevron-left"></i> Quay lại lịch sử đơn hàng</a>
                </div>
            </div>

        </c:if>
        </article>

    </div>
</body>

</html>
