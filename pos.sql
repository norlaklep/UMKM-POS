-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 02:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `Id` int(11) NOT NULL,
  `val` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`Id`, `val`) VALUES
(1, '7');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Id` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `alamat_karyawan` varchar(25) NOT NULL,
  `kontak_karyawan` varchar(25) NOT NULL,
  `gaji_karyawan` int(11) NOT NULL,
  `shift_karyawan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Id`, `nama_karyawan`, `alamat_karyawan`, `kontak_karyawan`, `gaji_karyawan`, `shift_karyawan`) VALUES
(2, 'Jafar', 'Sukabirus', '0862262', 100000, 'Pagi'),
(5, 'Fajar Maulana kadir', 'sksks', '121221', 11110, 'Pagi'),
(7, 'Fajar Maulana kadir', '121221', '', 11110, 'Pagi'),
(8, 'ALim', 'hashsaha', '121212121', 911110, 'Siang'),
(9, 'Kakaka', 'hashsahaikkk', '22222', 110, 'Sore'),
(10, 'aaaaKakaka', 'hashsahaikkkjjj', '1111', 9110, 'Malam');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `caId` int(11) NOT NULL,
  `iid` int(11) NOT NULL,
  `tname` varchar(50) NOT NULL,
  `tkategori` varchar(50) NOT NULL,
  `tjumlah` varchar(50) NOT NULL,
  `tharga` varchar(50) NOT NULL,
  `ttotal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`caId`, `iid`, `tname`, `tkategori`, `tjumlah`, `tharga`, `ttotal`) VALUES
(1, 1, 'celana', 'pakaian', '5', '50000', '250000.0'),
(2, 1, 'kemeja', 'pakaian', '5', '50000', '250000.0'),
(3, 1, 'ikan', 'makanan', '2', '10000', '20000.0'),
(4, 1, 'celana', 'pakaian', '2', '50000', '100000.0'),
(5, 1, 'kecangan', 'makanan', '2', '9993', '19986.0'),
(6, 2, 'ikan', 'makanan', '2', '10000', '20000.0'),
(7, 2, 'kecangan', 'makanan', '2', '9993', '19986.0'),
(8, 3, 'celana', 'pakaian', '1', '50000', '50000.0'),
(9, 3, 'celana', 'pakaian', '1', '50000', '50000.0'),
(10, 4, 'ikan', 'makanan', '1', '10000', '10000.0'),
(11, 4, 'celana', 'pakaian', '1', '50000', '50000.0'),
(12, 4, 'kecangan', 'makanan', '1', '9993', '9993.0'),
(13, 5, 'ikan', 'makanan', '1', '10000', '10000.0'),
(14, 5, 'ikan', 'makanan', '1', '10000', '10000.0'),
(15, 5, 'celana', 'pakaian', '2', '50000', '100000.0'),
(16, 5, 'celana', 'pakaian', '2', '50000', '100000.0'),
(17, 6, 'celana', 'pakaian', '1', '50000', '50000.0'),
(18, 6, 'celana', 'pakaian', '1', '50000', '50000.0'),
(19, 6, 'kemeja', 'pakaian', '1', '50000', '50000.0'),
(20, 6, 'kemeja', 'pakaian', '1', '50000', '50000.0'),
(21, 7, 'ikan', 'makanan', '1', '10000', '10000.0'),
(22, 7, 'celana', 'pakaian', '1', '50000', '50000.0'),
(23, 7, 'ikan', 'makanan', '1', '10000', '10000.0'),
(24, 7, 'celana', 'pakaian', '1', '50000', '50000.0');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `Id` int(11) NOT NULL,
  `nama_outlet` varchar(50) NOT NULL,
  `alamat_outlet` varchar(25) NOT NULL,
  `kontak_outlet` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`Id`, `nama_outlet`, `alamat_outlet`, `kontak_outlet`) VALUES
(1, 'Alima', 'Sukabirus', '1212121'),
(3, 'Aniis', 'Kalimantasn', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `Id` int(11) NOT NULL,
  `nama_owner` varchar(50) NOT NULL,
  `alamat_owner` varchar(25) NOT NULL,
  `kontak_owner` varchar(25) NOT NULL,
  `jumlah_outlet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`Id`, `nama_owner`, `alamat_owner`, `kontak_owner`, `jumlah_outlet`) VALUES
(1, 'Fajar', 'Sukapura', '081212121', 1);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `sid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `kid` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `total_jumlah` varchar(50) NOT NULL,
  `total_harga` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`sid`, `id`, `kid`, `nama_karyawan`, `total_jumlah`, `total_harga`, `status`, `balance`) VALUES
(1, 1, 0, 'Fajar Maulana kadir', '6.0', '139986.0', 'Lunas', '0.0'),
(2, 2, 0, 'Fajar Maulana kadir', '4.0', '39986.0', 'Lunas', '14.0'),
(3, 3, 10, 'aaaaKakaka', '2.0', '100000.0', 'Lunas', '900000.0'),
(4, 4, 0, 'Fajar Maulana kadir', '3.0', '69993.0', 'Lunas', '30007.0'),
(5, 5, 0, 'Jafar', '6.0', '220000.0', 'Lunas', '780000.0'),
(6, 6, 0, 'Jafar', '4.0', '200000.0', 'Setengah', '-199900.0'),
(7, 7, 2, 'Fajar Maulana kadir', '2.0', '60000.0', 'Belum Bayar', '-60000.0'),
(8, 7, 2, 'Fajar Maulana kadir', '2.0', '60000.0', 'Lunas', '10000.0');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `kategori_produk` varchar(25) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `stok_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Id`, `nama_produk`, `kategori_produk`, `harga_produk`, `stok_produk`) VALUES
(1, 'ikan', 'makanan', 10000, 100),
(3, 'celana', 'pakaian', 50000, 10),
(4, 'kemeja', 'pakaian', 50000, 10),
(5, 'kecangan', 'makanan', 9993, 100);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` enum('owner','karyawan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `nama`, `email`, `password`, `role`) VALUES
(1, 'Fajar', 'fajar.aaa@gmail.com', 'asasad', 'owner'),
(2, 'Jafar', 'jafar.aaa@gmail.com', 'asasad1', 'karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`caId`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `extra`
--
ALTER TABLE `extra`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `caId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
