-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 11:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecostore`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagelink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `imagelink`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, '<h3>Về chúng tôi</h3>\r\n					<h4 class=\"my-sm-3 my-2\">Eco Store là trong những đơn vị cung cấp các thiết bị điện gia dụng chất\r\n						lượng hiện nay tại thị trường Việt Nam.\r\n					</h4>\r\n					<p>Chúng tôi làm việc với phương châm lấy uy tín của doanh nghiệp và lợi ích của khách hàng lên hàng\r\n						đầu. Những sản phẩm mà Eco Store mang đến\r\n						cho khách hàng luôn được đảm bảo về chất lượng.\r\n					</p>', '', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `code`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 'Tivi', 'tivi', 1, NULL, NULL, '2020-12-25 11:00:00', ''),
(2, 'Tủ lạnh', 'tu-lanh', 1, NULL, NULL, NULL, NULL),
(3, 'Máy lạnh', 'may-lanh', 1, NULL, NULL, NULL, NULL),
(4, 'Máy giặt', 'may-giat', 1, NULL, NULL, NULL, NULL),
(5, 'Máy quạt', 'may-quat', 1, NULL, NULL, '2020-12-25 09:45:19', ''),
(6, 'Loa', 'loa', 1, NULL, NULL, NULL, NULL),
(7, 'Máy lọc nước', 'may-loc-nuoc', 1, NULL, NULL, NULL, NULL),
(8, 'Điều khiển tivi', 'dieu-khien-tivi', 1, NULL, NULL, NULL, NULL),
(9, 'Khung treo tivi', 'khung-treo-tivi', 1, NULL, NULL, NULL, NULL),
(10, 'Cáp HDMI, Cáp tivi', 'cap-hdmi-cap-tivi', 1, NULL, NULL, NULL, NULL),
(11, 'Giá đỡ máy lạnh', 'gia-do-may-lanh', 1, NULL, NULL, NULL, NULL),
(21, 'Demo', '213123', 0, '2020-12-26 09:31:13', 'php', '2020-12-26 10:34:34', 'php');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `facebooklink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagramlink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitterlink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`id`, `address`, `phone`, `email`, `status`, `facebooklink`, `instagramlink`, `twitterlink`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 'Nong Lam University, Linh Trung, Thủ Đức, Hồ Chí Minh', '0981733331', 'ecostorenlu@gmail.com', 1, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/', '2020-12-25 15:08:02', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `menutypeid` bigint(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `link`, `status`, `menutypeid`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 'Trang chủ', '/trang-chu', 1, 1, NULL, NULL, NULL, NULL),
(2, 'Sản phẩm', '/san-pham', 1, 1, NULL, NULL, NULL, NULL),
(3, 'Giới thiệu', '/gioi-thieu', 1, 1, NULL, NULL, NULL, NULL),
(4, 'Đánh giá', '/danh-gia', 1, 1, NULL, NULL, NULL, NULL),
(5, 'Liên hệ', '/lien-he', 1, 1, NULL, NULL, NULL, NULL),
(7, 'Về chúng tôi', '/gioi-thieu', 1, 2, NULL, NULL, NULL, NULL),
(8, 'Liên hệ', '/lien-he', 1, 2, NULL, NULL, NULL, NULL),
(9, 'Điều khoản sử dụng', '/dieu-khoan-su-dung', 1, 2, NULL, NULL, NULL, NULL),
(10, 'Chính sách bảo mật', '/chinh-sach-bao-mat', 1, 2, NULL, NULL, NULL, NULL),
(11, 'Thông tin', '/quan-tri/trang-chu', 1, 3, NULL, NULL, NULL, NULL),
(12, 'Sản phẩm', '/quan-tri/san-pham', 1, 3, NULL, NULL, NULL, NULL),
(13, 'Thể loại', '/quan-tri/the-loai', 1, 3, NULL, NULL, NULL, NULL),
(14, 'Nhà sản xuất', '/quan-tri/nha-san-xuat', 1, 3, NULL, NULL, NULL, NULL),
(15, 'Bình luận', '/quan-tri/binh-luan', 1, 3, NULL, NULL, NULL, NULL),
(16, 'Người dùng', '/quan-tri/nguoi-dung', 1, 3, NULL, NULL, NULL, NULL),
(17, 'Đơn hàng', '/quan-tri/don-hang', 1, 3, NULL, NULL, NULL, NULL),
(18, 'Phương thức thanh toán', '/quan-tri/phuong-thuc-thanh-toan', 1, 3, NULL, NULL, NULL, NULL),
(19, 'Phản hồi khách hàng', '/quan-tri/phan-hoi', 1, 3, NULL, NULL, NULL, NULL),
(20, 'Liên hệ', '/quan-tri/lien-he', 1, 3, NULL, NULL, NULL, NULL),
(21, 'Giới thiệu', '/quan-tri/gioi-thieu', 1, 3, NULL, NULL, NULL, NULL),
(22, 'Thông tin cửa hàng', '/quan-tri/thong-tin', 1, 3, NULL, NULL, NULL, NULL),
(23, 'Điều khoản sử dụng', '/quan-tri/dieu-khoan', 1, 3, NULL, NULL, NULL, NULL),
(24, 'Chính sách và bảo mật', '/quan-tri/chinh-sach-bao-mat', 1, 3, NULL, NULL, NULL, NULL),
(25, 'Menu', '/quan-tri/menu', 1, 3, NULL, NULL, NULL, NULL),
(26, 'Banner', '/quan-tri/banner', 1, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menutype`
--

CREATE TABLE `menutype` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menutype`
--

INSERT INTO `menutype` (`id`, `name`) VALUES
(1, 'Menu Top Web'),
(2, 'Menu Bottom Web'),
(3, 'Menu Left Admin');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` bigint(20) NOT NULL,
  `productid` bigint(20) NOT NULL,
  `unitprice` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `paymentid` bigint(20) NOT NULL,
  `customername` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalprice` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `content`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, '<h6 class=\"my-md-4 my-3\">Sự chấp\r\n				thuận</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Bằng việc trao cho chúng tôi thông tin cá nhân của bạn, sử dụng\r\n				sàn\r\n				giao dịch thương mại điện tử tiki.vn bạn đồng ý thông tin cá nhân của\r\n				bạn sẽ được thu thập, sử dụng như được nêu trong Chính Sách này. Nếu\r\n				bạn không đồng ý với Chính Sách này, bạn dừng cung cấp cho chúng\r\n				tôi bất cứ thông tin cá nhân nào và/hoặc sử dụng các quyền như được\r\n				nêu tại Mục 7 dưới đây.\r\n			</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi bảo lưu quyền sửa đổi, bổ sung nhằm hoàn thiện đối với\r\n				Chính Sách này vào bất kỳ thời điểm nào. Chúng tôi khuyến khích bạn\r\n				thường xuyên xem lại Chính Sách Bảo Mật Thông Tin Cá Nhân này để\r\n				có được những cập nhật mới nhất đảm bảo bạn biết và thực hiện quyền\r\n				quản lý thông tin cá nhân của bạn.\r\n			</p>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Mục đích thu thập</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi thu thập thông tin cá nhân chỉ cần thiết nhằm phục vụ\r\n				cho các\r\n				mục đích:</p>\r\n\r\n			<ol start=\"1\" class=\"pl-sm-4 pl-3\">\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Đơn hàng: để xử lý các vấn đề liên quan đến đơn đặt hàng của\r\n					bạn;</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Duy trì tài khoản: để tạo và duy trình tài khoản của bạn với\r\n					chúng\r\n					tôi, bao gồm cả các chương trình khách hàng thân thiết hoặc các\r\n					chương trình thưởng đi kèm với tài khoản của bạn;</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Dịch Vụ Người Tiêu Dùng, Dịch Vụ Chăm Sóc Khách Hàng: bao\r\n					gồm các phản hồi cho các yêu cầu, khiếu nại và phản hồi của bạn;</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Cá Nhân Hóa: Chúng tôi có thể tổ hợp dữ liệu được thu thập để\r\n					có\r\n					một cái nhìn hoàn chỉnh hơn về một người tiêu dùng và từ đó cho\r\n					phép chúng tôi phục vụ tốt hơn với sự cá nhân hóa mạnh hơn ở các\r\n					khía cạnh, bao gồm nhưng không giới hạn: (i) để cải thiện và cá nhân\r\n					hóa trải nghiệm của bạn trên sàn giao dịch thương mại điện tử tiki.vn\r\n					(ii) để cải thiện các tiện ích, dịch vụ, điều chỉnh chúng phù hợp với\r\n					các nhu cầu được cá thể hóa và đi đến những ý tưởng dịch vụ mới\r\n					(iii) để phục vụ bạn với những giới thiệu, quảng cáo được điều chỉnh\r\n					phù hợp với sự quan tâm của bạn.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">An Ninh: cho các mục đích ngăn ngừa các hoạt động phá hủy tài\r\n					khoản người dùng của khách hàng hoặc các hoạt động giả mạo\r\n					khách hàng.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Theo yêu cầu của pháp luật: tùy quy định của pháp luật vào\r\n					từng\r\n					thời điểm, chúng tôi có thể thu thập, lưu trữ và cung cấp theo yêu\r\n					cầu của cơ quan nhà nước có thẩm quyền.</li>\r\n\r\n			</ol>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Phạm vi thu thập</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi thu thập thông tin cá nhân của bạn khi:.</p>\r\n			<ol start=\"1\" class=\"pl-sm-4 pl-3\">\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Bạn trực tiếp cung cấp cho chúng tôi.\r\n					Đó là các thông tin cá nhân bạn cung cấp cho chúng tôi được thực\r\n					hiện chủ yếu trên sàn giao dịch thương mại điện tử tiki.vn bao gồm:\r\n					họ tên, địa chỉ thư điện tử (email), số điện thoại, địa chỉ, thông tin\r\n					đăng nhập tài khoản bao gồm thông tin bất kỳ cần thiết để thiết lập\r\n					tài khoản ví dụ như tên đăng nhập, mật khẩu đăng nhập, ID/địa chỉ\r\n					đăng nhập và câu hỏi/trả lời an ninh.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Bạn tương tác với chúng tôi.\r\n					Chúng tôi sử dụng cookies và công nghệ theo dấu khác để thu thập\r\n					một số thông tin khi bạn tương tác trên sàn giao dịch Eco Store</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Từ những nguồn hợp pháp khác.\r\n					Chúng tôi có thể sẽ thu thập thông tin cá nhân từ các nguồn hợp pháp\r\n					khác.</li>\r\n\r\n			</ol>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Thời gian lưu trữ</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\"> Thông tin cá nhân của khách hàng sẽ được lưu trữ cho đến khi\r\n				khách\r\n				hàng có yêu cầu hủy bỏ hoặc khách hàng tự đăng nhập và thực hiện hủy\r\n				bỏ. Trong mọi trường hợp thông tin cá nhân của khách hàng sẽ được\r\n				bảo mật trên máy chủ của Eco Store</p>\r\n\r\n\r\n			<h6 class=\"my-md-4 my-3\">Không chia sẻ thông tin cá nhân khách hàng</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi sẽ không cung cấp thông tin cá nhân của bạn cho bất kỳ\r\n				bên\r\n				thứ ba nào, trừ một số hoạt động cần thiết dưới đây:</p>\r\n			<ol start=\"1\" class=\"pl-sm-4 pl-3\">\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Các đối tác là bên cung cấp dịch vụ cho chúng tôi liên quan\r\n					đến\r\n					thực hiện đơn hàng và chỉ giới hạn trong phạm vi thông tin cần\r\n					thiết cũng như áp dụng các quy định đảm bảo an ninh, bảo mật\r\n					các thông tin cá nhân.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi có thể sử dụng dịch vụ từ một nhà cung cấp dịch vụ\r\n					là bên thứ ba để thực hiện một số hoạt động liên quan đến sàn\r\n					giao dịch thương mại điện tử tiki.vn và khi đó bên thứ ba này\r\n					có thể truy cập hoặc xử lý các thông tin cá nhân trong quá trình\r\n					cung cấp các dịch vụ đó. Chúng tôi yêu cầu các bên thứ ba này\r\n					tuân thủ mọi luật lệ về bảo vệ thông tin cá nhân liên quan và các\r\n					yêu cầu về an ninh liên quan đến thông tin cá nhân.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Các chương trình có tính liên kết, đồng thực hiện, thuê ngoài\r\n					cho các mục địch được nêu tại Mục 2 và luôn áp dụng các yêu\r\n					cầu bảo mật thông tin cá nhân.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Yêu cầu pháp lý: Chúng tôi có thể tiết lộ các thông tin cá\r\n					nhân\r\n					nếu điều đó do luật pháp yêu cầu và việc tiết lộ như vậy là cần\r\n					thiết một cách hợp lý để tuân thủ các quy trình pháp lý.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Chuyển giao kinh doanh (nếu có): trong trường hợp sáp nhập,\r\n					hợp nhất toàn bộ hoặc một phần với công ty khác, người mua\r\n					sẽ có quyền truy cập thông tin được chúng tôi lưu trữ, duy trì\r\n					trong đó bao gồm cả thông tin cá nhân.</li>\r\n\r\n			</ol>\r\n\r\n			<h6 class=\"my-md-4 my-3\">An toàn dữ liệu</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi luôn nỗ lực để giữ an toàn thông tin cá nhân của khách\r\n				hàng,\r\n				chúng tôi đã và đang thực hiện nhiều biện pháp an toàn, bao gồm:</p>\r\n			<ol start=\"1\" class=\"pl-sm-4 pl-3\">\r\n				<li>Bảo đảm an toàn trong môi trường vận hành: chúng tôi lưu trữ\r\n					không tin cá nhân khách hàng trong môi trường vận hành an toàn\r\n					và chỉ có nhân viên, đại diện và nhà cung cấp dịch vụ có thể truy\r\n					cập trên cơ sở cần phải biết. Chúng tôi tuân theo các tiêu chuẩn\r\n					ngành, pháp luật trong việc bảo mật thông tin cá nhân khách\r\n					hàng.\r\n				</li>\r\n				<li>Trong trường hợp máy chủ lưu trữ thông tin bị hacker tấn công\r\n					dẫn đến mất mát dữ liệu cá nhân khách hàng, chúng tôi sẽ có\r\n					trách nhiệm thông báo vụ việc cho cơ quan chức năng để điều\r\n					tra xử lý kịp thời và thông báo cho khách hàng được biết.</li>\r\n				<li>Các thông tin thanh toán: được bảo mật theo tiêu chuẩn ngành.\r\n				</li>\r\n			</ol>\r\n			<h6 class=\"mb-md-4 mb-3\">Quyền của\r\n				khách hàng đối với thông tin cá nhân</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\"> Khách hàng có quyền cung cấp thông tin cá nhân cho chúng tôi và\r\n				có\r\n				thể thay đổi quyết định đó vào bất cứ lúc nào.</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\"> Khách hàng có quyền tự kiểm tra, cập nhật, điều chỉnh thông tin\r\n				cá nhân\r\n				của mình bằng cách đăng nhập vào tài khoản và chỉnh sửa thông tin cá\r\n				nhân hoặc yêu cầu chúng tôi thực hiện việc này. </p>', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `discount` int(100) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `categoryid` bigint(20) NOT NULL,
  `supplierid` bigint(20) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `discount`, `description`, `status`, `categoryid`, `supplierid`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(3, '213', 23213, 12, 'sadsavsvds', 1, 21, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productgallery`
--

CREATE TABLE `productgallery` (
  `id` bigint(20) NOT NULL,
  `imagelink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `code`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 'Quản trị', 'ADMIN', NULL, NULL, NULL, NULL),
(2, 'Người dùng', 'USER', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagelink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `displayorder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `code`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(3, 'LG', 'lg', 0, '2020-12-26 06:47:43', '', '2020-12-26 06:47:47', '');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` bigint(20) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `content`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, '	<h3 class=\"w3-head w3-secong-head\">Hãy đọc kỹ những điều khoản dưới đây:</h3>\r\n			<h6 class=\"my-md-4 my-3\">Giới thiệu</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chào mừng quý khách hàng đến với Eco Store.</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi có địa chỉ trụ sở tại Nông Lâm, Linh Trung, Thủ Đức, Hồ\r\n				Chí Minh. Khi quý khách hàng truy cập vào trang website của chúng tôi có nghĩa là quý khách đồng ý với\r\n				các điều khoản này. Trang web có quyền thay đổi, chỉnh sửa, thêm hoặc lược bỏ bất kỳ phần nào trong Điều\r\n				khoản mua bán hàng hóa này, vào bất cứ lúc nào. Các thay đổi có hiệu lực ngay khi được đăng trên trang\r\n				web mà không cần thông báo trước. Và khi quý khách tiếp tục sử dụng trang web, sau khi các thay đổi về\r\n				Điều khoản này được đăng tải, có nghĩa là quý khách chấp nhận với những thay đổi đó.</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Quý khách hàng vui lòng kiểm tra thường xuyên để cập nhật những\r\n				thay đổi của chúng tôi.</p>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Chấp nhận đơn hàng và giá cả</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi có quyền từ chối hoặc hủy đơn hàng của quý khách vì bất\r\n				kỳ lý do gì liên quan đến lỗi kỹ thuật, hệ thống một cách khách quan vào bất kỳ lúc nào.</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Ngoài ra, để đảm bảo tính công bằng cho khách hàng là người tiêu\r\n				dùng cuối cùng của Eco Store, chúng tôi cũng sẽ từ chối các đơn hàng không nhằm mục đích sử dụng cho cá\r\n				nhân, mua hàng số lượng nhiều hoặc với mục đích mua đi bán lại.</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Chúng tôi cam kết sẽ cung cấp thông tin giá cả chính xác nhất cho\r\n				người tiêu dùng. Tuy nhiên, đôi lúc vẫn có sai sót xảy ra, ví dụ như trường hợp giá sản phẩm không hiển\r\n				thị chính xác trên trang web hoặc sai giá, tùy theo từng trường hợp chúng tôi sẽ liên hệ hướng dẫn hoặc\r\n				thông báo hủy đơn hàng đó cho quý khách. Chúng tôi cũng có quyền từ chối hoặc hủy bỏ bất kỳ đơn hàng nào\r\n				dù đơn hàng đó đã hay chưa được xác nhận hoặc đã thanh toán.</p>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Thay đổi hoặc hủy bỏ giao dịch tại Eco Store</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Trong mọi trường hợp, khách hàng đều có quyền chấm dứt giao dịch\r\n				nếu đã thực hiện các biện pháp sau đây:</p>\r\n			<ol start=\"1\" class=\"pl-sm-4 pl-3\">\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Thông báo cho Eco Store về việc hủy giao dịch qua đường dây\r\n					nóng (hotline) 0981 733 331.</li>\r\n				<li class=\"font-weight-light pl-sm-4 mb-2\">Trả lại hàng hoá đã nhận nhưng chưa sử dụng hoặc hưởng bất kỳ\r\n					lợi ích nào từ hàng hóa đó.</li>\r\n\r\n			</ol>\r\n\r\n			<h6 class=\"my-md-4 my-3\">Thương hiệu và bản quyền</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Mọi quyền sở hữu trí tuệ (đã đăng ký hoặc chưa đăng ký), nội dung\r\n				thông tin và tất cả các thiết kế, văn bản, đồ họa, phần mềm, hình ảnh, video, âm nhạc, âm thanh, biên\r\n				dịch phần mềm, mã nguồn và phần mềm cơ bản đều là tài sản của chúng tôi. Toàn bộ nội dung của trang web\r\n				được bảo vệ bởi luật bản quyền của Việt Nam và các công ước quốc tế. Bản quyền đã được bảo lưu.</p>\r\n\r\n\r\n			<h6 class=\"my-md-4 my-3\">Quyền pháp lý</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\"> Các điều kiện, điều khoản và nội dung của trang web này được điều\r\n				chỉnh bởi luật pháp Việt Nam và Tòa án có thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp nào\r\n				phát sinh từ việc sử dụng trái phép trang web này.</p>\r\n\r\n\r\n			<h6 class=\"my-md-4 my-3\">Quy định về bảo mật</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Trang web của chúng tôi coi trọng việc bảo mật thông tin và sử\r\n				dụng các biện pháp tốt nhất bảo vệ thông tin và việc thanh toán của quý khách. Thông tin của quý khách\r\n				trong quá trình thanh toán sẽ được mã hóa để đảm bảo an toàn. Sau khi quý khách hoàn thành quá trình đặt\r\n				hàng, quý khách sẽ thoát khỏi chế độ an toàn.\r\n			</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Quý khách không được sử dụng bất kỳ chương trình, công cụ hay hình\r\n				thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu. Trang web cũng nghiêm cấm\r\n				việc phát tán, truyền bá hay cổ vũ cho bất kỳ hoạt động nào nhằm can thiệp, phá hoại hay xâm nhập vào dữ\r\n				liệu của hệ thống. Cá nhân hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước\r\n				pháp luật nếu cần thiết\r\n			</p>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\">Mọi thông tin giao dịch sẽ được bảo mật ngoại trừ trong trường hợp\r\n				cơ quan pháp luật yêu cầu.\r\n			</p>\r\n			<h6 class=\"my-md-4 my-3\">Đảm bảo an toàn giao dịch tại Eco Store</h6>\r\n			<p class=\"font-weight-light pl-sm-4 mb-2\"> Chúng tôi sử dụng các dịch vụ để bảo vệ thông tin về nội dung mà\r\n				người bán đăng sản phẩm trên Eco Store. Để đảm bảo các giao dịch được tiến hành thành công, hạn chế tối\r\n				đa rủi ro có thể phát sinh.</p>', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roleid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keytime` int(11) NOT NULL DEFAULT 24,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `email`, `phone`, `avatar`, `roleid`, `status`, `key`, `keytime`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(3, 'Huy Phước', 'php', '123', 'huyphuoc206@gmail.com', '0919444888', 'image', 1, 1, 'ffdf', 24, NULL, NULL, NULL, NULL),
(4, 'Nguyễn Văn A', 'abc', '123', 'abc@gmail.com', '09194442321', 'sds', 2, 1, 'ds', 24, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menutypeid` (`menutypeid`);

--
-- Indexes for table `menutype`
--
ALTER TABLE `menutype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderid`,`productid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `paymentid` (`paymentid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`),
  ADD KEY `supplierid` (`supplierid`);

--
-- Indexes for table `productgallery`
--
ALTER TABLE `productgallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleid` (`roleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `menutype`
--
ALTER TABLE `menutype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`menutypeid`) REFERENCES `menutype` (`id`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`paymentid`) REFERENCES `payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`supplierid`) REFERENCES `supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `productgallery`
--
ALTER TABLE `productgallery`
  ADD CONSTRAINT `productgallery_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
