<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thanh toán</title>
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
                    <li>Giỏ hàng</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->
    <!-- checkout page -->
    <div class="privacy py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                <span>G</span>iỏ
                <span>H</span>àng
            </h3>
            <!-- //tittle heading -->
            <div class="checkout-right">
                <h4 class="mb-sm-4 mb-3">Giỏ hàng bạn có
                    <span>3 sản phẩm</span>
                </h4>
                <div class="table-responsive">
                    <table class="timetable_sub">
                        <thead>
                        <tr>
                            <th>STT</th>
                            <th>Sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Tên sản phẩm</th>

                            <th>Giá</th>
                            <th>Xóa</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="rem1">
                            <td class="invert">1</td>
                            <td class="invert-image">
                                <a href="single.html">
                                    <img src="images/m2.jpg" alt=" " class="td-img">
                                </a>
                            </td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value">
                                            <span>1</span>
                                        </div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Tivi LG</td>
                            <td class="invert">5.000.000đ</td>
                            <td class="invert">
                                <div class="rem">
                                    <div class="close1"> </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="rem2">
                            <td class="invert">2</td>
                            <td class="invert-image">
                                <a href="single2.html">
                                    <img src="images/m3.jpg" alt=" " class="td-img">
                                </a>
                            </td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value">
                                            <span>1</span>
                                        </div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Tivi Samsung</td>
                            <td class="invert">8.000.000đ</td>
                            <td class="invert">
                                <div class="rem">
                                    <div class="close2"> </div>
                                </div>
                            </td>
                        </tr>
                        <tr class="rem3">
                            <td class="invert">3</td>
                            <td class="invert-image">
                                <a href="single.html">
                                    <img src="images/m5.jpg" alt=" " class="td-img">
                                </a>
                            </td>
                            <td class="invert">
                                <div class="quantity">
                                    <div class="quantity-select">
                                        <div class="entry value-minus">&nbsp;</div>
                                        <div class="entry value">
                                            <span>1</span>
                                        </div>
                                        <div class="entry value-plus active">&nbsp;</div>
                                    </div>
                                </div>
                            </td>
                            <td class="invert">Loa LG</td>
                            <td class="invert">500.000đ</td>
                            <td class="invert">
                                <div class="rem">
                                    <div class="close3"> </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="checkout-left">
                <div class="address_form_agile mt-sm-5 mt-4">
                    <h4 class="mb-sm-4 mb-3">Thông tin giao hàng</h4>
                    <form action="payment.html" method="post" class="creditly-card-form agileinfo_form">
                        <div class="creditly-wrapper wthree, w3_agileits_wrapper">
                            <div class="information-wrapper">
                                <div class="first-row">
                                    <div class="controls form-group">
                                        <input class="billing-address-name form-control" type="text" name="name"
                                               placeholder="Họ tên" required="">
                                    </div>
                                    <div class="controls form-group">
                                        <input type="text" class="form-control" placeholder="Só điện thoại" name="phone"
                                               required="">
                                    </div>
                                    <div class="controls form-group">
                                        <input type="text" class="form-control" placeholder="Địa chỉ" name="address"
                                               required="">
                                    </div>
                                    <div class="controls form-group">
                                        <input type="text" class="form-control" placeholder="Lời nhắn" name="message"
                                               required="">
                                    </div>
                                </div>
                                <div class="payment container mb-4">
                                    <!-- Group of default radios - option 1 -->
                                    <div class="custom-control custom-radio mb-1">
                                        <input type="radio" class="custom-control-input" id="defaultGroupExample1"
                                               name="groupOfDefaultRadios" checked>
                                        <label class="custom-control-label" for="defaultGroupExample1">Thanh toán khi
                                            nhận hàng</label>
                                    </div>

                                    <!-- Group of default radios - option 2 -->
                                    <div class="custom-control custom-radio mb-1">
                                        <input type="radio" class="custom-control-input" id="defaultGroupExample2"
                                               name="groupOfDefaultRadios">
                                        <label class="custom-control-label" for="defaultGroupExample2">Thẻ tín dụng/Ghi
                                            nợ</label>
                                    </div>

                                    <!-- Group of default radios - option 3 -->
                                    <div class="custom-control custom-radio mb-1">
                                        <input type="radio" class="custom-control-input" id="defaultGroupExample3"
                                               name="groupOfDefaultRadios">
                                        <label class="custom-control-label" for="defaultGroupExample3">Ví Aripay</label>
                                    </div>
                                </div>
                                <button class="submit check_out btn">Giao hàng tới địa chỉ này</button>
                            </div>
                        </div>
                    </form>
                    <!--					<div class="checkout-right-basket">-->
                    <!--						<a href="payment.html">Make a Payment-->
                    <!--							<span class="far fa-hand-point-right"></span>-->
                    <!--						</a>-->
                    <!--					</div>-->
                </div>
            </div>
        </div>
    </div>
    <!-- //checkout page -->
</body>
</html>
