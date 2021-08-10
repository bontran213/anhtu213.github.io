-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 02:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `anhsp`
--

CREATE TABLE `anhsp` (
  `MaAnh` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(1, 4, 1, 'Sản phẩm đẹp , chất lượng . ', '2019-10-27 00:00:00'),
(2, 4, 6, ' sản phẩm rất ok', '2019-10-27 20:58:25'),
(3, 4, 6, '  sản phẩm dùng tốt', '2019-10-27 23:29:35'),
(4, 4, 1, 'ok', '2019-10-29 14:38:48'),
(5, 4, 1, ' cho 5 sao', '2019-10-29 14:39:24'),
(6, 12, 1, 'a', '2019-10-31 14:41:10'),
(7, 4, 1, 'sản phẩm chất lượng', '2019-11-06 09:19:36'),
(8, 4, 1, 'toot', '2019-11-12 15:29:30'),
(9, 4, 1, 'ok', '2019-11-12 15:31:12'),
(10, 4, 1, 'ok', '2019-11-12 15:31:51'),
(11, 4, 1, 'ok', '2019-11-12 15:32:20'),
(12, 5, 1, 'ok', '2019-11-13 09:15:31'),
(14, 5, 1, 'sản phẩm tốt', '2019-12-18 17:12:34'),
(15, 10, 1, 'Rất đẹp', '2020-01-10 14:19:19'),
(16, 7, 14, 'ok', '2021-04-12 10:42:52'),
(17, 7, 18, 'đẹp', '2021-07-11 15:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(21, 4, 1, '3829000', '3829000', 38, 'Xanh'),
(21, 68, 2, '1230000', '2460000', 38, 'Trắng'),
(22, 4, 3, '3829000', '11487000', 36, 'Đỏ'),
(22, 68, 5, '1230000', '6150000', 38, 'Trắng'),
(23, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(25, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(26, 5, 2, '3519000', '7038000', 36, 'Trắng'),
(26, 7, 1, '2499000', '2499000', 38, 'none'),
(26, 68, 2, '1230000', '2460000', 36, 'Đen'),
(27, 6, 1, '3500000', '3500000', 37, 'Đen'),
(28, 68, 2, '1230000', '2460000', 38, 'Đen '),
(29, 7, 4, '1299400', '5197600', 38, 'none'),
(29, 54, 5, '630000', '3150000', 37, 'Đen '),
(30, 7, 1, '1299400', '1299400', 38, 'none'),
(31, 53, 1, '1600000', '1600000', 36, 'Đen '),
(32, 55, 1, '1230000', '1230000', 38, 'none'),
(33, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(34, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(35, 4, 1, '3829000', '3829000', 36, 'Đỏ'),
(36, 5, 2, '3519000', '7038000', 37, 'Xanh'),
(37, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(37, 5, 1, '3519000', '3519000', 37, 'Trắng'),
(37, 5, 1, '3519000', '3519000', 37, 'Xanh'),
(38, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(39, 5, 1, '3519000', '3519000', 36, 'Trắng'),
(39, 5, 2, '3519000', '7038000', 36, 'Xanh'),
(39, 5, 1, '3519000', '3519000', 37, 'Trắng'),
(40, 53, 5, '1600000', '8000000', 36, 'Đen '),
(41, 74, 1, '2200000', '2200000', 38, 'Đen '),
(42, 53, 1, '1550000', '1550000', 36, 'Đen '),
(43, 9, 1, '2599000', '2599000', 38, 'none'),
(44, 9, 1, '2599000', '2599000', 38, 'none'),
(45, 10, 3, '3862300', '11586900', 39, 'Trắng'),
(46, 72, 1, '1260000', '1260000', 40, 'Đen - Trắng'),
(47, 12, 1, '1398300', '1398300', 40, 'Vàng'),
(47, 53, 1, '1090000', '1090000', 42, 'none'),
(48, 7, 1, '1699300', '1699300', 39, 'Đen - Trắng'),
(48, 9, 1, '1804300', '1804300', 38, 'Đen - Trắng'),
(49, 76, 5, '1050000', '5250000', 38, 'Đen '),
(50, 11, 5, '3239300', '16196500', 39, 'none'),
(50, 11, 5, '3239300', '16196500', 40, 'none'),
(50, 11, 5, '3239300', '16196500', 41, 'none'),
(51, 10, 10, '3862300', '38623000', 39, 'Trắng'),
(52, 7, 5, '1699300', '8496500', 40, 'Đen - Trắng'),
(53, 70, 5, '1190000', '5950000', 39, 'Trắng'),
(54, 55, 5, '831000', '4155000', 39, 'Đen '),
(54, 71, 5, '840000', '4200000', 41, 'Đen '),
(55, 68, 1, '861000', '861000', 39, 'Đen '),
(56, 75, 5, '980000', '4900000', 38, 'Đen '),
(57, 56, 1, '1090000', '1090000', 39, 'Đen - Trắng'),
(57, 76, 1, '1050000', '1050000', 39, 'Đen '),
(58, 69, 1, '1090000', '1090000', 39, 'none'),
(58, 69, 1, '1090000', '1090000', 40, 'none'),
(59, 53, 5, '1090000', '5450000', 42, 'none'),
(60, 55, 1, '831000', '831000', 39, 'Đen '),
(61, 53, 1, '1090000', '1090000', 42, 'none'),
(61, 54, 2, '411000', '822000', 38, 'Đen '),
(62, 7, 1, '1699300', '1699300', 39, 'Đen - Trắng'),
(63, 70, 2, '1190000', '2380000', 39, 'Trắng'),
(64, 73, 1, '1750000', '1750000', 38, 'Đen '),
(65, 68, 1, '861000', '861000', 39, 'Đen '),
(65, 68, 1, '861000', '861000', 39, 'Đen - Trắng'),
(66, 9, 1, '2649000', '2649000', 42, 'Đen - Trắng'),
(67, 7, 1, '300000', '300000', 39, 'none'),
(68, 7, 3, '300000', '900000', 40, 'none'),
(69, 7, 5, '300000', '1500000', 41, 'Xanh'),
(70, 10, 5, '350000', '1750000', 39, 'Đen '),
(71, 7, 3, '300000', '900000', 40, 'Xanh'),
(72, 7, 1, '300000', '300000', 39, 'Xanh'),
(73, 7, 5, '300000', '1500000', 41, 'Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int(11) NOT NULL,
  `MaSize` int(11) NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(5, 40, 'none', 0),
(5, 41, 'none', 0),
(5, 42, 'none', 0),
(6, 38, 'Trắng', 0),
(6, 38, 'Vàng', 0),
(6, 39, 'Trắng', 0),
(6, 39, 'Vàng', 0),
(6, 40, 'Trắng', 0),
(6, 40, 'Vàng', 0),
(6, 41, 'Trắng', 0),
(6, 41, 'Vàng', 0),
(7, 39, 'Xanh', 10),
(7, 40, 'none', 0),
(7, 40, 'Xanh', 10),
(7, 41, 'none', 10),
(7, 41, 'Xanh', 5),
(9, 40, 'none', 0),
(9, 42, 'none', 0),
(10, 39, 'Đen ', 0),
(10, 40, 'Đen ', 0),
(10, 41, 'Đen ', 0),
(10, 42, 'Đen ', 0),
(11, 39, 'Đen ', 0),
(11, 40, 'Đen ', 0),
(11, 41, 'Đen ', 0),
(12, 39, 'Trắng', 0),
(12, 39, 'Vàng', 0),
(12, 40, 'Trắng', 0),
(12, 40, 'Vàng', 0),
(12, 41, 'Trắng', 0),
(12, 41, 'Vàng', 0),
(53, 41, 'Vàng', 0),
(53, 42, 'Vàng', 0),
(54, 39, 'Xanh', 0),
(54, 40, 'Xanh', 0),
(54, 41, 'Xanh', 0),
(55, 40, 'Đen ', 0),
(55, 41, 'Đen ', 0),
(56, 39, 'Đen - Trắng', 0),
(56, 40, 'Đen - Trắng', 0),
(56, 41, 'Đen - Trắng', 0),
(68, 39, 'Vàng', 0),
(68, 40, 'Vàng', 0),
(68, 41, 'Vàng', 0),
(69, 39, 'none', 0),
(69, 40, 'none', 0),
(69, 41, 'none', 0),
(70, 39, 'Đen ', 0),
(70, 40, 'Đen ', 0),
(70, 41, 'Đen ', 0),
(71, 40, 'Đen ', 0),
(71, 41, 'Đen ', 0),
(71, 42, 'Đen ', 0),
(72, 39, 'none', 0),
(72, 40, 'none', 0),
(72, 41, 'none', 0),
(73, 39, 'Hồng', 0),
(73, 40, 'Hồng', 0),
(73, 41, 'Hồng', 0),
(74, 40, 'none', 0),
(74, 41, 'none', 0),
(75, 39, 'Đen ', 0),
(75, 40, 'Đen ', 0),
(75, 41, 'Đen ', 0),
(76, 38, 'Đen ', 0),
(76, 38, 'Xanh', 0),
(76, 39, 'Đen ', 0),
(76, 39, 'Xanh', 0),
(76, 40, 'Đen ', 0),
(76, 40, 'Xanh', 0),
(76, 41, 'Đen ', 0),
(76, 41, 'Xanh', 0),
(76, 42, 'Đen ', 0),
(76, 42, 'Xanh', 0),
(77, 39, 'Xanh', 0),
(77, 40, 'Xanh', 0),
(77, 41, 'Xanh', 0);

--
-- Triggers `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy'),
(7, 'Sản phẩm sale');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `NgayDat` datetime DEFAULT current_timestamp(),
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`) VALUES
(21, 1, 1, '2019-01-05 21:29:56', '2020-01-01 20:00:43', 'hoàn thành', '1', '1'),
(22, 6, 1, '2019-11-06 09:17:00', '2020-01-07 09:17:07', 'hoàn thành', '17637000', '1'),
(23, 1, 1, '2019-11-11 20:05:20', '2019-10-12 20:08:06', 'hoàn thành', '3829000', '1'),
(25, 1, 1, '2019-11-24 13:07:58', '2019-11-25 13:12:14', 'hoàn thành', '3519000', '1'),
(26, 1, 1, '2019-12-08 20:10:52', '2019-12-13 14:35:27', 'hoàn thành', '11997000', '1'),
(27, 1, 1, '2019-12-15 14:54:30', '2019-12-21 11:18:42', 'hoàn thành', '3500000', '1'),
(28, 1, 1, '2019-12-19 14:49:54', '2019-12-21 11:18:44', 'hoàn thành', '2460000', '1'),
(29, 1, 1, '2019-12-20 11:16:20', '2019-12-21 11:19:46', 'hoàn thành', '8347600', '1'),
(30, 1, 1, '2019-12-23 21:14:06', '2019-12-25 19:48:16', 'hoàn thành', '1299400', '1'),
(31, 12, 1, '2019-12-28 13:05:23', '2019-12-29 13:05:44', 'hoàn thành', '1600000', '1'),
(32, 1, 1, '2020-01-02 15:31:23', NULL, 'Hủy Bỏ', '1230000', NULL),
(33, 1, 1, '2020-01-02 15:41:32', NULL, 'Hủy Bỏ', '3829000', NULL),
(34, 1, 1, '2020-01-02 15:47:28', NULL, 'Hủy Bỏ', '3829000', NULL),
(35, 1, 1, '2020-01-02 15:48:31', NULL, 'Hủy Bỏ', '3829000', NULL),
(36, 1, 1, '2020-01-02 15:49:11', '2020-01-03 16:59:25', 'hoàn thành', '7038000', '3'),
(37, 1, 1, '2020-01-02 15:50:08', '2020-01-03 15:57:15', 'Hủy Bỏ', '10557000', NULL),
(38, 1, 1, '2020-01-02 16:14:04', NULL, 'Hủy Bỏ', '3519000', NULL),
(39, 1, 1, '2020-01-02 16:54:41', NULL, 'Hủy Bỏ', '14076000', NULL),
(40, 1, 1, '2020-01-02 17:01:09', '2020-01-03 17:01:27', 'hoàn thành', '8000000', '3'),
(41, 1, 2, '2020-01-05 20:18:01', '2020-01-11 20:55:59', 'hoàn thành', '2200000', '3'),
(42, 1, 3, '2020-01-05 21:13:42', '2020-01-06 21:13:54', 'hoàn thành', '1550000', '3'),
(43, 1, 3, '2020-01-07 20:54:01', '2020-01-08 20:54:32', 'hoàn thành', '2599000', '3'),
(44, 1, 2, '2020-01-07 21:02:44', '2020-01-11 20:55:49', 'hoàn thành', '2599000', '3'),
(45, 6, 3, '2020-01-10 13:54:34', '2020-01-11 13:54:52', 'hoàn thành', '11586900', '3'),
(46, 6, 3, '2020-01-10 13:55:54', '2020-01-11 13:57:17', 'hoàn thành', '1260000', '3'),
(47, 6, 3, '2020-01-10 13:57:10', '2020-01-11 13:57:16', 'hoàn thành', '2488300', '3'),
(48, 6, 3, '2020-01-10 13:58:45', '2020-01-11 13:59:14', 'hoàn thành', '3503600', '3'),
(49, 6, 3, '2020-01-10 13:59:08', '2020-01-11 13:59:12', 'hoàn thành', '5250000', '3'),
(50, 6, 3, '2020-01-10 13:59:55', '2020-01-11 14:00:41', 'hoàn thành', '48589500', '3'),
(51, 6, 3, '2020-01-10 14:00:37', '2020-01-11 14:00:40', 'hoàn thành', '38623000', '3'),
(52, 12, 3, '2020-01-10 14:02:23', '2020-01-11 14:06:41', 'hoàn thành', '8496500', '3'),
(53, 12, 3, '2020-01-10 14:02:37', NULL, 'Hủy Bỏ', '5950000', NULL),
(54, 12, 3, '2020-01-10 14:02:58', NULL, 'Hủy Bỏ', '8355000', NULL),
(55, 12, 3, '2020-01-10 14:03:07', NULL, 'Hủy Bỏ', '861000', NULL),
(56, 12, 3, '2020-01-10 14:03:18', '2020-01-11 14:06:46', 'hoàn thành', '4900000', '3'),
(57, 11, 3, '2020-01-10 14:03:55', NULL, 'Hủy Bỏ', '2140000', NULL),
(58, 11, 3, '2020-01-10 14:04:08', NULL, 'Hủy Bỏ', '2180000', NULL),
(59, 11, 3, '2020-01-10 14:04:21', NULL, 'Hủy Bỏ', '5450000', NULL),
(60, 1, 3, '2020-01-10 14:04:42', '2021-04-11 18:56:50', 'hoàn thành', '831000', '3'),
(61, 1, 3, '2020-01-10 14:05:00', NULL, 'Hủy Bỏ', '1912000', NULL),
(62, 1, 3, '2020-01-10 14:05:09', '2020-01-11 14:06:48', 'hoàn thành', '1699300', '3'),
(63, 1, 3, '2020-01-10 14:05:28', '2020-01-11 14:06:49', 'hoàn thành', '2380000', '3'),
(64, 1, 3, '2020-01-10 14:05:39', NULL, 'Hủy Bỏ', '1750000', NULL),
(65, 1, 3, '2020-01-10 14:05:51', '2020-01-11 14:06:50', 'hoàn thành', '1722000', '3'),
(66, 13, 3, '2021-04-07 16:24:40', NULL, 'Hủy Bỏ', '2649000', NULL),
(67, 13, 3, '2021-04-12 08:53:59', '2021-04-13 08:54:17', 'hoàn thành', '300000', '3'),
(68, 14, 3, '2021-04-12 10:39:30', '2021-04-13 10:39:42', 'hoàn thành', '900000', '3'),
(69, 13, 3, '2021-04-25 15:12:19', '2021-04-26 15:13:17', 'hoàn thành', '1500000', '3'),
(70, 13, 3, '2021-05-08 10:12:16', '2021-05-09 10:12:32', 'hoàn thành', '1750000', '3'),
(71, 13, 3, '2021-05-08 12:09:00', '2021-05-11 20:25:29', 'hoàn thành', '900000', '3'),
(72, 18, 3, '2021-07-11 15:55:27', '2021-07-12 15:56:31', 'hoàn thành', '300000', '3'),
(73, 18, 3, '2021-07-12 13:48:22', '2021-07-13 13:48:49', 'hoàn thành', '1500000', '3');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(18, 'Trần Anh Tuấn', 'anhtuantran213@gmail.com', 343077281, '213 hùng vương tp kon tum', '123456'),
(13, 'Trần Anh Tú', 'anhtutran213@gmail.com', 343077284, '178 trường chinh', '123456'),
(17, 'Trần Văn Anh', 'anhtutran2131@gmail.com', 343077282, '178 trường chinh tp thủ đức', '123456'),
(14, 'Nguyễn Văn Toàn', 'BonTran213@gmail.com', 343077283, '178 trường chinhhh', 'admin'),
(6, 'Nguyễn Nam Cường', 'cuong@gmail.com', 1228923743, 'diachi', '123456'),
(12, 'luffy', 'luffy@gmail.com', 9989898, '19 Phan Dang Luu - Da Nang', '123456'),
(11, 'saitama', 'saitama@gmail.com', 9113115, 'diachi', '123456'),
(1, 'Nguyễn Đình Trí', 'tringuyen25071998@gmail.com', 778923743, '1092 Trường Chinh - Đà nẵng', '123456'),
(19, 'Nguyễn Văn Toàn', 'vantoan@gmail.com', 343077255, '178 trường chinh', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int(5) DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('none'),
('Trắng'),
('Vàng'),
('Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int(11) NOT NULL,
  `TenNN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(21, 'Lâm Nhật Phi', '1092 Trường chinh - Đà nẵng', 778923743),
(22, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(23, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(25, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(26, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(27, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(28, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(29, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(30, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(31, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(32, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(33, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(34, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(35, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(36, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(37, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(38, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(39, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(40, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(41, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(42, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(43, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(44, 'Nguyễn Đình Trí', '1092 Trường chinh - Đà nẵng', 778923743),
(45, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(46, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(47, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(48, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(49, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(50, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(51, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(52, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(53, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(54, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(55, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(56, 'luffy', '19 Phan Dang Luu - Da Nang', 9989898),
(57, 'saitama', 'diachi', 9113115),
(58, 'saitama', 'diachi', 9113115),
(59, 'saitama', 'diachi', 9113115),
(60, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(61, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(62, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(63, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(64, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(65, 'Nguyễn Đình Trí', '1092 Trường Chinh - Đà nẵng', 778923743),
(66, 'Trần Anh Tú', '178 trường chinh', 343077284),
(67, 'Trần Anh Tú', '178 trường chinh', 343077284),
(68, 'Nguyễn Văn Toàn', '178 trường chinhhh', 343077283),
(69, 'Trần Anh Tú', '178 trường chinh', 343077284),
(70, 'Trần Anh Tú', '178 trường chinh', 343077284),
(71, 'Trần Anh Tú', '178 trường chinh', 343077284),
(72, 'Trần Anh Tuấn', '213 hùng vương tp kon tum.', 343077281),
(73, 'Trần Anh Tuấn', '213 hùng vương tp kon tum', 343077281);

-- --------------------------------------------------------

--
-- Table structure for table `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'Shirt'),
(2, 'Pant'),
(3, 'Jacket'),
(4, 'Short Pant'),
(6, 'T-Shirt'),
(7, 'Coat');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `TenNV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int(12) NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin.onishop@gmail.com', 905027527, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', 'admin', 1),
(6, 'Trần Anh Tú', 'anhtutran2132@gmail.com', 343077284, '178 trường chinh thành phố kontum', '123456', 4),
(4, 'Nguyễn Nam Cường', 'cuong@gmail.com', 132465798, 'Số 451 Hoàng Diệu - Thành phố Đà Nẵng', '123456', 3),
(5, 'Nhân viên F', 'F@gmail.com', 123456789, 'đà nẵng', '123456', 5),
(2, 'Nhân Viên Bán Hàng ', 'NVBH@gmail.com', 123456789, 'Đà Nẵng', '123456', 4),
(1, 'Quản Lý', 'thongkul@gmail.com', 778923743, '12 núi thàng - đà nẵng', '123456', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT current_timestamp(),
  `Note` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` int(11) NOT NULL,
  `Mau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaSP`, `SoLuong`, `DonGia`, `TongTien`, `NgayNhap`, `Note`, `Size`, `Mau`) VALUES
(28, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 36, 'none'),
(29, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 37, 'none'),
(30, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 38, 'none'),
(31, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 39, 'none'),
(32, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 40, 'none'),
(33, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 41, 'none'),
(34, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 42, 'none'),
(35, 3, 4, 100, '3500000', '350000000', '2020-01-10 13:35:56', '', 43, 'none'),
(36, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 39, 'Xanh'),
(37, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 40, 'Xanh'),
(38, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 41, 'Xanh'),
(39, 3, 5, 100, '3300000', '330000000', '2020-01-10 13:37:09', '', 42, 'Xanh'),
(40, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 38, 'Đen'),
(41, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 39, 'Đen'),
(42, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 40, 'Đen'),
(43, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 41, 'Đen'),
(44, 3, 6, 40, '3000000', '120000000', '2020-01-10 13:37:47', 'hàng hot', 42, 'Đen'),
(45, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 39, 'Trắng'),
(46, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 40, 'Trắng'),
(47, 3, 7, 50, '2000000', '100000000', '2020-01-10 13:38:29', '', 41, 'Trắng'),
(48, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 39, 'Đen - Trắng'),
(49, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 40, 'Đen - Trắng'),
(50, 3, 7, 20, '2000000', '40000000', '2020-01-10 13:39:19', 'màu giới hạn', 41, 'Đen - Trắng'),
(51, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 38, 'Đen - Trắng'),
(52, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 39, 'Đen - Trắng'),
(53, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 40, 'Đen - Trắng'),
(54, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 41, 'Đen - Trắng'),
(55, 3, 9, 40, '2000000', '80000000', '2020-01-10 13:39:40', 'custom', 42, 'Đen - Trắng'),
(56, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 39, 'Trắng'),
(57, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 40, 'Trắng'),
(58, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 41, 'Trắng'),
(59, 3, 10, 100, '5000000', '500000000', '2020-01-10 13:39:59', '', 42, 'Trắng'),
(60, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 39, 'none'),
(61, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 40, 'none'),
(62, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 41, 'none'),
(63, 3, 11, 100, '3500000', '350000000', '2020-01-10 13:40:23', '', 42, 'none'),
(64, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 39, 'Vàng'),
(65, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 40, 'Vàng'),
(66, 3, 12, 100, '1800000', '180000000', '2020-01-10 13:40:58', '', 41, 'Vàng'),
(67, 3, 53, 500, '1500000', '750000000', '2020-01-10 13:42:37', '', 42, 'none'),
(68, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 36, 'Đen'),
(69, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 37, 'Đen'),
(70, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 38, 'Đen'),
(71, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 39, 'Đen'),
(72, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 40, 'Đen'),
(73, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 41, 'Đen'),
(74, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 42, 'Đen'),
(75, 3, 54, 500, '500000', '250000000', '2020-01-10 13:43:07', 'Hàng F1', 43, 'Đen'),
(76, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 39, 'Đen'),
(77, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 40, 'Đen'),
(78, 3, 55, 200, '1000000', '200000000', '2020-01-10 13:43:25', '', 41, 'Đen'),
(80, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 38, 'Đen - Trắng'),
(81, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 39, 'Đen - Trắng'),
(82, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 40, 'Đen - Trắng'),
(83, 3, 56, 100, '1500000', '150000000', '2020-01-10 13:44:49', '', 41, 'Đen - Trắng'),
(84, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 39, 'none'),
(85, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 40, 'none'),
(86, 3, 69, 100, '1500000', '150000000', '2020-01-10 13:46:02', '', 41, 'none'),
(87, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 39, 'Đen'),
(88, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 40, 'Đen'),
(89, 3, 68, 500, '1000000', '500000000', '2020-01-10 13:46:39', '', 41, 'Đen'),
(90, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 39, 'Đen - Trắng'),
(91, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 40, 'Đen - Trắng'),
(92, 3, 68, 30, '1000000', '30000000', '2020-01-10 13:46:52', '', 41, 'Đen - Trắng'),
(93, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 39, 'Đen - Trắng'),
(94, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 40, 'Đen - Trắng'),
(95, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:31', '', 41, 'Đen - Trắng'),
(96, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 39, 'Trắng'),
(97, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 40, 'Trắng'),
(98, 3, 70, 100, '1500000', '150000000', '2020-01-10 13:47:43', '', 41, 'Trắng'),
(99, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 40, 'Đen'),
(100, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 41, 'Đen'),
(101, 3, 71, 100, '1000000', '100000000', '2020-01-10 13:47:59', '', 42, 'Đen'),
(102, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 39, 'Trắng'),
(103, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 40, 'Trắng'),
(104, 3, 72, 100, '1500000', '150000000', '2020-01-10 13:48:13', '', 41, 'Trắng'),
(105, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 39, 'Trắng'),
(106, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 40, 'Trắng'),
(107, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:48:22', '', 41, 'Trắng'),
(108, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 36, 'Đen'),
(109, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 37, 'Đen'),
(110, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 38, 'Đen'),
(111, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 39, 'Đen'),
(112, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 40, 'Đen'),
(113, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 41, 'Đen'),
(114, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 42, 'Đen'),
(115, 3, 73, 100, '1500000', '150000000', '2020-01-10 13:48:40', '', 43, 'Đen'),
(116, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 38, 'Đen - Trắng'),
(117, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 39, 'Đen - Trắng'),
(118, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 40, 'Đen - Trắng'),
(119, 3, 74, 100, '2000000', '200000000', '2020-01-10 13:49:03', '', 41, 'Đen - Trắng'),
(120, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 38, 'Đen'),
(121, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 39, 'Đen'),
(122, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 40, 'Đen'),
(123, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 41, 'Đen'),
(124, 3, 75, 100, '1000000', '100000000', '2020-01-10 13:49:20', '', 42, 'Đen'),
(125, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 38, 'Đen - Trắng'),
(126, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 39, 'Đen - Trắng'),
(127, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 40, 'Đen - Trắng'),
(128, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 41, 'Đen - Trắng'),
(129, 3, 75, 40, '1000000', '40000000', '2020-01-10 13:49:39', '', 42, 'Đen - Trắng'),
(130, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 38, 'Trắng'),
(131, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 39, 'Trắng'),
(132, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 40, 'Trắng'),
(133, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 41, 'Trắng'),
(134, 3, 75, 50, '1000000', '50000000', '2020-01-10 13:49:49', '', 42, 'Trắng'),
(135, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 38, 'Đen'),
(136, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 39, 'Đen'),
(137, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 40, 'Đen'),
(138, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 41, 'Đen'),
(139, 3, 76, 100, '1000000', '100000000', '2020-01-10 13:50:03', '', 42, 'Đen'),
(140, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:10', '', 38, 'Trắng'),
(141, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 39, 'Trắng'),
(142, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 40, 'Trắng'),
(143, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 41, 'Trắng'),
(144, 3, 76, 40, '1000000', '40000000', '2020-01-10 13:50:11', '', 42, 'Trắng'),
(145, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 39, 'Đen - Trắng'),
(146, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 40, 'Đen - Trắng'),
(147, 3, 77, 500, '1000000', '500000000', '2020-01-10 13:50:22', '', 41, 'Đen - Trắng'),
(148, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 39, 'Đen - Trắng'),
(149, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 40, 'Đen - Trắng'),
(150, 3, 72, 100, '1000000', '100000000', '2020-01-10 13:55:46', '', 41, 'Đen - Trắng');

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Mau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaNV`, `MaSP`, `Mau`, `Size`, `SoLuong`, `DonGia`, `TongTien`, `Note`, `NgayXuat`) VALUES
(5, 3, 4, 'none', 36, 40, '1000000', '40000000', 'test', '2020-01-10 21:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `quyen`
--

CREATE TABLE `quyen` (
  `id` int(11) NOT NULL,
  `Ten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int(11) DEFAULT NULL,
  `MaNCC` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT 0,
  `MoTa` text COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `MaAnh` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `AnhNen` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `MaAnh`, `AnhNen`) VALUES
(4, 'Florida Shirt', 3, 1, NULL, 'Hơi thở của mùa hè với biển xanh và cát trắng cùng những chuyến vi vu bất tận bên bạn bè rồi cũng đến khiến bất kì ai cũng phải thổn thức để chuẩn bị sắm sửa cho khoảng thời gian xả hơi tuyệt nhất của năm nhỉ. Đóng gói đồ đạc lên đường cũng đừng quên chiếc Floral shirt - biểu tượng của một mùa hè sôi nổi và xanh mát, bạn nhé ! Năm nay, chúng mình ra mắt thêm nhiều mẫu với họa tiết \"Tropical\" đặc trưng, được in thẩm thấu trên bề mặt vải cotton dịu nhẹ giúp những chuyến du lịch của bạn không chỉ có bạn hiền, ảnh đẹp mà còn cảm giác dễ chịu trong những ngày hè nắng nóng đó', '300000', NULL, 'shirt.jpg'),
(5, 'Bevis Shirt', 3, 1, 0, ' Tự tin đón ngày nắng mới với chiếc sơ mi được mong chờ nhất trong mùa hè. Mát nhẹ và thấm hút mồ hôi là tiêu chí hàng đầu mà chúng mình cân nhắc khi lựa chọn chất liệu cho sản phẩm này. Bevis Shirt được làm từ vải đũi cao cấp, sợi đan dày dặn cho bạn vẻ ngoài thanh lịch mà không quá mỏng manh như trang phục đi biển. Tối giản trong thiết kế không túi ngực cùng form dáng suông, bạn thoải mái kết hợp với trang phục và phụ kiện khác để luôn tự tin trong mọi hoạt động của mùa hè.', '350000', NULL, '843a1414-1617723896.jpg'),
(6, 'Chuck Pant ', 3, 2, 0, 'Với thiết kế trẻ trung, năng động, cùng chất liệu vải Tuyt si có độ thấm hút cao tạo sự thoải mái và dễ chịu là những lý do hợp lý để bạn sẽ không thể bỏ qua chiếc quần chất lượng này rồi.', '450000', NULL, '843a2223-1617768593.jpg'),
(7, 'Florida Shirt', 1, 1, 35, 'Hơi thở của mùa hè với biển xanh và cát trắng cùng những chuyến vi vu bất tận bên bạn bè rồi cũng đến khiến bất kì ai cũng phải thổn thức để chuẩn bị sắm sửa cho khoảng thời gian xả hơi tuyệt nhất của năm nhỉ. Đóng gói đồ đạc lên đường cũng đừng quên chiếc Floral shirt - biểu tượng của một mùa hè sôi nổi và xanh mát, bạn nhé ! Năm nay, chúng mình ra mắt thêm nhiều mẫu với họa tiết \"Tropical\" đặc trưng, được in thẩm thấu trên bề mặt vải cotton dịu nhẹ giúp những chuyến du lịch của bạn không chỉ có bạn hiền, ảnh đẹp mà còn cảm giác dễ chịu trong những ngày hè nắng nóng đó', '300000', '', 'shirt.jpg'),
(9, 'Baggy Pant ', 1, 2, 0, 'Nếu như Baggy Pant ver 1 cạp chun vừa vặn với mọi vóc dáng, thì phiên bản ver 2 cạp âu lại giúp các bạn trở nên tinh tế và lịch sự hơn khi cắm thùng với áo sơ mi. Bên cạnh đó, những bạn ưa thích vận động thì Chinos Pant chính là lựa chọn hoàn hảo nhất nhờ chất vải yumi co dãn đó ạ', '500000', NULL, '843a1747-min-1615795062.jpg'),
(10, 'Daily Sweater', 1, 1, 0, 'Với chất liệu nỉ mềm mịn khi mặc và tránh xù lông sau mỗi lần giặt, daily sweater là một sự lựa chọn thông minh cho bạn trong thời tiết như này đó! Kiểu dáng thoải mái, nên dù bạn là nam hay nữ cũng đều có thể mặc được nhé. Đặc biệt nếu bạn mặc đôi hay mặc nhóm thì quả là một lựa chọn tuyệt vời!', '350000', NULL, '_MG_3802.jpg'),
(11, 'Otis Pant', 1, 2, 0, 'Kiểu dáng quần âu tuy đơn giản chưa bao giờ là lỗi mốt nay được cái tiến với đường ve kẻ dọc ống quần rất thời thượng. Chất liệu Kaki premium mềm mại, tạo cảm giác dễ chịu khi mặc, dễ dàng  thay đổi tư thế khi ngồi cũng như tạo sựthoải mái và linh hoạt khi vận động vào mùa hè. Đặc biệt chiếc quần được thiết kế thêm cúc \"Side tab\" ở phần hông vô cùng thông minh, giúp điều chỉnh phần cạp quần vừa vặn với bụng bạn mà không cần đến thắt lưng !!!', '450000', NULL, 'gabi-2-min-1615433402.jpg'),
(12, 'Mindy Shirt', 1, 1, 0, 'Chất liệu đũi pha cotton mềm mại, có khả năng cách nhiệt, chống nắng nóng và thấm hút mồ hôi vô cùng hiệu quả, giúp Mindy đem lại cảm giác vô cùng thoáng mát và dễ chịu khi mặc. Thiết kế trẻ trung, kết hợp với cổ tàu ấn tượng cùng họa tiết kẻ sọc nằm chìm trên vải giúp chiếc áo trở nên độc đáo hơn so với những chiếc áo mùa hè đơn giản khác. Rất tiện lợi khi ra ngoài đi làm, đi học hay đi chơi với bạn bè và trong mọi tình huống đều rất ổn đấy !', '300000', NULL, 'LOOK 42-min.jpg'),
(53, 'Suede Hoodie', 1, 1, 0, 'Với chất liệu vải da lộn 2 lớp, giúp cản gió tối đa đi kèm với kiểu dáng tối giản khiến bạn có thêm lựa chọn trong việc phối đồ chuẩn bị cho những ngày vui chơi cuối năm này', '490000', NULL, 'LOOK46.jpg'),
(54, 'Suede Hoddie ', 3, 1, 0, 'Với chất liệu vải da lộn 2 lớp, giúp cản gió tối đa đi kèm với kiểu dáng tối giản khiến bạn có thêm lựa chọn trong việc phối đồ chuẩn bị cho những ngày vui chơi cuối năm này', '490000', NULL, 'LOOK56.jpg'),
(55, 'Aiden shirt', 1, 1, 0, 'Với chất liệu vải đũi pha cotton pha trộn cùng thiết kế tối giản giúp cho Aiden shirt mang lại trải nghiệm mềm mại và thoải mái khi mặc. Hi vọng chiếc áo này sẽ đồng hành với bạn trong những buổi đi chơi, đi học hay đi làm cũng đều cực ổn nhé', '320000', NULL, 'LOOK 46-min.jpg'),
(56, 'Windy Jacket', 3, 3, 0, 'Windy Jacket có lẽ là vị cứu tinh cho các bạn trong những ngày mưa này. Chiếc áo gió gọn gàng, dễ dàng khoác ngoài áo thun hay áo giữ nhiệt, mưa gió chỉ là chuyện nhỏ phải không nào?', '600000', NULL, '_mg_6958-1610592334.jpg'),
(68, 'Rain Coat ', 1, 7, 0, 'Được thiết kế cẩn thận và tỉ mỉ với lớp vải cản gió bên ngoài và lớp lót chống nước bên trong, Rain Coat xứng đáng là một chiếc áo khoác ấm áp và tiện lợi mà bạn đang tìm kiếm. Không tốn nhiều thời gian suy nghĩ lựa đồ, khoác lên mình chiếc Rain Coat gọn gàng, nhã nhặn này là bạn có thể sẵn sàng cho một ngày đông năng động với nhiều trải nghiệm thú vị rồi ! ', '800000', NULL, '_mg_6614-1607330885.jpg'),
(69, 'Puffy Jacket', 1, 3, 0, 'Chiếc áo phao chuẩn mực cho những cuộc hẹn cuối năm! Tự tin là một chiếc áo trang nhã và ấm áp, Puffy Jacket là một item không thể thiếu trong tiết trời trở gió như này. Với thiết kế tối giản từ gam màu tinh tế bên ngoài cùng chất bông nhẹ và ấm áp bên trong, chiếc áo này sẽ cùng bạn \"cháy\" hết mình trong những buổi party cuối năm đó!', '750000', NULL, '_mg_6763-1610592283.jpg'),
(70, 'Bommer Jacket', 1, 3, 0, 'Được làm từ chất liệu da lộn, với thiết kế tối giản nhưng được chăm chút ở những chi tiết như khoá kéo bằng đồng giúp Bomber jacket giữ nguyên được vẻ cao cấp', '800000', NULL, '_mg_7688-1610088371.jpg'),
(71, 'Trend Coat', 1, 7, 0, 'Ra mắt vào thời điểm cận Tết, Trend coat là mẫu áo dạ không quá cầu kỳ nhưng đủ thanh lịch và lịch sự cho những buổi hẹn cuối năm đó.  Nếu là một tín đồ của đồ basic, chắc chắn Trend coat sẽ là chiếc áo giúp bạn dễ dàng kết hợp với các loại layer bên trong như áo cổ lọ, sơ mi hay bất cứ phụ kiện thời trang nào mà vẫn in đậm dấu ấn cá nhân. Với chất vải dạ len mịn, thiết kế chuẩn form, bạn có thể mặc nhiều phong cách mà không ngại thời tiết dịp Tết thất thường.', '1200000', NULL, '843a0984-1612249681.jpg'),
(72, 'Box Short Pant', 1, 4, 0, 'Thiết kế ống quần ôm vừa đủ tạo cảm giác thoải mái khi mặc và giúp cho bạn có ngoại hình cân đối hơn. Chất liệu khaki dày dặn, vì vậy bạn có thể thoải mái giặt hàng tuần mà ko sợ hỏng chất liệu hay form dáng', '250000', NULL, 'LOOK 61_1-min.jpg'),
(73, 'T-shirt Pink', 2, 6, 0, 'Với kiểu dáng là sự phối hợp hài hòa của nét chững chạc mà sơ mi đem lại qa phần cổ đức truyền thống, những mầu T-shirt tại Look còn được \"nâng cấp\" về kiểu dáng thoải mái, trẻ trung kế thừa từ những mẫu áo phông đem lại, giúp bạn vô tư diện nhiều dịp khác nhau mà không sợ bị chê \"già dặn\" đâu nhé .', '250000', NULL, '21s_4811-1603869488.jpg'),
(74, 'T-shirt', 1, 6, 0, 'Với kiểu dáng là sự phối hợp hài hòa của nét chững chạc mà sơ mi đem lại qa phần cổ đức truyền thống, những mầu T-shirt tại Look còn được \"nâng cấp\" về kiểu dáng thoải mái, trẻ trung kế thừa từ những mẫu áo phông đem lại, giúp bạn vô tư diện nhiều dịp khác nhau mà không sợ bị chê \"già dặn\" đâu nhé ', '220000', NULL, 'img_2103-1603612890.jpg'),
(75, 'Dylan Short', 2, 4, 0, 'Chắc nhiều bạn cũng từng nghĩ như mình, rằng 1 chiếc quần short chỉ cần mát mẻ là được nhỉ . Nhưng với Dylan short, 3 ưu điểm về “chất liệu, đường may và mầu sắc” sẽ giúp bạn thêm gọn gàng hơn trong bộ outfit của mình những ngày nóng. Với chất liệu vải đũi pha cotton tạo nên trải nghiệm thoáng mát vô cùng. Bên cạnh đó với thiết kế mềm mại nhưng cũng không kém phần chững chạc sẽ nâng đôi phần tự tin cho bạn hơn mỗi ngày', '280000', NULL, 'LOOK 46-min (1).jpg'),
(76, 'Black Jean ', 1, 2, 0, 'Chất liệu vải khaki dệt với sợi cotton khiến cảm giác mặc rất thoáng mát và dễ chịu. Với 2 tone mầu: đen và ghi, bạn có thể thoải mái lựa chọn mặc với bất kì chiếc áo nào trong tủ đồ của bạn đều ổn luôn nhé ', '450000', NULL, '_mg_6547-1607331618.jpg'),
(77, 'Blue Jean', 2, 2, 0, 'Được thiết kế nổi bật với tone màu blue kết hợp với kiểu dáng gọn gàng, chỉn chu, Blue jean là một item dễ dàng kết hợp với bất kỳ chiếc áo sơ mi hay sweater nào trong tủ đồ của bạn. Nhanh gọn và không cầu kỳ, chiếc quần này sẽ giúp bạn tiết kiệm được kha khá thời gian cho mỗi sáng lựa đồ đó!', '500000', NULL, '_mg_6547-1607331618.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int(11) NOT NULL,
  `MaKM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `MaSize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`MaSize`) VALUES
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaAnh`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Indexes for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Indexes for table `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Indexes for table `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Indexes for table `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Indexes for table `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Indexes for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anhsp`
--
ALTER TABLE `anhsp`
  MODIFY `MaAnh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anhsp`
--
ALTER TABLE `anhsp`
  ADD CONSTRAINT `anhsp_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Constraints for table `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD CONSTRAINT `chitietsanpham_ibfk_1` FOREIGN KEY (`MaSize`) REFERENCES `size` (`MaSize`),
  ADD CONSTRAINT `chitietsanpham_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `chitietsanpham_ibfk_3` FOREIGN KEY (`MaMau`) REFERENCES `mau` (`MaMau`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD CONSTRAINT `nguoinhan_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`Quyen`) REFERENCES `quyen` (`id`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `phieuxuat_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieuxuat_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `phieuxuat_ibfk_3` FOREIGN KEY (`Mau`) REFERENCES `mau` (`MaMau`),
  ADD CONSTRAINT `phieuxuat_ibfk_4` FOREIGN KEY (`Size`) REFERENCES `size` (`MaSize`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacc` (`MaNCC`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`);

--
-- Constraints for table `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_1` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`),
  ADD CONSTRAINT `sanphamkhuyenmai_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
