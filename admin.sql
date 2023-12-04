-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2023 lúc 02:09 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `admin`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(3, 1, '9281', 0),
(4, 1, '4458', 0),
(5, 6, '1632', 1),
(6, 8, '8138', 0),
(7, 1, '4175', 0),
(8, 9, '4343', 0),
(9, 9, '4411', 0),
(10, 9, '4455', 0),
(11, 9, '8499', 0),
(12, 10, '9194', 0),
(13, 11, '6519', 0),
(14, 12, '6516', 1),
(15, 17, '8497', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(7, '9281', 9, 3),
(8, '9281', 8, 1),
(9, '4458', 9, 3),
(10, '4458', 8, 1),
(11, '1632', 12, 5),
(12, '8138', 11, 5),
(13, '4175', 6, 2),
(14, '4175', 8, 2),
(15, '4343', 6, 2),
(16, '4411', 12, 3),
(17, '4455', 12, 2),
(18, '8499', 12, 2),
(19, '9194', 12, 2),
(20, '9194', 6, 1),
(21, '6519', 13, 1),
(22, '6516', 23, 1),
(23, '8497', 29, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(11, 'quân', 'quannhe@gmail.com', 'adasdsadsadsa', '81dc9bdb52d04dc20036dbd8313ed055', '123456789'),
(12, 'vanh', 'haha46301@gmail.com', 'íid76wybgdy', '81dc9bdb52d04dc20036dbd8313ed055', '0765288288'),
(13, 'vanh', 'haha46301@gmail.com', 'adasdsadsadsa', '81dc9bdb52d04dc20036dbd8313ed055', '0765288288'),
(14, 'vanh', 'haha64301@gmail.com', 'adasdsadsadsa', '25d55ad283aa400af464c76d713c07ad', '0765288288'),
(15, 'vánhdfghy', 'haha46301@gmail.com', 'dfghj', '8f17c020ef6cae3e0689ba01be1ba38a', 'đ̣́sd'),
(16, 'vánhdfghy', '', '', '8f17c020ef6cae3e0689ba01be1ba38a', ''),
(17, 'admin34', 'buiithithuyduong@gmail.com', 'qrr', 'ed2b1f468c5f915f3f1cf75d7068baae', 'ửetyrtu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(6, 'SON MÔI', 0),
(9, 'DƯỠNG DA', 0),
(10, 'CHĂM SÓC MẮT', 0),
(11, 'CHĂM SÓC BODY', 0),
(13, 'SP HỖ TRỢ', 0),
(14, 'CHĂM SÓC MÔI', 2),
(15, 'TRANG ĐIỂM MẮT', 4),
(16, 'PHẤN TRANG ĐIỂM', 0),
(17, 'KEM TRANG ĐIỂM', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>KEYSOP</p>\r\n\r\n<p>Địa chỉ: Ng&atilde; Ba/ Mường Cơi/Ph&ugrave; Y&ecirc;n/ Sơn La</p>\r\n\r\n<p>Li&ecirc;n hệ: 0865299299</p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(13, 'Son Kem Lì Gilaa Long Wear Lip Cream 5g .#02 Lovely Day Đỏ Nâu Trầm', '1', '250000', 2424, '1636043009_zoom-front-210158.webp', '<p><strong>Sản Phẩm Được B&aacute;n Ra Trong Tuần</strong></p>\r\n', '', 1, 6),
(14, 'Kem Chống Nắng Skin Aqua Tone Up Essence Rohto Nhật Bản', '2', '389000', 557, '1636073746_k.jpg', '<p>Hướng dẫn sử dụng</p>\r\n\r\n<ul>\r\n	<li>Thoa kem trước khi tiếp x&uacute;c với &aacute;nh nắng 20 phút.</li>\r\n	<li>Lấy một lượng sản phẩm vừa đủ v&agrave; chấm 5 điểm tr&ecirc;n mặt (tr&aacute;n, mũi, cằm v&agrave; hai b&ecirc;n m&aacute;) sau đ&oacute; thoa sản phẩm theo chiều từ trong ra ngo&agrave;i v&agrave; tr&ecirc;n xuống dưới.</li>\r\n</ul>\r\n', '<p><em><strong>Kem Chống Nắng Skin Aqua Tone Up Essence Rohto Nhật Bản&nbsp;</strong>l&agrave; sản phẩm kem chống nắng với mức gi&aacute; b&igrave;nh d&acirc;n đến từ Nhật Bản, kể từ ng&agrave;y ra mắt sản phẩm lu&ocirc;n đứng top những sản phẩm được y&ecirc;u th&iacute;ch nhất tr&ecirc;n trang Cosme do người Nhật b&igrave;nh chọn. Kh&ocirc;ng những vậy, đ&acirc;y cũng l&agrave; d&ograve;ng kem chống nắng được c&aacute;c bạn trẻ ở Việt Nam &quot; m&ecirc; mẩn&quot; bởi chất kem s&aacute;nh mịn, l&ecirc;n tone si&ecirc;u si&ecirc;u đẹp c&ugrave;ng khả năng chống nắng tuyệt vời.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 9),
(15, 'Bảng Phấn Mắt 9 Màu Peach C Soft Mood Eyeshadow Palette', '4566', '370000', 0, '1636641327_8.jpg', '<p>Bảng Phấn Mắt 9 M&agrave;u Peach C Soft Mood Eyeshadow Palette</p>\r\n\r\n<p>- Thương hiệu: Peach C - Gồm 9 tone m&agrave;u :</p>\r\n\r\n<p>1. de9f7d : N&acirc;u nude</p>\r\n\r\n<p>2. cb795e : N&acirc;u đỏ</p>\r\n\r\n<p>3. b06e55 : N&acirc;u đậm</p>\r\n\r\n<p>4. d88878 : Hồng nude</p>\r\n\r\n<p>5. f07e62 : Cam đ&agrave;o</p>\r\n\r\n<p>6. c86c60 : Hồng nude đậm</p>\r\n\r\n<p>7. a65130 : N&acirc;u đỏ đậm</p>\r\n\r\n<p>8. b95446 : Hồng n&acirc;u</p>\r\n\r\n<p>9. 743d2d : Đỏ n&acirc;u</p>\r\n', '', 1, 15),
(16, 'Mặt nạ mắt collagen', '144', '1000000', 1288, '1636641539_mat.jpg', '<p>Mặt nạ mắt collagen gi&uacute;p t&aacute;i tạo tế b&agrave;o, tăng độ đ&agrave;n hồi săn chắc cho v&ugrave;ng da quanh mắt v&agrave; trị th&acirc;m quầng, l&agrave;m s&aacute;ng đều m&agrave;u da.</p>\r\n', '<p>C&aacute;ch sử dụng Mặt nạ mắt collagen:</p>\r\n\r\n<p>&ndash; Rửa mặt sạch, lau kh&ocirc; mặt trước khi đắp mặt nạ. Tr&aacute;nh đắp da mắt khi vẫn c&ograve;n kem phấn trang điểm.</p>\r\n\r\n<p>&ndash; D&ugrave;ng ng&oacute;n ấn nhẹ một số điểm quanh mắt trước khi d&ugrave;ng mặt nạ.</p>\r\n\r\n<p>&ndash; Để mặt nạ đ&uacute;ng thời gian quy định (15 ph&uacute;t), kh&ocirc;ng cần thiết phải để qu&aacute; l&acirc;u.</p>\r\n\r\n<p>&ndash; N&ecirc;n d&ugrave;ng 3 loại mặt nạ: m&agrave;u v&agrave;ng, bạc, đen để chống nhăn, giảm bọng mắt v&agrave; quầng th&acirc;m tốt nhất.</p>\r\n\r\n<p>&ndash; Sau khi đắp mặt nạ, n&ecirc;n b&ocirc;i kem dưỡng d&agrave;nh cho da mắt.</p>\r\n\r\n<p>&ndash; N&ecirc;n d&ugrave;ng măt nạ dưỡng da 2~3 lần/tuần để cho bạn kết quả tốt nhất.</p>\r\n\r\n<p>&ndash; Hiệu quả ngay lần sử dụng đầu ti&ecirc;n, th&iacute;ch hợp cho mọi loại da.</p>\r\n\r\n<p>&ndash; H&atilde;y bổ sung collagen để mang lại độ s&aacute;ng đẹp v&agrave; độ ẩm vốn c&oacute; của bề mặt</p>\r\n', 1, 10),
(17, 'Phấn Phủ dạng Bột Kiềm Dầu MayCreate', '654', '500000', 654, '1636647981_271.jpg', '<p>Bột mỏng mịn tạo n&ecirc;n lớp nền ho&agrave;n hảo, bền m&agrave;u Che phủ khuyết điểm tốt Kiểm so&aacute;t dầu hiệu quả Kh&ocirc;ng thấm nước Hộp đựng như h&igrave;nh, c&oacute; cả lớp gương trong nắp hộp</p>\r\n\r\n<p>- Phấn phủ trong trang điểm được coi l&agrave; yếu tố quan trọng gi&uacute;p vẻ đẹp sau khi trang điểm được ho&agrave;n thiện.</p>\r\n\r\n<p>-Loại phấn n&agrave;y rất tiện lợi v&agrave; bạn c&oacute; thể dễ d&agrave;ng trang điểm ở nhiều nơi. - Phấn phủ với c&aacute;c hạt phấn si&ecirc;u mềm mịn, b&aacute;m d&iacute;nh tốt che phủ l&agrave;n da cho bạn l&agrave;n da s&aacute;ng mịn tự nhi&ecirc;n.</p>\r\n\r\n<p>- Phấn phủ c&oacute; chứa c&aacute;c bột kho&aacute;ng si&ecirc;u mịn v&agrave; kh&ocirc;ng m&agrave;u cho da bạn c&agrave;ng ho&agrave;n hảo hơn, kh&ocirc;ng lo bị v&oacute;n cục. Phấn bột c&oacute; khả năng kiềm dầu suốt cả ng&agrave;y.</p>\r\n\r\n<p>- Phấn dạng bột c&oacute; trang bị th&ecirc;m một miếng m&uacute;t mỏng, c&oacute; độ thấm h&uacute;t phấn cao v&agrave; gi&uacute;p trang điểm kĩ hơn cho khu&ocirc;n mặt sau khi trang điểm lu&ocirc;n tự nhi&ecirc;n.</p>\r\n\r\n<p>- Sản phẩm kh&ocirc;ng c&oacute; chứa Paraben. Hương thơm dịu nhẹ nu&ocirc;ng chiều mọi l&agrave;n da kể cả da nhạy cảm.</p>\r\n', '<p>C&Aacute;CH SỬ DỤNG:</p>\r\n\r\n<p>Phủ 1 lớp nhẹ sau lớp kem nền foundation , BB hay CC cream.</p>\r\n\r\n<p>MAYCREATE l&agrave; 1 thương hiệu nổi tiếng về mỹ phẩm ở nội địa Trung c&aacute;c sản phẩm của c&ocirc;ng ty maycreate đều chiết xuất ho&agrave;n to&agrave;n tự nhi&ecirc;n an to&agrave;n tuyệt đối với mọi loại da.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n\r\n<p>Thu Gọn Nội Dung</p>\r\n', 1, 16),
(18, 'Tẩy da chết body Nga chiết xuất từ quế, hồi, cà phê', '986', '1000000', 988, '1636648467_ca-phe.jpg', '<h3>C&ocirc;ng dụng:</h3>\r\n\r\n<p>&ndash; C&aacute;c hạt masage nhẹ nh&agrave;ng tẩy da chết ho&agrave;n hảo, loại bỏ c&aacute;c tế b&agrave;o chết, l&agrave;m mới da, t&iacute;ch cực cải thiện sự lưu th&ocirc;ng m&aacute;u, th&uacute;c đẩy v&agrave; cung cấp c&aacute;c dưỡng chất bổ sung cho da, thải độc v&agrave; mang lại l&agrave;n da l&aacute;ng mịn. Đặc biệt loại bỏ mụn cơ thể, c&aacute;c khuyết điểm th&acirc;m, da chảy sệ, thiếu săn chắc.</p>\r\n\r\n<p>&ndash; Gi&uacute;p da trắng s&aacute;ng hơn, quế hồi gi&uacute;p lấy lại độ đ&agrave;n hồi săn chắc cho da.</p>\r\n', '<h3>C&aacute;ch d&ugrave;ng kem tẩy da chết body quế hồi:</h3>\r\n\r\n<p>&ndash; B&ocirc;i kem l&ecirc;n cơ thể ướt, masage khắp cơ thể ướt từ dưới l&ecirc;n. Nhẹ nh&agrave;ng ch&agrave; x&aacute;t khắp cơ thể 15 ph&uacute;t tập trung v&agrave;o c&aacute;c khu vực th&acirc;m sạm v&agrave; chảy sệ.</p>\r\n\r\n<p>&ndash; D&ugrave;ng tuần 2-3 lần,l&agrave;m ướt người rồi xoa kem l&ecirc;n khắp người,massage nhẹ nh&agrave;ng,một l&uacute;c người sẽ n&oacute;ng bừng l&ecirc;n,cảm gi&aacute;c rất dễ chịu,tắm xong nhẹ hết người.</p>\r\n\r\n<p>&ndash; Kể cả người ốm dậy hay l&agrave; phụ nữ hết cữ sinh. M&ugrave;i quế hồi nồng n&agrave;n như trong spa thảo dược cực k&igrave; th&iacute;ch.Sản phẩm tại Nga được vote rất cao.</p>\r\n', 1, 11),
(19, 'Máy rửa mặt Foreo Luna Mini 2  Nguồn : https://xachtaynhat.net/products/foreo-luna-mini-2/', '345', '2500000', 157, '1636648826_er.jpg', '<p>M&aacute;y rửa mặt Foreo Luna Mini 2 được l&agrave;m từ chất liệu silicon v&agrave; sử dụng c&ocirc;ng nghệ s&oacute;ng &acirc;m T-sonic hiện đại của FOREO.<br />\r\n<br />\r\nC&ocirc;ng dụng L&agrave;m sạch s&acirc;u, loại bỏ tế b&agrave;o chết gi&uacute;p da th&ocirc;ng tho&aacute;ng K&iacute;ch th&iacute;ch lưu th&ocirc;ng tuần ho&agrave;n m&aacute;u Tạo độ săn chắc v&agrave; mềm mịn cho da Tăng cường hiệu quả hấp thụ dưỡng chất ở những bước dưỡng da sau đ&oacute;. Cải thiện t&igrave;nh trạng da sần s&ugrave;i<br />\r\n<br />\r\n<a href=\"https://xachtaynhat.net/products/foreo-luna-mini-2/\">/</a></p>\r\n', '', 1, 13),
(20, 'Silcot Bông Trang Điểm (bông tẩy trang) Nhật Bản (Hộp 82 miếng)', '555', '50000', 1456, '1636649218_0f23.jpg', '<p>M&ocirc; Tả Sản Phẩm</p>\r\n\r\n<p>Chất liệu sợi b&ocirc;ng dệt C&ocirc;ng nghệ hiện đại Đ&oacute;ng hộp tiện dụng</p>\r\n', '<p>B&ocirc;ng trang điểm Unicharm Silcot được sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến, được c&aacute;c chuy&ecirc;n gia kiểm so&aacute;t nghi&ecirc;m ngặt về chất lượng th&agrave;nh phẩm đầu v&agrave;o v&agrave; đầu ra. Sản phẩm đảm bảo tuyệt đối an to&agrave;n cho l&agrave;n da người sử dụng, đồng thời rất th&acirc;n thiện với m&ocirc;i trường.</p>\r\n', 1, 13),
(21, 'Son kem lì Bbia Last Velvet Lip Tint Version 5 (5 màu) 5g ', '766', '150000', 71765, '1636649942_3.jpg', '<p>*Xuất xứ: H&Agrave;N QUỐC</p>\r\n\r\n<p>*Năm sản xuất: 2021</p>\r\n\r\n<p>*Hạn sử dụng: Thời hạn 3 năm kể từ ng&agrave;y sản xuất</p>\r\n\r\n<p>*Khối lượng: 5g</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Son kem l&igrave; Bbia Last Velvet Lip Tint Version 5</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Son kem lỳ Bbia Last Velvet Lip Tint l&agrave; d&ograve;ng son lỳ với độ b&aacute;m d&iacute;nh cực cao, h&uacute;t v&agrave;o m&ocirc;i bạn như nam ch&acirc;m v&agrave; l&ecirc;n m&agrave;u r&otilde; r&agrave;ng chỉ sau một lần thoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&acirc;n son bằng nhựa trong gi&uacute;p n&agrave;ng dễ d&agrave;ng lựa chọn m&agrave;u son mỗi khi d&ugrave;ng. Phần nắp &aacute;nh kim m&agrave;u xanh Metalic tinh tế v&agrave; sang trọng.</p>\r\n', '<p>Bảng m&agrave;u son Bbia Last Velvet Lip Tint version 5</p>\r\n\r\n<p>#21 &ndash; Real Note: m&agrave;u hồng nude MLBB</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#22 &ndash; Mellow Note: m&agrave;u cam nude</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#23 &ndash; Romantic Note: m&agrave;u san h&ocirc; &aacute;nh n&acirc;u</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#24 &ndash; Trendy Note: m&agrave;u đỏ hồng đất</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>#25 &ndash; Final Note: m&agrave;u đỏ n&acirc;u đất</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 6),
(22, 'Son Kem Lì 3CE Stylenanda Velvet Lip Tint', '7', '230000', 2367, '1636650192_es.jpg', '<p>D&ugrave; sở hữu chất son kem l&igrave;, nhưng d&ograve;ng son 3CE Velvet Lip Tint lại sở hữu chất son kh&aacute; mỏng nhẹ của son tint, kh&ocirc;ng hề đặc như những d&ograve;ng son kem l&igrave; kh&aacute;c, do đ&oacute; khi d&ugrave;ng kh&ocirc;ng g&acirc;y cảm gi&aacute;c nặng m&ocirc;i khi d&ugrave;ng.</p>\r\n', '', 1, 6),
(23, 'Sữa dưỡng thể dưỡng trắng Hazeline Matcha Lựu đỏ 140ml', '8776', '40000', 9887, '1636650523_sua-duongg.webp', '<p>&nbsp;</p>\r\n\r\n<p>Cho một lượng sản phẩm vừa đủ ra l&ograve;ng b&agrave;n tay, nhẹ nh&agrave;ng thoa sản phẩm theo h&igrave;nh xoắn ốc đều khắp cơ thể. Chăm chỉ sử dụng 2 lần mỗi ng&agrave;y, đặc biệt l&agrave; trước khi đi ngủ hoặc sau khi tắm để c&oacute; kết quả tốt nhất</p>\r\n', '<p><a href=\"https://www.bachhoaxanh.com/sua-duong-the-hazeline\">Dầu dưỡng thể Hazeline</a>&nbsp;ph&ugrave; hợp với mọi loại da.&nbsp;<a href=\"https://www.bachhoaxanh.com/sua-duong-the\">Dầu dưỡng thể</a>&nbsp;gi&uacute;p nu&ocirc;i dưỡng l&agrave;n da trắng, mịn v&agrave; khoẻ từ s&acirc;u b&ecirc;n trong, kh&ocirc;ng g&acirc;y cảm gi&aacute;c bết r&iacute;t.&nbsp;dưỡng da trắng s&aacute;ng, tăng cường độ ẩm gi&uacute;p da mềm mịn</p>\r\n', 1, 11),
(24, 'Son kem màu lì KIMUSE 5ml', '8756', '100000', 1288, '1637158864_4e3.jpg', '<p>Thỏi son kem n&agrave;y l&agrave; một vũ kh&iacute; b&iacute; mật của bạn để c&oacute; một khu&ocirc;n mặt ho&agrave;n mỹ. C&ocirc;ng thức dưỡng ẩm n&agrave;y mang lại l&agrave;n da tỏa s&aacute;ng tuyệt vời m&agrave; kh&ocirc;ng bị nhờn hay d&iacute;nh. Bạn c&oacute; thể sử dụng một m&igrave;nh hay sử dụng kết hợp m&agrave;u son y&ecirc;u th&iacute;ch của bạn để c&oacute; một đ&ocirc;i m&ocirc;i đậm m&agrave;u.</p>\r\n', '<p>Th&ocirc;ng tin chi tiết về sản phẩm: Thương hiệu: KIMUSE Dung t&iacute;ch: 5ml M&agrave;u sắc: 6 M&agrave;u Hạn sử dụng: 3 năm</p>\r\n', 1, 6),
(25, 'Son kem nhung Maffick mịn kháng nước lâu trôi tích hợp gương 6 màu lựa chọn', '986', '52000', 888, '1637158999_b0d1ba4ab.jpg', '<p>Sản phẩm mới 100% v&agrave; chất lượng cao.<br />\r\nKết cấu tinh tế v&agrave; mềm mịn, kết cấu l&igrave; dễ d&agrave;ng tạo một đ&ocirc;i m&ocirc;i đẹp.<br />\r\nM&agrave;u sắc đầy đủ, phong ph&uacute;, độ ho&agrave;n m&agrave;u cao.<br />\r\nC&oacute; khả năng chống thấm nước v&agrave; mồ h&ocirc;i tốt, kh&ocirc;ng d&iacute;nh cốc, kh&ocirc;ng tr&ocirc;i lớp trang điểm dễ d&agrave;ng.<br />\r\nHiệu ứng l&acirc;u tr&ocirc;i.<br />\r\nSản phẩm sử dụng thiết kế dạng gương gi&uacute;p trang điểm mọi l&uacute;c mọi nơi.<br />\r\nNhỏ gọn v&agrave; nhẹ.</p>\r\n', '<p>Người ph&ugrave; hợp: th&ocirc;ng thường<br />\r\nLoại da th&iacute;ch hợp: b&igrave;nh thường<br />\r\nHạn sử dụng: 3 năm<br />\r\nKhối lượng tịnh: 3g<br />\r\nM&agrave;u sắc sản phẩm: như h&igrave;nh<br />\r\nM&ocirc; tả:<br />\r\nKết cấu tinh tế v&agrave; mềm mịn, kết cấu l&igrave; dễ d&agrave;ng tạo một đ&ocirc;i m&ocirc;i đẹp.<br />\r\nM&agrave;u sắc đầy đủ, phong ph&uacute;, độ ho&agrave;n m&agrave;u cao.<br />\r\nC&oacute; khả năng chống thấm nước v&agrave; mồ h&ocirc;i tốt, kh&ocirc;ng d&iacute;nh cốc, kh&ocirc;ng tr&ocirc;i lớp trang điểm dễ d&agrave;ng.<br />\r\nHiệu ứng l&acirc;u tr&ocirc;i.<br />\r\nNhỏ gọn v&agrave; nhẹ, dễ mang theo.<br />\r\nTh&iacute;ch hợp cho tất cả c&aacute;c dịp.</p>\r\n', 1, 6),
(26, 'Sunny Shine #103 - Son môi YURIKA Matte màu đỏ cam', '8865', '348000', 0, '1637159747_ef59_grande.jpg', '<p><strong>Son m&ocirc;i YURIKA Matte&nbsp;(3g) thương hiệu Nhật, sản xuất tại H&agrave;n Quốc</strong></p>\r\n\r\n<p><strong>M&agrave;u sắc:</strong>&nbsp;Sunny Shine - Đỏ cam ph&aacute; c&aacute;ch</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong></p>\r\n\r\n<p>- S&aacute;p ong v&agrave; dầu thi&ecirc;n nhi&ecirc;n gi&uacute;p dưỡng m&ocirc;i mềm mịn.</p>\r\n\r\n<p>- M&ugrave;i hương hoa ly tự nhi&ecirc;n.</p>\r\n', '<p><strong>Son m&ocirc;i YURIKA Matte&nbsp;(3g) thương hiệu Nhật, sản xuất tại H&agrave;n Quốc</strong></p>\r\n\r\n<p><strong>M&agrave;u sắc:</strong>&nbsp;Sunny Shine - Đỏ cam ph&aacute; c&aacute;ch</p>\r\n\r\n<p><strong>Th&agrave;nh phần:</strong></p>\r\n\r\n<p>- S&aacute;p ong v&agrave; dầu thi&ecirc;n nhi&ecirc;n gi&uacute;p dưỡng m&ocirc;i mềm mịn.</p>\r\n\r\n<p>- M&ugrave;i hương hoa ly tự nhi&ecirc;n.</p>\r\n', 1, 6),
(27, 'Son Môi Revolution Lipstick Princess Beauty', '97', '290000', 9876, '1637247022_-Đất-2.png', '<p>Son m&ocirc;i Revolution Lipstick đảm bảo 100% thi&ecirc;n nhi&ecirc;n, an to&agrave;n, l&ecirc;n m&agrave;u chuẩn, b&aacute;m m&agrave;u l&acirc;u, chất kem mềm mịn, kh&ocirc;ng g&acirc;y kh&ocirc; hay bong tr&oacute;c. Free Ship to&agrave;n quốc</p>\r\n', '<p>&ndash;&nbsp;Th&agrave;nh phần son tự nhi&ecirc;n, l&agrave;nh t&iacute;nh, kh&ocirc;ng chất bảo quản cho n&agrave;ng y&ecirc;n t&acirc;m son m&ocirc;i mọi l&uacute;c mọi nơi.</p>\r\n\r\n<p>&ndash; Chất son mềm mịn, l&ecirc;n m&agrave;u chuẩn hơn 95%, độ b&aacute;m m&agrave;u l&acirc;u cho n&agrave;ng tự tin suốt ng&agrave;y d&agrave;i.</p>\r\n\r\n<p>&ndash; Nhờ tinh chất dưỡng, son m&ocirc;i gi&uacute;p dưỡng ẩm m&ocirc;i, kh&ocirc;ng g&acirc;y kh&ocirc; hay bong tr&oacute;c.</p>\r\n', 1, 6),
(28, 'Son môi Colorkey siêu lì mềm mượt nhẹ môi lâu trôi chống thấm nước với các màu thời thượng Nội Địa Trung', '86444', '185000', 9775, '1637247001_b244.jpg', '<p>&nbsp;Son mềm mịn như nhung: Nhờ c&ocirc;ng nghệ &ldquo;chạm mềm&rdquo;, chỉ cần 1 lần son đ&atilde; l&ecirc;n m&agrave;u chuẩn, l&acirc;u tr&ocirc;i, nu&ocirc;i dưỡng v&agrave; giữ ẩm, kh&ocirc;ng bị kh&ocirc; m&ocirc;i . M&agrave;u sắc l&acirc;u tr&ocirc;i giữ được đến 3-4 tiếng . Thoa l&ograve;ng m&ocirc;i hay to&agrave;n bộ m&ocirc;i đều v&ocirc; c&ugrave;ng xinh xắn . m&agrave;u sắc tươi tắn ph&ugrave; hợp với l&agrave;n da ch&acirc;u &Aacute; với mọi sắc tố da . Dễ d&agrave;ng kết hợp với nhiều loại trang phục v&agrave; kiểu trang điểm kh&aacute;c nhau . Ph&ugrave; hợp để đi học, đi chơi, đi l&agrave;m, đi sự kiện&hellip;</p>\r\n', '<p>M&agrave;u sắc: R601 - M&agrave;u đỏ d&acirc;u: Son m&ocirc;i nổi bật m&agrave;u da, l&agrave;m cho đ&ocirc;i m&ocirc;i đầy đặn R602 - M&agrave;u đỏ cherry: M&agrave;u đỏ của quả cherry để bạn tr&ocirc;ng thật qu&yacute; ph&aacute;i R603 - M&agrave;u đỏ lạnh: M&agrave;u đỏ tươi mới nhất định phải c&oacute; trong m&ugrave;a h&egrave; n&agrave;y O604 - M&agrave;u cam tươi: Trẻ trung năng động B605 - M&agrave;u cam gạch: L&agrave;m s&aacute;ng m&agrave;u da, ph&ugrave; hợp với c&aacute;c n&agrave;ng c&oacute; l&agrave;n da ngăm B606 - M&agrave;u hồng đất: Kh&ocirc;ng k&eacute;n m&agrave;u da</p>\r\n', 1, 6),
(29, 'Phấn nền Transino UV Powder SPF50 PA++++ hộp 12g Nhật Bản', '986', '650000', 856, '1637246983_070356992_n.jpg', '<ul>\r\n	<li>\r\n	<p><strong>Phấn nền Transino UV Powder SPF50 PA++++</strong>&nbsp;l&agrave;&nbsp;<a href=\"https://www.hangngoainhap.com.vn/2287-phan-nen-milani-conceal-perfect-powder-chinh-hang-cua-my.html\">phấn nền</a>&nbsp;đa năng, che phủ khuyết điểm, bảo vệ da trước &aacute;nh nắng v&agrave; dưỡng trắng da.</p>\r\n	</li>\r\n	<li>\r\n	<p>Độ che phủ tốt, m&agrave;u phấn tự nhi&ecirc;n, ph&ugrave; hợp với t&ocirc;ng da người ch&acirc;u &Aacute;</p>\r\n	</li>\r\n	<li>\r\n	<p>Chất phấn si&ecirc;u mịn, tạo m&agrave;u tự nhi&ecirc;n v&agrave; b&aacute;m tốt v&agrave;o da</p>\r\n	</li>\r\n	<li>\r\n	<p>L&agrave;nh t&iacute;nh, ph&ugrave; hợp cho mọi loại da, kh&ocirc;ng k&iacute;ch ứng</p>\r\n	</li>\r\n	<li>\r\n	<p>Kh&ocirc;ng g&acirc;y cảm gi&aacute;c nặng mặt, dễ chịu khi sử dụng</p>\r\n	</li>\r\n	<li>\r\n	<p>Khả năng chống thấm nước, ngăn điều tiết mồ h&ocirc;i cao</p>\r\n	</li>\r\n	<li>\r\n	<p>Tăng cường th&agrave;nh phần chống nắng gi&uacute;p bảo vệ da trước UVA v&agrave; UVB.</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế nhỏ gọn, tiện lợi khi mang theo v&agrave; bảo quản tốt hơn.</p>\r\n	</li>\r\n</ul>\r\n', '<p>Phấn nền Transino UV Powder SPF50 PA++++ hộp 12g l&agrave; loại phấn nền cao cấp của Nhật Bản với bột phấn cực mịn, t&ocirc;ng m&agrave;u ph&ugrave; hợp với t&ocirc;ng m&agrave;u da của đa số người ch&acirc;u &Aacute;. Sản phẩm kiềm dầu tốt, c&ograve;n gi&uacute;p bảo vệ da trước UV v&agrave; chứa th&agrave;nh phần gi&uacute;p dưỡng trắng da</p>\r\n', 1, 16),
(30, 'PHẤN NỀN SIÊU MỊN MAYBELLINE FIT ME SKIN-FIT POWDER FOUNDATION (9G)', '9655', '220000', 76, '1637246910_jhgg3.jpg', '<ul>\r\n	<li>Phấn Phủ Maybelline Fit Me Matte+Poreless Powder thuộc d&ograve;ng sản phẩm FIT ME của Maybelline, sản phẩm sử dụng cộng nghệ Perlite Mineral gi&uacute;p hấp thụ dầu để giữ da mịn m&agrave;ng đồng thời che phủ đi lỗ ch&acirc;n l&ocirc;ng mang đến hiệu ứng l&igrave; giảm tối ưu khuyết điểm tr&ecirc;n da nhưng kh&ocirc;ng g&acirc;y b&iacute;t tắc lỗ ch&acirc;n l&ocirc;ng bởi m&agrave; sẽ gi&uacute;p thu nhỏ lỗ ch&acirc;n l&ocirc;ng, kiềm dầu tốt cho một l&agrave;n da đẹp ho&agrave;n hảo, mỏng nhẹ, tự nhi&ecirc;n nhất.</li>\r\n</ul>\r\n', '<p><strong>Hướng dẫn sử dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>X&aacute;c định 5 điểm ch&iacute;nh tr&ecirc;n khu&ocirc;n mặt (Tr&aacute;n, mũi, cằm, 2 m&aacute;)</li>\r\n	<li>Sử dụng b&ocirc;ng phấn t&aacute;n nhẹ chiều hướng xuống.</li>\r\n	<li>C&oacute; thể sử dụng ri&ecirc;ng lẻ hoặc phủ phấn sau lớp kem nền để độ che phủ tốt hơnhơn</li>\r\n</ul>\r\n', 1, 16);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
