-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 07:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bo_phan`
--

INSERT INTO `bo_phan` (`ID`, `Ten`, `Tenql`, `email`, `pass`, `ma_pb`, `ten_bp`) VALUES
(5, 'Kế Toán', '', '', '', 'KT', NULL),
(6, 'Hành chính nhân sự', NULL, NULL, NULL, 'HCNS', NULL),
(7, 'Sale', '', NULL, '', 'Sale', NULL),
(8, 'Vận hành', '', NULL, '', 'VH', NULL),
(11, 'IT', '', '', '', 'IT', NULL),
(12, 'Wellcome', NULL, NULL, NULL, 'Well', NULL),
(13, 'Phòng ban mới', NULL, NULL, NULL, 'PBM', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ca_lam_viec`
--

INSERT INTO `ca_lam_viec` (`ID`, `Tenca`, `Gio_bat_dau`, `Gio_ket_thuc`, `Thu`) VALUES
(10, 'Ca1', '06:00:00', '16:00:00', '2-7'),
(14, 'Ca1', '06:00:00', '15:00:00', 'CN'),
(16, 'Ca1P', '08:00:00', '18:00:00', '2-7'),
(19, 'Ca1P', '08:00:00', '17:00:00', 'CN'),
(21, 'Ca2P', '12:00:00', '22:00:00', '2-7'),
(24, 'Ca2P', '12:00:00', '21:00:00', 'CN'),
(25, 'Ca2', '14:00:00', '23:00:00', '2-7'),
(29, 'Ca2', '14:00:00', '22:00:00', 'CN'),
(33, 'Ca3', '14:00:00', '02:00:00', '2-7'),
(34, 'Ca3', '17:00:00', '01:00:00', 'CN'),
(38, 'OFF', '00:00:00', '00:00:00', ''),
(39, 'K', '00:00:00', '00:00:00', '');

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
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `phe_duyet` int(11) NOT NULL DEFAULT 0 COMMENT '0 là chưa duyệt công\r\n1 là đã duyệt',
  `role` int(11) DEFAULT 0 COMMENT '0 là chấm công mặc định\r\n1 là chấm bù'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `role` int(11) NOT NULL DEFAULT 2 COMMENT '0 là admin\r\n1 là tp\r\n2 là nv',
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(15, 13, 6, 2, 'hihihih', 2, 1, '2024-10-21 09:02:40'),
(17, 15, 6, 2, 'gsdfgsdfgh', 2, 1, '2024-10-21 10:22:04'),
(18, 13, 6, 2, 'abc', 2, 0, '2024-10-21 15:40:30'),
(20, 15, 6, 2, 'xzczx', 2, 0, '2024-10-21 15:49:39'),
(21, 15, 6, 2, 'adfsd', 2, 0, '2024-10-21 15:49:42'),
(22, 15, 1, 2, 'acdsas', 2, 1, '2024-10-21 16:06:02'),
(34, 17, 6, 2, 'hehe', 2, 1, '2024-10-25 04:02:09'),
(38, 27, 16, 2, 'ádasd', 2, 1, '2024-12-18 03:37:18'),
(39, 27, 16, 2, 'dddd', 2, 1, '2024-12-18 03:38:50'),
(40, 27, 16, 2, 'ádasd', 2, 1, '2024-12-18 03:48:12'),
(41, 27, 16, 2, 'fffff', 2, 1, '2024-12-18 03:48:16'),
(42, 17, 16, 2, 'asd', 2, 1, '2024-12-18 06:33:01'),
(43, 18, 16, 2, 'test last message 11111', 2, 1, '2024-12-18 06:33:58'),
(44, 18, 16, 2, 'aaaaa', 2, 1, '2024-12-18 06:35:09'),
(45, 18, 16, 2, 'aaaaa', 2, 1, '2024-12-18 06:35:32'),
(46, 18, 16, 2, 'aaaaa', 2, 1, '2024-12-18 06:36:04'),
(47, 18, 16, 2, 'test last message 11111', 2, 1, '2024-12-18 06:36:09'),
(48, 18, 16, 2, 'shut......', 2, 1, '2024-12-18 06:53:02'),
(49, 18, 16, 2, 'test last message 11111', 2, 1, '2024-12-18 06:53:11'),
(50, 15, 16, 2, 'shut......', 2, 1, '2024-12-18 06:56:13'),
(51, 15, 16, 2, 'test  last messssss', 2, 1, '2024-12-18 06:56:22'),
(52, 37, 16, 3, 'aaa', 2, 0, '2024-12-19 01:14:37'),
(53, 37, 16, 3, 'dd', 2, 1, '2024-12-19 01:14:53'),
(54, 37, 16, 3, 's', 2, 1, '2024-12-19 03:14:12'),
(55, 0, 16, 2, '', 2, 1, '2024-12-19 07:43:28'),
(56, 0, 16, 4, '', 2, 1, '2024-12-19 07:44:34'),
(57, 82, 16, 5, 'ads', 2, 1, '2024-12-19 07:57:35'),
(58, 83, 16, 2, 'ffff', 2, 1, '2024-12-19 07:57:50'),
(59, 83, 16, 2, 'shut......', 2, 1, '2024-12-19 07:58:10'),
(60, 83, 16, 2, 'fffff', 2, 1, '2024-12-19 07:58:14'),
(61, 84, 16, 2, 'halo', 2, 1, '2024-12-19 07:58:22'),
(62, 87, 16, 4, 'ffffff', 2, 1, '2024-12-19 08:00:12'),
(63, 87, 16, 4, 'elo', 2, 1, '2024-12-19 08:00:17'),
(64, 88, 16, 2, 'gút chóp', 2, 1, '2024-12-19 08:00:36'),
(65, 88, 16, 2, 'fffff', 2, 1, '2024-12-19 08:01:07'),
(66, 89, 16, 4, 'last mess check check check ', 2, 1, '2024-12-19 08:01:24'),
(67, 91, 16, 2, 'ddd', 2, 1, '2024-12-19 08:02:01'),
(68, 87, 16, 4, 'amazing gút chóp', 2, 1, '2024-12-19 08:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `user_id`, `message`, `created_at`) VALUES
(1, 1, 'admin đây', '2024-10-21 16:33:43'),
(2, 6, 'abc', '2024-10-21 16:43:29'),
(3, 2, 'hehe', '2024-10-21 16:44:41'),
(4, 2, 'hehehe', '2024-10-21 16:44:56'),
(5, 2, 'hehehe', '2024-10-21 16:47:54'),
(6, 6, 'abc', '2024-10-21 16:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat_nb`
--

CREATE TABLE `group_chat_nb` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

CREATE TABLE `luong` (
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Luong_co_ban` int(11) NOT NULL COMMENT 'Lương cơ bản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 là chưa duyệt\r\n1 là đã duyệt',
  `assigned_to` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message_sample`
--

CREATE TABLE `message_sample` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_luong`
--

CREATE TABLE `nhan_luong` (
  `ID` int(11) NOT NULL COMMENT 'ID nhân lương',
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `So_ngay_lam` int(11) NOT NULL COMMENT 'Số ngày làm',
  `Tien_thuong` int(11) DEFAULT 0 COMMENT 'Tiền thưởng',
  `Tien_phat` int(11) DEFAULT 0 COMMENT 'Tiền phạt',
  `Tien_ung` int(11) DEFAULT 0 COMMENT 'Tiền ứng',
  `Tong` int(11) NOT NULL COMMENT 'Tổng',
  `Thoi_gian` date NOT NULL,
  `Tinh_trang` varchar(50) NOT NULL DEFAULT 'Chưa thanh toán'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_vien`
--

CREATE TABLE `nhan_vien` (
  `Ma_nv` varchar(50) NOT NULL COMMENT 'Mã nhân viên',
  `Hoten` varchar(50) NOT NULL COMMENT 'Họ tên nhân viên',
  `Gioitinh` varchar(20) NOT NULL COMMENT 'Giới tính',
  `chucdanh` varchar(255) DEFAULT NULL,
  `ID_bophan` int(11) NOT NULL,
  `He_so_luong` int(11) NOT NULL COMMENT 'Hệ số lương',
  `Ma_bo` varchar(255) DEFAULT NULL,
  `Ma_nhom` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `login` int(11) NOT NULL DEFAULT 0 COMMENT '0 là không hoạt động\r\n1 là đang hoạt động'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phan_ca_lam`
--

CREATE TABLE `phan_ca_lam` (
  `id` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `id_calam` int(11) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1 là hoạt đọng \r\n0 là không hđ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ung_luong`
--

CREATE TABLE `ung_luong` (
  `ID` int(11) NOT NULL,
  `Ma_nv` varchar(50) NOT NULL,
  `So_tien` int(11) NOT NULL,
  `Ngay_ung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1 COMMENT '0 là admin\r\n1 là quản lý',
  `active_message` int(11) NOT NULL DEFAULT 0 COMMENT '0 là không được gửi \r\n1 là được gửi',
  `active_message_nb` int(11) DEFAULT 0,
  `approve_message` int(11) DEFAULT 0,
  `TK_Admin` int(11) NOT NULL DEFAULT 0,
  `QL_Nhanvien` int(11) NOT NULL DEFAULT 0,
  `QL_phongban` int(11) NOT NULL DEFAULT 0,
  `QL_calamviec` int(11) NOT NULL DEFAULT 0,
  `Chamtangca` int(11) NOT NULL DEFAULT 0,
  `Chambu` int(11) NOT NULL DEFAULT 0,
  `Phanquyen` int(11) NOT NULL DEFAULT 0,
  `Duyetchamcong` int(11) NOT NULL DEFAULT 0,
  `Sualichlam` int(11) DEFAULT 0,
  `Phophong` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `active_message`, `active_message_nb`, `approve_message`, `TK_Admin`, `QL_Nhanvien`, `QL_phongban`, `QL_calamviec`, `Chamtangca`, `Chambu`, `Phanquyen`, `Duyetchamcong`, `Sualichlam`, `Phophong`) VALUES
(1, 'admin', NULL, 'admin', 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `message_sample`
--
ALTER TABLE `message_sample`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
