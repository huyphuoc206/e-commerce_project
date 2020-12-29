<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!-- top-header -->
<div class="agile-main-top">
    <div class="container-fluid">
        <div class="row justify-content-end main-top-w3l py-2">

            <div class="col-sm-8 header-right mt-lg-0 mt-2">
                <!-- header lists -->
                <ul class="row justify-content-end">
                    <li class="text-center border-right text-white mt-auto mb-auto">
                        <a href="<c:url value='/lien-he'/>" class="text-white">
                            <i class="fas fa-phone mr-2"></i> ${information.phone} </a>
                    </li>
                    <c:if test="${empty USERMODEL}">
                        <li class="text-center border-right text-white">
                            <a href="<c:url value='/dang-nhap'/>" class="text-white">
                                <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập </a>
                        </li>
                        <li class="text-center text-white">
                            <a href="<c:url value='/dang-ky'/>" class="text-white">
                                <i class="fas fa-user-plus mr-2"></i> Đăng ký </a>
                        </li>
                    </c:if>

                    <c:if test="${not empty USERMODEL}">
                        <li class="text-center border-right text-white pr-3 pl-3" style="width: auto">
                            <div class="user-area dropdown">
                                <a href="#" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <img class="user-avatar rounded-circle" src="<c:url value='${USERMODEL.avatar}'/>">
                                </a>
                                <span class="mr-3">Xin chào, ${USERMODEL.fullname}</span>

                                <div class="user-menu dropdown-menu">
                                    <a class="nav-link text-dark" href="#"><i class="fa fa-user"></i> Thông tin cá nhân</a>

                                    <a class="nav-link text-dark" href="#"><i class="fa fa-table"
                                                                              aria-hidden="true"></i>
                                        Theo dõi đơn hàng</a>

                                    <a class="nav-link text-dark" href="#"><i class="fa fa-key" aria-hidden="true"></i>
                                        Đổi
                                        mật khẩu</a>

                                    <a class="nav-link text-dark" href="<c:url value='/thoat?action=logout'/>"><i
                                            class="fa fa-power-off"></i> Thoát</a>
                                </div>
                            </div>
                        </li>
                    </c:if>

                </ul>
                <!-- //header lists -->
            </div>
        </div>
    </div>
</div>
<!-- //top-header -->

<!-- header-bottom-->
<div class="header-bot">
    <div class="container">
        <div class="row header-bot_inner_wthreeinfo_header_mid">
            <!-- logo -->
            <div class="col-md-3 logo_agile">
                <h1 class="text-center">
                    <a href="<c:url value='/trang-chu'/>" class="font-weight-bold font-italic">
                        <img src="<c:url value='/images/logo.png'/>" alt=" " class="img-fluid">
                        Eco Store
                    </a>
                </h1>
            </div>
            <!-- //logo -->
            <!-- header-bot -->
            <div class="col-md-9 header mt-4 mb-md-0 mb-4">
                <div class="row">
                    <!-- search -->
                    <div class="col-10 agileits_search">
                        <form class="form-inline" action="#" method="post">
                            <input class="form-control mr-sm-0" type="search" placeholder="Tìm kiếm"
                                   aria-label="Search" required oninvalid="this.setCustomValidity('Vui lòng nhập từ khóa bạn muốn tìm kiếm.')"
                                   oninput="this.setCustomValidity('')">
                            <button class="btn my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <!-- //search -->
                    <!-- cart details -->
                    <div class="col-2 top_nav_right text-center mt-sm-0 mt-2 mb-3">
                        <button type="button" class="btn btn-outline-info p-3" data-toggle="modal" data-target="#cartModal">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i> <span>10</span>
                        </button>
                    </div>

                    <div class="modal fade" id="cartModal" tabindex="-1" role="dialog"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header border-bottom-0">
                                    <h5 class="modal-title" id="exampleModalLabel">
                                        Giỏ hàng
                                    </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body" id="cart-modal">
                                    <table class="table table-image">
                                        <thead>
                                        <tr>
                                            <th scope="col"></th>
                                            <th scope="col">Sản phẩm</th>
                                            <th scope="col">Giá</th>
                                            <th scope="col">Số lượng</th>
                                            <th scope="col">Thành tiền</th>
                                            <th scope="col">Thao tác</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td class="w-15">
                                                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/vans.png"
                                                     class="img-fluid img-thumbnail" alt="Sheep">
                                            </td>
                                            <td>Vans Sk8-Hi MTE Shoes</td>
                                            <td>89$</td>
                                            <td class="qty"><input type="number" class="form-control" id="input1"
                                                                   value="2" min="1"></td>
                                            <td>178$</td>
                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="w-15">
                                                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/vans.png"
                                                     class="img-fluid img-thumbnail" alt="Sheep">
                                            </td>
                                            <td>Vans Sk8-Hi MTE Shoes</td>
                                            <td>89$</td>
                                            <td class="qty"><input type="number" class="form-control" id="input1"
                                                                   value="2" min="1"></td>
                                            <td>178$</td>
                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="w-15">
                                                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/vans.png"
                                                     class="img-fluid img-thumbnail" alt="Sheep">
                                            </td>
                                            <td>Vans Sk8-Hi MTE Shoes</td>
                                            <td>89$</td>
                                            <td class="qty"><input type="number" class="form-control" id="input1"
                                                                   value="2" min="1"></td>
                                            <td>178$</td>
                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="w-15">
                                                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/vans.png"
                                                     class="img-fluid img-thumbnail" alt="Sheep">
                                            </td>
                                            <td>Vans Sk8-Hi MTE Shoes</td>
                                            <td>89$</td>
                                            <td class="qty"><input type="number" class="form-control" id="input1"
                                                                   value="2" min="1"></td>
                                            <td>178$</td>
                                            <td>
                                                <a href="#" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="d-flex justify-content-end">
                                        <h5>Tổng: <span class="price text-success">89$</span></h5>
                                    </div>
                                </div>
                                <div class="modal-footer border-top-0 d-flex justify-content-between">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                                    <button type="button" class="btn btn-success">Thanh toán</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- //cart details -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- shop locator (popup) -->