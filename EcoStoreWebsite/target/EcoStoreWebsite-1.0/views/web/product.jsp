<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sản phẩm</title>
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
                    <li>Sản Phẩm</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- //page -->

    <!-- top Products -->
    <div class="ads-grid py-sm-5 py-4">
        <div class="container py-xl-4 py-lg-2">
            <!-- tittle heading -->
            <h3 class="tittle-w3l text-center mb-lg-5 mb-sm-4 mb-3">
<<<<<<< HEAD
                <span>${categoryname}</span></h3>
=======
                <span>${cname}</span></h3>
>>>>>>> 82fe9654187dfcd302f5d5584012b0fd02982c94
            <!-- //tittle heading -->
            <div class="row">
                <!-- product left -->
                <div class="agileinfo-ads-display col-lg-9">
                    <div class="wrapper">
                        <!-- first section -->
                        <div class="product-sec1 px-sm-4 px-3 py-sm-5  py-3 mb-4">
                            <div class="row ml-3">
                                <span class="card-title">Ưu tiên xem:</span>
                                <ul class="list-inline ml-3">
                                    <li class="list-inline-item"><a class="text-uppercase priority" href="#">Hàng
                                        mới</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="#">Giảm giá nhiều</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="#">Giá thấp</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="#">Giá cao</a></li>
                                </ul>
                            </div>
                            <hr>
                            <div class="row mt-5 mb-5">
                                <c:forEach var="item" items="${products}">
                                    <div class="col-md-4 col-12 product-men mt-5">
                                        <div class="men-pro-item simpleCart_shelfItem">
                                            <div class="men-thumb-item text-center">
                                                <p class="product-item-img">
                                                    <img src="<c:url value='${item.images.get(0)}'/>" alt="" class="img-fluid">
                                                </p>
                                                <div class="men-cart-pro">
                                                    <div class="inner-men-cart-pro">
                                                        <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>" class="link-product-add-cart">Chi tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-info-product text-center border-top mt-4">
                                                <h4 class="pt-1">
                                                    <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>">${item.name}</a>
                                                </h4>
                                                <div class="info-product-price my-2">
                                                    <span class="item_price">${item.price - item.price*(item.discount/100)}</span>
                                                    <br>
                                                    <del class="item_discount">${item.price}</del>
                                                </div>
                                                <div
                                                        class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                    <form action="#" method="post">
                                                        <fieldset>
                                                            <input type="hidden" name="cmd" value="_cart" />
                                                            <input type="hidden" name="add" value="1" />
                                                            <input type="hidden" name="business" value=" " />
                                                            <input type="hidden" name="item_name"
                                                                   value="Sony Android TV 4K 43' KD-43X8000G" />
                                                            <input type="hidden" name="amount" value="10400000" />
                                                            <input type="hidden" name="discount_amount" value="1000000" />
                                                            <input type="hidden" name="currency_code" value="VND" />
                                                            <input type="hidden" name="return" value=" " />
                                                            <input type="hidden" name="cancel_return" value=" " />
                                                            <input type="submit" name="submit" value="Thêm vào giỏ hàng"
                                                                   class="button btn" />
                                                        </fieldset>
                                                    </form>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>


                        </div>
                        <!-- //fourth section -->
                    </div>
                </div>
                <!-- //product left -->
                <!-- product right -->
                <div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
                    <div class="side-bar p-sm-4 p-3">
                        <div class="search-hotel border-bottom pb-3 mb-3">
                            <h3 class="agileits-sear-head mb-3">Tìm kiếm</h3>
                            <form action="#" method="post">
                                <input type="search" placeholder="Tên sản phẩm..." name="search" required="">
                                <input type="submit" value=" ">
                            </form>
                        </div>
                        <!-- filter -->
                        <div class="left-side border-bottom pb-3 mb-3">
                            <form action="#" method="POST">
                                <h3 class="agileits-sear-head mb-3">Hãng</h3>
                                <ul class="row">
                                    <c:forEach var="item" items="${suppliers}">
                                        <li class="col-6">
                                            <input type="checkbox" class="checked" id="checkbox_${item.id}" value=${item.id}>
                                            <label for="checkbox_${item.id}">${item.name}</label>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <h3 class="agileits-sear-head mb-3">Khoảng giá</h3>
                                <div class="row">
                                    <input type="number" id="price1" class="form-control mb-2 rounded"
                                           placeholder="Giá tối thiểu" min="0">
                                    <input type="number" id="price2" class="form-control rounded"
                                           placeholder="Giá tối đa" min="0">
                                </div>
                                <div class="row justify-content-center mt-3">
                                    <button type="submit" class="btn btn-info pl-4 pr-4">Lọc</button>
                                </div>

                            </form>

                        </div>
                        <!-- //filter -->
                        <!-- price -->
                        <div class="range border-bottom pb-3 mb-3">
                            <h3 class="agileits-sear-head mb-3">Giá</h3>
                            <div class="w3l-range">
                                <ul>
                                    <li>
                                        <a href="#">Dưới 1.000.000đ</a>
                                    </li>
                                    <li class="my-1">
                                        <a href="#">1.000.000đ - 5.000.000đ</a>
                                    </li>
                                    <li>
                                        <a href="#">5.000.000đ - 10.000.000đ</a>
                                    </li>
                                    <li class="my-1">
                                        <a href="#">10.000.000đ - 15.000.000đ</a>
                                    </li>
                                    <li>
                                        <a href="#">15.000.000đ - 20.000.000đ</a>
                                    </li>
                                    <li class="mt-1">
                                        <a href="#">Trên 20.000.000đ</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //price -->

                        <!-- best seller -->
                        <div class="f-grid">
                            <h3 class="agileits-sear-head mb-3">Nổi bật</h3>
                            <div class="box-scroll">
                                <div class="scroll">
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                            <img src="images/m1.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                            <a href="">Sony Android TV 4K 43" KD-43X8000G</a>
                                            <a href="" class="price-mar mt-2">9.400.000đ</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                            <img src="images/m5.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                            <a href="">Loa Harman Kardon Aura Studio 3</a>
                                            <a href="" class="price-mar mt-2">1.000.000đ</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                            <img src="images/m8.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                            <a href="">Samsung Inverter 9.5 Kg WW95J42G0BX/SV</a>
                                            <a href="" class="price-mar mt-2">10.300.000đ</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                            <img src="images/mk8.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                            <a href="">Samsung Smart TV 4K 65" UA65TU7000</a>
                                            <a href="" class="price-mar mt-2">17.900.000đ</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                            <img src="images/mk21.jpg" alt="" class="img-fluid">
                                        </div>
                                        <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                            <a href="">Quạt treo tường Asia L16006-XV0 55W</a>
                                            <a href="" class="price-mar mt-2">700.000đ</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- //best seller -->
                    </div>
                    <!-- //product right -->
                </div>
            </div>
        </div>
    </div>
    <!-- //top products -->
</body>
</html>
