<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title><dec:title default="Trang Chủ"/></title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Tech_Power Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>
    <link rel="shortcut icon" href="images/logo2.png">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link href="<c:url value='/template/web/css/bootstrap.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Bootstrap css -->
    <link href="<c:url value='/template/web/css/style.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- Main css -->
    <link rel="stylesheet" href="<c:url value='/template/web/css/fontawesome-all.css'/>">
    <!-- Font-Awesome-Icons-CSS -->
    <link href="<c:url value='/template/web/css/popuo-box.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- pop-up-box -->
    <link href="<c:url value='/template/web/css/menu.css'/>" rel="stylesheet" type="text/css" media="all"/>
    <!-- menu style -->
    <!-- //Custom-Files -->

    <!-- web fonts -->
    <link
            href="//fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i&amp;subset=latin-ext"
            rel="stylesheet">
    <link
            href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
            rel="stylesheet">
    <!-- //web fonts -->
    <script src="<c:url value='/template/admin/vendors/jquery/dist/jquery.min.js'/>"></script>
</head>
<body>
<%@ include file="/common/web/header.jsp" %>
<%@ include file="/common/web/menu.jsp" %>
<dec:body/>
<%@ include file="/common/web/footer.jsp" %>

<!-- js-files -->
<!-- loading page -->
<%--<script src="<c:url value='/template/web/js/jquery-3.2.1.min.js'/>"></script>--%>
<script>
    $(window).on('load', function(event){
        $('body').removeClass('preloading');
        $('.load').delay(1000).fadeOut('fast');
    });
</script>
<!-- jquery -->
<%--<script src="<c:url value='/template/web/js/jquery-2.2.3.min.js'/>"></script>--%>
<!-- //jquery -->

<!-- nav smooth scroll -->
<script>
    $(document).ready(function () {
        $(".dropdown").hover(
            function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
            },
            function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
            }
        );
    });
</script>
<!-- //nav smooth scroll -->

<!-- popup modal (for location)-->
<script src="<c:url value='/template/web/js/jquery.magnific-popup.js'/>"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- //popup modal (for location)-->

<!-- cart-js -->
<%--<script src="<c:url value='/template/web/js/minicart.js'/>"></script>--%>
<script>
    paypals.minicarts.render(); //use only unique class names other than paypals.minicarts.Also Replace same class name in css and minicart.min.js

    paypals.minicarts.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        // if (total < 3) {
        // 	alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
        // 	evt.preventDefault();
        // }
    });
</script>
<!-- //cart-js -->


<!-- scroll seller -->
<script src="<c:url value='/template/web/js/scroll.js'/>"></script>
<!-- //scroll seller -->

<!-- smoothscroll -->
<script src="<c:url value='/template/web/js/SmoothScroll.min.js'/>"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="<c:url value='/template/web/js/move-top.js'/>"></script>
<script src="<c:url value='/template/web/js/easing.js'/>"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- for bootstrap working -->
<script src="<c:url value='/template/web/js/bootstrap.js'/>"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->
</body>
</html>