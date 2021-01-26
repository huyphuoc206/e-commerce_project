<%@include file="/common/taglib.jsp" %>
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
            <c:forEach var="item" items="${fn:split(cname, ' ')}">
                <span>${fn:substring(item, 0, 1)}</span>${fn:substring(item, 1, fn:length(item))}
            </c:forEach>
        </h3>
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
                                <c:if test="${empty supplierCode}">
                                    <li class="list-inline-item"><a class="text-uppercase priority"
                                                                    href="<c:url value='/san-pham?code=${code}&sortName=createddate&sortBy=desc'/>">Hàng
                                        mới</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&sortName=discount&sortBy=desc'/>">Giảm
                                        giá nhiều</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&sortName=price&sortBy=asc'/>">Giá
                                        thấp</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&sortName=price&sortBy=desc'/>">Giá
                                        cao</a></li>
                                </c:if>

                                <c:if test="${not empty supplierCode}">
                                    <li class="list-inline-item"><a class="text-uppercase priority"
                                                                    href="<c:url value='/san-pham?code=${code}&supplier=${supplierCode}&sortName=createddate&sortBy=desc'/>">Hàng
                                        mới</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&supplier=${supplierCode}&sortName=discount&sortBy=desc'/>">Giảm
                                        giá nhiều</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&supplier=${supplierCode}&sortName=price&sortBy=asc'/>">Giá
                                        thấp</a></li>
                                    <li class="list-inline-item priority"><a class="text-uppercase priority"
                                                                             href="<c:url value='/san-pham?code=${code}&supplier=${supplierCode}&sortName=price&sortBy=desc'/>">Giá
                                        cao</a></li>
                                </c:if>

                            </ul>
                        </div>
                        <hr>
                        <div class="row mt-5 mb-5">
                            <c:forEach var="item" items="${model.list}">
                                <div class="col-md-4 col-12 product-men mt-5">
                                    <div class="men-pro-item simpleCart_shelfItem">
                                        <div class="men-thumb-item text-center">
                                            <p class="product-item-img">
                                                <img src="<c:url value='${item.images.get(0)}'/>" alt=""
                                                     class="img-fluid">
                                            </p>
                                            <div class="men-cart-pro">
                                                <div class="inner-men-cart-pro">
                                                    <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>"
                                                       class="link-product-add-cart">Chi tiết</a>
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
                                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                                <form>
                                                    <fieldset>
                                                        <input type="hidden" name="productId" value="${item.id}"/>
                                                        <input type="hidden" name="productImage"
                                                               value="${item.images.get(0)}"/>
                                                        <input type="hidden" name="unitPrice"
                                                               value="${item.price - item.price*(item.discount/100)}"/>
                                                        <input type="hidden" name="productName"
                                                               value="${item.name}"/>
                                                        <button class="btn button addToCart">Thêm vào giỏ hàng
                                                        </button>
                                                    </fieldset>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <form action="<c:url value='/san-pham'/>" id="formSubmit">
                            <div class="row justify-content-center">
                                <ul class="pagination" id="pagination"></ul>
                            </div>
                            <input type="hidden" value="${code}" name="code"/>
                            <c:if test="${not empty supplierCode}">
                                <input type="hidden" value="${supplierCode}" name="supplier"/>
                            </c:if>
                            <c:if test="${not empty model.sortName}">
                                <input type="hidden" value="${model.sortName}" id="sortName" name="sortName"/>
                                <input type="hidden" value="${model.sortBy}" id="sortBy" name="sortBy"/>
                            </c:if>
                            <input type="hidden" id="page" name="page"/>
                        </form>
                    </div>
                    <!-- //fourth section -->
                </div>

            </div>
            <!-- //product left -->

            <!-- product right -->
            <div class="col-lg-3 mt-lg-0 mt-4 p-lg-0">
                <div class="side-bar p-sm-4 p-3">
                    <!-- filter -->
                    <div class="left-side border-bottom pb-3 mb-3">
                            <h3 class="agileits-sear-head mb-3">Hãng</h3>
                            <ul class="row">
                                <c:forEach var="item" items="${suppliers}">
                                    <li class="col-6">
                                        <form action="<c:url value='/san-pham'/>">
                                            <input type="hidden" value="${code}" name="code"/>
                                            <c:if test="${item.code == supplierCode}">
                                                <input type="radio" checked id="radio_${item.id}" name="supplier" value="${item.code}">
                                            </c:if>
                                            <c:if test="${item.code != supplierCode}">
                                                <input type="radio" id="radio_${item.id}" name="supplier" value="${item.code}">
                                            </c:if>
                                            <label for="radio_${item.id}">${item.name}</label>
                                        </form>
                                    </li>
                                </c:forEach>
                            </ul>
                        <form action="#" method="POST">
                            <h3 class="agileits-sear-head mb-3 mt-3">Khoảng giá</h3>
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
                                    <a href="#">Dưới 5.000.000đ</a>
                                </li>
                                <li class="my-3">
                                    <a href="#">5.000.000đ - 10.000.000đ</a>
                                </li>
                                <li>
                                    <a href="#">10.000.000đ - 20.000.000đ</a>
                                </li>
                                <li class="my-3">
                                    <a href="#">20.000.000đ - 40.000.000đ</a>
                                </li>
                                <li>
                                    <a href="#">40.000.000đ - 80.000.000đ</a>
                                </li>
                                <li class="mt-3">
                                    <a href="#">Trên 80.000.000đ</a>
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
                                <c:if test="${model.list.size() < 5}">
                                    <c:forEach var="item" items="${model.list}" end="${model.list.size()}">
                                        <div class="row mt-4">
                                            <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                                <img src="<c:url value='${item.images.get(0)}'/>" alt=""
                                                     class="img-fluid">
                                            </div>
                                            <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                                <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>">${item.name}</a>
                                                <p class="price-mar mt-2 item_price">${item.price - item.price*(item.discount/100)}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${model.list.size() >= 5}">
                                    <c:forEach var="item" items="${model.list}" end="4">
                                        <div class="row mt-4">
                                            <div class="col-lg-3 col-sm-2 col-3 left-mar">
                                                <img src="<c:url value='${item.images.get(0)}'/>" alt=""
                                                     class="img-fluid">
                                            </div>
                                            <div class="col-lg-9 col-sm-10 col-9 w3_mvd">
                                                <a href="<c:url value='/chi-tiet-san-pham?id=${item.id}'/>">${item.name}</a>
                                                <p class="price-mar mt-2 item_price">${item.price - item.price*(item.discount/100)}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
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
<script>
    let totalPages = ${model.totalPage};
    let currentPage = ${model.page};
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPages,
            visiblePages: 5,
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (page != currentPage) {
                    $('#page').val(page);
                    $('#formSubmit').submit();
                }
            }
        });
    });

    $('input[type=radio]').on('change', function() {
        $(this).closest("form").submit();
    });
</script>
</body>
</html>
