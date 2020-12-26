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
            <!-- help content -->
            <div class="wthree-help mb-sm-5 mb-4">
                <div class="agile-left-help">
                    <h3 class="w3-head">Đánh giá của bạn về chúng tôi</h3>
                    <form action="#" method="get">
                        <textarea placeholder="Đánh giá tại đây..." name="Message" required=""></textarea>
                        <input type="submit" value="Gửi">
                    </form>
<%--                    <h5 class="my-sm-4 my-3">Hoặc</h5>--%>
<%--                    <a href="contact.html">Liên hệ</a>--%>
                </div>
            </div>
            <!-- //help content -->
            <!-- Faqs -->
<%--            <h3 class="w3-head mb-2">Những câu hỏi thường gặp</h3>--%>
<%--            <div class="faq-w3agile">--%>
<%--                <ul class="faq pl-4">--%>
<%--                    <li class="item1 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Làm sao biết được đơn đặt hàng thành công?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p> Đáp: Khi đặt hàng thành công quý khách sẽ nhận được email thông báo xác nhận chi--%>
<%--                                    tiết đơn hàng. Trong vòng 24 tiếng nhân viên gọi điện cho quý khách để xác nhận đơn--%>
<%--                                    hàng.--%>

<%--                                </p>--%>
<%--                                <p>--%>
<%--                                    Ghi chú: Đối với đơn đặt hàng online trong giờ hánh chính thì chúng tôi sẽ liên hệ--%>
<%--                                    ngay trong ngày. Đặt hàng sau 5h chiều thì chúng tôi sẽ liên hệ vào sáng hôm sau.--%>
<%--                                    Đặt hàng sau 5h chiều thứ 7 và ngày chủ nhật thì liên hệ vào sáng thứ 2 tuần sau.--%>
<%--                                </p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item2 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Làm sao tôi biết được khi nào sẽ giao hàng tới nơi?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p> Đáp: Trước khi giao hàng nhân viên giao nhận của Eco Store sẽ liên hệ với quý khách--%>
<%--                                    hàng trước 15 hoặc 30 phút.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item3 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold"> Khi nhận hàng có phải làm thủ tục gì không?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Có. Khi nhận hàng quý khách phải kiểm tra kỹ hàng hóa, giấy bảo hành, phụ kiện--%>
<%--                                    và quà tặng kèm theo… và ký xác nhận. Nếu phát hiện bất kỳ lỗi sản phẩm hay sai sót--%>
<%--                                    gì thì phải báo ngay cho nhân viên giao nhận hoặc nhân viên bán hàng để xử lý kịp--%>
<%--                                    thời.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item4 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Khi đặt hàng thành công thì trong bao lâu sẽ nhận được hàng?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Đối với các khu vực trung tâm gần chi nhánh của siêu thị chúng tôi sẽ giao hàng--%>
<%--                                    trong ngày, còn ở xa trung tâm có thể giao hàng trong vòng 1 đến 2 ngày. Các tỉnh--%>
<%--                                    thành lân cận giao hàng từ 3 – 5.</p>--%>
<%--                                <p>Lưu ý: Trong những ngày có chương trình KM lớn thì thời gian giao hàng có thể chậm--%>
<%--                                    hơn bình thường do số lượng đơn đặt hàng nhiều. Đặc biệt, nếu quý khách có nhu cầu--%>
<%--                                    giao hàng gấp chúng tôi có thể ưu tiên giao hàng liền cho quý khách.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item5 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Tôi là người mua hàng nhưng khi giao hàng tới nơi mà tôi không ở--%>
<%--                            nhà thì như thế nào?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Trong trường hợp quý khách không ở nhà thì có thể nhờ người thân trong nhà ký--%>
<%--                                    nhận sản phẩm. Quý khách vui lòng để lại tên và số điện thoại của người nhận hàng--%>
<%--                                    thế để nhân viên tiện liên lạc khi giao hàng đến.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item6 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Chính sách bảo hành của Eco Store như thế nào?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Tất cả sản phẩm mua tại Eco Store đều được bảo hành chính Hãng. Tùy từng lỗi sản--%>
<%--                                    phẩm--%>
<%--                                    mà chúng tôi có thể đến bảo hành tận nhà hoặc đưa sản phẩm đến Hãng hoặc đến siêu--%>
<%--                                    thị để bảo hành. Chính sách này được áp dụng cho tất cả quý khách hàng ở nội thành--%>
<%--                                    và ngoại thành. Mọi vấn đề liên quan đến bảo hành Quý khách vui lòng liên hệ với--%>
<%--                                    Siêu thị Eco Store để được hỗ trợ bảo hành tốt nhất.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item7 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Giá sản phẩm bán tại Eco Store đã bao gồm thuế VAT chưa?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Tất cả sản phẩm bán tại Eco Store đều đã bao gồm thuế VAT.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                    <li class="item8 mt-3 pl-2">--%>
<%--                        <div class="font-weight-bold">Tôi muốn thay đổi địa chỉ nhận hàng có được không?</div>--%>
<%--                        <ul>--%>
<%--                            <li class="subitem1">--%>
<%--                                <p>Đáp: Được. Quý khách hãy liên hệ ngay với tổng đài tư vấn bán hàng: 0981 733 331.</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>

<%--                </ul>--%>
<%--            </div>--%>
            <!-- //Faqs -->
        </div>
    </div>
    <!-- //help -->

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
