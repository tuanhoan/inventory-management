-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 15, 2021 lúc 10:55 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `inventory_management`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth`
--

CREATE TABLE `auth` (
  `ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `PERMISSION` int(1) NOT NULL,
  `ACTIVE_FLAG` int(2) DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `auth`
--

INSERT INTO `auth` (`ID`, `ROLE_ID`, `MENU_ID`, `PERMISSION`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(18, 1, 1, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(19, 1, 2, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(20, 1, 3, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(21, 1, 4, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(22, 1, 5, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(23, 1, 6, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(24, 1, 7, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(25, 1, 8, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(26, 1, 9, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(27, 1, 10, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(28, 1, 11, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(29, 1, 12, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(30, 1, 13, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(31, 1, 14, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(32, 1, 15, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(33, 1, 16, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(34, 1, 17, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(35, 1, 18, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(36, 1, 19, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(37, 1, 20, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(38, 1, 21, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(39, 1, 22, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(40, 1, 23, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(41, 1, 24, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(42, 1, 25, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(43, 1, 26, 1, 1, '2021-05-14 05:47:59', '2021-05-14 05:47:59'),
(44, 1, 27, 0, 1, '2021-05-14 06:21:31', '2021-05-14 06:21:31'),
(45, 1, 28, 1, 1, '2021-05-14 08:08:11', '2021-05-14 08:08:11'),
(46, 1, 29, 1, 1, '2021-05-14 08:08:11', '2021-05-14 08:08:11'),
(47, 1, 30, 1, 1, '2021-05-14 08:08:11', '2021-05-14 08:08:11'),
(48, 1, 31, 1, 1, '2021-05-14 08:08:11', '2021-05-14 08:08:11'),
(49, 1, 32, 1, 1, '2021-05-14 15:19:19', '2021-05-14 15:19:19'),
(50, 1, 33, 1, 1, '2021-05-14 17:55:04', '2021-05-14 17:55:04'),
(53, 1, 34, 1, 1, '2021-05-14 18:01:07', '2021-05-14 18:01:07'),
(54, 1, 35, 1, 1, '2021-05-14 18:01:16', '2021-05-14 18:01:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`ID`, `NAME`, `CODE`, `DESCRIPTION`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'Apple Category', 'Apple', 'app le nÃ¨', 1, '2021-05-12 06:50:26', '2021-05-14 08:35:41'),
(2, 'Huawei', 'HW', 'Huawei China', 1, '2021-05-13 06:28:21', '2021-05-13 06:28:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `ID` int(11) NOT NULL,
  `ACTION_NAME` varchar(100) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`ID`, `ACTION_NAME`, `TYPE`, `PRODUCT_ID`, `QTY`, `PRICE`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'Add', 1, 1, 5, '10000000.00', 1, '2021-05-14 06:14:04', '2021-05-14 06:14:04'),
(2, 'Add', 1, 2, 10, '12000000.00', 1, '2021-05-14 06:16:12', '2021-05-14 06:16:12'),
(3, 'Edit', 1, 1, 10, '10000000.00', 1, '2021-05-14 06:23:03', '2021-05-14 06:23:03'),
(4, 'Add', 1, 3, 5, '10000000.00', 1, '2021-05-14 06:29:59', '2021-05-14 06:29:59'),
(5, 'Add', 2, 1, 2, '13000000.00', 1, '2021-05-14 07:48:53', '2021-05-14 07:48:53'),
(6, 'Add', 1, 1, 2, '13000000.00', 1, '2021-05-14 08:34:37', '2021-05-14 08:34:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

CREATE TABLE `invoice` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `TYPE` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `PRICE` decimal(15,2) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `invoice`
--

INSERT INTO `invoice` (`ID`, `CODE`, `TYPE`, `PRODUCT_ID`, `QTY`, `PRICE`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'IV0001', 1, 1, 10, '10000000.00', 1, '2021-05-14 06:14:04', '2021-05-14 06:23:03'),
(2, 'IV002', 1, 2, 10, '12000000.00', 1, '2021-05-14 06:16:11', '2021-05-14 06:16:11'),
(3, 'IV0003', 1, 3, 5, '10000000.00', 1, '2021-05-14 06:29:59', '2021-05-14 06:29:59'),
(4, 'IVI0001', 2, 1, 2, '13000000.00', 1, '2021-05-14 07:48:53', '2021-05-14 07:48:53'),
(5, 'IV0004', 1, 1, 2, '13000000.00', 1, '2021-05-14 08:34:37', '2021-05-14 08:34:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `link`
--

CREATE TABLE `link` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `link`
--

INSERT INTO `link` (`ID`, `NAME`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'Facebook', 1, '2021-05-15 05:09:10', '2021-05-15 05:09:10'),
(2, 'Zalo', 1, '2021-05-15 05:58:06', '2021-05-15 05:58:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `URL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ORDER_INDEX` int(11) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`ID`, `PARENT_ID`, `URL`, `NAME`, `ORDER_INDEX`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 0, '/product', 'Sản phẩm', 1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(2, 0, '/stock', 'Kho', 2, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(3, 0, '/management', 'Quản lý', 3, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(4, 1, '/product-info/list', 'Danh sách sản phẩm', 2, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(5, 1, '/category/list', 'Danh sách category', 1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(6, 1, '/category/edit', 'Sửa', -1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(7, 1, '/category/view', 'Xem', -1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(8, 1, '/category/add', 'Thêm mới', -1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(9, 1, '/category/save', 'Lưu', -1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(10, 1, '/category/delete', 'Xoá', -1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(11, 2, '/goods-receipt/list', 'Danh sách nhập kho', 1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(12, 2, '/goods-issue/list', 'Danh sách xuất kho', 2, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(13, 2, '/product-in-stock/list', 'Sản phẩm trong kho', 3, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(14, 2, '/history/list', 'Lịch sử kho', 4, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(15, 3, '/user/list', 'Danh sách user', 1, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(16, 3, '/menu/list', 'Danh sách menu', 3, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(17, 3, '/role/list', 'Danh sách quyền', 2, 1, '2021-05-10 10:39:10', '2021-05-10 10:39:10'),
(18, 1, '/product-info/edit', 'Sửa', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(19, 1, '/product-info/view', 'Xem', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(20, 1, '/product-info/add', 'Thêm mới', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(21, 1, '/product-info/save', 'Lưu', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(22, 1, '/product-info/delete', 'Xoá', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(23, 2, '/goods-receipt/view', 'Xem', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(24, 2, '/goods-receipt/add', 'Thêm mới', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(25, 2, '/goods-receipt/save', 'Lưu', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(26, 2, '/goods-receipt/export', 'Xuất báo cáo', -1, 1, '2021-05-14 05:45:41', '2021-05-14 05:45:41'),
(27, 2, '/goods-receipt/edit', 'Sửa ', -1, 1, '2021-05-14 06:20:58', '2021-05-14 06:20:58'),
(28, 3, '/user/save', 'Save', -1, 1, '2021-05-14 08:07:19', '2021-05-14 08:07:19'),
(29, 3, '/user/edit', 'Edit', -1, 1, '2021-05-14 08:07:19', '2021-05-14 08:07:19'),
(30, 3, '/user/view', 'View', -1, 1, '2021-05-14 08:07:19', '2021-05-14 08:07:19'),
(31, 3, '/user/add', 'Add', -1, 1, '2021-05-14 08:07:19', '2021-05-14 08:07:19'),
(32, 3, '/menu/permission', 'Permission', -1, 1, '2021-05-14 15:18:29', '2021-05-14 15:18:29'),
(33, 0, '/sharelink', 'Chia sẻ thông tin', 4, 0, '2021-05-14 17:35:28', '2021-05-14 17:35:28'),
(34, 3, '/link/list', 'Danh sách cách link', 5, 1, '2021-05-14 17:57:33', '2021-05-14 17:57:33'),
(35, 3, '/userlink/list', 'Chi tiết link', 6, 1, '2021-05-14 17:58:44', '2021-05-14 17:58:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_info`
--

CREATE TABLE `product_info` (
  `ID` int(11) NOT NULL,
  `CATE_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `IMG_URL` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_info`
--

INSERT INTO `product_info` (`ID`, `CATE_ID`, `NAME`, `CODE`, `DESCRIPTION`, `IMG_URL`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 1, 'Iphone 12', 'IP12', 'Nay la iphone 12', '/upload/1620912635830_184325176_499791181373657_5273958278043808324_n.jpg', 1, '2021-05-13 12:53:36', '2021-05-13 13:30:35'),
(2, 1, 'Huawei', 'HW', 'aass', '/upload/1620912652333_calendar.png', 1, '2021-05-13 13:02:53', '2021-05-13 13:30:52'),
(3, 2, 'Huawei a', 'Mate', 'a v c c', '/upload/1620974358833_screencapture-onthitracnghiem-online-vi-test-tieng-anh-6-tieng-anh-6-ngu-phap-100-256-html-2021-05-11-17_32_58.png', 1, '2021-05-13 13:10:35', '2021-05-14 06:39:18'),
(4, 1, 'Iphone XR', 'IPXR', 'XR', '/upload/1620981326608_184325176_499791181373657_5273958278043808324_n.jpg', 1, '2021-05-14 08:35:26', '2021-05-14 08:35:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_in_stock`
--

CREATE TABLE `product_in_stock` (
  `ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `QTY` int(11) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `PRICE` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_in_stock`
--

INSERT INTO `product_in_stock` (`ID`, `PRODUCT_ID`, `QTY`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`, `PRICE`) VALUES
(1, 3, 5, 1, '2021-05-14 06:29:59', '2021-05-14 06:29:59', '10000000.00'),
(2, 1, 2, 1, '2021-05-14 08:34:37', '2021-05-14 08:34:37', '13000000.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`ID`, `ROLE_NAME`, `DESCRIPTION`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'admin', 'Admin of system', 1, '2021-05-10 10:38:16', '2021-05-10 10:38:16'),
(2, 'staff', 'Staff of system', 1, '2021-05-10 10:38:16', '2021-05-10 10:38:16'),
(3, 'View', 'View', 1, '2021-05-14 14:43:26', '2021-05-14 14:43:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `USER_NAME`, `PASSWORD`, `EMAIL`, `NAME`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 'admin', 'g/Fp1WdaKMWLAURClWmo7ygf5+pUr9O/', 'admin@gmail.com', 'Tuấn Hoàn', 1, '2021-05-10 07:37:41', '2021-05-10 07:37:41'),
(2, 'staff', 'g/Fp1WdaKMWLAURClWmo7ygf5+pUr9O/', 'staff@gmail.com', 'Nhân Viên', 1, '2021-05-14 08:19:43', '2021-05-14 08:19:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_link`
--

CREATE TABLE `user_link` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LINK_ID` int(11) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_link`
--

INSERT INTO `user_link` (`ID`, `USER_ID`, `LINK_ID`, `URL`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 1, 1, 'fb.com/tuanhoan24', 1, '2021-05-15 06:50:23', '2021-05-15 06:50:23'),
(2, 1, 2, 'Zalo.com', 1, '2021-05-15 08:21:16', '2021-05-15 08:21:16'),
(3, 2, 1, 'fb.com', 1, '2021-05-15 08:21:38', '2021-05-15 08:21:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) NOT NULL,
  `ACTIVE_FLAG` int(2) NOT NULL DEFAULT 1,
  `CREATE_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `UPDATE_DATE` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_role`
--

INSERT INTO `user_role` (`ID`, `USER_ID`, `ROLE_ID`, `ACTIVE_FLAG`, `CREATE_DATE`, `UPDATE_DATE`) VALUES
(1, 1, 1, 1, '2021-05-10 11:50:49', '2021-05-10 11:50:49'),
(2, 2, 2, 1, '2021-05-14 08:19:43', '2021-05-14 08:19:43');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `menuid_foreginKey` (`MENU_ID`),
  ADD KEY `roleid_foreginKey` (`ROLE_ID`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `producid_foreginKey_history` (`PRODUCT_ID`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `producid_foreginKey_invoice` (`PRODUCT_ID`);

--
-- Chỉ mục cho bảng `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `cateid_foreginKey` (`CATE_ID`);

--
-- Chỉ mục cho bảng `product_in_stock`
--
ALTER TABLE `product_in_stock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `productid_foreginKey` (`PRODUCT_ID`) USING BTREE;

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user_link`
--
ALTER TABLE `user_link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `linkId_foreginKey` (`LINK_ID`),
  ADD KEY `userId_foreginKey` (`USER_ID`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userid_foregin_key` (`USER_ID`),
  ADD KEY `roleid_foregin_key` (`ROLE_ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `auth`
--
ALTER TABLE `auth`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `link`
--
ALTER TABLE `link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `product_info`
--
ALTER TABLE `product_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `product_in_stock`
--
ALTER TABLE `product_in_stock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_link`
--
ALTER TABLE `user_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `menuid_foreginKey` FOREIGN KEY (`MENU_ID`) REFERENCES `menu` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `roleid_foreginKey` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `producid_foreginKey_history` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `producid_foreginKey_invoice` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_info`
--
ALTER TABLE `product_info`
  ADD CONSTRAINT `cateid_foreginKey` FOREIGN KEY (`CATE_ID`) REFERENCES `category` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_in_stock`
--
ALTER TABLE `product_in_stock`
  ADD CONSTRAINT `productid_foreginKey` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_info` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_link`
--
ALTER TABLE `user_link`
  ADD CONSTRAINT `linkId_foreginKey` FOREIGN KEY (`LINK_ID`) REFERENCES `link` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userId_foreginKey` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `roleid_foregin_key` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `userid_foregin_key` FOREIGN KEY (`USER_ID`) REFERENCES `users` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
