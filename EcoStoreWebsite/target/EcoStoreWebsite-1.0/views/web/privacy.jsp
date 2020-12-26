<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chính sách bảo mật</title>
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
                    <li>Chính sách bảo mật</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->

    <!-- privacy -->
    <div class="terms py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                <span>C</span>hính
                <span>S</span>ách
                <span>B</span>ảo
                <span>M</span>ật</h3>
            <!-- //tittle heading -->
            <div class="content">
                ${model.content}
            </div>
        </div>
    </div>
    <!-- //privacy -->

    <!-- middle section -->
    <div class="join-w3l1 py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <div class="row">
                <div class="col-lg-6">
                    <div class="join-agile text-left p-4">
                        <div class="row">
                            <div class="col-sm-7 offer-name">
                                <h6>Âm thanh sống động</h6>
                                <h4 class="mt-2 mb-3">Loa chính hãng</h4>
                                <p>Giảm giá 25% khi mua tại cửa hàng</p>
                            </div>
                            <div class="col-sm-5 offerimg-w3l">
                                <img src="images/off4.png" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mt-lg-0 mt-5">
                    <div class="join-agile text-left p-4">
                        <div class="row ">
                            <div class="col-sm-7 offer-name">
                                <h6>Tiết kiệm điện năng</h6>
                                <h4 class="mt-2 mb-3">Máy giặt LG</h4>
                                <p>Miễn phí vận chuyển cho đơn hàng trên 2.000.000đ</p>
                            </div>
                            <div class="col-sm-5 offerimg-w3l">
                                <img src="images/off3.png" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- middle section -->
</body>
</html>
