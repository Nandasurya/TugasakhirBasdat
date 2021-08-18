-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 06:14 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ayamgeprekbengsus`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`) VALUES
(1, 'nanda'),
(2, 'rifqi'),
(3, 'nopal'),
(4, 'eka'),
(5, 'bowo'),
(6, 'rapli'),
(7, 'wahyu'),
(8, 'dony'),
(9, 'bertus'),
(10, 'bagas');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `harga` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `harga`) VALUES
(1, 'PAKET HEMAT 1', 10000),
(2, 'PAKET HEMAT 2', 15000),
(3, 'PAKET NORMAL 1', 20000),
(4, 'PAKET NORMAL 2', 25000),
(5, 'PAKET SULTAN', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`) VALUES
(1, 'elsa'),
(2, 'anna'),
(3, 'cinderella'),
(4, 'belle'),
(5, 'mulan'),
(6, 'moana'),
(7, 'mirelda'),
(8, 'rapunzel'),
(9, 'ariel'),
(10, 'jasmine');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_pelanggan`, `id_menu`, `total_harga`) VALUES
(1, 1, 1, 1, 10000),
(2, 1, 1, 2, 15000),
(3, 1, 1, 2, 15000),
(4, 1, 1, 3, 20000),
(5, 1, 1, 1, 10000),
(6, 1, 1, 5, 30000),
(7, 1, 1, 5, 30000),
(8, 1, 1, 5, 30000),
(9, 1, 1, 4, 25000),
(10, 1, 1, 4, 25000),
(11, 3, 2, 1, 10000),
(12, 3, 2, 3, 20000),
(13, 3, 2, 3, 20000),
(14, 3, 2, 5, 30000),
(15, 3, 2, 5, 30000),
(16, 3, 2, 5, 30000),
(17, 3, 2, 2, 15000),
(18, 3, 2, 2, 15000),
(19, 3, 2, 3, 20000),
(20, 3, 2, 3, 20000),
(21, 2, 4, 1, 10000),
(22, 2, 4, 1, 10000),
(23, 2, 4, 3, 20000),
(24, 2, 4, 3, 20000),
(25, 2, 4, 5, 30000),
(26, 2, 4, 5, 30000),
(27, 2, 4, 5, 30000),
(28, 2, 4, 2, 15000),
(29, 2, 4, 2, 15000),
(30, 2, 4, 4, 25000),
(31, 4, 6, 1, 10000),
(32, 4, 6, 1, 10000),
(33, 4, 6, 1, 10000),
(34, 4, 6, 5, 30000),
(35, 4, 6, 5, 30000),
(36, 4, 6, 5, 30000),
(37, 4, 6, 5, 30000),
(38, 4, 6, 3, 20000),
(39, 4, 6, 3, 20000),
(40, 4, 6, 3, 20000),
(41, 5, 9, 3, 20000),
(42, 5, 9, 3, 20000),
(43, 5, 9, 3, 20000),
(44, 5, 9, 3, 20000),
(45, 5, 9, 2, 15000),
(46, 5, 9, 2, 15000),
(47, 5, 9, 2, 15000),
(48, 5, 9, 2, 15000),
(49, 5, 9, 1, 10000),
(50, 5, 9, 1, 10000),
(51, 7, 10, 1, 10000),
(52, 7, 10, 1, 10000),
(53, 7, 10, 1, 10000),
(54, 7, 10, 1, 10000),
(55, 7, 10, 1, 10000),
(56, 7, 10, 5, 30000),
(57, 7, 10, 5, 30000),
(58, 7, 10, 5, 30000),
(59, 7, 10, 5, 30000),
(60, 7, 10, 5, 30000),
(61, 9, 5, 4, 25000),
(62, 9, 5, 4, 25000),
(63, 9, 5, 4, 25000),
(64, 9, 5, 4, 25000),
(65, 9, 5, 4, 25000),
(66, 9, 5, 4, 25000),
(67, 9, 5, 4, 25000),
(68, 9, 5, 4, 25000),
(69, 9, 5, 4, 25000),
(70, 9, 5, 4, 25000),
(71, 6, 8, 5, 30000),
(72, 6, 8, 5, 30000),
(73, 6, 8, 5, 30000),
(74, 6, 8, 5, 30000),
(75, 6, 8, 5, 30000),
(76, 6, 8, 5, 30000),
(77, 6, 8, 5, 30000),
(78, 6, 8, 5, 30000),
(79, 6, 8, 5, 30000),
(80, 6, 8, 5, 30000),
(81, 10, 3, 1, 10000),
(82, 10, 3, 1, 10000),
(83, 10, 3, 1, 10000),
(84, 10, 3, 1, 10000),
(85, 10, 3, 1, 10000),
(86, 10, 3, 1, 10000),
(87, 10, 3, 1, 10000),
(88, 10, 3, 1, 10000),
(89, 10, 3, 1, 10000),
(90, 10, 3, 1, 10000),
(91, 8, 7, 2, 15000),
(92, 8, 7, 2, 15000),
(93, 8, 7, 2, 15000),
(94, 8, 7, 2, 15000),
(95, 8, 7, 2, 15000),
(96, 8, 7, 2, 15000),
(97, 8, 7, 2, 15000),
(98, 8, 7, 2, 15000),
(99, 8, 7, 2, 15000),
(100, 8, 7, 5, 30000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
