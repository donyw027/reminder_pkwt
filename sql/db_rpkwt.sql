-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 12:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rpkwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `hrd`
--

CREATE TABLE `hrd` (
  `id` int(11) NOT NULL,
  `nama` int(11) NOT NULL,
  `alamat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik_akt` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status_pkwt` varchar(10) NOT NULL,
  `divisi` varchar(10) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `post` varchar(30) NOT NULL,
  `gaji` int(11) NOT NULL,
  `nik_kk` varchar(16) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `ttl` text NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `bpjstk` varchar(16) DEFAULT NULL,
  `bpjskes` varchar(16) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `start_kontrak` varchar(12) NOT NULL,
  `end_kontrak` varchar(12) NOT NULL,
  `decisionkontrak` varchar(6) DEFAULT NULL,
  `status_karyawan` varchar(10) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik_akt`, `nama`, `status_pkwt`, `divisi`, `dept`, `post`, `gaji`, `nik_kk`, `jk`, `ttl`, `alamat`, `email`, `bpjstk`, `bpjskes`, `bank`, `start_kontrak`, `end_kontrak`, `decisionkontrak`, `status_karyawan`, `keterangan`) VALUES
(1, '1772', 'romli spv', 'pkwt', 'Indirect', 'IT', 'IT ERP', 18000000, '1354522548525', 'laki', 'perempuan', 'ngoro', 'p@gmail.com', '1235446', '654312', '456465', '2024-05-02', '2024-05-16', 'y', 'aktif', '-'),
(3, '1263', 'romla ww', 'pkwt', 'indirect', 'it', 'it support', 90000000, '3219813', '', '', 'malang', 'das@gmail.com', '32193', '21398', '329321', '2024-05-28', '2024-05-28', NULL, 'aktif', 'rewwas'),
(4, '163', 'dika', 'pkwt', 'indirect', 'it', 'it support', 90000000, '3219813', '', '', 'malang', 'das@gmail.com', '32193', '21398', '329321', '2024-05-28', '2024-05-28', NULL, 'aktif', 'rewwas'),
(5, '1632', 'aldo', 'pkwt', 'indirect', 'it', 'it support', 90000000, '3219813', '', '', 'malang', 'das@gmail.com', '32193', '21398', '329321', '2024-05-28', '2024-05-28', NULL, 'aktif', 'rewwas'),
(6, '70', 'domn', '3a', 'indirect', 'hrd', 'hrd', 8300000, '321237813', 'laki', 'malang,8 ags 2022', 'malang', 'kao@gmail.com', '3123813', '31271231', '312831', '2024-05-21', '2024-05-23', NULL, 'aktif', NULL),
(7, '22', 'reza', 'pkwt', 'indirect', 'it', 'it support', 90000000, '3219813', 'laki', 'perempuan', 'S', 'syafidfid@gmail.com', '32193', '21398', '329321', '2024-05-10', '2024-05-23', NULL, 'aktif', 'SSSSS');

-- --------------------------------------------------------

--
-- Table structure for table `pkwt`
--

CREATE TABLE `pkwt` (
  `id` int(11) NOT NULL,
  `isi_pkwt` text NOT NULL,
  `nama_hrd` varchar(30) NOT NULL,
  `ttd_hrd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pkwt`
--

CREATE TABLE `riwayat_pkwt` (
  `id` int(11) NOT NULL,
  `nik_akt` varchar(5) NOT NULL,
  `pdfpkwt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('admin','keuangan','marketing','pendidikan','sarpras','sdm','sekretariat','yayasan','akunting') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(14, 'doni', 'doni', 'IT', '-', 'admin', '$2y$10$TLWyJK2HZOvzuf6DFTqXce4Gim6MgwGpjCsd61QDUHsauXm8a87Sq', 1686095893, 'user.png', 1),
(37, 'romi', 'romi', 'SPV', '00', 'admin', '$2y$10$Ye7mcEiyyKpOtIz9k17Eke39WmLm.BXU1a.UfO1QtM8Voqs7tKUd.', 1716874426, 'user.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pkwt`
--
ALTER TABLE `pkwt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_pkwt`
--
ALTER TABLE `riwayat_pkwt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pkwt`
--
ALTER TABLE `pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pkwt`
--
ALTER TABLE `riwayat_pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
