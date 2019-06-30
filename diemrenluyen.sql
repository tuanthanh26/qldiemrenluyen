-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2019 at 08:35 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diemrenluyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin@gamil.com', '$2y$12$.V12THPdJxBvg6s6e1oiq.UxZ5Dr/uKF2QZDhomAXvOzCOrdUaR1u\r\n', '2019-06-17 03:51:27', '2019-06-17 03:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `chitiettieuchis`
--

CREATE TABLE `chitiettieuchis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sodiem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tieuchi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chunhiems`
--

CREATE TABLE `chunhiems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `giangvien_id` bigint(20) UNSIGNED NOT NULL,
  `lop_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chunhiems`
--

INSERT INTO `chunhiems` (`id`, `giangvien_id`, `lop_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `diem_danh_gias`
--

CREATE TABLE `diem_danh_gias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `diem` int(11) NOT NULL,
  `chitiettieuchi_id` bigint(20) UNSIGNED NOT NULL,
  `sinhvien_id` bigint(20) UNSIGNED NOT NULL,
  `giangvien_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giangviens`
--

CREATE TABLE `giangviens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giangviens`
--

INSERT INTO `giangviens` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Giang viên 01', 'gvien01@gmail.com', '2019-06-17 09:26:55', '2019-06-17 09:26:55'),
(2, 'Giang viên 02', 'gvien02@gmail.com', '2019-06-17 09:27:33', '2019-06-17 09:27:33');

-- --------------------------------------------------------

--
-- Table structure for table `hehocs`
--

CREATE TABLE `hehocs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khoas`
--

CREATE TABLE `khoas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenkhoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khoas`
--

INSERT INTO `khoas` (`id`, `tenkhoa`, `created_at`, `updated_at`) VALUES
(1, 'Công nghệ thông tin', '2019-06-17 00:11:34', '2019-06-17 01:20:13'),
(2, 'Điện điện tử', '2019-06-17 00:22:00', '2019-06-17 00:22:00'),
(3, 'Công nghệ thực phẩm', '2019-06-17 00:22:11', '2019-06-17 00:22:11'),
(4, 'Quản trị kinh doanh', '2019-06-17 00:22:23', '2019-06-17 00:22:23'),
(5, 'Kĩ thuật công trình', '2019-06-17 00:22:31', '2019-06-17 00:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `lops`
--

CREATE TABLE `lops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khoa_id` bigint(20) UNSIGNED NOT NULL,
  `hedaotao` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lops`
--

INSERT INTO `lops` (`id`, `tenlop`, `khoa_id`, `hedaotao`, `created_at`, `updated_at`) VALUES
(1, 'Công nghệ thông tin TH01', 1, 1, '2019-06-17 05:57:10', '2019-06-17 05:57:10'),
(2, 'Công nghệ thông tin TH02', 1, 1, '2019-06-17 06:15:43', '2019-06-17 06:15:43'),
(3, 'Công nghệ thông tin TH03', 1, 1, '2019-06-17 06:15:54', '2019-06-17 06:15:54'),
(4, 'Công nghệ thông tin TH04', 1, 1, '2019-06-17 06:16:10', '2019-06-17 06:16:10'),
(5, 'Công nghệ thông tin TH05', 1, 1, '2019-06-17 06:16:21', '2019-06-17 06:16:21'),
(6, 'Điện điện tử DDT01', 2, 1, '2019-06-17 06:18:06', '2019-06-17 06:18:06'),
(7, 'Điện điện tử DDT02', 2, 1, '2019-06-17 06:18:18', '2019-06-17 06:18:18'),
(8, 'Điện điện tử DDT03', 2, 1, '2019-06-17 06:18:29', '2019-06-17 06:18:29'),
(9, 'Điện điện tử DDT04', 2, 1, '2019-06-17 06:19:04', '2019-06-17 06:19:04'),
(10, 'Điện điện tử DDT05', 2, 1, '2019-06-17 06:19:31', '2019-06-17 06:19:31'),
(11, 'deded', 1, 1, '2019-06-17 06:19:44', '2019-06-17 06:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_17_012952_create_khoas_table', 1),
(4, '2019_06_17_013212_create_lops_table', 2),
(5, '2019_06_17_014648_create_sinhviens_table', 3),
(6, '2019_06_17_015954_create_giangviens_table', 4),
(7, '2019_06_17_020536_create_chunhiems_table', 5),
(8, '2019_06_17_024918_create_tieuchidanhgias_table', 6),
(9, '2019_06_17_025109_create_chitiettieuchis_table', 7),
(10, '2019_06_17_025837_create_diem_danh_gias_table', 8),
(11, '2019_06_17_031342_create_admins_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sinhviens`
--

CREATE TABLE `sinhviens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` tinyint(4) NOT NULL,
  `lop_id` bigint(20) UNSIGNED NOT NULL,
  `chucvu` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sinhviens`
--

INSERT INTO `sinhviens` (`id`, `name`, `masv`, `ngaysinh`, `email`, `gioitinh`, `lop_id`, `chucvu`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Văn A', 'SV02', '1997-12-01', 'nvana@gmail.com', 1, 1, 0, '2019-06-17 08:46:17', '2019-06-17 08:46:17'),
(3, 'Nguyễn Văn B', 'SV04', '1997-12-31', 'nvanb@gmail.com', 1, 1, 0, '2019-06-17 10:04:22', '2019-06-17 10:04:22'),
(4, 'Nguyễn Văn C', 'SV05', '1998-02-09', 'nvanc@gmail.com', 1, 1, 0, '2019-06-17 10:04:45', '2019-06-17 10:04:45'),
(5, 'Nguyễn Văn D', 'SV06', '1993-02-01', 'nvand@gmail.com', 1, 1, 0, '2019-06-17 10:05:05', '2019-06-17 10:05:05'),
(6, 'Nguyễn Văn E', 'SV07', '1998-09-12', 'nvane@gmail.com', 1, 1, 0, '2019-06-17 10:06:09', '2019-06-17 10:06:09'),
(7, 'Nguyễn Văn F', 'SV08', '1993-02-01', 'nvanf@gmail.com', 1, 1, 0, '2019-06-17 10:06:37', '2019-06-17 10:06:37'),
(8, 'Lê Lan Anh', 'SV09', '1997-12-09', 'lananh97@gmail.com', 0, 1, 1, '2019-06-17 10:07:39', '2019-06-17 10:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `tieuchidanhgias`
--

CREATE TABLE `tieuchidanhgias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaitro` tinyint(4) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `vaitro`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, '$2b$10$EelN0EzkuE9H5VK1nVCQVu2UJ.FlgWLgbTy0RY5yniPe4o.1aWcqO', NULL, NULL, NULL),
(2, 'Nguyễn Văn A', 'nvana@gmail.com', 4, NULL, '$2y$10$jwQANzALK5qaRmQfQXz9aOvpEkWbYBVe/4f.1vkrys.yJQsEOit7W', 'TTJb0CxxQ9L6X282XbsOP3yQxcYR0Q3wc12GHLYD', '2019-06-17 08:46:17', '2019-06-17 08:46:17'),
(3, 'Giang viên 01', 'gvien01@gmail.com', 3, NULL, '$2y$10$PR2.FQb11swVBUUgzfi4deakF.NMe.EpPfQVUOf5/Y33GeGAmqcDO', '2LhPD3orwk6JWSsfN32v70fDEyus93w1UMUJlH5stuECuWuFr2mpp4Y6RxAg', '2019-06-17 09:26:55', '2019-06-17 09:26:55'),
(4, 'Giang viên 02', 'gvien02@gmail.com', 3, NULL, '$2y$10$NkkIgmbQ9ZQWlFhSjfp50.yBRBwkPtU94O71JMe1hrDU52WxkohSO', 'P3XXMZekJlw1sdIZHxLf94MsU40jOBMkTf8Y8fnfNRCutFW4rzEtQvqAZpvE', '2019-06-17 09:27:33', '2019-06-17 09:27:33'),
(5, 'Nguyễn Văn B', 'nvanb@gmail.com', 4, NULL, '$2y$10$xdVgpRoMYmYkbz0GAx6B.uxXnA2pzpq5O.6uivsfmd8tLcKOvseX2', 'vwGKTdWW9RZfuLQHKwTxV9pAVP60YOXITth6vCiovlafV0VjFQas1pjPioiw', '2019-06-17 10:04:22', '2019-06-17 10:04:22'),
(6, 'Nguyễn Văn C', 'nvanc@gmail.com', 4, NULL, '$2y$10$bU4ZVywPQtupk5rX1Cfvu.I49WoLnjaifTyK9JHFIlb8TvrsNXzaW', 'TTJb0CxxQ9L6X282XbsOP3yQxcYR0Q3wc12GHLYD', '2019-06-17 10:04:45', '2019-06-17 10:04:45'),
(7, 'Nguyễn Văn D', 'nvand@gmail.com', 4, NULL, '$2y$10$MzaKGahxVufDIMV6ifeGJOzeO1Gp/b.UWjvDaxox8ajo6E2io9jfm', 'TTJb0CxxQ9L6X282XbsOP3yQxcYR0Q3wc12GHLYD', '2019-06-17 10:05:05', '2019-06-17 10:05:05'),
(8, 'Nguyễn Văn E', 'nvane@gmail.com', 4, NULL, '$2y$10$M8x5i9D.Rxp359LtmKXXKe8//kPbyYIbi.rUTyUWWevh3qDBnyhK6', 'TTJb0CxxQ9L6X282XbsOP3yQxcYR0Q3wc12GHLYD', '2019-06-17 10:06:09', '2019-06-17 10:06:09'),
(9, 'Nguyễn Văn F', 'nvanf@gmail.com', 4, NULL, '$2y$10$HkxHTtqK1AjpaaW9QP56cu4ovguNJvKJv.CgA0.D5n3WdRDSHIp/.', 'TTJb0CxxQ9L6X282XbsOP3yQxcYR0Q3wc12GHLYD', '2019-06-17 10:06:37', '2019-06-17 10:06:37'),
(10, 'Lê Lan Anh', 'lananh97@gmail.com', 5, NULL, '$2y$10$Y84a4.wTEqF0Whz87evrc.fc0FsVJx3WeBMlVjjOPvf99453Xcw.q', 'AUWKuAOsS9f4jlJWRPTG7PNAvOmIvSDsQSXcoAhuQNdOTliJSkWGoYyoDa3A', '2019-06-17 10:07:39', '2019-06-17 10:07:39'),
(11, 'cán bộ khoa', 'qlykhoa@gmail.com', 2, NULL, '$2b$10$EelN0EzkuE9H5VK1nVCQVu2UJ.FlgWLgbTy0RY5yniPe4o.1aWcqO', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitiettieuchis`
--
ALTER TABLE `chitiettieuchis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chitiettieuchis_tieuchi_id_foreign` (`tieuchi_id`);

--
-- Indexes for table `chunhiems`
--
ALTER TABLE `chunhiems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chunhiems_giangvien_id_foreign` (`giangvien_id`),
  ADD KEY `chunhiems_lop_id_foreign` (`lop_id`);

--
-- Indexes for table `diem_danh_gias`
--
ALTER TABLE `diem_danh_gias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diem_danh_gias_chitiettieuchi_id_foreign` (`chitiettieuchi_id`),
  ADD KEY `diem_danh_gias_sinhvien_id_foreign` (`sinhvien_id`),
  ADD KEY `diem_danh_gias_giangvien_id_foreign` (`giangvien_id`);

--
-- Indexes for table `giangviens`
--
ALTER TABLE `giangviens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hehocs`
--
ALTER TABLE `hehocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoas`
--
ALTER TABLE `khoas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lops`
--
ALTER TABLE `lops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lops_khoa_id_foreign` (`khoa_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sinhviens_lop_id_foreign` (`lop_id`);

--
-- Indexes for table `tieuchidanhgias`
--
ALTER TABLE `tieuchidanhgias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitiettieuchis`
--
ALTER TABLE `chitiettieuchis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chunhiems`
--
ALTER TABLE `chunhiems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `diem_danh_gias`
--
ALTER TABLE `diem_danh_gias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giangviens`
--
ALTER TABLE `giangviens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hehocs`
--
ALTER TABLE `hehocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khoas`
--
ALTER TABLE `khoas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lops`
--
ALTER TABLE `lops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sinhviens`
--
ALTER TABLE `sinhviens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tieuchidanhgias`
--
ALTER TABLE `tieuchidanhgias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiettieuchis`
--
ALTER TABLE `chitiettieuchis`
  ADD CONSTRAINT `chitiettieuchis_tieuchi_id_foreign` FOREIGN KEY (`tieuchi_id`) REFERENCES `tieuchidanhgias` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chunhiems`
--
ALTER TABLE `chunhiems`
  ADD CONSTRAINT `chunhiems_giangvien_id_foreign` FOREIGN KEY (`giangvien_id`) REFERENCES `giangviens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chunhiems_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `diem_danh_gias`
--
ALTER TABLE `diem_danh_gias`
  ADD CONSTRAINT `diem_danh_gias_chitiettieuchi_id_foreign` FOREIGN KEY (`chitiettieuchi_id`) REFERENCES `chitiettieuchis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diem_danh_gias_giangvien_id_foreign` FOREIGN KEY (`giangvien_id`) REFERENCES `giangviens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `diem_danh_gias_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `sinhviens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lops`
--
ALTER TABLE `lops`
  ADD CONSTRAINT `lops_khoa_id_foreign` FOREIGN KEY (`khoa_id`) REFERENCES `khoas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sinhviens`
--
ALTER TABLE `sinhviens`
  ADD CONSTRAINT `sinhviens_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `lops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
