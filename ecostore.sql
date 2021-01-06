-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 04:07 AM
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
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(15, '<h3>Về ch&uacute;ng t&ocirc;i</h3>\n\n<h4>Eco Store l&agrave; trong những đơn vị cung cấp c&aacute;c thiết bị điện gia dụng chất lượng hiện nay tại thị trường Việt Nam.</h4>\n\n<p>Ch&uacute;ng t&ocirc;i l&agrave;m việc với phương ch&acirc;m lấy uy t&iacute;n của doanh nghiệp v&agrave; lợi &iacute;ch của kh&aacute;ch h&agrave;ng l&ecirc;n h&agrave;ng đầu. Những sản phẩm m&agrave; Eco Store mang đến cho kh&aacute;ch h&agrave;ng lu&ocirc;n được đảm bảo về chất lượng.</p>\n', 1, '2021-01-03 13:55:20', 'php', '2021-01-03 14:01:33', 'php');

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
(11, 'Giá đỡ máy lạnh', 'gia-do-may-lanh', 1, NULL, NULL, NULL, NULL);

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

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `fullname`, `email`, `content`, `status`, `createddate`, `modifieddate`, `modifiedby`) VALUES
(20, 'Test', 'djsdkjsd@gmail.com', 'sdscsc', 1, '2021-01-03 09:56:04', '2021-01-03 09:56:04', 'php');

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

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `userid`, `content`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(1, 4, 'good job', 1, '2021-01-03 00:30:27', 'Nguyễn Văn A', '2021-01-03 00:31:00', 'php'),
(2, 4, 'xin chào mọi người', 1, '2021-01-03 00:30:37', 'Nguyễn Văn A', '2021-01-03 00:31:13', 'php'),
(3, 4, 'hello every body', 1, '2021-01-03 00:30:42', 'Nguyễn Văn A', '2021-01-03 00:31:23', 'php'),
(4, 4, 'cácc2w1c23', 1, '2021-01-03 00:30:46', 'Nguyễn Văn A', '2021-01-03 00:40:06', 'php'),
(5, 3, 'sdsd', 0, '2021-01-03 00:39:52', 'Huy Phước', NULL, NULL);

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `status`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(3, 'Ví Momo', 1, '2020-12-27 10:26:32', 'php', NULL, NULL),
(4, 'Internet Banking', 1, '2020-12-27 10:26:36', 'php', NULL, NULL),
(5, 'Zalo Pay', 1, '2021-01-03 14:25:20', 'php', NULL, NULL);

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
(5, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q65R', 19100000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng màn hình QLED rực rỡ, màu sắc nổi bật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chiếu màn hình điện thoại lên tivi tiện lợi bằng Screen Mirroring, Airplay 2 và điều khiển tivi bằng điện thoại thông qua ứng dụng&nbsp;SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế sang trọng, tinh tế.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm bùng nổ, mạnh mẽ chuẩn điện ảnh với công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tối ưu và nâng cấp độ nét hình ảnh, tự động điều chỉnh ánh sáng và âm thanh nhờ bộ xử Lý Quantum 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;nâng cao độ sáng, chi tiết, sắc màu hiệu quả.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại cùng&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;hỗ trợ điều khiển, thao tác truy cập nhanh chóng.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:13:53', NULL, NULL, NULL),
(6, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q8CN', 45000000, 15, '<ul>\n <li>Thiết kế màn hình tràn viền cong sang trọng,&nbsp;quyến rũ.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét gấp 4 lần tivi Full HD thông thường.</li>\n <li>Công nghệ màn hình chấm lượng tử&nbsp;<i class=\"cate-yt\"></i>Quantum Dot&nbsp;cho màu sắc sống động rực rỡ hơn bao giờ hết.</li>\n <li>Công nghệ Q Color giúp tivi hiển thị dải màu rộng hơn chân thực đến 100%.</li>\n <li>Công nghệ âm thanh Dolby Digital Plus, DTS cùng loa trầm tích hợp cho âm thanh mạnh mẽ.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;dễ sử dụng đi kèm với kho ứng dụng phong phú.</li>\n <li>Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;SmartThings.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:13:54', NULL, NULL, NULL),
(7, 'Smart Tivi QLED Samsung 4K 49 inch QA49Q80T', 17400000, 20, '', 1, 1, 1, '2021-01-05 16:13:55', NULL, NULL, NULL),
(8, 'Smart Tivi QLED 4K 50 inch Samsung QA50Q65T', 14350000, 10, '<ul>\n <li>Chất lượng hình ảnh chuẩn 4K</li>\n <li>Công nghệ Quantum Dot tái tạo tỷ sắc màu</li>\n <li>Công nghệ đèn nền Dual LED tối ưu màu sắc hiển thị</li>\n <li>Tính năng Multi View chia đôi màn hình tiện lợi</li>\n</ul>', 1, 1, 1, '2021-01-05 16:13:56', NULL, NULL, NULL),
(9, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q6FN', 37000000, 35, '<ul>\n <li>Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;cực nét cùng công nghệ Q HDR Elite hiển thị hình ảnh cực kì chi tiết trong cả vùng sáng hoặc tối nhất.</li>\n <li>Công nghệ màn hình chấm lượng tử (Quantum Dot) cho dải màu sắc rực rỡ, sống động.</li>\n <li>Công nghệ Supreme UHD Dimming tăng cường độ tương phản, cho hình ảnh có độ sâu ấn tượng.</li>\n <li>Không gian sống tinh tế hơn với cáp quang siêu mảnh kết nối giữa màn hình và bộ xử lý.</li>\n <li>Công nghệ Dolby Digital Plus cùng loa Bass tích hợp mang đến âm thanh vòm bùng nổ, sống động.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng đi kèm&nbsp;<i class=\"cate-yt\"></i>one remote&nbsp;thông minh, điều khiển được nhiều thiết bị khác ngoài tivi như: dàn âm thanh, đầu đĩa…</li>\n <li>Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;SmartThings.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:13:57', NULL, NULL, NULL),
(10, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q80R', 34000000, 45, '<ul>\n <li>Công nghệ Direct Full Array kiểm soát đèn nền hiệu quả.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ màn hình QLED&nbsp;hiển thị hình ảnh có độ chính xác cao.</li>\n <li>Công nghệ Quantum HDR&nbsp;1500 nits cho hình ảnh chi tiết sắc nét.</li>\n <li>Bộ xử lý Quantum Processor 4K nâng cao chất lượng hình ảnh.</li>\n <li>Công nghệ chấm lượng tử&nbsp;<i class=\"cate-img\"></i>Quantum Dot&nbsp;mang đến dải màu sắc rực rỡ.</li>\n <li>Giả lập âm thanh vòm Dolby Digital Plus cho hiệu ứng âm thanh sống động.</li>\n <li>Thiết kế tràn viền màn hình độc đáo.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;trực quan cùng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, dễ dàng truy cập nhanh chóng, điều khiển nhiều thiết bị cùng lúc.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:13:58', NULL, NULL, NULL),
(11, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q80T', 30500000, 50, '', 1, 1, 1, '2021-01-05 16:13:59', NULL, NULL, NULL),
(12, 'Smart Tivi QLED Samsung 4K 55 inch QA55Q75R', 16250000, 0, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ Quantum HDR 8X tiên tiến, mang đến màu sắc nổi bật, sống động hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tăng cường độ sắc nét nội dung hình ảnh chất lượng thấp lên gần chuẩn 4K với công nghệ Nâng cấp AI.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế hiện đại, kiểu dáng tinh tế, sang trọng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh mạnh mẽ, lan toả đến từ công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tính năng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring&nbsp;cho phép trình chiếu màn hình điện thoại lên tivi tiện lợi.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ màn hình&nbsp;<i class=\"cate-yt\"></i>Chấm lượng tử&nbsp;tái hiện màu sắc chính xác, tự nhiên hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;dễ dàng sử dụng, thao tác mượt mà cùng&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, hỗ trợ truy cập, điều khiển dễ dàng.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:00', NULL, NULL, NULL),
(13, 'Smart Tivi QLED Samsung 4K 82 inch QA82Q65R', 51100000, 35, '<ul>\n <li>Thiết kế sang trọng, màn hình to 82 inch hiện đại.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;cao cấp cho hình ảnh sắc nét.</li>\n <li>Công nghệ Quantum HDR cho hình ảnh sắc nét, độ tương phản ấn tượng.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>Supreme UHD Dimming&nbsp;hiện đại tăng cường chi tiết hình ảnh.</li>\n <li>Chiếu màn hình điện thoại lên tivi bằng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring&nbsp;và&nbsp;<i class=\"cate-img\"></i>AirPlay 2.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:01', NULL, NULL, NULL),
(14, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q65T', 22200000, 10, '<ul>\n <li>Thiết kế tivi 65 inch không viền 3 cạnh sang trọng,&nbsp;độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K.</li>\n <li>Hình ảnh chân thực sát với tự nhiên nhất bằng công nghệ&nbsp;<i class=\"cate-img\"></i>Quantum HDR&nbsp;cùng công nghệ màn hình chấm lượng tử&nbsp;<i class=\"cate-yt\"></i>Quantum Dot.</li>\n <li>Tăng cường độ tương phản và độ chính xác của màu sắc bằng công nghệ đèn nền&nbsp;<i class=\"cate-img\"></i>Dual LED.</li>\n <li>Tối ưu sắc độ sáng tối của hình ảnh rõ ràng hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>Supreme UHD Dimming.</li>\n <li>Hình ảnh chất lượng và màu sắc trọn vẹn, góc nhìn siêu rộng với công nghệ&nbsp;<i class=\"cate-img\"></i>Wide Viewing Angle.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen OS&nbsp;đơn giản, dễ sử dụng và kho ứng dụng phong phú.</li>\n <li>Xem 2 nội dung cùng lúc trên tivi với tính năng Multi View (Trình chiếu đa màn hình), chiếu màn hình điện thoại lên tivi qua Tap View và&nbsp;<i class=\"cate-img\"></i>AirPlay 2.</li>\n <li>Đa dạng các&nbsp;<i class=\"cate-img\"></i>cổng kết nối: HDMI, USB, Optical,…</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:02', NULL, NULL, NULL),
(15, 'Smart Tivi QLED Samsung 4K 75 inch QA75Q65R', 34200000, 30, '<ul>\n <li>Công nghệ Quantum HDR hiện đại cho độ tương phản cao.</li>\n <li>Âm thanh Dolby tạo hiệu ứng âm thanh vòm sống động, chân thực</li>\n <li>Trang bị độ phân giải <i class=\"cate-img\"></i>4K&nbsp;vô cùng sắc nét.</li>\n <li>Thiết kế hiện đại, với màn hình cực lớn 75 inch</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>Wide Viewing Angle đẹp ở mọi góc nhìn khác nhau</li>\n <li>ệ điều hành Tizen dễ sử dụng, kho ứng dụng phong phú, thiết kế hiện đại</li>\n <li>Màn hình chấm lượng tử QLED cho màu sắc được mở rộng, độ sáng cao</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:03', NULL, NULL, NULL),
(16, 'Smart Tivi QLED Samsung 4K 55 inch QA55Q70T', 17200000, 5, '', 1, 1, 1, '2021-01-05 16:14:04', NULL, NULL, NULL),
(17, 'Smart Tivi QLED Samsung 4K 49 inch QA49Q75R', 12600000, 35, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tái hiẹn dải màu sắc mượt mà, tự nhiên hơn với công nghệ màn hình&nbsp;<i class=\"cate-yt\"></i>Quantum Dot.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kiểu dáng sang trọng, viền màn hình siêu mỏng, tinh tế.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tính năng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring&nbsp;cho phép trình chiếu màn hình điện thoại lên tivi.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm mạnh mẽ, hiệu ứng lan toả đến từ công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải màn hình&nbsp;<i class=\"cate-img\"></i>4K&nbsp;hiển thị hình ảnh sắc nét cùng độ tương phản cao, màu sắc sống động đến từ công ngệ Direct Full Array.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại, đẹp mắt cùng khả năng điều khiển, truy cập nhanh chóng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;theo kèm.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:05', NULL, NULL, NULL),
(18, 'Smart Tivi QLED Samsung 4K 85 inch QA85Q70T', 71900000, 35, '', 1, 1, 1, '2021-01-05 16:14:06', NULL, NULL, NULL),
(19, 'Smart Tivi QLED Samsung 4K 55 inch QA55Q80R', 21700000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ màn hình QLED&nbsp;hiển thị hình ảnh có độ chính xác cao.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum HDR&nbsp;1500 nits cho độ sáng vượt trội.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ màn hình chấm lượng tử&nbsp;<i class=\"cate-img\"></i>Quantum Dot&nbsp;cho màu sắc sống động như thật.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Direct Full Array kiểm soát đèn nền hiệu quả.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus cho hiệu ứng âm thanh sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Bộ xử lý Quantum Processor 4K mạnh mẽ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế viền màn hình siêu mỏng ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;dễ sử dụng cùng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, dễ dàng truy cập nhanh chóng, điều khiển nhiều thiết bị cùng lúc.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:07', NULL, NULL, NULL),
(20, 'Smart Tivi QLED Samsung 4K 75 inch QA75Q80T', 54000000, 45, '', 1, 1, 1, '2021-01-05 16:14:08', NULL, NULL, NULL),
(21, 'Smart Tivi QLED Samsung 4K 82 inch QA82Q90R', 92900000, 40, '<ul>\n <li>Độ phân giải Ultra HD&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng màu sắc rực rỡ, sống động, chi tiết tách bạch với công nghệ Quantum&nbsp;<i class=\"cate-img\"></i>HDR.</li>\n <li>Âm thanh vòm lan toả, hiệu ứng mạnh mẽ, vượt trội với công nghệ Dolby Digital Plus.</li>\n <li><i class=\"cate-yt\"></i>One Remote&nbsp;thông minh hỗ trợ thao tác điều khiển, truy cập nhanh chóng hơn.</li>\n <li>Thiết kế màn hình tràn viền hiện đại, kiểu dáng sang trọng.</li>\n <li>Tăng cường độ sáng hiệu quả, độ tương phản vượt trội đến từ công nghệ Direct Full Array.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại, nhiều tính năng tiện ích.</li>\n <li>Trình chiếu màn hình điện thoại lên tivi nhanh chóng với ứng dụng&nbsp;<i class=\"cate-yt\"></i>SmartThings.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:09', NULL, NULL, NULL),
(22, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q75R', 24000000, 30, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tái hiện dải màu chính xác, tự nhiên hơn đến từ công nghệ màn hình&nbsp;<i class=\"cate-yt\"></i>Quantum Dot.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế viền màn hình siêu mỏng, kiểu dáng hiện đại.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng khả năng hiển thị màu sắc chân thực, độ tương phản cao với công nghệ Quantum HDR 8X.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm mạnh mẽ, hiệu ứng vượt trội với công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tính năng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring&nbsp;cho phép trình chiếu màn hình điện thoại lên tivi dễ dàng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại, đẹp mắt cùng&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;hỗ trợ điều khiển, thao tác sử dụng nhanh chóng, tối giản hơn.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:10', NULL, NULL, NULL),
(23, 'Smart Tivi QLED Samsung 4K 82 inch QA82Q75R', 56500000, 45, '<ul>\n <li>Độ tương phản vượt trội nhờ công nghệ Direct Full Array.</li>\n <li>Điều khiển tivi bằng điện thoại nhờ SmartThings.</li>\n <li>Âm thanh mạnh mẽ, lan toả đến từ công nghệ Dolby Digital Plus.</li>\n <li>Bộ xử lý Quantum 4K Processor xử lý hình ảnh hiệu quả.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ Quantum HDR 1000 nits mang đến màu sắc nổi bật, sống động hơn.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;dễ sử dụng, thao tác mượt mà cùng&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, hỗ trợ truy cập, điều khiển dễ dàng.</li>\n <li>Thiết kế tràn viền màn hình sang trọng.</li>\n <li>Công nghệ màn hình&nbsp;<i class=\"cate-yt\"></i>Chấm lượng tử&nbsp;tái hiện màu sắc chính xác, chân thực.</li>\n <li>Tính năng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring&nbsp;hỗ trợ chiếu màn hình điện thoại lên tivi tiện lợi.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:11', NULL, NULL, NULL),
(24, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q90R', 47300000, 45, '<ul>\n <li>Mang đến cho bạn một thiết kế liền mạch ấn tượng.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K vô cùng sắc nét với công nghệ màn hình QLED tối ưu chi tiết hình ảnh.</li>\n <li>Công nghệ chấm lượng tử&nbsp;<i class=\"cate-img\"></i>Quantum Dot&nbsp;hiển thị độ chính xác màu sắc tốt hơn.</li>\n <li>Công nghệ Quantum HDR 2000 nits cho độ sáng vượt trội.</li>\n <li>Công nghệ Direct Full Array kiểm soát đèn nền hiệu quả.</li>\n <li>Bộ xử lý Quantum Processor 4K cải thiện chất lượng hình ảnh.</li>\n <li>Cho âm thanh vòm sống động, chân thực như rạp phim</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS đơn giản, hiện dại, dễ sử dụng</li>\n <li>One Remote thông minh – đa nhiệm có thể sử dụng cho nhiều thiết bị khác nhau</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:12', NULL, NULL, NULL),
(25, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q70T', 24350000, 25, '', 1, 1, 1, '2021-01-05 16:14:13', NULL, NULL, NULL),
(26, 'Smart Tivi QLED Samsung 4K 55 inch QA55Q65R', 14250000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum HDR hiện đại cho độ tương phản cao.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Wide Viewing Angle&nbsp;cho hình ảnh rõ nét ở mọi góc nhìn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tối ưu hình ảnh, âm thanh theo môi trường và nội dung đang phát bằng trí thông minh nhân tạo AI nhờ bộ xử lý&nbsp;Quantum 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\"><i class=\"cate-img\"></i>Supreme UHD Dimming&nbsp;giúp tăng cường độ chi tiết hình ảnh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành Tizen dễ sử dụng, đi kèm one remote thông minh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chấm lượng tử QLED cho màu sắc mở rộng, độ sáng cao.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;vô cùng sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\"><i class=\"cate-yt\"></i>Chiếu màn hình&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:14', NULL, NULL, NULL),
(27, 'Smart Tivi QLED Samsung 4K 43 inch QA43Q65T', 11400000, 45, '<ul>\n <li>Tivi 43 inch, thiết kế không viền 3 cạnh·thanh mảnh,&nbsp;độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét gấp 4 lần Full HD.</li>\n <li>Hiển thị 100% dải màu bằng công nghệ màn hình chấm lượng tử&nbsp;<i class=\"cate-yt\"></i>Quantum Dot.</li>\n <li>Tăng cường độ tương phản và độ chính xác của màu sắc bằng công nghệ đèn nền&nbsp;<i class=\"cate-img\"></i>Dual Led&nbsp;và Quantum HDR.</li>\n <li>Hình ảnh rõ nét với sắc đen sâu thẳm, sắc trắng tinh khiết qua công nghệ&nbsp;<i class=\"cate-img\"></i>Supreme UHD Dimming.</li>\n <li>Hình ảnh chất lượng và màu sắc trọn vẹn với mọi góc nhìn với công nghệ&nbsp;<i class=\"cate-img\"></i>Wide Viewing Angle.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen OS&nbsp;đơn giản, dễ sử dụng và kho ứng dụng phong phú.</li>\n <li>Chiếu màn hình điện thoại lên tivi qua Tap View và&nbsp;<i class=\"cate-img\"></i>AirPlay 2, xem nhiều nội dung cùng lúc với&nbsp;tính năng&nbsp;<i class=\"cate-img\"></i>Multi View&nbsp;(Trình chiếu đa màn hình).</li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:15', NULL, NULL, NULL),
(28, 'Smart Tivi QLED Samsung 4K 65 inch QA65Q7FN', 39900000, 10, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế hoàn mỹ cùng chân đế kim loại mang lại sự sang trọng cho không gian đặt.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;sắc nét cùng công nghệ&nbsp;<i class=\"cate-img\"></i>Q HDR Elite&nbsp;cho màu đen huyền sâu thẳm, màu sáng tinh khiết.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ màn hình chấm lượng tử&nbsp;<i class=\"cate-img\"></i>Quantum Dot&nbsp;cho màu sắc rực rỡ sống động như thật.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Q Color&nbsp;giúp tivi hiển thị dải màu rộng hơn, độ chân thật lên đến 100%.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ âm thanh Dolby Digital Plus, DTS đi kèm loa trầm tích hợp cho âm thanh được tái hiện bùng nổ hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành Tizen OS dễ thao tác, kho ứng dụng với đa dạng các ứng dụng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:16', NULL, NULL, NULL),
(29, 'Smart Tivi QLED Samsung 4K 55 inch QA55Q80T', 21100000, 15, '', 1, 1, 1, '2021-01-05 16:14:17', NULL, NULL, NULL),
(30, 'Smart Tivi QLED Samsung 4K 49 inch QA49Q65R', 11700000, 10, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế sang trọng, hiện đại.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ màn hình chấm lượng tử giúp tối ưu màu sắc chân thực và sắc nét hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\"><i class=\"cate-img\"></i>Bộ Xử Lý Quantum 4K&nbsp;mạnh mẽ giúp nâng cấp độ nét hình ảnh, tự động chiều chỉnh ánh sáng và âm thanh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;sắc nét,&nbsp;độ tương phản cao nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Quantum HDR&nbsp;hiện đại</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chế Độ&nbsp;<i class=\"cate-img\"></i>Ambient Mode&nbsp;giúp chiếc tivi thành tác phẩm nghệ thuật.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-img\"></i>TizenOS&nbsp;nhiều ứng dụng phong phú.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chiếu màn hình điện thoại lên tivi tiện lợi bằng Screen Mirroring, Airplay 2 và điều khiển tivi bằng điện thoại thông qua ứng dụng SmartThings</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:18', NULL, NULL, NULL),
(31, 'Smart Tivi QLED Samsung 4K 43 inch QA43Q65R', 12250000, 30, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế đơn giản, sang trọng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>màn hình chấm lượng tử&nbsp;hiện đại cho màu sắc chân thật.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tối ưu và nâng cấp độ nét hình ảnh, tự động điều chỉnh ánh sáng và âm thanh nhờ bộ xử Lý Quantum 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét, tối ưu độ tương phản giữa các khung hình nhờ công nghệ Quantum HDR.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Góc nhìn rộng hơn với công nghệ&nbsp;<i class=\"cate-img\"></i>Wide Viewing Angle.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chế độ&nbsp;<i class=\"cate-img\"></i>Ambient Mode&nbsp;hiện đại giúp tivi bạn đỡ nhàm chán.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-img\"></i>TizenOS&nbsp;nhiều ứng dụng phong phú.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chiếu màn hình điện thoại lên tivi tiện lợi bằng Screen Mirroring, Airplay 2 và điều khiển tivi bằng điện thoại thông qua ứng dụng&nbsp;SmartThings</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:19', NULL, NULL, NULL),
(32, 'Smart Tivi QLED Samsung 4K 75 inch QA75Q70T', 35500000, 20, '', 1, 1, 1, '2021-01-05 16:14:20', NULL, NULL, NULL),
(33, 'Smart Tivi QLED Samsung 4K 75 inch QA75Q90R', 123000000, 5, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền màn hình độc đáo.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải 4K sắc nét cùng công nghệ màn hình QLED&nbsp;nâng cao chất lượng hiển thị hình ảnh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hàng tỷ sắc màu rực rỡ nhờ công nghệ chấm lượng tử&nbsp;<i class=\"cate-img\"></i>Quantum Dot.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum HDR 2000 nits cho độ sáng vượt trội.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Direct Full Array kiểm soát đèn nền hiệu quả.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Bộ xử lý Quantum Processor 4K mạnh mẽ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus cho trải nghiệm âm thanh sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;đơn giản cùng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, dễ dàng truy cập nhanh chóng, điều khiển nhiều thiết bị cùng lúc.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:21', NULL, NULL, NULL),
(34, 'Smart Tivi QLED Samsung 4K 75 inch QA75Q75R', 40200000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K sắc nét trên màn hình rộng 75 inch cùng màu sắc rực rỡ</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ âm thanh vòm Dolby Digital Plus mạnh mẽ bao trùm mọi không gian</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Mang đến Sắc tối sâu thẳm, sắc sáng thuần khiết hơn với công nghệ Quantum HDR 8X tiên tiến.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ tương phản cao với công nghệ Dirrect Full Array.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế hiện đại, viền màn hình siêu mỏng tinh tế.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cải thiện chất lượng hình ảnh độ phân giải thấp lên gần chuẩn 4K với công nghệ Nâng cấp AI thông minh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS đẹp mắt, nhiều tính năng, hiện đại, dễ sử dụng</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi với tính năng&nbsp;<i class=\"cate-yt\"></i>Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tiện ích One Remote&nbsp;thông minh, hỗ trợ thao tác điều khiển, truy cập nhanh chóng.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:14:22', NULL, NULL, NULL),
(35, 'Smart Tivi QLED Samsung 4K 85 inch QA85Q80T', 96000000, 35, '', 1, 1, 1, '2021-01-05 16:19:12', NULL, NULL, NULL),
(36, 'Smart Tivi Samsung 4K 50 inch UA50TU7000', 8950000, 15, '<ul>\n <li>Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 43 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</li>\n <li>Cho dải màu sắc phong phú, sống động hơn với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>PurColor.</li>\n <li>Tái tạo màu sắc chính xác và chi tiết hơn nhờ bộ xử lý&nbsp;<i class=\"cate-img\"></i>Crystal Processor 4K.</li>\n <li>Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</li>\n <li>Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen Os.</li>\n <li>Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:14', NULL, NULL, NULL),
(37, 'Smart Tivi Samsung 43 inch UA43T6000', 6700000, 25, '<ul>\n <li>Thiết kế nhỏ gọn, hiện đại với kích thước&nbsp;<strong>43 inch</strong>.</li>\n <li>Độ phân giải&nbsp;<strong>Full HD</strong>&nbsp;rõ nét gấp 2 lần so với HD.</li>\n <li><strong>Hình ảnh có độ tương phản cao, sắc nét</strong>&nbsp;với công nghệ công nghệ HDR<strong>.</strong></li>\n <li><strong>Màu sắc sống động</strong>&nbsp;với công nghệ&nbsp;PurColor.</li>\n <li><strong>Âm thanh đa chiều, liền mạch và lan toả khắp căn phòng</strong>&nbsp;với công nghệ Dolby Digital.</li>\n <li><strong>Dễ sử dụng</strong>&nbsp;với giao diện hệ điều hành&nbsp;Tizen OS&nbsp;cùng với các ứng dụng như: VieOn, Apple TV, Apple Music, Amazon Primevideo,…</li>\n <li>Điều khiển, chiếu màn hình lên tivi bằng điện thoại dễ dàng qua SmartThings<strong>,&nbsp;</strong>Screen Mirroring.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:17', NULL, NULL, NULL),
(38, 'Smart Tivi Samsung 4K 43 inch UA43TU7000', 7850000, 25, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 43 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cho dải màu sắc phong phú, sống động hơn với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>PurColor.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tái tạo màu sắc chính xác và chi tiết hơn nhờ bộ xử lý&nbsp;<i class=\"cate-img\"></i>Crystal Processor 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen Os.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n</ul>\n<ul>\n <li></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:20', NULL, NULL, NULL),
(39, 'Smart Tivi Samsung 4K 55 inch UA55RU7200', 10350000, 35, '<ul>\n <li>Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;nhờ Screen Mirroring, Airplay 2&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, nhiều ứng dụng giải trí hấp dẫn.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tăng cường độ chi tiết của hình ảnh.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;với dải màu rực rỡ, cho hình ảnh thật như cuộc sống.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;kết hợp công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;nâng cao độ tương phản, cho trải nghiệm hình ảnh tuyệt đẹp.</li>\n <li>Công nghệ Dolby Digital Plus&nbsp;mang đến âm thanh đa chiều mạnh mẽ, sống động.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:25', NULL, NULL, NULL),
(40, 'Smart Tivi Samsung 4K 55 inch UA55RU8000', 13800000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tính năng&nbsp;Screen Mirrroring&nbsp;giúp trình chiếu màn hình điện thoại lên tivi.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;Tizen OS&nbsp;trực quan, hiện đại cùng One Remote thông minh, hỗ trợ điều khiển được nhiều thiết bị cùng lúc.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Sắc sáng nổi bật, sắc tối sâu thẳm hơn với công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;mang đến độ tương phản cao, sắc màu rực rỡ hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh hoành tráng, lan toả với công nghệ&nbsp;Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Colour&nbsp;cho dải màu rộng, chân thực.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:27', NULL, NULL, NULL),
(41, 'Smart Tivi Samsung 4K 55 inch UA55TU8100', 11500000, 0, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kích thước tivi 55 inch, thiết kế không viền 3 cạnh hiện đại phù hợp với mọi không gian nội thất.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh hiển thị nâng cao màu sắc rực rỡ hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;có giao diện thân thiện và kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi thông minh bằng remote đa nhiệm –&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;và điều khiển bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-yt\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi qua tính năng AIrplay 2 và Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ các cổng kết nối đa dạng: Bluetooth, HDMI, USB, Wifi,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:29', NULL, NULL, NULL),
(42, 'Smart Tivi QLED Samsung 8K 65 inch QA65Q900R', 50400000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Có thiết kế đẳng cấp, sang trọng bậc nhất hiện nay</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>8K phải nói là siêu sắc nét, chưa từng có</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giúp nâng cấp độ phân giải lên gần 8K bằng trí thông minh nhân tạo AI.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum HDR cho hình ảnh có độ tương phản vô cùng ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Ultra Viewing Angle hình ảnh tivi đẹp ở mọi góc nhìn</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chế độ&nbsp;<i class=\"cate-img\"></i>Ambient Mode hiện đại biến chiếc tivi bạn thành bức tranh nghệ thuật thay đổi liên tục</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành Tizen, đi cùng&nbsp;<i class=\"cate-img\"></i>one remote&nbsp;có tìm kiếm giọng nói.</span></li>\n <li>Hỗ trợ tất cả các cổng kết nối hiện đại</li>\n <li>Có thể điều khiển bằng điện thoại, máy tính bảng cực kỳ dễ dàng</li>\n <li>Chiếu màn hình điện thoại lên tivi rất thú vị</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:32', NULL, NULL, NULL),
(43, 'Smart Tivi Samsung 4K 50 inch UA50RU7200', 9000000, 35, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét cùng công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;hiện đại nâng cao độ tương phản, cho trải nghiệm hình ảnh tuyệt đẹp.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;mang đến thế giới hình ảnh rực rỡ đầy màu sắc.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh, hiển thị màu sắc&nbsp;chân thật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus&nbsp;cho trải nghiệm âm thanh vòm bùng nổ, sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, nhiều ứng dụng giải trí hấp dẫn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:34', NULL, NULL, NULL),
(44, 'Smart Tivi QLED Samsung 8K 98 inch QA98Q900R', 1400000000, 30, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế hiện đại, tinh xảo hào hoà với mọi không gian nội thất.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình độ phân giải&nbsp;<i class=\"cate-yt\"></i>8K&nbsp;sắc nét gấp 4 lần 4K cùng dải màu rộng, tự nhiên từ màn hình QLED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-yt\"></i>Quantum HDR&nbsp;tăng cường độ sâu, độ chi tiết cho hình ảnh trở nên sinh động hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Khả năng nâng cao chi tiết, giảm nhiễu hình ảnh từ công nghệ&nbsp;<i class=\"cate-yt\"></i>Nâng cấp AI 8K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm lan toả, mạnh mẽ đến từ công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại cùng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, dễ dàng truy cập nhanh chóng, điều khiển nhiều thiết bị cùng lúc.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:36', NULL, NULL, NULL),
(45, 'Smart Tivi Samsung 4K 55 inch UA55TU7000', 10400000, 15, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế ấn tượng tràn viền 3 cạnh, kích thước tivi 55 inch, độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hiển thị các sắc độ màu tinh khiết và rõ ràng hơn qua bộ xử lý&nbsp;<i class=\"cate-img\"></i>Crystal Processor 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tận hưởng hình ảnh đầy màu sắc hơn nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh sống động độ tương phản đạt mức tối đa nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen Os&nbsp;đơn giản, dễ sử dụng cùng kho ứng dụng giải trí đa dạng.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:38', NULL, NULL, NULL),
(46, 'Smart Tivi Samsung 32 inch UA32N4300', 4700000, 20, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải HD sắc nét trên màn hình tivi 32 inch.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Wide Color Enhancer cho dải màu rộng, màu sắc sống động rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màu đen sâu, màu sáng tươi mới hơn với công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công suất loa lên đến 10W cho âm thanh rõ ràng, mạnh mẽ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tích hợp đầu thu&nbsp;<i class=\"cate-img\"></i>DVB-T2&nbsp;giúp xem được nhiều kênh truyền hình miễn phí.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:40', NULL, NULL, NULL),
(47, 'Smart Tivi Samsung 43 inch UA43T6500', 7400000, 5, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế sang trọng, trang nhã với độ mỏng tối ưu cùng độ phân giải&nbsp;<i class=\"cate-img\"></i>Full HD.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Dải màu sắc phong phú kiến tạo hình ảnh sống động nổi bật từ công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Quét ảnh tăng cường độ sắc nét cho trải nghiệm trung thực với công nghệ&nbsp;<i class=\"cate-img\"></i>Digital Clean View.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Khung hình trở nên sống động và chân thực nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Nâng cấp độ tương phản qua công nghệ&nbsp;<i class=\"cate-img\"></i>Dynamic Contrast Ratio.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh trong trẻo với công nghệ âm thanh&nbsp;<i class=\"cate-img\"></i>Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen Os&nbsp;có giao diện phẳng, dễ sử dụng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ đa dạng cổng kết nối như Bluetooth, Wifi, HDMI, USB,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:42', NULL, NULL, NULL),
(48, 'Smart Tivi Samsung 43 inch UA43N5510', 6700000, 0, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải Full HD gấp 2 lần HD mang đến hình ảnh sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màu sắc sống động, rực rỡ với công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;Micro Dimming tăng cường độ nét cho hình ảnh hiển thị chi tiết hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm lan tỏa, sống động với công nghệ&nbsp;Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;dễ dàng sử dụng với nhiều ứng dụng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-yt\"></i>Smart View.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:44', NULL, NULL, NULL),
(49, 'Smart Tivi Samsung 43 inch UA43N5500', 7600000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer&nbsp;nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;với dải màu rộng cho màu sắc rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Micro Dimming Pro&nbsp;nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:45', NULL, NULL, NULL),
(50, 'Smart Tivi Samsung 49 inch UA49N5500', 8100000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải Full HD sắc nét gấp 2 lần độ phân giải HD.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer&nbsp;nâng cấp độ sâu hình ảnh, cho hình ảnh thêm phần ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;với dải màu rộng cho màu sắc rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Micro Dimming Pro&nbsp;nâng cấp độ tương phản, hình ảnh, độ nét, đem đến sắc đen sâu thẳm cùng sắc trắng tinh khiết.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ âm thanh Dolby Digital Plus cho trải nghiệm âm thanh vòm ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng cùng hàng nghìn ứng dụng giải trí trực tuyến thú vị.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-yt\"></i>SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:47', NULL, NULL, NULL),
(51, 'Smart Tivi Samsung 32 inch UA32T4300', 5000000, 35, '<ul>\n <li>Thiết kế thanh lịch với độ mỏng tối ưu, màn hình 32 inch nhỏ gọn.</li>\n <li>Hình ảnh sắc nét nhờ độ phân giải&nbsp;<i class=\"cate-img\"></i>HD&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>HDR.</li>\n <li>Hình ảnh được lọc nhiễu, giảm nhòe với công nghệ&nbsp;<i class=\"cate-img\"></i>Ultra Clean View.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;cho dải màu rộng, màu sắc sống động rực rỡ.</li>\n <li>Âm thanh mạnh mẽ với công nghệ âm thanh&nbsp;<i class=\"cate-img\"></i>Dolby Digital Plus.</li>\n <li>Kho ứng dụng phong phú với hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen OS.</li>\n <li>Chiếu màn hình điện thoại Android, IOS lên tivi qua tính năng Smart View.</li>\n <li>Cổng kết nối đa dạng: USB, HDMI, LAN, Optical…</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:50', NULL, NULL, NULL),
(52, 'Smart Tivi Samsung 4K 43 inch UA43RU7200', 8900000, 0, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, hỗ trợ nhiều ứng dụng giải trí hấp dẫn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;nâng cao độ tương phản cho trải nghiệm hình ảnh ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus&nbsp;cho trải nghiệm âm thanh vòm bùng nổ, sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;sắc nét gấp 4 lần Full HD.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;nhờ Screen Mirroring, Airplay 2&nbsp; và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh sắc nét, màu sắc hiển thị chân thật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;mang đến thế giới hình ảnh rực rỡ đầy màu sắc.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:52', NULL, NULL, NULL);
INSERT INTO `product` (`id`, `name`, `price`, `discount`, `description`, `status`, `categoryid`, `supplierid`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(53, 'Smart Tivi Samsung 4K 55 inch UA55NU7090', 9150000, 30, '<ul>\n <li>Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;đi kèm công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;mang đến hình ảnh sắc nét màu sắc trung thực.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;mang đến dải màu rộng cho ra màu sắc sống động, mạnh mẽ.</li>\n <li>Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh sắc nét, màu sắc hiển thị chân thật hơn.</li>\n <li>Âm thanh vòm mạnh mẽ với công nghệ Dolby Digital Plus.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, hỗ trợ nhiều ứng dụng quen thuộc phù hợp với nhiều thành viên trong gia đình.</li>\n <li>Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:53', NULL, NULL, NULL),
(54, 'Smart Tivi Samsung 4K 50 inch UA50NU7090', 8250000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;đi kèm công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;mang đến hình ảnh sắc nét màu sắc trung thực.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;mang đến dải màu rộng cho ra màu sắc sống động, mạnh mẽ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh sắc nét, màu sắc hiển thị chân thật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm mạnh mẽ với công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, hỗ trợ nhiều ứng dụng quen thuộc phù hợp với nhiều thành viên trong gia đình.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:55', NULL, NULL, NULL),
(55, 'Smart Tivi QLED Samsung 8K 75 inch QA75Q900R', 163000000, 25, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Khả năng tăng cường chất lượng nội dung hình ảnh thấp lên gần chuẩn 8K với&nbsp;<i class=\"cate-img\"></i>8K AI Upscaling.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Quantum HDR xử lý từng chi tiết, màu sắc trở nên sinh động, nổi bật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm lan toả, mạnh mẽ đến từ công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế sang trọng, tinh tế, hài hoà với mọi không gian nội thất.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>8K&nbsp;siêu sắc nét với dải màu mở rộng, tự nhiên từ màn hình QLED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;hiện đại cùng với&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;thông minh, dễ dàng truy cập nhanh chóng, điều khiển nhiều thiết bị cùng lúc.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:19:58', NULL, NULL, NULL),
(56, 'Smart Tivi Samsung 4K 49 inch UA49RU8000', 11000000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Colour&nbsp;cho dải màu rộng, chân thực.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải màn hình&nbsp;<i class=\"cate-img\"></i>4K&nbsp;đầy đủ chi tiết cùng độ tương phản cao, sắc màu nổi bật từ công nghệ&nbsp;<i class=\"cate-img\"></i>HDR.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hiện&nbsp;Tizen OS&nbsp;dễ sử dụng cùng One Remote thông minh, hỗ trợ điều khiển được nhiều thiết bị cùng lúc.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chi tiết tách bạch, rõ ràng hơn với công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh mạnh mẽ, hiệu ứng vượt trội với công nghệ&nbsp;Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tính năng&nbsp;Screen Mirrroring&nbsp;giúp trình chiếu màn hình điện thoại lên tivi.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:01', NULL, NULL, NULL),
(57, 'Smart Tivi Samsung 4K 50 inch UA50TU8100', 9900000, 15, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kích thước 50 inch cùng thiết kế không viền 3 cạnh giúp tivi làm bật lên sự sang trọng cho không gian.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh hiển thị nâng cao màu sắc rực rỡ hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;có giao diện thân thiện và kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi thông minh bằng remote đa nhiệm –&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;và điều khiển bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-yt\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trải nghiệm chơi game cực đã với công nghệ Real Game Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi qua tính năng AIrplay 2 và Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ các cổng kết nối đa dạng: Bluetooth, HDMI, USB, Wifi,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:07', NULL, NULL, NULL),
(58, 'Smart Tivi Samsung 40 inch UA40J5250D', 5700000, 35, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Sở hữu độ phân giải<strong> Full HD</strong> mang đến hình ảnh sắc nét</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trang bị công nghệ <strong>Wide Contrast Enhancer</strong> nâng cấp và cho hình ảnh sâu hơn</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ <i class=\"cate-img\"></i><strong>Hyper Real Engine</strong>&nbsp; cho hình ảnh chất lượng cao</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Có công nghệ âm thanh vòm bao trùm không gian</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện <strong>Smart Hub</strong> cực kỳ thân thiện, dễ dàng sử dụng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Có khả năng chiếu màn hình điện thoại lên màn hình tivi</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Mang đến đa dạng các cổng kết nối: HDMI, USB, cổng xuất âm thanh 3.5 mm,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:10', NULL, NULL, NULL),
(59, 'Smart Tivi Samsung 4K 43 inch UA43TU8100', 8650000, 50, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kích thước tivi 43 inch cùng thiết kế không viền 3 cạnh làm bật lên sự sang trọng cho không gian.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh hiển thị nâng cao màu sắc rực rỡ hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trải nghiệm chơi game mượt mà với công nghệ Real Game Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS&nbsp;có giao diện thân thiện và kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi thông minh bằng remote đa nhiệm –&nbsp;<i class=\"cate-yt\"></i>One Remote&nbsp;và điều khiển bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-yt\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi qua tính năng AIrplay 2 và Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ các cổng kết nối đa dạng: Bluetooth, HDMI, USB, Wifi,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:13', NULL, NULL, NULL),
(60, 'Smart Tivi QLED Samsung 8K 82 inch QA82Q900R', 177000000, 50, '<ul>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>8K&nbsp;ấn tượng.</li>\n <li>Công Nghệ Quantum HDR 32X hiện đại cho độ tương phản cao, hình ảnh chi tiết hơn.</li>\n <li>Nâng cấp độ phân giải gần chuẩn 8K nhất.</li>\n <li>Chế Độ&nbsp;<i class=\"cate-img\"></i>Ambient Mode&nbsp;biến chiếc tivi của bạn thành tác phẩm nghệ thuật.</li>\n <li><i class=\"cate-img\"></i>Âm thanh vòm Dolby&nbsp;độc đáo, cho âm thanh bùng nổ hơn.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:16', NULL, NULL, NULL),
(61, 'Smart Tivi Samsung 4K 50 inch UA50TU8500', 10900000, 25, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 43 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cho dải màu rộng, sống động với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Color.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kiểm soát màu sắc đèn nền, giảm hiện tượng hở sáng nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Dual LED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi bằng điện thoại với ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen Os.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:18', NULL, NULL, NULL),
(62, 'Smart Tivi QLED Samsung 8K 65 inch QA65Q800T', 61000000, 25, '<ul>\n <li>Kích thước lớn 65 inch tràn viền 4 cạnh mang đến trải nghiệm không giới hạn, cùng độ phân giải<i class=\"cate-img\"></i>&nbsp;8K&nbsp;cho hình ảnh sắc nét.</li>\n <li>Hiển thị màu sắc chính xác và độ tương phản cao qua công nghệ màn hình chấm lượng tử QLED và công nghệ&nbsp;<i class=\"cate-img\"></i>Quantum HDR&nbsp;2000&nbsp;nits.</li>\n <li>Điều khiển vùng sáng/tối hiệu quả hơn với công nghệ&nbsp;<i class=\"cate-img\"></i>Direct Full Array&nbsp;224&nbsp;blocks.</li>\n <li>Nâng cấp hình ảnh có chất lượng thấp lên gần chuẩn 8K với bộ vi xử lý&nbsp;<i class=\"cate-img\"></i>Quantum 8K&nbsp;&nbsp;và trí tuệ nhân tạo AI.</li>\n <li>Âm thanh chuyển động theo đối tượng với công nghệ Object Tracking Sound+.</li>\n <li>Tạo điểm nhấn cho không gian với chế độ hình nền Ambient Mode+ cùng&nbsp;<i class=\"cate-img\"></i>SmartThings&nbsp;được tích hợp ngay trên tivi.</li>\n <li>Trình chiếu điện màn hình điện thoại lên tivi một cách dễ dàng qua tính năng Airplay 2 và&nbsp;<i class=\"cate-img\"></i>Tap View.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:20', NULL, NULL, NULL),
(63, 'Smart Tivi Samsung 32 inch UA32T4500', 5400000, 40, '<ul>\n <li>Thiết kế chắc chắn, màn hình<i class=\"cate-img\"></i>&nbsp;32 inch&nbsp;nhỏ gọn.</li>\n <li>Hình ảnh rõ nét với độ phân giải HD.</li>\n <li>Tăng độ tương phản hình ảnh nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>HDR, Micro Dimming Pro.</li>\n <li>Tái hiện dải màu rộng, rực rỡ với công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</li>\n <li>Lọc nhiễu, hình ảnh mượt mà, rõ nét nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Ultra Clean View.</li>\n <li>Tăng chiều sâu cho từng khung hình với công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer.</li>\n <li>Âm thanh sôi động, lan tỏa với công nghệ Dolby Digital Plus.</li>\n <li>Giao diện phẳng, ứng dụng đa dạng với hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen OS.</li>\n <li>Chiếu màn hình điện thoại Android, Iphone lên tivi qua tính năng Screen Miroring và AirPlay 2.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:22', NULL, NULL, NULL),
(64, 'Smart Tivi Samsung 4K 43 inch UA43TU8500', 9350000, 40, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 43 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cho dải màu rộng, sống động với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Color.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kiểm soát màu sắc đèn nền, giảm hiện tượng hở sáng nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Dual LED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi bằng điện thoại với ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen Os.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:20:23', NULL, NULL, NULL),
(65, 'Smart Tivi Samsung 4K 70 inch UA70RU7200', 17650000, 25, '<ul>\n <li>Thiết kế màn hình lớn 70 inch với màu đen chủ đạo sang trọng.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;rõ nét gấp 4 lần Full HD.</li>\n <li>Nâng cao độ tương phản hình ảnh với công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</li>\n <li>Cho màu sắc sặc sỡ, sinh động hơn với&nbsp;công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</li>\n <li>Tăng cường độ chi tiết cho hình ảnh nhờ&nbsp;công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</li>\n <li>Công nghệ Dolby Digital Plus&nbsp;cho trải nghiệm âm thanh vòm bùng nổ, sống động.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;hiện đại, có kho ứng dụng giải trí hấp dẫn.</li>\n <li>Dễ dàng tìm kiếm bằng giọng nói với One remote thông minh.</li>\n <li>Hỗ trợ điều khiển tivi bằng điện thoại với ứng dụng SmartThings.</li>\n <li><i class=\"cate-yt\"></i>Chiếu màn hình điện thoại lên tivi&nbsp;qua tính năng Screen Mirroring, Airplay 2.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:20', NULL, NULL, NULL),
(66, 'Smart Tivi Samsung 4K 75 inch UA75TU8100', 28200000, 5, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kích thước tivi 75 inch cùng thiết kế không viền 3 cạnh làm bật lên sự sang trọng cho không gian.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh độ phân giải<i class=\"cate-img\"></i>&nbsp;Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh hiển thị nâng cao màu sắc rực rỡ hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;và công nghệ&nbsp;UHD&nbsp;<i class=\"cate-img\"></i>Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Nâng cấp độ tương phản, tối ưu chi tiết sáng tối cho hình ảnh với công nghệ&nbsp;&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer&nbsp;và&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Chơi game trên màn hình lớn của tivi với&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen OS&nbsp;có giao diện thân thiện và kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi qua tính năng&nbsp;<i class=\"cate-img\"></i>AIrplay 2&nbsp;và Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ các cổng kết nối đa dạng: Bluetooth, HDMI, USB, Wifi,…</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:23', NULL, NULL, NULL),
(67, 'Smart Tivi Samsung 4K 82 inch UA82TU8100', 44900000, 5, '<ul>\n <li>PurColor tái hiện dải màu sắc tự nhiên và chân thật nhất</li>\n <li>HDR10+ hình ảnh rõ nét trong tương thích nội dung HDR 10+</li>\n <li>Boundless Design thiết kế tràn viền 3 cạnh sang trọng</li>\n <li>Dễ dàng tìm kiếm nội dung Youtube bằng giọng nói</li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:26', NULL, NULL, NULL),
(68, 'Smart Tivi Samsung 4K 75 inch UA75TU7000', 25500000, 40, '<ul>\n <li>Thiết kế không viền 3 cạnh hiện đại, kích thước tivi 75 inch phù hợp với mọi không gian nội thất.</li>\n <li>Hình ảnh độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</li>\n <li>Hình ảnh hiển thị nâng cao màu sắc rực rỡ và sống động hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>Crystal Display&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</li>\n <li>Giao diện thân thiện dễ dùng và kho ứng dụng đa dạng với hệ điều hành Tizen OS.</li>\n <li>Điều khiển tivi thông minh bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</li>\n <li>Chiếu màn hình điện thoại lên tivi dễ dàng qua tính năng Tap View, AirPlay 2 và&nbsp;<i class=\"cate-img\"></i>Smart View.</li>\n <li>Nhiều&nbsp;<i class=\"cate-img\"></i>cổng kết nối&nbsp;đa dạng: HDMI, USB,…</li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:29', NULL, NULL, NULL),
(69, 'Smart Tivi Samsung 4K 55 inch UA55TU8500', 12900000, 50, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 55 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cho dải màu rộng, sống động với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Color.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kiểm soát màu sắc đèn nền, giảm hiện tượng hở sáng nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Dual LED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi bằng điện thoại với ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen Os.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:31', NULL, NULL, NULL),
(70, 'Smart Tivi Samsung 4K 58 inch UA58TU7000', 11700000, 35, '<ul>\n <li>Thiết kế tràn viền 3 cạnh tinh giản, kích thước tivi 58 inch, độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</li>\n <li>Tối ưu hóa hiển thị màu sắc rõ nét qua bộ xử lý&nbsp;<i class=\"cate-img\"></i>Crystal Processor 4K.</li>\n <li>Tăng cường độ tương phản và dải màu sắc vượt trội bằng công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</li>\n <li>Tận hưởng hình ảnh đầy màu sắc hơn nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</li>\n <li>Hình ảnh sống động với độ tương phản đạt mức tối đa nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer.</li>\n <li>Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</li>\n <li>Kho ứng dụng giải trí đa dạng trên hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen Os.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:34', NULL, NULL, NULL),
(71, 'Smart Tivi Samsung 4K 65 inch UA65TU8500', 19550000, 50, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh sang trọng, kích thước tivi 65 inch. Độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+&nbsp;cho hình ảnh chi tiết, sắc xảo hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cho dải màu rộng, sống động với công nghệ màu sắc&nbsp;<i class=\"cate-img\"></i>Dynamic Crystal Color.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kiểm soát màu sắc đèn nền, giảm hiện tượng hở sáng nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Dual LED.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh có độ tương phản cao, sắc nét đến từng chi tiết nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi bằng điện thoại với ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen Os.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:36', NULL, NULL, NULL),
(72, 'Smart Tivi Samsung 4K 65 inch UA65TU8100', 18100000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Kích thước tivi 43 inch cùng thiết kế không viền 3 cạnh làm bật lên sự sang trọng cho không gian.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;hiển thị rõ ràng và sắc nét với công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh hiển thị nâng cao màu sắc rực rỡ hơn qua công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;và công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Nâng cấp độ tương phản, tối ưu chi tiết sáng tối cho hình ảnh với công nghệ&nbsp; Contrast Enhancer&nbsp;và&nbsp;<i class=\"cate-img\"></i>Mega Contrast.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-img\"></i>Tizen OS&nbsp;có giao diện thân thiện và kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Điều khiển tivi thông minh bằng remote đa nhiệm –&nbsp;<i class=\"cate-img\"></i>One Remote&nbsp;và điều khiển bằng điện thoại qua ứng dụng&nbsp;<i class=\"cate-img\"></i>SmartThings.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Trình chiếu màn hình điện thoại lên tivi qua tính năng&nbsp;<i class=\"cate-img\"></i>AIrplay 2&nbsp;và Screen Mirroring.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ các cổng kết nối đa dạng: Bluetooth, HDMI, USB, Wifi</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:38', NULL, NULL, NULL),
(73, 'Smart Tivi Samsung 4K 65 inch UA65RU7400', 16700000, 5, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;cực nét cùng công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;nâng cao độ tương phản mang đến hình ảnh sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng đi kèm&nbsp;<i class=\"cate-yt\"></i>one remote&nbsp;thông minh.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dynamic Crystal Colour cho màu sắc sinh động, rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giả lập âm thanh vòm Dolby Digital Plus sôi động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;hiển thị rõ nét sắc đen sâu thẳm, sắc trắng tinh khiết.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:40', NULL, NULL, NULL),
(74, 'Smart Tivi Samsung 4K 65 inch UA65TU7000', 16300000, 10, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Thiết kế tràn viền 3 cạnh tinh giản, kích thước tivi 75 inch, độ phân giải&nbsp;<i class=\"cate-img\"></i>Ultra HD 4K&nbsp;sắc nét.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hiển thị các sắc độ màu tinh khiết và rõ ràng hơn qua bộ xử lý&nbsp;<i class=\"cate-img\"></i>Crystal Processor 4K.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Cải thiện độ sáng, hiển thị chi tiết hình ảnh trong khung hình tối nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Tận hưởng hình ảnh đầy màu sắc hơn nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh sống động độ tương phản đạt mức tối đa nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Contrast Enhancer</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Màn hình chơi game mượt mà, hạn chế hiện tượng mờ nhòe hay rung lắc nhờ công nghệ&nbsp;<i class=\"cate-img\"></i>Real Game Enhancer.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Giao diện phẳng, dễ dùng nhờ hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen Os.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:42', NULL, NULL, NULL),
(75, 'Smart Tivi Samsung 4K 70 inch UA70TU7000', 22800000, 45, '<ul>\n <li>Thiết kế màn hình lớn 70 inch với màu đen chủ đạo sang trọng.</li>\n <li>Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;rõ nét gấp 4 lần Full HD.</li>\n <li>Nâng cao độ tương phản hình ảnh với công nghệ&nbsp;<i class=\"cate-img\"></i>HDR10+.</li>\n <li>Tăng cường độ chi tiết cho hình ảnh nhờ&nbsp;công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming.</li>\n <li>Công nghệ Dolby Digital Plus&nbsp;cho trải nghiệm âm thanh vòm bùng nổ, sống động.</li>\n <li>Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;hiện đại, có kho ứng dụng giải trí hấp dẫn..</li>\n <li>Hỗ trợ điều khiển tivi bằng điện thoại với ứng dụng SmartThings.</li>\n <li><i class=\"cate-yt\"></i>Chiếu màn hình điện thoại lên tivi&nbsp;qua tính năng Screen Mirroring, Airplay 2.</li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:44', NULL, NULL, NULL),
(76, 'Smart Tivi Samsung 4K 75 inch UA75RU7100', 30000000, 35, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;nâng cao độ tương phản, hình ảnh hiển thị rõ nét hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hình ảnh siêu nét với độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;có độ sắc nét gấp 4 lần Full HD.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh tràn ngập khắp không gian sống với&nbsp;công nghệ Dolby Digital Plus hiện đại.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;với dải màu rộng cho hình ảnh thêm phần ấn tượng, rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Với công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;hình ảnh chân thật, sinh động đến từng chi tiết nhỏ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;tiện dụng với nhiều ứng dụng hữu ích.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:47', NULL, NULL, NULL),
(77, 'Smart Tivi Samsung 4K 65 inch UA65NU7090', 17500000, 30, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;đi kèm công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;mang đến hình ảnh sắc nét màu sắc trung thực.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;mang đến dải màu rộng cho ra màu sắc sống động, mạnh mẽ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh sắc nét, màu sắc hiển thị chân thật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Âm thanh vòm mạnh mẽ với công nghệ Dolby Digital Plus.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng, hỗ trợ nhiều ứng dụng quen thuộc phù hợp với nhiều thành viên trong gia đình.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:49', NULL, NULL, NULL),
(78, 'Smart Tivi Samsung 4K 65 inch UA65RU7100', 14400000, 25, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-img\"></i>4K&nbsp;đi kèm công nghệ&nbsp;<i class=\"cate-img\"></i>HDR&nbsp;mang đến hình ảnh sắc nét màu sắc trung thực.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tối ưu cho hình ảnh sắc nét, màu sắc hiển thị chân thật hơn.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>PurColor&nbsp;với dải màu rộng cho ra màu sắc rực rỡ.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus cho âm thanh đa chiều, liền mạch.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;đơn giản kho ứng dụng đa dạng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:50', NULL, NULL, NULL),
(79, 'Smart Tivi Samsung 4K 65 inch UA65RU8000', 24100000, 45, '<ul>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Độ phân giải&nbsp;<i class=\"cate-yt\"></i>4K&nbsp;cực kì sắc nét cùng công nghệ&nbsp;<i class=\"cate-img\"></i>Q HDR&nbsp;Elite&nbsp;tân tiến tối ưu hóa hình ảnh, cho nội dung HDR chân thực.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dynamic Crystal Color với dải màu sắc rực rỡ, cho hình ảnh thật sắc nét như cuộc sống.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ&nbsp;<i class=\"cate-img\"></i>UHD Dimming&nbsp;tăng cường độ tương phản, cho hình ảnh có độ sâu ấn tượng.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Công nghệ Dolby Digital Plus cùng loa Bass tích hợp cho trải nghiệm âm thanh vòm bùng nổ, sống động.</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hệ điều hành&nbsp;<i class=\"cate-yt\"></i>Tizen&nbsp;dễ sử dụng đi kèm&nbsp;<i class=\"cate-yt\"></i>one remote&nbsp;thông minh, điều khiển được nhiều thiết bị khác ngoài tivi như: dàn âm thanh, đầu đĩa…</span></li>\n <li><span style=\"font-family: tahoma, arial, helvetica, sans-serif;\">Hỗ trợ&nbsp;<i class=\"cate-yt\"></i>chiếu màn hình điện thoại lên tivi&nbsp;và điều khiển tivi bằng điện thoại qua ứng dụng&nbsp;SmartThings.</span></li>\n</ul>', 1, 1, 1, '2021-01-05 16:23:52', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productgallery`
--

CREATE TABLE `productgallery` (
  `id` bigint(20) NOT NULL,
  `imagelink` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `productid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productgallery`
--

INSERT INTO `productgallery` (`id`, `imagelink`, `productid`) VALUES
(1, '/images/products/tv/tivi-samsung-qa65q65r-1.jpg', 5),
(2, '/images/products/tv/tivi-samsung-qa65q65r-2.jpg', 5),
(3, '/images/products/tv/tivi-samsung-qa65q65r-3.jpg', 5),
(4, '/images/products/tv/tivi-samsung-qa65q65r-4.jpg', 5),
(5, '/images/products/tv/tivi-samsung-qa65q65r-5.jpg', 5),
(6, '/images/products/tv/tivi-samsung-qa65q65r-6.jpg', 5),
(7, '/images/products/tv/tivi-qled-samsung-qa65q8cn-6.jpg', 6),
(8, '/images/products/tv/tivi-qled-samsung-qa65q8cn-1.jpg', 6),
(9, '/images/products/tv/tivi-qled-samsung-qa65q8cn-2.jpg', 6),
(10, '/images/products/tv/tivi-qled-samsung-qa65q8cn-3.jpg', 6),
(11, '/images/products/tv/tivi-qled-samsung-qa65q8cn-4.jpg', 6),
(12, '/images/products/tv/tivi-qled-samsung-qa65q8cn-5.jpg', 6),
(13, '/images/products/tv/tivi-samsung-qa49q80t-1.jpg', 7),
(14, '/images/products/tv/tivi-samsung-qa49q80t-2.jpg', 7),
(15, '/images/products/tv/tivi-samsung-qa49q80t-3.jpg', 7),
(16, '/images/products/tv/tivi-samsung-qa49q80t-4.jpg', 7),
(17, '/images/products/tv/tivi-samsung-qa49q80t-5.jpg', 7),
(18, '/images/products/tv/tivi-samsung-qa49q80t-6.jpg', 7),
(19, '/images/products/tv/KFnyQ7.png', 8),
(20, '/images/products/tv/tivi-samsung-qled-50q65t-1.jpg', 8),
(21, '/images/products/tv/tivi-samsung-qled-50q65t-2-1.jpg', 8),
(22, '/images/products/tv/tivi-samsung-qled-50q65t-3.jpg', 8),
(23, '/images/products/tv/tivi-samsung-qled-50q65t-4.jpg', 8),
(24, '/images/products/tv/tivi-samsung-qled-50q65t-5.jpg', 8),
(25, '/images/products/tv/tivi-samsung-qa65q6fn-1.jpg', 9),
(26, '/images/products/tv/tivi-samsung-qa65q6fn-2.jpg', 9),
(27, '/images/products/tv/tivi-samsung-qa65q6fn-3.jpg', 9),
(28, '/images/products/tv/tivi-samsung-qa65q6fn-4.jpg', 9),
(29, '/images/products/tv/tivi-samsung-qa65q6fn-5.jpg', 9),
(30, '/images/products/tv/tivi-samsung-qa65q6fn-6.jpg', 9),
(31, '/images/products/tv/tivi-samsung-qa65q80r-6.jpg', 10),
(32, '/images/products/tv/tivi-samsung-qa65q80r-7.jpg', 10),
(33, '/images/products/tv/tivi-samsung-qa65q80r-2.jpg', 10),
(34, '/images/products/tv/tivi-samsung-qa65q80r-8.jpg', 10),
(35, '/images/products/tv/tivi-samsung-qa65q80r-9.jpg', 10),
(36, '/images/products/tv/tivi-samsung-qa65q80r-3.jpg', 10),
(37, '/images/products/tv/tivi-samsung-qa65q80t-1.jpg', 11),
(38, '/images/products/tv/tivi-samsung-qa65q80t-2.jpg', 11),
(39, '/images/products/tv/tivi-samsung-qa65q80t-3.jpg', 11),
(40, '/images/products/tv/tivi-samsung-qa65q80t-4.jpg', 11),
(41, '/images/products/tv/tivi-samsung-qa65q80t-5.jpg', 11),
(42, '/images/products/tv/tivi-samsung-qa65q80t-6.jpg', 11),
(43, '/images/products/tv/tivi-samsung-qa55q75r-5.jpg', 12),
(44, '/images/products/tv/tivi-samsung-qa55q75r-1.jpg', 12),
(45, '/images/products/tv/tivi-samsung-qa55q75r-6.jpg', 12),
(46, '/images/products/tv/tivi-samsung-qa55q75r-7.jpg', 12),
(47, '/images/products/tv/tivi-samsung-qa55q75r-8.jpg', 12),
(48, '/images/products/tv/tivi-samsung-qa55q75r-2.jpg', 12),
(49, '/images/products/tv/tivi-qled-samsung-qa82q65r-7.jpg', 13),
(50, '/images/products/tv/tivi-qled-samsung-qa82q65r-8.jpg', 13),
(51, '/images/products/tv/tivi-qled-samsung-qa82q65r-9.jpg', 13),
(52, '/images/products/tv/tivi-qled-samsung-qa82q65r-1.jpg', 13),
(53, '/images/products/tv/tivi-qled-samsung-qa82q65r-10.jpg', 13),
(54, '/images/products/tv/tivi-qled-samsung-qa82q65r-2.jpg', 13),
(55, '/images/products/tv/qa65q65t-1.jpg', 14),
(56, '/images/products/tv/qa65q65t-2.jpg', 14),
(57, '/images/products/tv/qa65q65t-3.jpg', 14),
(58, '/images/products/tv/qa65q65t-4.jpg', 14),
(59, '/images/products/tv/qa65q65t-5.jpg', 14),
(60, '/images/products/tv/qa65q65t-6.jpg', 14),
(61, '/images/products/tv/tivi-samsung-qa75q65r-7.jpg', 15),
(62, '/images/products/tv/tivi-samsung-qa75q65r-1.jpg', 15),
(63, '/images/products/tv/tivi-samsung-qa75q65r-2.jpg', 15),
(64, '/images/products/tv/tivi-samsung-qa75q65r-3.jpg', 15),
(65, '/images/products/tv/tivi-samsung-qa75q65r-4.jpg', 15),
(66, '/images/products/tv/tivi-samsung-qa75q65r-5.jpg', 15),
(67, '/images/products/tv/tivi-samsung-qa55q70t-1.jpg', 16),
(68, '/images/products/tv/tivi-samsung-qa55q70t-2.jpg', 16),
(69, '/images/products/tv/tivi-samsung-qa55q70t-3.jpg', 16),
(70, '/images/products/tv/tivi-samsung-qa55q70t-4.jpg', 16),
(71, '/images/products/tv/tivi-samsung-qa55q70t-5.jpg', 16),
(72, '/images/products/tv/tivi-samsung-qa55q70t-6.jpg', 16),
(73, '/images/products/tv/tivi-samsung-qa49q75r-9.jpg', 17),
(74, '/images/products/tv/tivi-samsung-qa49q75r-1.jpg', 17),
(75, '/images/products/tv/tivi-samsung-qa49q75r-2.jpg', 17),
(76, '/images/products/tv/tivi-samsung-qa49q75r-3.jpg', 17),
(77, '/images/products/tv/tivi-samsung-qa49q75r-4.jpg', 17),
(78, '/images/products/tv/tivi-samsung-qa49q75r-5.jpg', 17),
(79, '/images/products/tv/tivi-samsung-qa85q70t-1.jpg', 18),
(80, '/images/products/tv/tivi-samsung-qa85q70t-2.jpg', 18),
(81, '/images/products/tv/tivi-samsung-qa85q70t-3.jpg', 18),
(82, '/images/products/tv/tivi-samsung-qa85q70t-4.jpg', 18),
(83, '/images/products/tv/tivi-samsung-qa85q70t-5.jpg', 18),
(84, '/images/products/tv/tivi-samsung-qa85q70t-6.jpg', 18),
(85, '/images/products/tv/tivi-samsung-qa55q80r-4.jpg', 19),
(86, '/images/products/tv/tivi-samsung-qa55q80r-1.jpg', 19),
(87, '/images/products/tv/tivi-samsung-qa55q80r-2.jpg', 19),
(88, '/images/products/tv/tivi-samsung-qa55q80r-3.jpg', 19),
(89, '/images/products/tv/tivi-samsung-qa55q80r-5.jpg', 19),
(90, '/images/products/tv/tivi-samsung-qa55q80r-6.jpg', 19),
(91, '/images/products/tv/tivi-samsung-qa75q80t-1.jpg', 20),
(92, '/images/products/tv/tivi-samsung-qa75q80t-2.jpg', 20),
(93, '/images/products/tv/tivi-samsung-qa75q80t-3.jpg', 20),
(94, '/images/products/tv/tivi-samsung-qa75q80t-4.jpg', 20),
(95, '/images/products/tv/tivi-samsung-qa75q80t-5.jpg', 20),
(96, '/images/products/tv/tivi-samsung-qa75q80t-6.jpg', 20),
(97, '/images/products/tv/tivi-samsung-qa82q90r-2.jpg', 21),
(98, '/images/products/tv/tivi-samsung-qa82q90r-1.jpg', 21),
(99, '/images/products/tv/tivi-samsung-qa82q90r-3.jpg', 21),
(100, '/images/products/tv/tivi-samsung-qa82q90r-4.jpg', 21),
(101, '/images/products/tv/tivi-samsung-qa82q90r-5.jpg', 21),
(102, '/images/products/tv/tivi-samsung-qa82q90r-6.jpg', 21),
(103, '/images/products/tv/tivi-samsung-qa65q75r-4.jpg', 22),
(104, '/images/products/tv/tivi-samsung-qa65q75r-1.jpg', 22),
(105, '/images/products/tv/tivi-samsung-qa65q75r-2.jpg', 22),
(106, '/images/products/tv/tivi-samsung-qa65q75r-3.jpg', 22),
(107, '/images/products/tv/tivi-samsung-qa65q75r-5.jpg', 22),
(108, '/images/products/tv/tivi-samsung-qa65q75r-6.jpg', 22),
(109, '/images/products/tv/samsung-qa82q75r-550x340.jpg', 23),
(110, '/images/products/tv/tivi-samsung-qled-qa65q90r-6.jpg', 24),
(111, '/images/products/tv/tivi-samsung-qled-qa65q90r-1.jpg', 24),
(112, '/images/products/tv/tivi-samsung-qled-qa65q90r-2.jpg', 24),
(113, '/images/products/tv/tivi-samsung-qled-qa65q90r-3.jpg', 24),
(114, '/images/products/tv/tivi-samsung-qled-qa65q90r-4.jpg', 24),
(115, '/images/products/tv/tivi-samsung-qled-qa65q90r-5.jpg', 24),
(116, '/images/products/tv/tivi-samsung-qa65q70t-1.jpg', 25),
(117, '/images/products/tv/tivi-samsung-qa65q70t-2.jpg', 25),
(118, '/images/products/tv/tivi-samsung-qa65q70t-3.jpg', 25),
(119, '/images/products/tv/tivi-samsung-qa65q70t-4.jpg', 25),
(120, '/images/products/tv/tivi-samsung-qa65q70t-5.jpg', 25),
(121, '/images/products/tv/tivi-samsung-qa65q70t-6.jpg', 25),
(122, '/images/products/tv/tivi-samsung-qa55q65r-3.jpg', 26),
(123, '/images/products/tv/tivi-samsung-qa55q65r-1.jpg', 26),
(124, '/images/products/tv/tivi-samsung-qa55q65r-2.jpg', 26),
(125, '/images/products/tv/tivi-samsung-qa55q65r-4.jpg', 26),
(126, '/images/products/tv/tivi-samsung-qa55q65r-5.jpg', 26),
(127, '/images/products/tv/tivi-samsung-qa55q65r-6.jpg', 26),
(128, '/images/products/tv/qa43q65t-1.jpg', 27),
(129, '/images/products/tv/qa43q65t-2.jpg', 27),
(130, '/images/products/tv/qa43q65t-3.jpg', 27),
(131, '/images/products/tv/qa43q65t-4.jpg', 27),
(132, '/images/products/tv/qa43q65t-5.jpg', 27),
(133, '/images/products/tv/qa43q65t-6.jpg', 27),
(134, '/images/products/tv/tivi-qled-samsung-qa65q7fn-5.jpg', 28),
(135, '/images/products/tv/tivi-qled-samsung-qa65q7fn-1.jpg', 28),
(136, '/images/products/tv/tivi-qled-samsung-qa65q7fn-2.jpg', 28),
(137, '/images/products/tv/tivi-qled-samsung-qa65q7fn-3.jpg', 28),
(138, '/images/products/tv/tivi-qled-samsung-qa65q7fn-4.jpg', 28),
(139, '/images/products/tv/tivi-qled-samsung-qa65q7fn-6.jpg', 28),
(140, '/images/products/tv/tivi-samsung-qa55q80t-1.jpg', 29),
(141, '/images/products/tv/tivi-samsung-qa55q80t-2.jpg', 29),
(142, '/images/products/tv/tivi-samsung-qa55q80t-3.jpg', 29),
(143, '/images/products/tv/tivi-samsung-qa55q80t-4.jpg', 29),
(144, '/images/products/tv/tivi-samsung-qa55q80t-5.jpg', 29),
(145, '/images/products/tv/tivi-samsung-qa55q80t-6.jpg', 29),
(146, '/images/products/tv/tivi-samsung-qa49q65r-5.jpg', 30),
(147, '/images/products/tv/tivi-samsung-qa49q65r-6.jpg', 30),
(148, '/images/products/tv/tivi-samsung-qa49q65r-1.jpg', 30),
(149, '/images/products/tv/tivi-samsung-qa49q65r-7.jpg', 30),
(150, '/images/products/tv/tivi-samsung-qa49q65r-8.jpg', 30),
(151, '/images/products/tv/tivi-samsung-qa49q65r-9.jpg', 30),
(152, '/images/products/tv/tivi-samsung-qa43q65r-1.jpg', 31),
(153, '/images/products/tv/tivi-samsung-qa43q65r-2.jpg', 31),
(154, '/images/products/tv/tivi-samsung-qa43q65r-3.jpg', 31),
(155, '/images/products/tv/tivi-samsung-qa43q65r-4.jpg', 31),
(156, '/images/products/tv/tivi-samsung-qa43q65r-5.jpg', 31),
(157, '/images/products/tv/tivi-samsung-qa43q65r-6.jpg', 31),
(158, '/images/products/tv/tivi-samsung-qa75q70t-1.jpg', 32),
(159, '/images/products/tv/tivi-samsung-qa75q70t-2.jpg', 32),
(160, '/images/products/tv/tivi-samsung-qa75q70t-3.jpg', 32),
(161, '/images/products/tv/tivi-samsung-qa75q70t-4.jpg', 32),
(162, '/images/products/tv/tivi-samsung-qa75q70t-5.jpg', 32),
(163, '/images/products/tv/tivi-samsung-qa75q70t-6.jpg', 32),
(164, '/images/products/tv/tivi-samsung-qa75q90r-11.jpg', 33),
(165, '/images/products/tv/tivi-samsung-qa75q90r-12.jpg', 33),
(166, '/images/products/tv/tivi-samsung-qa75q90r-1.jpg', 33),
(167, '/images/products/tv/tivi-samsung-qa75q90r-2.jpg', 33),
(168, '/images/products/tv/tivi-samsung-qa75q90r-3.jpg', 33),
(169, '/images/products/tv/tivi-samsung-qa75q90r-4.jpg', 33),
(170, '/images/products/tv/tivi-samsung-qa75q75r-10.jpg', 34),
(171, '/images/products/tv/tivi-samsung-qa75q75r-1.jpg', 34),
(172, '/images/products/tv/tivi-samsung-qa75q75r-2.jpg', 34),
(173, '/images/products/tv/tivi-samsung-qa75q75r-3.jpg', 34),
(174, '/images/products/tv/tivi-samsung-qa75q75r-4.jpg', 34),
(175, '/images/products/tv/tivi-samsung-qa75q75r-5.jpg', 34),
(176, '/images/products/tv/tivi-samsung-qa85q80t-1.jpg', 35),
(177, '/images/products/tv/tivi-samsung-qa85q80t-2.jpg', 35),
(178, '/images/products/tv/tivi-samsung-qa85q80t-3.jpg', 35),
(179, '/images/products/tv/tivi-samsung-qa85q80t-4.jpg', 35),
(180, '/images/products/tv/tivi-samsung-qa85q80t-5.jpg', 35),
(181, '/images/products/tv/tivi-samsung-qa85q80t-6.jpg', 35),
(182, '/images/products/tv/samsung-ua50tu7000-550x340-1.jpg', 36),
(183, '/images/products/tv/samsung-ua43t6000-1.jpg', 37),
(184, '/images/products/tv/samsung-ua43t6000-2.jpg', 37),
(185, '/images/products/tv/samsung-ua43t6000-3.jpg', 37),
(186, '/images/products/tv/samsung-ua43t6000-4.jpg', 37),
(187, '/images/products/tv/samsung-ua43tu7000-550x340-1.jpg', 38),
(188, '/images/products/tv/samsung-ua55ru7200-2-2-e1559144761642.jpg', 39),
(189, '/images/products/tv/samsung-ua55ru7200-1-2.jpg', 39),
(190, '/images/products/tv/samsung-ua55ru7200-3-2.jpg', 39),
(191, '/images/products/tv/samsung-ua55ru7200-4-2.jpg', 39),
(192, '/images/products/tv/samsung-ua55ru7200-5-2.jpg', 39),
(193, '/images/products/tv/samsung-ua55ru7200-6-2.jpg', 39),
(194, '/images/products/tv/tivi-samsung-ua55ru8000-9.jpg', 40),
(195, '/images/products/tv/tivi-samsung-ua55ru8000-1.jpg', 40),
(196, '/images/products/tv/tivi-samsung-ua55ru8000-2.jpg', 40),
(197, '/images/products/tv/tivi-samsung-ua55ru8000-3.jpg', 40),
(198, '/images/products/tv/tivi-samsung-ua55ru8000-4.jpg', 40),
(199, '/images/products/tv/tivi-samsung-ua55ru8000-5.jpg', 40),
(200, '/images/products/tv/tivi-samsung-ua55tu8100.jpg', 41),
(201, '/images/products/tv/tivi-samsung-qa65q900r-5.jpg', 42),
(202, '/images/products/tv/tivi-samsung-qa65q900r-6.jpg', 42),
(203, '/images/products/tv/tivi-samsung-qa65q900r-7.jpg', 42),
(204, '/images/products/tv/tivi-samsung-qa65q900r-8.jpg', 42),
(205, '/images/products/tv/tivi-samsung-qa65q900r-9.jpg', 42),
(206, '/images/products/tv/tivi-samsung-qa65q900r-10.jpg', 42),
(207, '/images/products/tv/tivi-samsung-ua50ru7200-2.jpg', 43),
(208, '/images/products/tv/tivi-samsung-ua50ru7200-1.jpg', 43),
(209, '/images/products/tv/tivi-samsung-ua50ru7200-3.jpg', 43),
(210, '/images/products/tv/tivi-samsung-ua50ru7200-4.jpg', 43),
(211, '/images/products/tv/tivi-samsung-ua50ru7200-5.jpg', 43),
(212, '/images/products/tv/tivi-samsung-ua50ru7200-6.jpg', 43),
(213, '/images/products/tv/samsung-qa98q900r-2.jpg', 44),
(214, '/images/products/tv/samsung-qa98q900r-4.jpg', 44),
(215, '/images/products/tv/samsung-qa98q900r-3.jpg', 44),
(216, '/images/products/tv/samsung-qa98q900r-6.jpg', 44),
(217, '/images/products/tv/samsung-qa98q900r-1.jpg', 44),
(218, '/images/products/tv/samsung-qa98q900r-5.jpg', 44),
(219, '/images/products/tv/tivi-samsung-ua55tu7000.jpg', 45),
(220, '/images/products/tv/tivi-samsung-ua32n4300-2.jpg', 46),
(221, '/images/products/tv/tivi-samsung-ua32n4300-3.jpg', 46),
(222, '/images/products/tv/tivi-samsung-ua32n4300-4.jpg', 46),
(223, '/images/products/tv/tivi-samsung-ua32n4300-5.jpg', 46),
(224, '/images/products/tv/tivi-samsung-ua32n4300-6.jpg', 46),
(225, '/images/products/tv/tivi-samsung-ua32n4300-7.jpg', 46),
(226, '/images/products/tv/tivi-samsung-ua43t6500-1.jpg', 47),
(227, '/images/products/tv/tivi-samsung-ua43t6500-2.jpg', 47),
(228, '/images/products/tv/tivi-samsung-ua43t6500-3.jpg', 47),
(229, '/images/products/tv/tivi-samsung-ua43t6500-4.jpg', 47),
(230, '/images/products/tv/tivi-samsung-ua43t6500-5.jpg', 47),
(231, '/images/products/tv/tivi-samsung-ua43t6500-6.jpg', 47),
(232, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-2.jpg', 48),
(233, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-3.jpg', 48),
(234, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-4.jpg', 48),
(235, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-5.jpg', 48),
(236, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-6.jpg', 48),
(237, '/images/products/tv/tivi-samsung-43-inch-ua43n5510-7.jpg', 48),
(238, '/images/products/tv/tivi-samsung-ua43n5500-2.jpg', 49),
(239, '/images/products/tv/tivi-samsung-ua43n5500-2.jpg', 49),
(240, '/images/products/tv/tivi-samsung-ua43n5500-3.jpg', 49),
(241, '/images/products/tv/tivi-samsung-ua43n5500-4.jpg', 49),
(242, '/images/products/tv/tivi-samsung-ua43n5500-5.jpg', 49),
(243, '/images/products/tv/tivi-samsung-ua43n5500-6.jpg', 49),
(244, '/images/products/tv/tivi-samsung-ua49n5500-2.jpg', 50),
(245, '/images/products/tv/tivi-samsung-ua49n5500-3.jpg', 50),
(246, '/images/products/tv/tivi-samsung-ua49n5500-4.jpg', 50),
(247, '/images/products/tv/tivi-samsung-ua49n5500-5.jpg', 50),
(248, '/images/products/tv/tivi-samsung-ua49n5500-6.jpg', 50),
(249, '/images/products/tv/tivi-samsung-ua49n5500-7.jpg', 50),
(250, '/images/products/tv/UA32T4300-1.jpg', 51),
(251, '/images/products/tv/UA32T4300-2.jpg', 51),
(252, '/images/products/tv/UA32T4300-3.jpg', 51),
(253, '/images/products/tv/UA32T4300-4.jpg', 51),
(254, '/images/products/tv/UA32T4300-5.jpg', 51),
(255, '/images/products/tv/UA32T4300-6.jpg', 51),
(256, '/images/products/tv/Tivi-samsung-ua43ru7200-2.jpg', 52),
(257, '/images/products/tv/Tivi-samsung-ua43ru7200-1.jpg', 52),
(258, '/images/products/tv/Tivi-samsung-ua43ru7200-3.jpg', 52),
(259, '/images/products/tv/Tivi-samsung-ua43ru7200-4.jpg', 52),
(260, '/images/products/tv/Tivi-samsung-ua43ru7200-5.jpg', 52),
(261, '/images/products/tv/Tivi-samsung-ua43ru7200-6.jpg', 52),
(262, '/images/products/tv/tivi-samsung-ua55nu7090-2.jpg', 53),
(263, '/images/products/tv/tivi-samsung-ua55nu7090-3.jpg', 53),
(264, '/images/products/tv/tivi-samsung-ua55nu7090-4.jpg', 53),
(265, '/images/products/tv/tivi-samsung-ua55nu7090-5.jpg', 53),
(266, '/images/products/tv/tivi-samsung-ua55nu7090-6.jpg', 53),
(267, '/images/products/tv/tivi-samsung-ua55nu7090-7.jpg', 53),
(268, '/images/products/tv/tivi-samsung-ua50nu7090-5.jpg', 54),
(269, '/images/products/tv/tivi-samsung-ua50nu7090-6.jpg', 54),
(270, '/images/products/tv/tivi-samsung-ua50nu7090-7.jpg', 54),
(271, '/images/products/tv/tivi-samsung-ua50nu7090-8.jpg', 54),
(272, '/images/products/tv/tivi-samsung-ua50nu7090-9.jpg', 54),
(273, '/images/products/tv/tivi-samsung-ua50nu7090-1.jpg', 54),
(274, '/images/products/tv/tivi-samsung-qa75q900r-8.jpg', 55),
(275, '/images/products/tv/tivi-samsung-qa75q900r-1.jpg', 55),
(276, '/images/products/tv/tivi-samsung-qa75q900r-2.jpg', 55),
(277, '/images/products/tv/tivi-samsung-qa75q900r-3.jpg', 55),
(278, '/images/products/tv/tivi-samsung-qa75q900r-4.jpg', 55),
(279, '/images/products/tv/tivi-samsung-qa75q900r-5.jpg', 55),
(280, '/images/products/tv/tivi-samsung-ua49ru8000-5.jpg', 56),
(281, '/images/products/tv/tivi-samsung-ua49ru8000-6.jpg', 56),
(282, '/images/products/tv/tivi-samsung-ua49ru8000-1.jpg', 56),
(283, '/images/products/tv/tivi-samsung-ua49ru8000-7.jpg', 56),
(284, '/images/products/tv/tivi-samsung-ua49ru8000-8.jpg', 56),
(285, '/images/products/tv/tivi-samsung-ua49ru8000-9.jpg', 56),
(286, '/images/products/tv/tivi-samsung-ua50tu8100.jpg', 57),
(287, '/images/products/tv/tivi-samsung-ua40j5250d-6.jpg', 58),
(288, '/images/products/tv/tivi-samsung-ua40j5250d-7.jpg', 58),
(289, '/images/products/tv/tivi-samsung-ua40j5250d-2.jpg', 58),
(290, '/images/products/tv/tivi-samsung-ua40j5250d-8.jpg', 58),
(291, '/images/products/tv/tivi-samsung-ua40j5250d-9.jpg', 58),
(292, '/images/products/tv/tivi-samsung-ua40j5250d-10.jpg', 58),
(293, '/images/products/tv/tivi-samsung-ua43tu8100.jpg', 59),
(294, '/images/products/tv/tivi-samsung-qa82q900r-8.jpg', 60),
(295, '/images/products/tv/tivi-samsung-qa82q900r-1.jpg', 60),
(296, '/images/products/tv/tivi-samsung-qa82q900r-2.jpg', 60),
(297, '/images/products/tv/tivi-samsung-qa82q900r-3.jpg', 60),
(298, '/images/products/tv/tivi-samsung-qa82q900r-4.jpg', 60),
(299, '/images/products/tv/tivi-samsung-qa82q900r-5.jpg', 60),
(300, '/images/products/tv/tivi-samsung-ua50tu8500.jpg', 61),
(301, '/images/products/tv/samsung-qa65q800t-1.jpg', 62),
(302, '/images/products/tv/samsung-qa65q800t-2.jpg', 62),
(303, '/images/products/tv/samsung-qa65q800t-3.jpg', 62),
(304, '/images/products/tv/samsung-qa65q800t-5.jpg', 62),
(305, '/images/products/tv/samsung-qa65q800t-6.jpg', 62),
(306, '/images/products/tv/samsung-qa65q800t-7.jpg', 62),
(307, '/images/products/tv/samsung-ua32t4500-9.jpg', 63),
(308, '/images/products/tv/samsung-ua32t4500-1.jpg', 63),
(309, '/images/products/tv/samsung-ua32t4500-2.jpg', 63),
(310, '/images/products/tv/samsung-ua32t4500-3.jpg', 63),
(311, '/images/products/tv/samsung-ua32t4500-4.jpg', 63),
(312, '/images/products/tv/samsung-ua32t4500-5.jpg', 63),
(313, '/images/products/tv/tivi-samsung-ua43tu8500.jpg', 64),
(314, '/images/products/tv/samsung-ua70ru7200-1-1.jpg', 65),
(315, '/images/products/tv/samsung-ua70ru7200-1-2.jpg', 65),
(316, '/images/products/tv/samsung-ua70ru7200-1-3.jpg', 65),
(317, '/images/products/tv/samsung-ua70ru7200-1-4.jpg', 65),
(318, '/images/products/tv/samsung-ua70ru7200-1-5.jpg', 65),
(319, '/images/products/tv/samsung-ua70ru7200-1-6.jpg', 65),
(320, '/images/products/tv/tivi-samsung-ua75tu8100.jpg', 66),
(321, '/images/products/tv/Tivi-samsung-82TU8100-1.png', 67),
(322, '/images/products/tv/Tivi-samsung-82TU8100-1.jpg', 67),
(323, '/images/products/tv/Tivi-samsung-82TU8100-2.jpg', 67),
(324, '/images/products/tv/Tivi-samsung-82TU8100-2.png', 67),
(325, '/images/products/tv/Tivi-samsung-82TU8100-3.png', 67),
(326, '/images/products/tv/Tivi-samsung-82TU8100-4.png', 67),
(327, '/images/products/tv/samsung-75tu7000-10.jpg', 68),
(328, '/images/products/tv/samsung-75tu7000-2.jpg', 68),
(329, '/images/products/tv/samsung-75tu7000-3.jpg', 68),
(330, '/images/products/tv/samsung-75tu7000-4.jpg', 68),
(331, '/images/products/tv/samsung-75tu7000-5.jpg', 68),
(332, '/images/products/tv/samsung-75tu7000-6.jpg', 68),
(333, '/images/products/tv/tivi-samsung-ua55tu8500.jpg', 69),
(334, '/images/products/tv/samsung-ua58tu7000-1.jpg', 70),
(335, '/images/products/tv/samsung-ua58tu7000-2.jpg', 70),
(336, '/images/products/tv/samsung-ua58tu7000-3.jpg', 70),
(337, '/images/products/tv/samsung-ua58tu7000-4.jpg', 70),
(338, '/images/products/tv/samsung-ua58tu7000-5.jpg', 70),
(339, '/images/products/tv/samsung-ua58tu7000-6.jpg', 70),
(340, '/images/products/tv/tivi-samsung-ua65tu8500.jpg', 71),
(341, '/images/products/tv/tivi-samsung-ua65tu8100.jpg', 72),
(342, '/images/products/tv/tivi-samsung-ua65ru7400-4.jpg', 73),
(343, '/images/products/tv/tivi-samsung-ua65ru7400-5.jpg', 73),
(344, '/images/products/tv/tivi-samsung-ua65ru7400-6.jpg', 73),
(345, '/images/products/tv/tivi-samsung-ua65ru7400-7.jpg', 73),
(346, '/images/products/tv/tivi-samsung-ua65ru7400-8.jpg', 73),
(347, '/images/products/tv/tivi-samsung-ua65ru7400-10.jpg', 73),
(348, '/images/products/tv/tivi-samsung-ua65tu7000.jpg', 74),
(349, '/images/products/tv/tivi-samsung70ru7200-8.jpg', 75),
(350, '/images/products/tv/tivi-samsung70ru7200-1.jpg', 75),
(351, '/images/products/tv/tivi-samsung70ru7200-2.jpg', 75),
(352, '/images/products/tv/tivi-samsung70ru7200-3.jpg', 75),
(353, '/images/products/tv/tivi-samsung70ru7200-4.jpg', 75),
(354, '/images/products/tv/tivi-samsung70ru7200-5.jpg', 75),
(355, '/images/products/tv/tivi-samsung-ua75ru7100-7.jpg', 76),
(356, '/images/products/tv/tivi-samsung-ua75ru7100-8.jpg', 76),
(357, '/images/products/tv/tivi-samsung-ua75ru7100-9.jpg', 76),
(358, '/images/products/tv/tivi-samsung-ua75ru7100-1.jpg', 76),
(359, '/images/products/tv/tivi-samsung-ua75ru7100-10.jpg', 76),
(360, '/images/products/tv/tivi-samsung-ua75ru7100-2.jpg', 76),
(361, '/images/products/tv/tivi-samsung-ua65nu7090-6.jpg', 77),
(362, '/images/products/tv/tivi-samsung-ua65nu7090-7.jpg', 77),
(363, '/images/products/tv/tivi-samsung-ua65nu7090-9.jpg', 77),
(364, '/images/products/tv/tivi-samsung-ua65nu7090-8.jpg', 77),
(365, '/images/products/tv/tivi-samsung-ua65nu7090-1.jpg', 77),
(366, '/images/products/tv/tivi-samsung-ua65nu7090-2.jpg', 77),
(367, '/images/products/tv/tivi-samsung-ua65ru7100-4.jpg', 78),
(368, '/images/products/tv/tivi-samsung-ua65ru7100-1.jpg', 78),
(369, '/images/products/tv/tivi-samsung-ua65ru7100-2.jpg', 78),
(370, '/images/products/tv/tivi-samsung-ua65ru7100-3.jpg', 78),
(371, '/images/products/tv/tivi-samsung-ua65ru7100-5.jpg', 78),
(372, '/images/products/tv/tivi-samsung-ua65ru7100-6.jpg', 78),
(373, '/images/products/tv/tivi-samsung-ua65nu8000-6.jpg', 79),
(374, '/images/products/tv/tivi-samsung-ua65nu8000-7.jpg', 79),
(375, '/images/products/tv/tivi-samsung-ua65nu8000-8.jpg', 79),
(376, '/images/products/tv/tivi-samsung-ua65nu8000-9.jpg', 79),
(377, '/images/products/tv/tivi-samsung-ua65nu8000-1.jpg', 79),
(378, '/images/products/tv/tivi-samsung-ua65nu8000-2.jpg', 79);

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
(1, 'Samsung', 'samsung', 1, '2021-01-05 15:55:40', 'php', NULL, NULL);

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
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT '/images/avatardefault.png',
  `roleid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `keycode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keytime` timestamp NULL DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `email`, `phone`, `avatar`, `roleid`, `status`, `keycode`, `keytime`, `createddate`, `createdby`, `modifieddate`, `modifiedby`) VALUES
(3, 'Huy Phước', 'php', 'e10adc3949ba59abbe56e057f20f883e', 'huyphuoc26@gmail.com', '0919444888', '/images/avatardefault.png', 1, 1, 's', NULL, NULL, NULL, NULL, NULL),
(4, 'Nguyễn Văn A', 'abc', 'e10adc3949ba59abbe56e057f20f883e', 'abc@gmail.com', '09194442321', '/images/avatardefault.png', 2, 1, 's', NULL, NULL, NULL, NULL, NULL),
(40, 'Thanh Tôn', 'thanhton', 'e10adc3949ba59abbe56e057f20f883e', 'tonlogan11@gmail.com', '0919554994', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-27 03:59:03', 'thanhton', NULL, NULL),
(47, 'Minh Nhật', 'nhat', 'e10adc3949ba59abbe56e057f20f883e', 'nhatt4393@gmail.com', '0919553333', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-28 04:00:24', 'nhat', NULL, NULL),
(50, 'Minh Nhật', 'nhattt', 'e10adc3949ba59abbe56e057f20f883e', '18130166@st.hcmuaf.edu.vn', '0919554994', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-28 04:03:33', 'nhattt', NULL, NULL),
(53, 'Phước Huy', 'phpphp', '2fad87572b6cc7793e3713e631a9cee2', 'huyphuoc206@gmail.com', '0912345678', '/images/avatardefault.png', 2, 1, NULL, NULL, '2020-12-28 09:28:43', 'phpphp', '2021-01-03 09:15:16', NULL),
(54, 'Phước Huy', 'asdsdsds', 'e10adc3949ba59abbe56e057f20f883e', 'djsdkjsd@gmail.com', '0912345678', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-28 10:00:32', 'asdsdsds', NULL, NULL),
(55, 'KSKDKSDK', 'dmksndknsdk', '51b43c112ee4995e78c3e49d19fae66c', 'dkskdlaskldk@gmail.com', '0912345678', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-29 02:56:39', 'dmksndknsdk', NULL, NULL),
(56, 'Phước Huy', 'dhsahjkdh', 'e10adc3949ba59abbe56e057f20f883e', 'dsadsad@gmail.com', '0912345678', '/images/avatardefault.png', 2, 1, 's', NULL, '2020-12-30 10:10:17', 'dhsahjkdh', NULL, NULL),
(57, 'Phước Huy', '231232', 'e10adc3949ba59abbe56e057f20f883e', 'djsdkjsdsd@gmail.com', '0912345678', '/images/avatardefault.png', 2, 1, NULL, NULL, '2021-01-03 04:02:28', '231232', NULL, NULL);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

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
