<%--
  Created by IntelliJ IDEA.
  User: MINHNHUT
  Date: 12/17/2020
  Time: 12:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liên hệ</title>
</head>
<body>
    <!-- page -->
    <div class="services-breadcrumb">
        <div class="agile_inner_breadcrumb">
            <div class="container">
                <ul class="w3_short">
                    <li>
                        <a href="index.html">Trang chủ</a>
                        <i>|</i>
                    </li>
                    <li>Liên hệ</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->

    <!-- contact -->
    <div class="contact py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                <span>L</span>iên
                <span>H</span>ệ
            </h3>
            <!-- //tittle heading -->
            <div class="row contact-grids agile-1 mb-5">
                <div class="col-sm-4 contact-grid agileinfo-6 mt-sm-0 mt-2">
                    <div class="contact-grid1 text-center">
                        <div class="con-ic">
                            <i class="fas fa-map-marker-alt rounded-circle"></i>
                        </div>
                        <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Địa chỉ</h4>
                        <p>Linh Trung, Thủ Đức, Hồ Chí Minh
                        </p>
                    </div>
                </div>
                <div class="col-sm-4 contact-grid agileinfo-6 my-sm-0 my-4">
                    <div class="contact-grid1 text-center">
                        <div class="con-ic">
                            <i class="fas fa-phone rounded-circle"></i>
                        </div>
                        <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Hotline</h4>
                        <p>0981 733 331
                        </p>
                    </div>
                </div>
                <div class="col-sm-4 contact-grid agileinfo-6">
                    <div class="contact-grid1 text-center">
                        <div class="con-ic">
                            <i class="fas fa-envelope-open rounded-circle"></i>
                        </div>
                        <h4 class="font-weight-bold mt-sm-4 mt-3 mb-3">Email</h4>
                        <p>
                            <a href="mailto:info@example.com">ecostore@gmail.com</a>
                        </p>
                    </div>
                </div>
            </div>
            <!-- form -->
            <form action="#" method="post">
                <div class="contact-grids1 w3agile-6">
                    <div class="row">
                        <div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <label class="col-form-label">Họ tên</label>
                            <input type="text" class="form-control" name="Name" placeholder="" required=""
                                   oninvalid="this.setCustomValidity('Hãy nhập họ tên!')"
                                   oninput="this.setCustomValidity('')">
                        </div>
                        <div class="col-md-6 col-sm-6 contact-form1 form-group">
                            <label class="col-form-label">Email</label>
                            <input type="email" class="form-control" name="Email" placeholder="" required=""
                                   oninvalid="this.setCustomValidity('Hãy nhập địa chỉ email!')"
                                   oninput="this.setCustomValidity('')">
                        </div>
                    </div>
                    <div class="contact-me animated wow slideInUp form-group">
                        <label class="col-form-label">Bạn đang cần gì?</label>
                        <textarea name="Message" class="form-control" placeholder="" required=""> </textarea>
                    </div>
                    <div class="contact-form">
                        <input type="submit" value="Gửi">
                    </div>
                </div>
            </form>
            <!-- //form -->
        </div>
    </div>
    <!-- //contact -->

    <!-- map -->
    <div class="map mt-sm-0 mt-4">
        <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2588533443673!2d106.78566704968605!3d10.867905960433896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175276398969f7b%3A0x9672b7efd0893fc4!2zxJDhuqFpIEjhu41jIE7DtG5nIEzDom0!5e0!3m2!1svi!2s!4v1605144120671!5m2!1svi!2s"
                width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                tabindex="0"></iframe>
    </div>
    <!-- //map -->

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
