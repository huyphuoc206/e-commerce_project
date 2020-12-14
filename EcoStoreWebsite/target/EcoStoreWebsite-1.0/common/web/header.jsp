<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!-- top-header -->
<div class="agile-main-top">
    <div class="container-fluid">
        <div class="row justify-content-end main-top-w3l py-2">

            <div class="col-sm-8 header-right mt-lg-0 mt-2">
                <!-- header lists -->
                <ul class="row justify-content-end">
                    <li class="text-center border-right text-white">
                        <a href="help.html" class="text-white">
                            <i class="fas fa-phone mr-2"></i> 1900-9090 </a>
                    </li>
                    <li class="text-center border-right text-white">
                        <a href="login.html" class="text-white">
                            <i class="fas fa-sign-in-alt mr-2"></i> Đăng nhập </a>
                    </li>
                    <li class="text-center text-white">
                        <a href="register.html" class="text-white">
                            <i class="fas fa-user-plus mr-2"></i> Đăng ký </a>
                    </li>
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
                    <a href="index.html" class="font-weight-bold font-italic">
                        <img src="images/logo2.png" alt=" " class="img-fluid">
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
                                   aria-label="Search" required>
                            <button class="btn my-2 my-sm-0" type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <!-- //search -->
                    <!-- cart details -->
                    <div class="col-2 top_nav_right text-center mt-sm-0 mt-2">
                        <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                            <form action="#" method="post" class="last">
                                <input type="hidden" name="cmd" value="_cart">
                                <input type="hidden" name="display" value="1">
                                <button class="btn w3view-cart" type="submit" name="submit" value="">
                                    <i class="fas fa-cart-arrow-down"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                    <!-- //cart details -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- shop locator (popup) -->