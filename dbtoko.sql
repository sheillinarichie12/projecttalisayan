-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 04:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(4, 'BR001', 1, 'Jagung', 'Talisayan', '5000', '10000', 'Pcs', '99', '16 January 2024, 13:30', '22 January 2024, 21:54'),
(5, 'BR002', 5, 'Kelapa', 'Talisayan', '5000', '10000', 'Pcs', '999', '22 January 2024, 21:47', '22 January 2024, 21:54'),
(6, 'BR003', 6, 'Lada', 'Talisayan', '150000', '180000', 'Kg', '99', '22 January 2024, 21:58', NULL),
(7, 'BR004', 6, 'Kedelai', 'Talisayan', '10000', '12000', 'Kg', '50', '22 January 2024, 22:00', NULL),
(8, 'BR005', 6, 'Beras', 'Talisayan', '10000', '13000', 'Kg', '100', '22 January 2024, 22:01', NULL),
(9, 'BR006', 6, 'Pala', 'Talisayan', '50000', '80000', 'Kg', '150', '22 January 2024, 22:02', NULL),
(10, 'BR007', 6, 'Kemiri', 'Talisayan', '50000', '80000', 'Kg', '50', '22 January 2024, 22:04', NULL),
(11, 'BR008', 5, 'Choco Chocolate', 'Talisayan', '20000', '30000', 'Kg', '50', '22 January 2024, 22:05', NULL),
(12, 'BR009', 6, 'Cabai', 'Talisayan', '50000', '70000', 'Kg', '100', '22 January 2024, 22:06', NULL),
(13, 'BR010', 1, 'Sawi', 'Talisayan', '15000', '20000', 'Kg', '50', '22 January 2024, 22:08', NULL),
(14, 'BR011', 6, 'Kopi', 'Talisayan', '100000', '120000', 'Kg', '49', '22 January 2024, 22:11', NULL),
(15, 'BR012', 8, 'Singkong', 'Talisayan', '13000', '15000', 'Kg', '30', '22 January 2024, 22:16', NULL),
(16, 'BR013', 6, 'Kacang Tanah', 'Talisayan', '20000', '28000', 'Kg', '50', '22 January 2024, 22:17', NULL),
(17, 'BR014', 1, 'Kacang Panjang', 'Talisayan', '20000', '25000', 'Kg', '30', '22 January 2024, 22:20', NULL),
(18, 'BR015', 6, 'Kacang Hijau', 'Talisayan', '18000', '20000', 'Kg', '50', '22 January 2024, 22:22', NULL),
(19, 'BR016', 6, 'Vanili', 'Talisayan', '1000000', '1500000', 'Kg', '50', '22 January 2024, 22:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Sayuran', '7 May 2017, 10:23'),
(5, 'Buah-buahan', '7 May 2017, 10:28'),
(6, 'Biji-bijian', '6 October 2020, 0:19'),
(8, 'Umbi Umbian', '22 January 2024, 22:16');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Konstantia', 'Tangsayan Kaltim', '08121377802', 'konstantia@gmail.com', 'unnamed.jpg', '12314121');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '1', '10000', '22 January 2024, 22:26', '01-2024'),
(2, 'BR002', 1, '1', '10000', '22 January 2024, 22:26', '01-2024'),
(3, 'BR003', 1, '1', '180000', '22 January 2024, 22:26', '01-2024'),
(4, 'BR011', 1, '1', '120000', '22 January 2024, 22:27', '01-2024');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(1, 'BR001', 1, '1', '10000', '22 January 2024, 22:26'),
(2, 'BR002', 1, '1', '10000', '22 January 2024, 22:26'),
(3, 'BR003', 1, '1', '180000', '22 January 2024, 22:26'),
(4, 'BR011', 1, '1', '120000', '22 January 2024, 22:27');

-- --------------------------------------------------------

--
-- Table structure for table `pt`
--

CREATE TABLE `pt` (
  `id_pt` int(11) NOT NULL,
  `nama_pt` varchar(255) NOT NULL,
  `alamat_pt` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pt`
--

INSERT INTO `pt` (`id_pt`, `nama_pt`, `alamat_pt`, `tlp`, `nama_pemilik`) VALUES
(1, 'PT Maju Talisayan', 'Jl. Seriwijaya Rt 03, Talisayan, Kaltim', '081234567890', 'Konstantia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `pt`
--
ALTER TABLE `pt`
  ADD PRIMARY KEY (`id_pt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pt`
--
ALTER TABLE `pt`
  MODIFY `id_pt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
