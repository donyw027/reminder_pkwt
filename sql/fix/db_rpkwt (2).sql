-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 12:18 PM
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
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `nik_akt` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status_pkwt` varchar(10) NOT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `divisi` varchar(10) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `post` varchar(50) NOT NULL,
  `gaji` int(11) NOT NULL,
  `nik_kk` varchar(16) DEFAULT NULL,
  `jk` varchar(10) NOT NULL,
  `ttl` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `bpjstk` varchar(16) DEFAULT NULL,
  `bpjskes` varchar(16) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `periode` int(3) DEFAULT NULL,
  `start_kontrak` varchar(12) DEFAULT NULL,
  `end_kontrak` varchar(12) DEFAULT NULL,
  `decisionkontrak` varchar(6) DEFAULT NULL,
  `status_karyawan` varchar(10) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik_akt`, `nama`, `status_pkwt`, `jabatan`, `divisi`, `dept`, `post`, `gaji`, `nik_kk`, `jk`, `ttl`, `alamat`, `email`, `bpjstk`, `bpjskes`, `bank`, `periode`, `start_kontrak`, `end_kontrak`, `decisionkontrak`, `status_karyawan`, `keterangan`) VALUES
(213, '1717', 'Abd Rochman Fani', '1A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 2500000, '3514183007000000', 'Laki-Laki', 'PASURUAN ', 'KRAMAT RT04RW03 KELURAHAN GONDANGREJO KECAMATAN GONDANG WETAN', 'vansugal21@gmail.com', '24056150501', '717463517', '', 11, '2024-05-02', '2025-04-02', '', 'aktif', 'New Comer'),
(214, '1718', 'Dony Arianto', '2A', 'Operator', 'Direct', 'Assembly', 'VC Assembly Labelling', 3100000, '3575032208199600', 'Laki-Laki', 'PASURUAN', 'BLANDONGAN RT/3 RW/2 KEL.BLANDONGAN KEC.BUGUL KIDUL KOTA PASURUAN', 'donyarianto454@gmail.com', '24056150493', '1541266244', '', 11, '2024-05-02', '2024-08-04', '', 'aktif', 'New Comer'),
(251, '1344', 'Denny Arya Aditama', 'PMNT-STAFF', 'Operator', 'Indirect', 'Office', 'Drafter', 6500000, '', 'Laki-Laki', 'SIDOARJO', 'DSN KARANGPLOSO RT 2 RW 4 DESA GELANG KECAMATAN TULANGAN SIDOARJO', 'dennyaryaaditama@gmail.com', '21008418846', '1188260594', '', 11, '2024-05-02', '2024-08-04', '', 'aktif', ''),
(252, '1428', 'Mahrus', '3A', 'Operator', 'Indirect', 'Office', 'Driver', 3700000, '', 'Laki-Laki', 'PASURUAN', 'JL.HASANUDIN GG4 NO17 RT01 RW04 KARANGANYAR PANGGUNGREJO PASURUAN JAWATIMURR', 'macruzardian69@gmail.com', '17049135159', '1134249041', '', 11, '2024-05-02', '2024-08-04', '', 'aktif', ''),
(266, '922', 'M. Solihin (Pandean)', 'C4', 'Operator', 'Cleaner', 'Cleaner', 'Production', 95000, '', 'Laki-Laki', '', '', '', NULL, '717648873', '', 11, '2024-05-02', '2024-08-04', '', 'aktif', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nik` varchar(6) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `gaji_tidak_full` int(11) NOT NULL,
  `uang_phl` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `sisa_cuti` int(11) NOT NULL,
  `lembur` int(11) NOT NULL,
  `koreksi_positif` int(11) NOT NULL,
  `jumlah_pendapatan` int(11) NOT NULL,
  `bpjs_tk` int(11) NOT NULL,
  `bpjs_kes` int(11) NOT NULL,
  `pph21` int(11) NOT NULL,
  `absensi` int(11) NOT NULL,
  `koreksi_negatif` int(11) NOT NULL,
  `jumlah_potongan` int(11) NOT NULL,
  `take_home_pay` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `total_hari_kerja` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `nama`, `nik`, `dept`, `status`, `gaji_pokok`, `gaji_tidak_full`, `uang_phl`, `tunjangan`, `sisa_cuti`, `lembur`, `koreksi_positif`, `jumlah_pendapatan`, `bpjs_tk`, `bpjs_kes`, `pph21`, `absensi`, `koreksi_negatif`, `jumlah_potongan`, `take_home_pay`, `email`, `total_hari_kerja`) VALUES
(5, 'pomi', '22', '', '', 0, 0, 0, 1999, 1999, 213, 123, 32131, 123123, 123123, 1231231, 1231231, 123123, 1231231, 123123, 'cesar123bagas@gmail.com', '15');

-- --------------------------------------------------------

--
-- Table structure for table `pkwt`
--

CREATE TABLE `pkwt` (
  `id` int(11) NOT NULL,
  `isi_pkwt` text NOT NULL,
  `nama_hrd` varchar(30) NOT NULL,
  `alamat_hrd` text NOT NULL,
  `ttd_hrd` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkwt`
--

INSERT INTO `pkwt` (`id`, `isi_pkwt`, `nama_hrd`, `alamat_hrd`, `ttd_hrd`) VALUES
(4, '<p>tes</p>', 'Resia Anugrah', 'Gempol , Monumen Jayandaru', '1');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pkwt`
--

CREATE TABLE `riwayat_pkwt` (
  `id` int(11) NOT NULL,
  `idk` int(11) NOT NULL,
  `nik_akt` varchar(5) NOT NULL,
  `status_pkwt` varchar(12) NOT NULL,
  `start_kontrak` varchar(11) NOT NULL,
  `end_kontrak` varchar(11) NOT NULL,
  `pdfpkwt` int(11) DEFAULT NULL,
  `tgl_simpan` varchar(10) NOT NULL
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
(14, 'doni', 'doni', 'IT', '-', 'admin', '$2y$10$7gTQXop3dMEcbkY85ljUvuMyJqlVdMv6SJkCs0cyz6onlsiZBEkFK', 1686095893, 'user.png', 1),
(39, 'HRD', 'hrd', 'HRD', '-', 'admin', '$2y$10$fPBkZYTTWQQ/a8IqWTueqOSDzY1DbatpMXP1yEd9zfcgcRfaRQDBK', 1718069719, 'user.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pkwt`
--
ALTER TABLE `pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `riwayat_pkwt`
--
ALTER TABLE `riwayat_pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
