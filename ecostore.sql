-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2020 at 12:16 PM
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
(1, 'Sự chấp thuận\r\nBằng việc trao cho chúng tôi thông tin cá nhân của bạn, sử dụng sàn giao dịch thương mại điện tử tiki.vn bạn đồng ý thông tin cá nhân của bạn sẽ được thu thập, sử dụng như được nêu trong Chính Sách này. Nếu bạn không đồng ý với Chính Sách này, bạn dừng cung cấp cho chúng tôi bất cứ thông tin cá nhân nào và/hoặc sử dụng các quyền như được nêu tại Mục 7 dưới đây.\r\n\r\nChúng tôi bảo lưu quyền sửa đổi, bổ sung nhằm hoàn thiện đối với Chính Sách này vào bất kỳ thời điểm nào. Chúng tôi khuyến khích bạn thường xuyên xem lại Chính Sách Bảo Mật Thông Tin Cá Nhân này để có được những cập nhật mới nhất đảm bảo bạn biết và thực hiện quyền quản lý thông tin cá nhân của bạn.\r\n\r\nMục đích thu thập\r\nChúng tôi thu thập thông tin cá nhân chỉ cần thiết nhằm phục vụ cho các mục đích:\r\n\r\nĐơn hàng: để xử lý các vấn đề liên quan đến đơn đặt hàng của bạn;\r\nDuy trì tài khoản: để tạo và duy trình tài khoản của bạn với chúng tôi, bao gồm cả các chương trình khách hàng thân thiết hoặc các chương trình thưởng đi kèm với tài khoản của bạn;\r\nDịch Vụ Người Tiêu Dùng, Dịch Vụ Chăm Sóc Khách Hàng: bao gồm các phản hồi cho các yêu cầu, khiếu nại và phản hồi của bạn;\r\nCá Nhân Hóa: Chúng tôi có thể tổ hợp dữ liệu được thu thập để có một cái nhìn hoàn chỉnh hơn về một người tiêu dùng và từ đó cho phép chúng tôi phục vụ tốt hơn với sự cá nhân hóa mạnh hơn ở các khía cạnh, bao gồm nhưng không giới hạn: (i) để cải thiện và cá nhân hóa trải nghiệm của bạn trên sàn giao dịch thương mại điện tử tiki.vn (ii) để cải thiện các tiện ích, dịch vụ, điều chỉnh chúng phù hợp với các nhu cầu được cá thể hóa và đi đến những ý tưởng dịch vụ mới (iii) để phục vụ bạn với những giới thiệu, quảng cáo được điều chỉnh phù hợp với sự quan tâm của bạn.\r\nAn Ninh: cho các mục đích ngăn ngừa các hoạt động phá hủy tài khoản người dùng của khách hàng hoặc các hoạt động giả mạo khách hàng.\r\nTheo yêu cầu của pháp luật: tùy quy định của pháp luật vào từng thời điểm, chúng tôi có thể thu thập, lưu trữ và cung cấp theo yêu cầu của cơ quan nhà nước có thẩm quyền.\r\nPhạm vi thu thập\r\nChúng tôi thu thập thông tin cá nhân của bạn khi:.\r\n\r\nBạn trực tiếp cung cấp cho chúng tôi. Đó là các thông tin cá nhân bạn cung cấp cho chúng tôi được thực hiện chủ yếu trên sàn giao dịch thương mại điện tử tiki.vn bao gồm: họ tên, địa chỉ thư điện tử (email), số điện thoại, địa chỉ, thông tin đăng nhập tài khoản bao gồm thông tin bất kỳ cần thiết để thiết lập tài khoản ví dụ như tên đăng nhập, mật khẩu đăng nhập, ID/địa chỉ đăng nhập và câu hỏi/trả lời an ninh.\r\nBạn tương tác với chúng tôi. Chúng tôi sử dụng cookies và công nghệ theo dấu khác để thu thập một số thông tin khi bạn tương tác trên sàn giao dịch Eco Store\r\nTừ những nguồn hợp pháp khác. Chúng tôi có thể sẽ thu thập thông tin cá nhân từ các nguồn hợp pháp khác.\r\nThời gian lưu trữ\r\nThông tin cá nhân của khách hàng sẽ được lưu trữ cho đến khi khách hàng có yêu cầu hủy bỏ hoặc khách hàng tự đăng nhập và thực hiện hủy bỏ. Trong mọi trường hợp thông tin cá nhân của khách hàng sẽ được bảo mật trên máy chủ của Eco Store\r\n\r\nKhông chia sẻ thông tin cá nhân khách hàng\r\nChúng tôi sẽ không cung cấp thông tin cá nhân của bạn cho bất kỳ bên thứ ba nào, trừ một số hoạt động cần thiết dưới đây:\r\n\r\nCác đối tác là bên cung cấp dịch vụ cho chúng tôi liên quan đến thực hiện đơn hàng và chỉ giới hạn trong phạm vi thông tin cần thiết cũng như áp dụng các quy định đảm bảo an ninh, bảo mật các thông tin cá nhân.\r\nChúng tôi có thể sử dụng dịch vụ từ một nhà cung cấp dịch vụ là bên thứ ba để thực hiện một số hoạt động liên quan đến sàn giao dịch thương mại điện tử tiki.vn và khi đó bên thứ ba này có thể truy cập hoặc xử lý các thông tin cá nhân trong quá trình cung cấp các dịch vụ đó. Chúng tôi yêu cầu các bên thứ ba này tuân thủ mọi luật lệ về bảo vệ thông tin cá nhân liên quan và các yêu cầu về an ninh liên quan đến thông tin cá nhân.\r\nCác chương trình có tính liên kết, đồng thực hiện, thuê ngoài cho các mục địch được nêu tại Mục 2 và luôn áp dụng các yêu cầu bảo mật thông tin cá nhân.\r\nYêu cầu pháp lý: Chúng tôi có thể tiết lộ các thông tin cá nhân nếu điều đó do luật pháp yêu cầu và việc tiết lộ như vậy là cần thiết một cách hợp lý để tuân thủ các quy trình pháp lý.\r\nChuyển giao kinh doanh (nếu có): trong trường hợp sáp nhập, hợp nhất toàn bộ hoặc một phần với công ty khác, người mua sẽ có quyền truy cập thông tin được chúng tôi lưu trữ, duy trì trong đó bao gồm cả thông tin cá nhân.\r\nAn toàn dữ liệu\r\nChúng tôi luôn nỗ lực để giữ an toàn thông tin cá nhân của khách hàng, chúng tôi đã và đang thực hiện nhiều biện pháp an toàn, bao gồm:\r\n\r\nBảo đảm an toàn trong môi trường vận hành: chúng tôi lưu trữ không tin cá nhân khách hàng trong môi trường vận hành an toàn và chỉ có nhân viên, đại diện và nhà cung cấp dịch vụ có thể truy cập trên cơ sở cần phải biết. Chúng tôi tuân theo các tiêu chuẩn ngành, pháp luật trong việc bảo mật thông tin cá nhân khách hàng.\r\nTrong trường hợp máy chủ lưu trữ thông tin bị hacker tấn công dẫn đến mất mát dữ liệu cá nhân khách hàng, chúng tôi sẽ có trách nhiệm thông báo vụ việc cho cơ quan chức năng để điều tra xử lý kịp thời và thông báo cho khách hàng được biết.\r\nCác thông tin thanh toán: được bảo mật theo tiêu chuẩn ngành.\r\nQuyền của khách hàng đối với thông tin cá nhân\r\nKhách hàng có quyền cung cấp thông tin cá nhân cho chúng tôi và có thể thay đổi quyết định đó vào bất cứ lúc nào.\r\n\r\nKhách hàng có quyền tự kiểm tra, cập nhật, điều chỉnh thông tin cá nhân của mình bằng cách đăng nhập vào tài khoản và chỉnh sửa thông tin cá nhân hoặc yêu cầu chúng tôi thực hiện việc này.', 1, NULL, NULL, NULL, NULL);

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
(1, 'Test', 'tếtasd', 1, NULL, NULL, NULL, NULL);

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
  `avatar` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roleid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keytime` int(11) NOT NULL DEFAULT 24,
  `createddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productgallery`
--
ALTER TABLE `productgallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
