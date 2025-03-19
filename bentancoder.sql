-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th1 27, 2022 lúc 02:55 PM
-- Phiên bản máy phục vụ: 10.3.32-MariaDB-log-cll-lve
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Cơ sở dữ liệu: `tncoderonline_test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `cusum_balance` int(11) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block_callback`
--

CREATE TABLE `block_callback` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `reason` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `card_auto`
--

CREATE TABLE `card_auto` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `loaithe` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `thucnhan` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `server` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `seri` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `pin` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `callback` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `request_id` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `card_auto`
--

INSERT INTO `card_auto` (`id`, `code`, `username`, `loaithe`, `menhgia`, `thucnhan`, `thoigian`, `capnhat`, `trangthai`, `ghichu`, `server`, `seri`, `pin`, `callback`, `request_id`, `amount`) VALUES
(3, '84511641267446', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-04 10:37:26', '2022-01-04 10:38:29', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10007895670155', '087658547893411', NULL, NULL, 0),
(4, '21851641267446', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-04 10:37:27', '2022-01-04 10:37:41', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10007895670900', '087658547893433', NULL, NULL, 0),
(5, '68141641269280', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-04 11:08:00', '2022-01-04 11:09:05', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10003829182999', '087658547893499', NULL, NULL, 0),
(6, '79541643016948', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-24 16:35:48', '2022-01-24 16:35:56', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10007895670098', '087658547893098', NULL, NULL, 0),
(7, '93581643027140', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-24 19:25:40', '2022-01-24 19:25:47', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10003829182930', '143613562547532', NULL, NULL, 0),
(8, '21751643027140', 'bentancoder', 'VIETTEL', 100000, 85500, '2022-01-24 19:25:41', '2022-01-24 19:25:57', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10003849102839', '421534624573533', NULL, NULL, 0),
(9, '26381643197021', 'nhdright212', 'VIETTEL', 10000, 9900, '2022-01-26 18:37:02', '2022-01-26 18:38:53', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10052552583254', '988675645325345', NULL, NULL, 0),
(10, '56481643253792', 'bentancoder', 'VIETTEL', 10000, 8600, '2022-01-27 10:23:13', '2022-01-27 10:23:27', 'thatbai', 'Thẻ không hợp lệ hoặc đã được sử dụng.', 'cardvip.vn', '10003827192845', '271827391823414', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyentien`
--

CREATE TABLE `chuyentien` (
  `id` int(11) NOT NULL,
  `code` text COLLATE utf8_vietnamese_ci NOT NULL,
  `nguoinhan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nguoichuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `lydo` text COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card_auto`
--

CREATE TABLE `ck_card_auto` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `ck` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ck_card_auto`
--

INSERT INTO `ck_card_auto` (`id`, `loaithe`, `menhgia`, `ck`) VALUES
(1, 'VIETTEL', 10000, 1),
(2, 'VIETTEL', 20000, 1),
(3, 'VIETTEL', 30000, 1),
(4, 'VIETTEL', 50000, 1),
(5, 'VIETTEL', 100000, 1),
(6, 'VIETTEL', 200000, 1),
(7, 'VIETTEL', 300000, 1),
(8, 'VIETTEL', 500000, 1),
(9, 'VIETTEL', 1000000, 1),
(10, 'VINAPHONE', 10000, 1),
(11, 'VINAPHONE', 20000, 1),
(12, 'VINAPHONE', 30000, 1),
(13, 'VINAPHONE', 50000, 1),
(14, 'VINAPHONE', 100000, 1),
(15, 'VINAPHONE', 200000, 1),
(16, 'VINAPHONE', 300000, 1),
(17, 'VINAPHONE', 500000, 1),
(18, 'VINAPHONE', 1000000, 1),
(19, 'MOBIFONE', 10000, 1),
(20, 'MOBIFONE', 20000, 1),
(21, 'MOBIFONE', 30000, 1),
(22, 'MOBIFONE', 50000, 1),
(23, 'MOBIFONE', 100000, 1),
(24, 'MOBIFONE', 200000, 1),
(25, 'MOBIFONE', 300000, 1),
(26, 'MOBIFONE', 500000, 1),
(27, 'MOBIFONE', 1000000, 1),
(28, 'ZING', 10000, 1),
(29, 'ZING', 20000, 1),
(30, 'ZING', 30000, 1),
(31, 'ZING', 50000, 1),
(32, 'ZING', 100000, 1),
(33, 'ZING', 200000, 1),
(34, 'ZING', 300000, 1),
(35, 'ZING', 500000, 1),
(36, 'ZING', 1000000, 1),
(37, 'VNMOBI', 10000, 1),
(38, 'VNMOBI', 20000, 1),
(39, 'VNMOBI', 30000, 1),
(40, 'VNMOBI', 50000, 1),
(41, 'VNMOBI', 100000, 1),
(42, 'VNMOBI', 200000, 1),
(43, 'VNMOBI', 300000, 1),
(44, 'VNMOBI', 500000, 1),
(45, 'VNMOBI', 1000000, 1),
(46, 'GATE', 10000, 1),
(47, 'GATE', 20000, 1),
(48, 'GATE', 30000, 1),
(49, 'GATE', 50000, 1),
(50, 'GATE', 100000, 1),
(51, 'GATE', 200000, 1),
(52, 'GATE', 300000, 1),
(53, 'GATE', 500000, 1),
(54, 'GATE', 1000000, 1),
(84, 'VCOIN', 10000, 1),
(85, 'VCOIN', 20000, 1),
(86, 'VCOIN', 30000, 1),
(87, 'VCOIN', 50000, 1),
(88, 'VCOIN', 100000, 1),
(89, 'VCOIN', 200000, 1),
(90, 'VCOIN', 300000, 1),
(91, 'VCOIN', 500000, 1),
(92, 'VCOIN', 1000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ck_card_auto_platinum`
--

CREATE TABLE `ck_card_auto_platinum` (
  `id` int(11) NOT NULL,
  `loaithe` varchar(255) DEFAULT NULL,
  `menhgia` int(11) NOT NULL DEFAULT 0,
  `ck` float NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `ck_card_auto_platinum`
--

INSERT INTO `ck_card_auto_platinum` (`id`, `loaithe`, `menhgia`, `ck`) VALUES
(1, 'VIETTEL', 10000, 14),
(2, 'VIETTEL', 20000, 14),
(3, 'VIETTEL', 30000, 14),
(4, 'VIETTEL', 50000, 13),
(5, 'VIETTEL', 100000, 14.5),
(6, 'VIETTEL', 200000, 15),
(7, 'VIETTEL', 300000, 16),
(8, 'VIETTEL', 500000, 16),
(9, 'VIETTEL', 1000000, 16),
(10, 'VINAPHONE', 10000, 15),
(11, 'VINAPHONE', 20000, 15),
(12, 'VINAPHONE', 30000, 15),
(13, 'VINAPHONE', 50000, 15),
(14, 'VINAPHONE', 100000, 15),
(15, 'VINAPHONE', 200000, 15),
(16, 'VINAPHONE', 300000, 15),
(17, 'VINAPHONE', 500000, 15),
(18, 'VINAPHONE', 1000000, 0),
(19, 'MOBIFONE', 10000, 22.5),
(20, 'MOBIFONE', 20000, 22.5),
(21, 'MOBIFONE', 30000, 22.5),
(22, 'MOBIFONE', 50000, 22.5),
(23, 'MOBIFONE', 100000, 22.5),
(24, 'MOBIFONE', 200000, 22.5),
(25, 'MOBIFONE', 300000, 22.5),
(26, 'MOBIFONE', 500000, 22.5),
(27, 'MOBIFONE', 1000000, 22.5),
(28, 'ZING', 10000, 16),
(29, 'ZING', 20000, 16),
(30, 'ZING', 30000, 16),
(31, 'ZING', 50000, 16),
(32, 'ZING', 100000, 16),
(33, 'ZING', 200000, 16),
(34, 'ZING', 300000, 16),
(35, 'ZING', 500000, 16),
(36, 'ZING', 1000000, 16),
(37, 'VNMOBI', 10000, 15),
(38, 'VNMOBI', 20000, 15),
(39, 'VNMOBI', 30000, 15),
(40, 'VNMOBI', 50000, 15),
(41, 'VNMOBI', 100000, 15),
(42, 'VNMOBI', 200000, 15),
(43, 'VNMOBI', 300000, 15),
(44, 'VNMOBI', 500000, 15),
(45, 'VNMOBI', 1000000, 15),
(46, 'GATE', 10000, 32),
(47, 'GATE', 20000, 32),
(48, 'GATE', 30000, 32),
(49, 'GATE', 50000, 32),
(50, 'GATE', 100000, 32),
(51, 'GATE', 200000, 32),
(52, 'GATE', 300000, 32),
(53, 'GATE', 500000, 32),
(54, 'GATE', 1000000, 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dongtien`
--

INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `username`) VALUES
(1, 0, 10000, 10000, '2022-01-01 12:50:39', 'Admin thay đổi số dư ', 'bentancoder'),
(2, 10000, 9900, 100, '2022-01-01 12:50:43', 'Mua 1 thẻ (Viettel mệnh giá 10.000)', 'bentancoder'),
(3, 0, 2147483647, 2147483647, '2022-01-02 17:07:01', 'Admin cộng tiền ()', 'bentancoder'),
(4, 2147483647, 17800, 2147465847, '2022-01-02 17:07:04', 'Mua 1 thẻ (Viettel mệnh giá 20.000)', 'bentancoder'),
(5, 2147465847, 17800, 2147448047, '2022-01-03 20:13:51', 'Mua 1 thẻ (Viettel mệnh giá 20.000)', 'bentancoder'),
(6, 2147448047, 19400, 2147428647, '2022-01-04 15:09:47', 'Mua 1 thẻ (Garena mệnh giá 20.000)', 'bentancoder'),
(7, 2147428647, 0, 2147428647, '2022-01-07 12:22:04', 'Tạo web', 'bentancoder'),
(8, 2147428647, 9900, 2147418747, '2022-01-24 16:32:36', 'Mua 1 thẻ (Viettel mệnh giá 10.000)', 'bentancoder'),
(9, 2147418747, 502500, 2146916247, '2022-01-26 13:16:01', 'Rút tiền về ngân hàng (MOMO | 0865809879)', 'bentancoder');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listbank`
--

CREATE TABLE `listbank` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotaikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chutaikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nganhang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaithe`
--

CREATE TABLE `loaithe` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ck` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaithe`
--

INSERT INTO `loaithe` (`id`, `type`, `ck`, `status`) VALUES
(1, 'VIETTEL', 21, 1),
(2, 'VINAPHONE', 21, 1),
(3, 'MOBIFONE', 23, 1),
(4, 'GATE', 31, 1),
(5, 'ZING', 18, 1),
(6, 'VNMOBI', 20, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `tranId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `partnerId` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `partnerName` text CHARACTER SET utf16 COLLATE utf16_vietnamese_ci DEFAULT NULL,
  `amount` text CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf32 COLLATE utf32_vietnamese_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT 'xuly'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `muathe`
--

CREATE TABLE `muathe` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Telco` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Serial` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PinCode` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Trace` int(11) DEFAULT NULL,
  `gettime` datetime DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'THECAOVIP.NET'),
(2, 'mota', 'THECAOVIP.NET | ĐỔI THẺ CÀO SANG TIỀN MẶT NHANH CHÓNG - ĐƠN GIẢN - AN TOÀN, ĐỔI THẺ CÀO SIÊU TỐC, PHÍ THẤP NHẤT THỊ TRƯỜNG '),
(3, 'tukhoa', 'THECAOVIP.NET | ĐỔI THẺ CÀO SANG TIỀN MẶT NHANH CHÓNG - ĐƠN GIẢN - AN TOÀN, ĐỔI THẺ CÀO SIÊU TỐC, PHÍ THẤP NHẤT THỊ TRƯỜNG '),
(4, 'logo', 'https://upanh.cf/a302z0kun0.jpg'),
(5, 'email', 'bentancoder@gmail.com'),
(6, 'pass_email', ''),
(11, 'noidung_naptien', 'THECAOVIP_'),
(12, 'thongbao', '<p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Hệ thống Auto nạp thẻ<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\"> cam kết 5s/thẻ, ổn định </span>. Công nghệ API<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\"> cam kết không nuốt thẻ không làm chậm web</span> của đối tác.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Vào mua cước hệ thống cam kết chiết khấu cực kỳ tốt.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quý khách lưu ý không nhập các ký tự đặc biệt vào mã thẻ hay seri như các ký tự <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">= + - ~ ! # $ % ^ & * () _ / . , \" \' ; :</span>.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quý khách vui lòng gửi đúng mệnh giá thẻ. Trong trường hợp gửi sai mệnh giá thẻ của quý khách sẽ nhận mệnh giá thấp nhất.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quý khách gửi thẻ mệnh giá <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">100.000 đ</span> mà mệnh giá thực là <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">50.000 đ</span> thì quý khách sẽ nhận được số tiền là <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">50.000 đ</span> x Chiết khấu thẻ - 50%</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quý khách gửi thẻ mệnh giá <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">50.000 đ</span> mà mệnh giá thực là <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">100.000 đ</span> thì quý khách sẽ nhận được số tiền là <span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">50.000 đ</span> x Chiết khấu thẻ - 50%</p>'),
(13, 'anhbia', ''),
(14, 'favicon', ''),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<p>BẰNG VIỆC SỬ DỤNG C&Aacute;C DỊCH VỤ HOẶC MỞ MỘT T&Agrave;I KHOẢN, BẠN CHO BIẾT RẰNG BẠN CHẤP NHẬN, KH&Ocirc;NG R&Uacute;T LẠI, C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG SỬ DỤNG C&Aacute;C DỊCH VỤ CỦA CH&Uacute;NG T&Ocirc;I HAY TRUY CẬP TRANG WEB. NẾU BẠN DƯỚI 18 TUỔI HOẶC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot;PH&Ugrave; HỢP Ở NƠI BẠN SỐNG, BẠN PHẢI XIN PH&Eacute;P CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P ĐỂ MỞ MỘT T&Agrave;I KHOẢN V&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P PHẢI ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG BIẾT BẠN C&Oacute; THUỘC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot; Ở NƠI BẠN SỐNG HAY KH&Ocirc;NG, HOẶC KH&Ocirc;NG HIỂU PHẦN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG TẠO T&Agrave;I KHOẢN CHO ĐẾN KHI BẠN Đ&Atilde; NHỜ CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA BẠN GI&Uacute;P ĐỠ. NẾU BẠN L&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA MỘT TRẺ VỊ TH&Agrave;NH NI&Ecirc;N MUỐN TẠO MỘT T&Agrave;I KHOẢN, BẠN PHẢI CHẤP NHẬN C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y THAY MẶT CHO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; V&Agrave; BẠN SẼ CHỊU TR&Aacute;CH NHIỆM ĐỐI VỚI TẤT CẢ HOẠT ĐỘNG SỬ DỤNG T&Agrave;I KHOẢN HAY C&Aacute;C DỊCH VỤ, BAO GỒM C&Aacute;C GIAO DỊCH MUA H&Agrave;NG DO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N THỰC HIỆN, CHO D&Ugrave; T&Agrave;I KHOẢN CỦA TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; ĐƯỢC MỞ V&Agrave;O L&Uacute;C N&Agrave;Y HAY ĐƯỢC TẠO SAU N&Agrave;Y V&Agrave; CHO D&Ugrave; TRẺ VỊ TH&Agrave;NH NI&Ecirc;N C&Oacute; ĐƯỢC BẠN GI&Aacute;M S&Aacute;T TRONG GIAO DỊCH MUA H&Agrave;NG Đ&Oacute; HAY KH&Ocirc;NG.</p>\r\n'),
(27, 'min_ruttien', '7000'),
(28, 'ck_con', '3'),
(29, 'phi_chuyentien', '500'),
(30, 'status_chuyentien', 'ON'),
(31, 'hotline', '0969053204'),
(32, 'facebook', ''),
(33, 'theme_color', '#00C2FF'),
(34, 'modal_thongbao', '<h5 class=\"text-primary\" style=\"margin: 10px 0px; line-height: 1.1; text-align: center;\"><b><span style=\"color: rgb(0, 0, 0); font-size: 16px; text-align: left;\">CẦN TẠO WEBSITE LIÊN HỆ </span><a href=\"https://zalo.me/906287237\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 16px; text-align: left;\">TẠI ĐÂY</a></b><br></h5>'),
(35, 'tk_banthe247', '1'),
(36, 'mk_banthe247', '1'),
(37, 'status_muathe', 'ON'),
(38, 'status_napdt', 'OFF'),
(39, 'ck_500', '3'),
(40, 'partner_id', ''),
(41, 'partner_key', ''),
(42, 'api_bank', ''),
(43, 'status_napbank', 'OFF'),
(44, 'status_demo', 'OFF'),
(45, 'api_momo', ''),
(46, 'email_admin', 'bentancoder@gmail.com'),
(47, 'display_carousel', 'ON'),
(48, 'phi_rut_tien', '0'),
(49, 'script_live_chat', ''),
(50, 'token_momo', ''),
(51, 'password_momo', ''),
(54, 'security_banthe247', '10000000'),
(55, 'dieu_khoan', '<p><b>CẦN TẠO WEBSITE LIÊN HỆ <a href=\"https://zalo.me/906287237\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255);\">TẠI ĐÂY</a></b><br></p>'),
(56, 'status_blog', 'ON'),
(57, 'status_ref', 'OFF'),
(58, 'ck_ref', '0.5'),
(59, 'luuy_ref', '<ul>\r\n    <li>Những tài khoản được hệ thống xác định là tài khoản sao chép của các tài khoản khác sẽ không được dùng để tính hoa hồng.</li><li>Hoa hồng chỉ được tính khi bạn bè của bạn thực hiện đổi thẻ thành công.</li><li>Việc xác định xem ai là người giới thiệu của một người dùng phụ thuộc hoàn toàn vào link giới thiệu. Nếu một người dùng nhấp vào nhiều link ref khác nhau thì chỉ có link ref cuối cùng họ nhấp vào trước khi tạo tài khoản là có hiệu lực.</li><li>Chúng tôi sẽ band tài khoản và giam tiền vĩnh viễn khi phát hiện bạn cố tình sao chép tài khoản để giảm chiết khấu thẻ.</li>\r\n</ul>'),
(62, 'api_cardvip', '7c0b91b0-9dbe-467a-a5ac-25d681fcab58'),
(63, 'tele_token', '1930923517:AAH-behskim9nFbWF9uSfqLaHw-Js4hGu_Q'),
(64, 'tele_chatid', '1772153575'),
(67, 'license_key', '82709bc425b33d86996e0bf3e82269f8'),
(68, 'btnSaveLicense', ''),
(81, 'withdrawal_fee', '0'),
(82, 'border_radius', '5'),
(83, 'phi_rut_tien_ck', '0.5'),
(84, 'server_buycard', '1'),
(85, 'notice_buycard', '<p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\">&nbsp;Kho thẻ game, thẻ điện thoại đa dạng bao gồm:&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">VIETTEL, MOBIFONE, VINAPHONE, VIETNAMOBILE, GARENA, GATE, ZING...</span></p><p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Chiết khấu thẻ cực tôt chỉ từ<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">&nbsp;4%&nbsp;</span>đến&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">7%</span>.</p><p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Mệnh giá cực kỳ đa dạng từ<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">&nbsp;10.000 đ&nbsp;</span>đến&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">1.000.000 đ</span>.</p><p class=\"mb-2\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px; margin-bottom: 0.75rem !important;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Quên mật khẩu cấp 2 ?&nbsp;<a href=\"/pass2\" style=\"color: rgb(0, 172, 193);\"><span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">ấn vào đây để lấy lại</span></a>.</p>'),
(90, 'partner_id', ''),
(91, 'partner_key', ''),
(96, 'tienduytri', '0'),
(97, 'sanluongduytri', '700000'),
(98, 'saimg', '50'),
(99, 'status_napkc', 'ON'),
(100, 'phi_napkc', '0'),
(101, 'notice_buycard', '<p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\">&nbsp;Kho thẻ game, thẻ điện thoại đa dạng bao gồm:&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">VIETTEL, MOBIFONE, VINAPHONE, VIETNAMOBILE, GARENA, GATE, ZING...</span></p><p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Chiết khấu thẻ cực tôt chỉ từ<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">&nbsp;4%&nbsp;</span>đến&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">7%</span>.</p><p class=\"mb-0\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Mệnh giá cực kỳ đa dạng từ<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">&nbsp;10.000 đ&nbsp;</span>đến&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">1.000.000 đ</span>.</p><p class=\"mb-2\" style=\"line-height: 1.8; color: rgb(71, 69, 69); font-family: Inter, sans-serif; font-size: 14px; margin-bottom: 0.75rem !important;\"><span class=\"fe-star-on text-primary\" style=\"speak: none; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; -webkit-font-smoothing: antialiased; color: rgb(0, 172, 193) !important; font-family: feather !important;\"></span>&nbsp;Quên mật khẩu cấp 2 ?&nbsp;<a href=\"/pass2\" style=\"color: rgb(0, 172, 193);\"><span class=\"text-danger\" style=\"font-weight: bolder; color: rgb(241, 85, 108) !important;\">ấn vào đây để lấy lại</span></a>.</p>'),
(102, 'domain_cardv2', 'https://cardngon.com/'),
(103, 'api_cardv2', ''),
(104, 'status_cardv2', 'OFF'),
(105, 'status_cardvip', 'ON'),
(106, 'api_cardvip', '7c0b91b0-9dbe-467a-a5ac-25d681fcab58'),
(107, 'status_trumthe', 'OFF'),
(108, 'api_dtsr11', ''),
(109, 'status_autocard365', 'OFF'),
(110, 'status_dtsr11', 'OFF'),
(111, 'api_autocard365', ''),
(112, 'status_cardv3', 'OFF'),
(113, 'domain_cardv3', 'https://thesieure.com/'),
(114, 'partner_id_cardv3', ''),
(115, 'partner_key_cardv3', ''),
(117, 'status_thongtin', 'ON'),
(118, 'thongtin_ruttien', '<p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Hệ thống THECAOVIP.NET hỗ trợ rút tiền về&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">rất nhiều ngân hàng và ví điện tử&nbsp;</span>thông dụng.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Hệ thống&nbsp;<span style=\"font-size: 13.6px;\">THECAOVIP.NET</span>&nbsp;cam kết<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">&nbsp;rút tiền không phát sinh phí</span></p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Đối với lệnh rút tiền về ngân hàng quý khách lưu ý&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">điền đúng số tài khoản và tên chủ khoản (không dấu)&nbsp;</span>. Nếu điền sai tên chủ khoản lệnh rút tiền sẽ tự động hủy và hoàn lại tiền cho khách.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Đối với lệnh rút tiền về ví điện tử MOMO quý khách lưu ý&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">điền đúng số điện thoại và tên chủ ví MOMO&nbsp;</span>. Nếu điền sai tên chủ ví lệnh rút tiền sẽ tự động hủy và hoàn lại tiền cho khách.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quên mật khẩu cấp 2 vui lòng&nbsp;<a href=\"/pass2\" class=\"text-danger\" style=\"--bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; outline: 0px !important;\"><span style=\"font-weight: bolder;\">ấn vào đây</span></a>&nbsp;để lấy lại mật khẩu cấp 2</p>'),
(119, 'thongtin_chuyentien', '<p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\">Hệ thống&nbsp;<span style=\"font-size: 13.6px;\">THECAOVIP.NET</span>&nbsp;hỗ trợ chuyển tiền&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">cho tài khoản khác&nbsp;</span>trong cùng hệ thống.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Hệ thống <span style=\"font-size: 13.6px;\">THECAOVIP.NET</span>&nbsp;sẽ thu phí&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">500đ /1 lần chuyển</span>.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Số tiền chuyển phải lớn hơn&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">10.000 VND&nbsp;</span>và nhiều nhất là&nbsp;<span class=\"text-danger\" style=\"font-weight: bolder; --bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important;\">5.000.000 VNĐ</span>.</p><p style=\"color: rgb(73, 80, 87); font-family: Inter, sans-serif; font-size: 13.6px;\"><span class=\"bx bx-checkbox-square text-danger me-2\" style=\"--bs-text-opacity: 1; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1; display: inline-block; speak: none; -webkit-font-smoothing: antialiased; margin-right: 0.5rem !important; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; font-family: boxicons !important;\"></span>Quên mật khẩu cấp 2 vui lòng&nbsp;<a href=\"/pass2\" class=\"text-danger\" style=\"--bs-text-opacity: 1; color: rgba(var(--bs-danger-rgb),var(--bs-text-opacity))  !important; outline: 0px !important;\"><span style=\"font-weight: bolder;\">ấn vào đây</span></a>&nbsp;để lấy lại mật khẩu cấp 2</p>'),
(120, 'thongbao_chay', '<h5 class=\"text-primary\" style=\"margin: 10px 0px; font-family: \" source=\"\" sans=\"\" pro\",=\"\" -apple-system,=\"\" blinkmacsystemfont,=\"\" \"segoe=\"\" ui\",=\"\" roboto,=\"\" \"helvetica=\"\" neue\",=\"\" arial,=\"\" sans-serif,=\"\" \"apple=\"\" color=\"\" emoji\",=\"\" ui=\"\" symbol\";=\"\" line-height:=\"\" 1.1;=\"\" text-align:=\"\" center;\"=\"\"><span style=\"font-weight: bolder;\"><span style=\"color: rgb(0, 0, 0); font-size: 16px; text-align: left;\">CẦN TẠO WEBSITE LIÊN HỆ </span><a href=\"https://zalo.me/nhdright\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); font-size: 16px; text-align: left;\">TẠI ĐÂY</a></span></h5>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ruttien`
--

CREATE TABLE `ruttien` (
  `id` int(11) NOT NULL,
  `magd` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` int(11) DEFAULT NULL,
  `nganhang` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotaikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chutaikhoan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chinhanh` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `capnhat` datetime DEFAULT NULL,
  `ghichu` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `response` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `noidung` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `ruttien`
--

INSERT INTO `ruttien` (`id`, `magd`, `username`, `sotien`, `nganhang`, `sotaikhoan`, `chutaikhoan`, `chinhanh`, `thoigian`, `trangthai`, `capnhat`, `ghichu`, `response`, `noidung`) VALUES
(1, 'KE1643177761', 'bentancoder', 500000, 'MOMO', '0865809879', 'ĐẶNG GIA BẢO', '', '2022-01-26 13:16:01', 'hoantat', '2022-01-26 15:20:28', '', NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sellcards`
--

CREATE TABLE `sellcards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sellcard_id` int(11) NOT NULL DEFAULT 0,
  `ck` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sellcards`
--

INSERT INTO `sellcards` (`id`, `name`, `sellcard_id`, `ck`) VALUES
(3, '10000', 2, 1),
(5, '20000', 4, 11),
(6, 'Vinaphone', 0, 3),
(7, 'Viettel', 0, 3),
(8, 'Vietnamobile', 0, 3),
(9, 'Mobifone', 0, 3),
(10, 'Garena', 0, 3),
(12, 'Vcoin', 0, 3),
(13, 'Gate', 0, 3),
(14, 'Gmobile', 0, 3),
(15, 'Scoin', 0, 3),
(16, '10000', 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `storecards`
--

CREATE TABLE `storecards` (
  `id` int(11) NOT NULL,
  `sellcard_id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `card` text DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `storecards`
--

INSERT INTO `storecards` (`id`, `sellcard_id`, `username`, `card`, `createdate`, `updatedate`) VALUES
(1, 3, 'bentancoder', '1000|5213', '2022-01-01 12:36:32', '2022-01-01 12:50:43'),
(2, 5, 'bentancoder', '11111|11113', '2022-01-02 17:03:13', '2022-01-02 17:07:04'),
(3, 5, 'bentancoder', '111111111111412|2444444444', '2022-01-03 20:12:25', '2022-01-03 20:13:51'),
(5, 16, 'bentancoder', '1|1', '2022-01-24 16:32:09', '2022-01-24 16:32:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
--

CREATE TABLE `thongtin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `chutaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nganhang` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `username`, `sotaikhoan`, `chutaikhoan`, `nganhang`, `logo`) VALUES
(5, 'bentancoder', '0865809879', 'ĐẶNG GIA BẢO', 'MOMO', 'https://thecaovip.net/frontend/main/assets/media/logo/momo.png'),
(2, 'nhdright212', 'Cc', 'Cc', 'MOMO', '0969053204');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type_muathe`
--

CREATE TABLE `type_muathe` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `type_muathe`
--

INSERT INTO `type_muathe` (`id`, `type`, `name`) VALUES
(1, 'ZING', 'Zing'),
(2, 'VTT', 'Viettel'),
(3, 'VNP', 'Vinaphone'),
(4, 'GAR', 'Garena'),
(5, 'VNM', 'Vietnammobie'),
(6, 'VMS', 'Mobifone'),
(7, 'VTC', 'Vcoin'),
(8, 'FPT', 'Fpt Gate'),
(9, 'DBM', 'Mobi Data');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `pass2` text COLLATE utf8_vietnamese_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `level` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `ref` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `ref_click` int(11) DEFAULT 0,
  `agency` int(11) NOT NULL DEFAULT 0,
  `otp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `time` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `used_money` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `group_excard` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT 'Bronze',
  `reason_banned` text COLLATE utf8_vietnamese_ci NOT NULL,
  `top` int(25) NOT NULL,
  `money_month` int(100) NOT NULL,
  `stk` varchar(15) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `pass2`, `token`, `money`, `level`, `banned`, `createdate`, `email`, `ref`, `ref_click`, `agency`, `otp`, `ip`, `time`, `used_money`, `total_money`, `phone`, `name`, `group_excard`, `reason_banned`, `top`, `money_month`, `stk`) VALUES
(1, 'bentancoder', 'b736c27517557c496846c09aafe83a74', 'bentancoder', '2aSpg5mOdnrzD1q3sBwELuIbCHyZRvox', 2146916247, 'admin', 0, '2022-01-01 13:43:29', 'bentancoder@gmail.com', '', 0, 0, '', '2001:ee0:526e:4250:f111:4678:ec7d:355, 162.158.179.103', '1641019409', 0, 2147483647, '0712637188', '', 'Platinum', '', 2147483647, 0, '4845753010'),
(4, 'nhdright212', '3228a711a4c713490d18b00409fcab65', 'jt4fgnrP', 'eyriTLhYPkAbIUvmswxBJfagFdCpoWqQKZtcjRnOHXuNVElzSMGD', 0, 'admin', 0, '2022-01-01 13:56:45', 'nhdright@gmail.com', '', 0, 0, '', '2001:ee0:5412:56e0:4439:1f23:46f5:b6d9, 172.68.254.72', '1641020205', 0, 0, '0969053204', '', 'Bronze', '', 0, 0, '4848790422'),
(5, 'nguyencongphu123', 'b521a49d96a72edc26dc471fa1a82e82', '123456', 'DwuchjJgWrntAlLmNoqiGMaSYFdyRxbKQHUIBzTsVpCefvOkZEXP', 0, 'admin', 0, '2022-01-23 13:59:07', 'nguyencongphu123@admin.vn', '', 0, 0, '', '2001:ee0:5412:56e0:23:37f5:2bbc:966, 162.158.178.76', '1642921147', 0, 0, '0123456789', '', 'Bronze', '', 0, 0, '4848673252'),
(6, 'nguyencongphu124', '887a9c3d0c7352ec718f6305fc9cb80e', 'nguyencongphu124', 'EJBzmbLnePFRtIpwriCkjGVDqflsUMxOcSyoQAuXvYdZHaghTKNW', 0, 'ctv', 0, '2022-01-23 14:01:07', 'nguyencongphu124@gmail.com', '', 0, 0, '', '2001:ee0:5412:56e0:23:37f5:2bbc:966, 162.158.179.14', '1642921267', 0, 0, '0852369741', '', 'Bronze', '', 0, 0, '4844367536'),
(7, 'vhgamer2006', 'df4e495a0e47c56c5e6dfecaa66f5822', '192168', 'eRxLcFOdXKibDjEoUuZaSYTIBmHqNJMrQsphftlPAgnWvwzkyCVG', 0, '', 0, '2022-01-25 07:57:22', 'haidkgcf@gmail.com', '', 0, 0, '', '2405:4800:2724:a665:f08f:c4db:54a5:1549, 172.68.254.40', '1643072242', 0, 0, '0392603233', '', 'Bronze', '', 0, 0, '4845513625'),
(8, 'adminanuniteitdz', 'fb45ae8e54d976a30d84b55fec8336d5', 'an12345', 'cQgaKwoVdCAqWexStIzFBjnTfLhvEJprylbDOZisuRmUMPGYkHNX', 0, '', 0, '2022-01-25 09:29:11', 'myphuong7796@gmail.com', '', 0, 0, '', '2001:ee0:5539:88e0:c00:36a8:253f:cc77, 162.158.178.95', '1643077751', 0, 0, '0387507619', '', 'Bronze', '', 0, 0, '4846836701'),
(9, 'nghia123', '4297f44b13955235245b2497399d7a93', '123456', 'GRNkgOEBlfvyubdYzhITDecjPaCUVSWoMsnrAXLpJtQZwKHqFmix', 0, '', 0, '2022-01-25 09:37:35', 'nghia20097@gmail.com', '', 0, 0, '', '27.71.84.128, 172.70.142.198', '1643078255', 0, 0, '098 765 43 21', '', 'Bronze', '', 0, 0, '4848709344'),
(10, 'bentancoder123', 'd585a34a641174fda30d0cf1d44578a2', 'bentancoder123', 'OZudzipqJCwntrRobTgBDevcjYQsmhaUGHWlXfFKkSEVyLMxAIPN', 0, '', 0, '2022-01-25 10:45:47', 'bentancoder123@gmail.com', '', 0, 0, '', '2001:ee0:526e:4250:11bf:abb6:d958:dc1, 162.158.179.173', '1643082347', 0, 0, '0988128345', '', 'Bronze', '', 0, 0, '4841765780'),
(11, 'truong19062007', '25d55ad283aa400af464c76d713c07ad', '12345678', 'zJtsxCLykYGjmwIQgobnldEMfBqWcDOTAHPKZVrXuvieahNpRUSF', 0, '', 0, '2022-01-26 20:39:17', 'nt789477@gmail.com', '', 0, 0, '', '14.178.13.61, 172.70.147.178', '1643204357', 0, 0, '0916260109', '', 'Bronze', '', 0, 0, '4844916755');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `block_callback`
--
ALTER TABLE `block_callback`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `card_auto`
--
ALTER TABLE `card_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ck_card_auto`
--
ALTER TABLE `ck_card_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ck_card_auto_platinum`
--
ALTER TABLE `ck_card_auto_platinum`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `listbank`
--
ALTER TABLE `listbank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `loaithe`
--
ALTER TABLE `loaithe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `muathe`
--
ALTER TABLE `muathe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `sellcards`
--
ALTER TABLE `sellcards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `storecards`
--
ALTER TABLE `storecards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `type_muathe`
--
ALTER TABLE `type_muathe`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `block_callback`
--
ALTER TABLE `block_callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `card_auto`
--
ALTER TABLE `card_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `chuyentien`
--
ALTER TABLE `chuyentien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ck_card_auto`
--
ALTER TABLE `ck_card_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `ck_card_auto_platinum`
--
ALTER TABLE `ck_card_auto_platinum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `listbank`
--
ALTER TABLE `listbank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loaithe`
--
ALTER TABLE `loaithe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `muathe`
--
ALTER TABLE `muathe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `ruttien`
--
ALTER TABLE `ruttien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sellcards`
--
ALTER TABLE `sellcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `storecards`
--
ALTER TABLE `storecards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `type_muathe`
--
ALTER TABLE `type_muathe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;
