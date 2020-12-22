<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- navigation -->
<div class="navbar-inner">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light ">
            <button class="navbar-toggler m-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse row justify-content-center " id="navbarSupportedContent">
                <ul class="navbar-nav text-center">
                    <c:forEach var="item" items="${menuTop}">
                        <c:if test="${item.name == 'Sản phẩm'}">
                            <li class="nav-item dropdown mr-lg-2 mb-lg-0 mb-2">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    ${item.name}
                                </a>
                                <div class="dropdown-menu">
                                    <div class="agile_inner_drop_nav_info p-4">
                                        <h5 class="mb-3">Sản phẩm</h5>
                                        <div class="row">
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="product.html">Tivi</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Tủ lạnh</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Máy giặt</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Máy lạnh</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="product.html">Loa</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Máy lọc nước</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Máy quạt</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Điều khiển Tivi</a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-sm-4 multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <li>
                                                        <a href="product.html">Khung treo Tivi</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Cáp HDMI, Cáp tivi</a>
                                                    </li>
                                                    <li>
                                                        <a href="product.html">Giá đỡ máy giặt</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:if>
                        <c:if test="${not (item.name == 'Sản phẩm')}">
                            <li class="nav-item mr-lg-2 mb-lg-0 mb-2">
                                <a class="nav-link" href="<c:url value='${item.link}'/>">${item.name}
                                </a>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </nav>
    </div>
</div>
<!-- //navigation -->