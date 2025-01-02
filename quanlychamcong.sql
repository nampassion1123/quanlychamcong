-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 12:41 PM
-- Server version: 5.7.33
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlychamcong`
--

-- --------------------------------------------------------

--
-- Table structure for table `bo_phan`
--

CREATE TABLE `bo_phan` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `Tenql` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `ma_pb` varchar(50) DEFAULT NULL,
  `ten_bp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bo_phan`
--

INSERT INTO `bo_phan` (`ID`, `Ten`, `Tenql`, `email`, `pass`, `ma_pb`, `ten_bp`) VALUES
(5, 'Káº¿ toÃ¡n', 'chiáº¿n', 'chientest', '1234', NULL, NULL),
(6, 'HÃ nh chÃ­nh nhÃ¢n sá»± ', 'chiáº¿n HCNS', 'chien1', '123', NULL, NULL),
(7, 'Sale', '', NULL, '', NULL, NULL),
(8, 'Váº­n hÃ nh ', '', '', '', NULL, NULL),
(11, 'IT1', 'Nguyá»…n nhÃ¢nn', 'nhan1234', '1234', NULL, NULL),
(12, 'Wellcome', NULL, NULL, NULL, 'PB0011', 'Tester '),
(13, 'PhÃ²ng ban má»›i', NULL, 'ntchien5701@gmail.com', NULL, 'PBM01', 'PB má»›i');

-- --------------------------------------------------------

--
-- Table structure for table `ca_lam_viec`
--

CREATE TABLE `ca_lam_viec` (
  `ID` int(11) NOT NULL,
  `Tenca` varchar(255) NOT NULL,
  `Gio_bat_dau` time NOT NULL,
  `Gio_ket_thuc` time NOT NULL,
  `Thu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ca_lam_viec`
--

INSERT INTO `ca_lam_viec` (`ID`, `Tenca`, `Gio_bat_dau`, `Gio_ket_thuc`, `Thu`) VALUES
(10, 'S', '06:00:00', '15:00:00', '2-7'),
(11, 'S', '06:00:00', '16:00:00', '2-7'),
(12, 'S', '06:00:00', '17:00:00', '2-7'),
(13, 'S', '06:00:00', '18:00:00', '2-7'),
(14, 'S', '06:00:00', '14:00:00', 'CN'),
(15, 'GS', '08:00:00', '17:00:00', '2-7'),
(16, 'GS', '08:00:00', '18:00:00', '2-7'),
(17, 'GS', '08:00:00', '19:00:00', '2-7'),
(18, 'GS', '08:00:00', '20:00:00', '2-7'),
(19, 'GS', '08:00:00', '16:00:00', 'CN'),
(20, 'T', '12:00:00', '21:00:00', '2-7'),
(21, 'T', '12:00:00', '22:00:00', '2-7'),
(22, 'T', '12:00:00', '23:00:00', '2-7'),
(23, 'T', '12:00:00', '00:00:00', '2-7'),
(24, 'T', '12:00:00', '20:00:00', 'CN'),
(25, 'GC', '14:00:00', '23:00:00', '2-7'),
(26, 'GC', '14:00:00', '00:00:00', '2-7'),
(27, 'GC', '14:00:00', '01:00:00', '2-7'),
(28, 'GC', '14:00:00', '02:00:00', '2-7'),
(29, 'GC', '14:00:00', '22:00:00', 'CN'),
(30, 'D', '17:00:00', '02:00:00', '2-7'),
(31, 'D', '16:00:00', '02:00:00', '2-7'),
(32, 'D', '15:00:00', '02:00:00', '2-7'),
(33, 'D', '14:00:00', '02:00:00', '2-7'),
(34, 'D', '17:00:00', '01:00:00', 'CN'),
(35, 'K', '21:00:00', '06:00:00', '2-7'),
(36, 'K', '20:00:00', '06:00:00', '2-7'),
(37, 'K', '22:00:00', '06:00:00', 'CN'),
(38, 'VP', '00:00:00', '00:00:00', ''),
(39, 'P', '00:00:00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `cham_bu`
--

CREATE TABLE `cham_bu` (
  `id` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `Ngay_thieu` date NOT NULL,
  `Ngay_cham_bu` date NOT NULL,
  `Gio_bat_dau` time NOT NULL,
  `Gio_ket_thuc` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cham_bu`
--

INSERT INTO `cham_bu` (`id`, `Ma_nv`, `Ngay_thieu`, `Ngay_cham_bu`, `Gio_bat_dau`, `Gio_ket_thuc`, `status`) VALUES
(5, 'NV5701', '2024-10-02', '2024-10-05', '16:22:00', '19:53:00', 1),
(6, 'NV5701', '2024-10-02', '2024-10-08', '11:37:00', '23:31:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cham_cong`
--

CREATE TABLE `cham_cong` (
  `ID_cham_cong` int(11) NOT NULL COMMENT 'ID chấm công',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Ngay` date NOT NULL COMMENT 'Ngày tháng năm chấm công',
  `Gio_checkin` time DEFAULT NULL,
  `Gio_checkout` time DEFAULT NULL,
  `so_gio_lam` decimal(10,1) DEFAULT NULL,
  `so_gio_thieu` decimal(10,1) DEFAULT NULL,
  `Tinh_trang` varchar(10) NOT NULL DEFAULT 'Đi làm' COMMENT 'Tình trạng',
  `phe_duyet` int(11) NOT NULL DEFAULT '0' COMMENT '0 là chưa duyệt công\r\n1 là đã duyệt',
  `role` int(11) DEFAULT '0' COMMENT '0 là chấm công mặc định\r\n1 là chấm bù'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cham_cong`
--

INSERT INTO `cham_cong` (`ID_cham_cong`, `Ma_nv`, `Ngay`, `Gio_checkin`, `Gio_checkout`, `so_gio_lam`, `so_gio_thieu`, `Tinh_trang`, `phe_duyet`, `role`) VALUES
(1269518, 'chien1', '2024-11-11', '16:03:29', '16:12:12', '0.1', '8.9', 'Äi lÃ m', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assigned_to` int(11) NOT NULL,
  `message` text NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2' COMMENT '0 là admin\r\n1 là tp\r\n2 là nv',
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `message_id`, `user_id`, `assigned_to`, `message`, `role`, `status`, `created_at`) VALUES
(1, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:10:26'),
(2, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:36:54'),
(3, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:37:03'),
(4, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:37:03'),
(5, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:40:12'),
(6, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:40:12'),
(7, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:40:12'),
(8, 4, 6, 2, 'Tôi cần hỗ trợ tôi cần hỗ trợ', 2, 0, '2024-10-21 03:40:12'),
(10, 4, 6, 2, 'abc', 2, 0, '2024-10-21 04:40:23'),
(11, 13, 6, 2, 'lisahjk gkjdsf', 2, 1, '2024-10-21 08:04:57'),
(12, 13, 1, 2, 'abc', 2, 1, '2024-10-21 08:22:17'),
(14, 13, 6, 2, 'ok chÆ°a', 2, 1, '2024-10-21 08:35:12'),
(15, 13, 6, 2, 'hihihih', 2, 1, '2024-10-21 09:02:40'),
(16, 13, 2, 2, 'ok rá»“i nhÃ©', 2, 0, '2024-10-21 09:22:22'),
(17, 15, 6, 2, 'gsdfgsdfgh', 2, 1, '2024-10-21 10:22:04'),
(18, 13, 6, 2, 'abc', 2, 0, '2024-10-21 15:40:30'),
(19, 15, 6, 2, 'hehe xin chÃ o admin', 2, 1, '2024-10-21 15:42:15'),
(20, 15, 6, 2, 'xzczx', 2, 0, '2024-10-21 15:49:39'),
(21, 15, 6, 2, 'adfsd', 2, 0, '2024-10-21 15:49:42'),
(22, 15, 1, 2, 'acdsas', 2, 1, '2024-10-21 16:06:02'),
(23, 16, 6, 2, 'TÃ´i cáº§n admin há»— trá»£', 2, 1, '2024-10-21 16:15:03'),
(24, 16, 1, 2, 'ChÃ o báº¡n mÃ¬nh lÃ  admin group sau Ä‘Ã¢y báº¡n chien1 sáº½ há»— trá»£ báº¡n', 2, 1, '2024-10-21 16:15:27'),
(25, 16, 6, 2, 'oke', 2, 1, '2024-10-21 16:15:42'),
(26, 16, 2, 2, 'chÃ o báº¡n mÃ¬nh lÃ  chiáº¿n 1 sáº½ há»— trá»£ báº¡n', 2, 1, '2024-10-21 16:16:05'),
(27, 17, 6, 2, 'admin Æ¡i mÃ¬nh muá»‘n há»— trá»£', 2, 1, '2024-10-22 03:59:43'),
(28, 17, 1, 2, 'ChÃ o báº¡n trÆ°á»Ÿng phÃ²ng chien1 sáº½ há»— trá»£ b nhÃ©', 2, 1, '2024-10-22 04:00:13'),
(29, 17, 2, 2, 'Hello mÃ¬nh cáº§n há»— trá»£ gÃ¬ nhá»‰', 2, 1, '2024-10-22 04:00:35'),
(30, 17, 6, 2, 'váº«n chÆ°a hiá»‡n tin nháº¯n cá»§a chien1 nhá»‰ cháº¯c pháº£i Ä‘á»£i admin duyá»‡t ', 2, 1, '2024-10-22 04:01:07'),
(31, 17, 1, 2, 'Ä‘Ãºng rá»“i nha admin duyá»‡t tá»«ng tin nháº¯n nhÃ©', 2, 1, '2024-10-22 04:01:33'),
(33, 17, 1, 2, 'xÃ³a r nhÃ© k Ä‘Æ°á»£c nháº¯n tin Ä‘Ã¢u', 2, 1, '2024-10-22 04:02:19'),
(34, 17, 6, 2, 'hehe', 2, 1, '2024-10-25 04:02:09'),
(35, 18, 6, 2, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 2, 1, '2024-11-05 09:03:00'),
(36, 25, 6, 2, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 2, 1, '2024-11-05 09:22:48'),
(37, 27, 6, 2, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 2, 1, '2024-11-05 09:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `user_id`, `message`, `created_at`) VALUES
(1, 1, 'admin đây', '2024-10-21 16:33:43'),
(2, 6, 'abc', '2024-10-21 16:43:29'),
(3, 2, 'hehe', '2024-10-21 16:44:41'),
(4, 2, 'hehehe', '2024-10-21 16:44:56'),
(5, 2, 'hehehe', '2024-10-21 16:47:54'),
(6, 6, 'abc', '2024-10-21 16:48:27'),
(7, 2, 'bá»‹ sao tháº¿', '2024-10-21 16:49:13'),
(8, 6, 'Ä‘Æ°á»£c cáº¥p quyá»n r hehe', '2024-10-22 04:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat_nb`
--

CREATE TABLE `group_chat_nb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_chat_nb`
--

INSERT INTO `group_chat_nb` (`id`, `user_id`, `message`, `created_at`) VALUES
(1, 14, 'mÃ¬nh lÃ  chiáº¿n quáº£n lÃ½ nhÃ³m má»›i', '2024-12-17 08:07:20'),
(2, 2, 'hihi mÃ¬nh lÃ  chiáº¿n 1 Ä‘Ã¢y', '2024-12-17 08:08:37'),
(3, 6, 'hi mÃ¬nh lÃ  chiáº¿n 05073007 Ä‘Ã£ Ä‘Æ°á»£c cáº¥p quyá»n chat', '2024-12-17 08:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

CREATE TABLE `luong` (
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Luong_co_ban` int(11) NOT NULL COMMENT 'Lương cơ bản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luong`
--

INSERT INTO `luong` (`He_so_luong`, `Luong_co_ban`) VALUES
(1, 4600000),
(2, 4400000),
(3, 4100000),
(4, 2050000);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 là chưa duyệt\r\n1 là đã duyệt',
  `assigned_to` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message`, `status`, `assigned_to`, `active`, `created_at`) VALUES
(7, 6, 'háº¿ loooooooooo', 1, 2, 1, '2024-10-21 14:51:57'),
(8, 6, 'heslo', 1, 2, 1, '2024-10-21 14:53:40'),
(9, 6, 'hihi', 1, 2, 1, '2024-10-21 14:55:10'),
(12, 6, 'heheh', 1, 2, 1, '2024-10-21 15:01:37'),
(13, 6, 'lisahjk gkjdsf', 1, 2, 1, '2024-10-21 15:04:07'),
(14, 8, 'leifgsag', 0, NULL, 1, '2024-10-21 15:07:35'),
(15, 6, 'gsdfgsdfgh', 1, 2, 1, '2024-10-21 15:07:37'),
(16, 6, 'TÃ´i cáº§n admin há»— trá»£', 1, 2, 1, '2024-10-21 23:14:46'),
(17, 6, 'admin Æ¡i mÃ¬nh muá»‘n há»— trá»£', 1, 2, 1, '2024-10-22 10:59:29'),
(18, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 1, 2, 1, '2024-11-05 15:58:31'),
(19, 6, 'Ä‚n uá»‘ng, nhÃ  á»Ÿ\r\n', 0, NULL, 1, '2024-11-05 15:58:31'),
(20, 6, 'CÃ´ng viá»‡c cá»§a team', 0, NULL, 1, '2024-11-05 16:10:20'),
(21, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 0, NULL, 1, '2024-11-05 16:18:06'),
(22, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 0, NULL, 1, '2024-11-05 16:19:28'),
(23, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 0, NULL, 1, '2024-11-05 16:19:29'),
(24, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 0, NULL, 1, '2024-11-05 16:20:38'),
(25, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 1, 2, 0, '2024-11-05 16:21:03'),
(26, 6, 'Ä‚n uá»‘ng, nhÃ  á»Ÿ\r\n', 0, NULL, 1, '2024-11-05 16:21:03'),
(27, 6, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng', 1, 2, 0, '2024-11-05 16:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `message_sample`
--

CREATE TABLE `message_sample` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message_sample`
--

INSERT INTO `message_sample` (`id`, `content`) VALUES
(1, ' Cháº¿ Ä‘á»™ lÆ°Æ¡ng, thÆ°á»Ÿng'),
(7, 'Ä‚n uá»‘ng, nhÃ  á»Ÿ\r\n'),
(8, 'CÃ´ng viá»‡c cá»§a team'),
(9, 'Ná»™i vá»¥ (Trang phá»¥c, giá» giáº¥c Ä‘i lÃ m,...)'),
(10, 'Ná»™i vá»¥ (Trang phá»¥c, giá» giáº¥c Ä‘i lÃ m,...)'),
(11, 'Cháº¿ Ä‘á»™ Ä‘i láº¡i (Äi/vá», giáº¥y tá» tuá»³ thÃ¢n,..)'),
(12, 'PhÃ¡p luáº­t\r\n'),
(13, 'KhÃ¡c\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_luong`
--

CREATE TABLE `nhan_luong` (
  `ID` int(11) NOT NULL COMMENT 'ID nhân lương',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `So_ngay_lam` int(11) NOT NULL COMMENT 'Số ngày làm',
  `Tien_thuong` int(11) DEFAULT '0' COMMENT 'Tiền thưởng',
  `Tien_phat` int(11) DEFAULT '0' COMMENT 'Tiền phạt',
  `Tien_ung` int(11) DEFAULT '0' COMMENT 'Tiền ứng',
  `Tong` int(11) NOT NULL COMMENT 'Tổng',
  `Thoi_gian` date NOT NULL,
  `Tinh_trang` varchar(50) NOT NULL DEFAULT 'Chưa thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhan_luong`
--

INSERT INTO `nhan_luong` (`ID`, `Ma_nv`, `He_so_luong`, `So_ngay_lam`, `Tien_thuong`, `Tien_phat`, `Tien_ung`, `Tong`, `Thoi_gian`, `Tinh_trang`) VALUES
(2, 'NV02', 2, 23, 0, 0, 0, 3614286, '2023-12-30', 'Đã thanh toán'),
(3, 'NV04', 3, 23, 0, 0, 0, 3367857, '2023-12-30', 'Đã thanh toán'),
(4, 'NV05', 3, 23, 0, 0, 0, 3367857, '2023-12-30', 'Đã thanh toán'),
(11, 'NV05', 3, 0, 0, 0, 0, 0, '2023-08-15', 'Đã thanh toán'),
(14, 'NV02', 2, 0, 0, 0, 0, 0, '2023-08-15', 'Đã thanh toán'),
(15, 'NV5701', 1, 6, 0, 0, 0, 985714, '2024-09-26', 'ÄÃ£ thanh toÃ¡n');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Hoten` varchar(50) NOT NULL COMMENT 'Họ tên nhân viên',
  `Gioitinh` varchar(20) NOT NULL COMMENT 'Giới tính',
  `Ngaysinh` date NOT NULL COMMENT 'Ngày sinh',
  `chucdanh` varchar(255) DEFAULT NULL,
  `ID_bophan` int(11) NOT NULL,
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Ma_bo` varchar(255) DEFAULT NULL,
  `Ma_nhom` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `login` int(11) NOT NULL DEFAULT '0' COMMENT '0 là không hoạt động\r\n1 là đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhan_vien`
--

INSERT INTO `nhan_vien` (`Ma_nv`, `Hoten`, `Gioitinh`, `Ngaysinh`, `chucdanh`, `ID_bophan`, `He_so_luong`, `Ma_bo`, `Ma_nhom`, `username`, `pass`, `status`, `login`) VALUES
('NV04', 'phong', 'Nữ', '2002-02-20', NULL, 6, 3, '', '', 'khai@gmail.com', '123456', 1, 0),
('NV09', 'ThÃºy Kiá»u', 'Nữ', '2003-01-01', NULL, 6, 3, '', '', 'thuykieu123', '123', 1, 0),
('NV11', 'Nguyá»…n Ngá»c', 'Nam', '2024-10-02', NULL, 8, 3, '', '', 'ngocnguyen@gmail.com', '123', 1, 0),
('NV111111', 'chiáº¿n nt', 'Nam', '2024-10-18', NULL, 8, 3, '', '', 'abc123@gmail.com', '123', 1, 0),
('NV5701', 'chiáº¿n nguyá»…n', 'Nam', '2024-09-11', 'leader', 13, 3, 'MB113', 'BDST2', 'chien05073007@gmail.com', '123456', 1, 1),
('NV6761', 'TrÆ°á»Ÿng phÃ²ng 1', 'Nam', '2024-11-20', 'TP', 13, 3, '', '', 'ntchien5701@gmail.com', '123456', 1, 1),
('NVVF8', 'ThÃ nh cÃ´ng', 'Nam', '2024-12-16', 'TC', 13, 3, 'MB113456', 'BDST1', 'Thanhcong@gmail.com', 'thanhcong', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phan_ca_lam`
--

CREATE TABLE `phan_ca_lam` (
  `id` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `id_calam` int(11) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phan_ca_lam`
--

INSERT INTO `phan_ca_lam` (`id`, `Ma_nv`, `id_calam`, `ngay`) VALUES
(38, 'chien1', 10, '2024-11-11'),
(39, 'NV5701', 10, '2024-11-11'),
(40, 'NV5701', 10, '2024-11-12'),
(41, 'NV5701', 10, '2024-11-13'),
(42, 'NV5701', 10, '2024-11-14'),
(43, 'NV5701', 10, '2024-11-15'),
(44, 'NV5701', 10, '2024-11-16'),
(45, 'NV5701', 10, '2024-11-17'),
(46, 'NV5701', 10, '2024-11-18'),
(47, 'NV5701', 10, '2024-11-19'),
(50, 'NV5678', 25, '2024-11-20'),
(51, 'NV6768453', 10, '2024-11-20'),
(52, 'NV6768453', 10, '2024-11-21'),
(53, 'NV6768453', 10, '2024-11-22'),
(54, 'NV6768453', 10, '2024-11-23'),
(55, 'NV6768453', 10, '2024-11-24'),
(63, 'NV6768453', 39, '2024-11-30'),
(64, 'NV6768453', 39, '2024-12-01'),
(65, 'NV6768453', 16, '2024-11-25'),
(69, 'NV5701', 14, '2024-12-17'),
(70, 'NV5701', 14, '2024-12-18'),
(71, 'NV5701', 14, '2024-12-19'),
(72, 'NV5701', 14, '2024-12-20'),
(73, 'NV5701', 14, '2024-12-21'),
(74, 'NV6761', 16, '2024-12-17'),
(75, 'NV6761', 16, '2024-12-18'),
(76, 'NV6761', 16, '2024-12-19');

-- --------------------------------------------------------

--
-- Table structure for table `tang_ca`
--

CREATE TABLE `tang_ca` (
  `id` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `Ngay` date NOT NULL,
  `Gio_bat_dau` time NOT NULL,
  `Gio_ket_thuc` time NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1 là hoạt đọng \r\n0 là không hđ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tang_ca`
--

INSERT INTO `tang_ca` (`id`, `Ma_nv`, `Ngay`, `Gio_bat_dau`, `Gio_ket_thuc`, `status`) VALUES
(2, 'NV5701', '2024-10-08', '14:15:00', '23:16:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `thuong_phat`
--

CREATE TABLE `thuong_phat` (
  `ID_thuong_phat` int(11) NOT NULL COMMENT 'ID thưởng phạt',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Loai_hinh` varchar(50) NOT NULL COMMENT 'Loại hình',
  `So_tien` int(11) NOT NULL COMMENT 'Số tiền',
  `Li_do` varchar(50) NOT NULL COMMENT 'Lí do',
  `Ngay_thuc_hien` date NOT NULL COMMENT 'Ngày thực hiện'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuong_phat`
--

INSERT INTO `thuong_phat` (`ID_thuong_phat`, `Ma_nv`, `Loai_hinh`, `So_tien`, `Li_do`, `Ngay_thuc_hien`) VALUES
(3, 'NV04', 'Thưởng', 2222, ' oke KPI', '2023-08-15'),
(4, 'NV04', 'Phạt', 4444, ' No', '2023-08-15'),
(5, 'NV09', 'Thưởng', 45555, ' oke KPI', '2023-08-15'),
(6, 'NV5701', 'ThÆ°á»Ÿng', 0, ' ', '2024-09-26'),
(7, 'NV5701', 'Pháº¡t', 0, ' ', '2024-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `ung_luong`
--

CREATE TABLE `ung_luong` (
  `ID` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `So_tien` int(11) NOT NULL,
  `Ngay_ung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ung_luong`
--

INSERT INTO `ung_luong` (`ID`, `Ma_nv`, `So_tien`, `Ngay_ung`) VALUES
(3, 'NV04', 9999999, '2023-08-15'),
(6, 'NV5701', 0, '2024-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '1' COMMENT '0 là admin\r\n1 là quản lý',
  `active_message` int(11) NOT NULL DEFAULT '0' COMMENT '0 là không được gửi \r\n1 là được gửi',
  `active_message_nb` int(11) DEFAULT '0',
  `approve_message` int(11) DEFAULT '0',
  `TK_Admin` int(11) NOT NULL DEFAULT '0',
  `QL_Nhanvien` int(11) NOT NULL DEFAULT '0',
  `QL_phongban` int(11) NOT NULL DEFAULT '0',
  `QL_calamviec` int(11) NOT NULL DEFAULT '0',
  `Chamtangca` int(11) NOT NULL DEFAULT '0',
  `Chambu` int(11) NOT NULL DEFAULT '0',
  `Phanquyen` int(11) NOT NULL DEFAULT '0',
  `Duyetchamcong` int(11) NOT NULL DEFAULT '0',
  `Sualichlam` int(11) DEFAULT '0',
  `Phophong` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `active_message`, `active_message_nb`, `approve_message`, `TK_Admin`, `QL_Nhanvien`, `QL_phongban`, `QL_calamviec`, `Chamtangca`, `Chambu`, `Phanquyen`, `Duyetchamcong`, `Sualichlam`, `Phophong`) VALUES
(1, 'admin', NULL, 'admin', 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0),
(2, 'chien1', NULL, '123', 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0),
(3, 'chientest', NULL, '1234', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'nhan123', NULL, '123', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'test1', NULL, '123', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'chien05073007@gmail.com', '', '123456', 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
(7, 'chiáº¿n nt', 'abc123@gmail.com', '123', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'chá»©c danh 1', 'khai111@gmail.com', '123', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'admin1', NULL, 'admin', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'admin3', NULL, 'admin', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'ntchien5701@gmail.com', NULL, '123456', 1, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 0),
(15, 'Thanhcong@gmail.com', NULL, 'thanhcong', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bo_phan`
--
ALTER TABLE `bo_phan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ten` (`Ten`);

--
-- Indexes for table `ca_lam_viec`
--
ALTER TABLE `ca_lam_viec`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cham_bu`
--
ALTER TABLE `cham_bu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cham_cong`
--
ALTER TABLE `cham_cong`
  ADD PRIMARY KEY (`ID_cham_cong`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat_nb`
--
ALTER TABLE `group_chat_nb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`He_so_luong`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_sample`
--
ALTER TABLE `message_sample`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_luong`
--
ALTER TABLE `nhan_luong`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD PRIMARY KEY (`Ma_nv`),
  ADD KEY `ID_bophan` (`ID_bophan`),
  ADD KEY `He_so_luong` (`He_so_luong`);

--
-- Indexes for table `phan_ca_lam`
--
ALTER TABLE `phan_ca_lam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tang_ca`
--
ALTER TABLE `tang_ca`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuong_phat`
--
ALTER TABLE `thuong_phat`
  ADD PRIMARY KEY (`ID_thuong_phat`),
  ADD KEY `fk_thuong_phat` (`Ma_nv`),
  ADD KEY `So_tien` (`So_tien`);

--
-- Indexes for table `ung_luong`
--
ALTER TABLE `ung_luong`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Ma_nv` (`Ma_nv`),
  ADD KEY `So_tien` (`So_tien`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bo_phan`
--
ALTER TABLE `bo_phan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ca_lam_viec`
--
ALTER TABLE `ca_lam_viec`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cham_bu`
--
ALTER TABLE `cham_bu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cham_cong`
--
ALTER TABLE `cham_cong`
  MODIFY `ID_cham_cong` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID chấm công', AUTO_INCREMENT=1269519;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `group_chat_nb`
--
ALTER TABLE `group_chat_nb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `message_sample`
--
ALTER TABLE `message_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nhan_luong`
--
ALTER TABLE `nhan_luong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID nhân lương', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `phan_ca_lam`
--
ALTER TABLE `phan_ca_lam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tang_ca`
--
ALTER TABLE `tang_ca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thuong_phat`
--
ALTER TABLE `thuong_phat`
  MODIFY `ID_thuong_phat` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID thưởng phạt', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ung_luong`
--
ALTER TABLE `ung_luong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nhan_vien`
--
ALTER TABLE `nhan_vien`
  ADD CONSTRAINT `fk_nhanvien_bophan` FOREIGN KEY (`ID_bophan`) REFERENCES `bo_phan` (`ID`);

--
-- Constraints for table `thuong_phat`
--
ALTER TABLE `thuong_phat`
  ADD CONSTRAINT `fk_thuong_phat` FOREIGN KEY (`Ma_nv`) REFERENCES `nhan_vien` (`Ma_nv`);

--
-- Constraints for table `ung_luong`
--
ALTER TABLE `ung_luong`
  ADD CONSTRAINT `fk_ungtien` FOREIGN KEY (`Ma_nv`) REFERENCES `nhan_vien` (`Ma_nv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
