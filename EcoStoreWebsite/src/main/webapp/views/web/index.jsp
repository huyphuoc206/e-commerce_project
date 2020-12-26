<%--
  Created by IntelliJ IDEA.
  User: HuyPhuoc
  Date: 14-Dec-20
  Time: 10:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<!-- banner -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <!-- Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item item1 active">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Giảm giá
                            <span>10%</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">Vui
                            <span>Giáng Sinh</span>
                        </h3>
                        <a class="button2" href="product.html">Mua ngay </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item2">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p> Đặt hàng ngay
                            sẽ được </p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">
                            <span>Miễn phí</span> vận chuyển
                        </h3>
                        <a class="button2" href="product.html">Mua ngay </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item3">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p> Tư vấn
                            <span>miễn phí</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4"> Hotline
                            <span>1900-9090</span>
                        </h3>
                        <a class="button2" href="product.html">Mua ngay </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item item4">
            <div class="container">
                <div class="w3l-space-banner">
                    <div class="carousel-caption p-lg-5 p-sm-4 p-3">
                        <p>Nhận ngay giảm giá
                            <span>40%</span></p>
                        <h3 class="font-weight-bold pt-2 pb-lg-5 pb-4"><span>Giảm Giá </span>Hôm Nay

                        </h3>
                        <a class="button2" href="product.html">Mua ngay </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- //banner -->

<!-- top Products -->
<div class="ads-grid py-sm-5 py-4">
    <div class="container py-xl-4 py-lg-2">
        <div class="row justify-content-center">
            <div class="agileinfo-ads-display col-lg-12">
                <div class="wrapper">
                    <!-- first section -->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3">
                        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                            <span>S</span>ản

                            <span>P</span>hẩm
                            <span>M</span>ới</h3>
                        <div class="row mt-5 mb-5">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m1.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Sony Android TV 4K 43"
                                                KD-43X8000G</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">9.400.000đ</span>
                                            <del>10.400.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Sony Android TV 4K 43' KD-43X8000G"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m2.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Smart TV 4K 55" UA55TU8500</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">12.300.000đ</span>
                                            <del>15.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Smart TV 4K 55' UA55TU8500"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m3.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Smart TV QLED 4K 43" QA43Q60T</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">10.420.000đ</span>
                                            <del>13.420.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Smart TV QLED 4K 43 QA43Q60"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/m5.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Loa Harman Kardon Aura Studio 3</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">1.000.000đ</span>
                                            <del>1.200.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name" value="Artis Speaker"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m6.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Loa toàn dải Philip từ kép âm thanh cao 10W 6R -
                                                H93AZ</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">400.000đ</span>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Loa toàn dải Philip 10W 6R -
													H93AZ"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m4.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Smart TV QLED 4K 55" QA55Q70T</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">22.300.000đ</span>
                                            <del>25.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Smart TV QLED 4K 55' QA55Q70T"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/m7.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Panasonic Inverter 188 lít NR-BA229PKVN</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">7.000.000đ</span>
                                            <del>9.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Panasonic Inverter 188 lít NR-BA229PKVN"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/m8.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Inverter 9.5 Kg WW95J42G0BX/SV</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">10.300.000đ</span>
                                            <del>11.200.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Inverter 9.5 Kg WW95J42G0BX/S"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk1.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">TCL Android TV QLED 4K 50" 50Q716</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">12.900.000đ</span>
                                            <del>17.450.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="TCL Android TV QLED 4K 50' 50Q716"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk2.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">LG Smart TV 4K 49" 49UM7400PTA</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">10.300.000đ</span>
                                            <del>15.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="LG Smart TV 4K 49' 49UM7400PTA"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk3.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">LG Smart TV 4K 49" 49UN7290PTF</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">11.420.000đ</span>
                                            <del>12.420.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="LG Smart TV 4K 49' 49UN7290PTF"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk4.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">LG Smart TV 4K 55" 55UN7290PTF</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">12.390.000đ</span>
                                            <del>17.400.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="LG Smart TV 4K 55' 55UN7290PTF"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk5.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>
                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">LG Smart TV NanoCell 4K 49" 49NANO81TNA</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">15.490.000đ</span>
                                            <del>21.400.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="LG Smart TV NanoCell 4K 49' 49NANO81TNA"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk6.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">LG Smart TV 4K 43" 43UN7000PTA</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">8.300.000đ</span>
                                            <del>11.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="LG Smart TV 4K 43' 43UN7000PTA"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk7.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Sony Android TV 4K 65" KD-65X8000H</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">25.420.000đ</span>
                                            <del>27.920.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Sony Android TV 4K 65' KD-65X8000H"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk8.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>
                                        <span class="product-new-top">Mới</span>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Smart TV 4K 65" UA65TU7000</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">17.900.000đ</span>
                                            <del>18.200.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Smart TV 4K 65' UA65TU7000"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //first section -->

                    <!-- second section -->
                    <div class="product-sec1 product-sec2 px-sm-5 px-3 mt-4">
                        <div class="row">
                            <h3 class="col-md-4 effect-bg ml-5 mr-3">Merry Christmas</h3>
                            <p class="w3l-nut-middle">Giảm giá 10%</p>
                            <div class="col-md-4 bg-right-nut">
                                <img src="images/image1.png" alt="">
                            </div>
                        </div>
                    </div>
                    <!-- second section -->
                    <!-- third section -->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mt-4">
                        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                            <span>G</span>iảm

                            <span>G</span>iá
                            <span>S</span>ốc</h3>
                        <div class="row mt-5 mb-5">
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk9.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Casper Android TV 32" 32HG5000</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">4.400.000đ</span>
                                            <del>6.400.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Casper Android TV 32' 32HG5000"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk10.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Samsung Inverter 647 lít RS62R5001M9/SV</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">17.300.000đ</span>
                                            <del>21.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Samsung Inverter 647 lít RS62R5001M9/SV"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk11.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Panasonic Inverter 255 lít NR-BV280QSVN</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">11.490.000đ</span>
                                            <del>15.420.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Panasonic Inverter 255 lít NR-BV280QSVN"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk12.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Electrolux Inverter 9 Kg EWF9024ADSA</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">10.260.000đ</span>
                                            <del>13.500.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Electrolux Inverter 9 Kg EWF9024ADSA"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk13.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Panasonic 8.5 Kg NA-F85A4HRV</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">5.690.000đ</span>
                                            <del>7.490.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Panasonic 8.5 Kg NA-F85A4HRV"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk14.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Panasonic Inverter 9 Kg NA-V90FX1LVT</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">15.990.000đ</span>
                                            <del>18.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Panasonic Inverter 9 Kg NA-V90FX1LVT"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk15.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Sharp Inverter 150 lít SJ-X176E-SL</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">4.490.000đ</span>
                                            <del>7.490.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Sharp Inverter 150 lít SJ-X176E-SL"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk16.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Máy lọc nước R.O Karofi 8 lõi K8RO-H</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">6.890.000đ</span>
                                            <del>8.890.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Máy lọc nước R.O Karofi 8 lõi K8RO-H"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk17.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Máy lọc nước R.O Kangaroo 9 lõi KG99A VTU</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">5.690.000đ</span>
                                            <del>7.690.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Máy lọc nước R.O Kangaroo 9 lõi KG99A VTU"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk18.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Máy lọc nước R.O Sunhouse 10 lõi SHA88116K</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">5.841.000đ</span>
                                            <del>7.800.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Máy lọc nước R.O Sunhouse 10 lõi SHA88116K"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk19.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt đứng Asia D18004-XV1 55W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">550.000đ</span>
                                            <del>800.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt đứng Asia D18004-XV1 55W"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk20.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt đứng Toshiba F-LSA10(W)VN 50W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">900.000đ</span>
                                            <del>1.200.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt đứng Toshiba F-LSA10(W)VN 50W"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- </div> -->
                            <!-- <div class="row mt-5 mb-5"> -->
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk21.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt treo tường Asia L16006-XV0 55W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">700.000đ</span>
                                            <del>1.000.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt treo tường Asia L16006-XV0 55W"/>
                                                    <input type="hidden" name="amount" value="10400000"/>
                                                    <input type="hidden" name="discount_amount" value="1000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk22.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt lửng Midea FTS40-17VD 36W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">560.000đ</span>
                                            <del>750.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">

                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt lửng Midea FTS40-17VD 36W"/>
                                                    <input type="hidden" name="amount" value="15000000"/>
                                                    <input type="hidden" name="discount_amount" value="2700000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <p class="product-item-img">
                                            <img src="images/mk23.jpg" alt="" class="img-fluid product-img">
                                        </p>
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt bàn Asia B16001-XV1 45W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">480.000đ</span>
                                            <del>780.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt bàn Asia B16001-XV1 45W"/>
                                                    <input type="hidden" name="amount" value="13420000"/>
                                                    <input type="hidden" name="discount_amount" value="3000000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                <div class="men-pro-item simpleCart_shelfItem">
                                    <div class="men-thumb-item text-center">
                                        <img src="images/mk24.jpg" alt="" class="img-fluid product-img">
                                        <div class="men-cart-pro">
                                            <div class="inner-men-cart-pro">
                                                <a href="single.html" class="link-product-add-cart">Chi tiết</a>
                                            </div>
                                        </div>


                                    </div>
                                    <div class="item-info-product text-center border-top mt-4">
                                        <h4 class="pt-1 crop">
                                            <a href="single.html">Quạt treo tường Asia L16022-XV0 55W</a>
                                        </h4>
                                        <div class="info-product-price my-2">
                                            <span class="item_price">850.000đ</span>
                                            <del>1.250.000đ</del>
                                        </div>
                                        <div
                                                class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                            <form action="#" method="post">
                                                <fieldset>
                                                    <input type="hidden" name="cmd" value="_cart"/>
                                                    <input type="hidden" name="add" value="1"/>
                                                    <input type="hidden" name="business" value=" "/>
                                                    <input type="hidden" name="item_name"
                                                           value="Quạt treo tường Asia L16022-XV0 55W"/>
                                                    <input type="hidden" name="amount" value="1200000"/>
                                                    <input type="hidden" name="discount_amount" value="200000"/>
                                                    <input type="hidden" name="currency_code" value="VND"/>
                                                    <input type="hidden" name="return" value=" "/>
                                                    <input type="hidden" name="cancel_return" value=" "/>
                                                    <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                           class="button btn"/>
                                                </fieldset>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //third section -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //top products -->

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
