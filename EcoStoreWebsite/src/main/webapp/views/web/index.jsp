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
                            <c:forEach var="item" items="${productNewList}" begin="0" end="19">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <p class="product-item-img">
                                                <img src="<c:url value='${item.images.get(0)}'/>" alt="" class="img-fluid product-img">
                                            </p>
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>" class="link-product-add-cart">Chi tiết</a>
                                                </div>
                                            </div>
                                            <span class="product-new-top">Mới</span>
                                        </div>
                                        <div class="item-info-product text-center border-top mt-4">
                                            <h4 class="pt-1 crop">
                                                <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>">${item.name}</a>
                                            </h4>
                                            <div class="info-product-price my-2">
                                                <span class="item_price">${item.price - item.price*(item.discount/100)}</span>
                                                <del class="item_discount">${item.price}</del>
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
                            </c:forEach>


                        </div>
                    </div>
                    <!-- //first section -->

                    <!-- third section -->
                    <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mt-4">
                        <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
                            <span>G</span>iảm

                            <span>G</span>iá
                            <span>S</span>ốc</h3>
                        <div class="row mt-5 mb-5">
                            <c:forEach var="item" items="${productDiscountList}" begin="0" end="19">
                                <div class="col-lg-3 col-md-4 col-sm-6 col-12 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <p class="product-item-img">
                                                <img src="<c:url value='${item.images.get(0)}'/>" alt="" class="img-fluid product-img">
                                            </p>
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>" class="link-product-add-cart">Chi tiết</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-info-product text-center border-top mt-4">
                                            <h4 class="pt-1 crop">
                                                <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>">${item.name}</a>
                                            </h4>
                                            <div class="info-product-price my-2">
                                                <span class="item_price">${item.price - item.price*(item.discount/100)}</span>
                                                <del class="item_discount">${item.price}</del>
                                            </div>
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
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
                            </c:forEach>
                        </div>
                    </div>
                    <!-- //third section -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //top products -->

</body>
</html>
