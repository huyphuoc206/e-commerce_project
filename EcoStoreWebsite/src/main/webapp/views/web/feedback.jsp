<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 1:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Phản hồi</title>
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
                    <li>Phản Hồi</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->

    <!-- help -->
    <div class="faqs-w3l py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                <span>T</span>rợ
                <span>G</span>iúp
            </h3>
            <!-- //tittle heading -->
            <!-- feedback content -->
            <div class="wthree-help mb-sm-5 mb-4">
                <div class="agile-left-help">
                    <h3 class="w3-head">Đánh giá của bạn về chúng tôi</h3>
                    <form action="#" method="get">
                        <textarea placeholder="Đánh giá tại đây..." name="Message" required=""></textarea>
                        <input type="submit" value="Gửi">
                    </form>
                </div>
            </div>
            <!-- //feedback content -->
        </div>
        <!-- testimonials -->
        <div class="testimonials py-sm-5 py-4">
            <div class="container py-xl-4 py-lg-2">
                <!-- tittle heading -->
                <h3 class="tittle-w3l text-center text-white mb-lg-5 mb-sm-4 mb-3">
                    <span>P</span>hản
                    <span>H</span>ồi
                    <span>K</span>hách
                    <span>H</span>àng
                </h3>
                <!-- tittle heading -->
                <div class="row gallery-index">
                    <div class="col-sm-6 med-testi-grid">
                        <div class="med-testi test-tooltip rounded p-4">
                            <p>" Sản phẩm bên Eco Store rất chất lượng. Tư vấn khách hàng chuyên nghiệp, tôi rất hài lòng
                                khi sử dụng sản phẩm của Eco Store phân phối."</p>
                        </div>
                        <div class="row med-testi-left my-5">
                            <div class="col-lg-2 col-3 w3ls-med-testi-img">
                                <img src="images/user1.jpg" alt=" " class="img-fluid rounded-circle" />
                            </div>
                            <div class="col-lg-10 col-9 med-testi-txt">
                                <h4 class="font-weight-bold mb-lg-1 mb-2">Tuấn Thanh</h4>
                                <!-- <p>fames ac turpis</p> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 med-testi-grid">
                        <div class="med-testi test-tooltip rounded p-4">
                            <p>"Sản phẩm bên Eco Store rất chất lượng. Tư vấn khách hàng chuyên nghiệp, tôi rất hài lòng khi
                                sử dụng sản phẩm của Eco Store phân phối."</p>
                        </div>
                        <div class="row med-testi-left my-5">
                            <div class="col-lg-2 col-3 w3ls-med-testi-img">
                                <img src="images/user2.jpg" alt=" " class="img-fluid rounded-circle" />
                            </div>
                            <div class="col-lg-10 col-9 med-testi-txt">
                                <h4 class="font-weight-bold mb-lg-1 mb-2">Thu Hà</h4>
                                <!-- <p>fames ac turpis</p> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 med-testi-grid">
                        <div class="med-testi test-tooltip rounded p-4">
                            <p>"Sản phẩm bên Eco Store rất chất lượng. Tư vấn khách hàng chuyên nghiệp, tôi rất hài lòng khi
                                sử dụng sản phẩm của Eco Store phân phối."</p>
                        </div>
                        <div class="row med-testi-left mt-sm-5 my-5">
                            <div class="col-lg-2 col-3 w3ls-med-testi-img">
                                <img src="images/user3.jpg" alt=" " class="img-fluid rounded-circle" />
                            </div>
                            <div class="col-lg-10 col-9 med-testi-txt">
                                <h4 class="font-weight-bold mb-lg-1 mb-2">Minh Phong</h4>
                                <!-- <p>fames ac turpis</p> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 med-testi-grid">
                        <div class="med-testi test-tooltip rounded p-4">
                            <p>"Sản phẩm bên Eco Store rất chất lượng. Tư vấn khách hàng chuyên nghiệp, tôi rất hài lòng khi
                                sử dụng sản phẩm của Eco Store phân phối."</p>
                        </div>
                        <div class="row med-testi-left mt-5">
                            <div class="col-lg-2 col-3 w3ls-med-testi-img">
                                <img src="images/user4.jpg" alt=" " class="img-fluid rounded-circle" />
                            </div>
                            <div class="col-lg-10 col-9 med-testi-txt">
                                <h4 class="font-weight-bold mb-lg-1 mb-2">Thanh Yến</h4>
                                <!-- <p>fames ac turpis</p> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //testimonials -->
    </div>
    <!-- //help -->
</body>
</html>
