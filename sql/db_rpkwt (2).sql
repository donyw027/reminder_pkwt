-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 05:04 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `nama` varchar(60) NOT NULL,
  `status_pkwt` varchar(15) NOT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `divisi` varchar(10) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `post` varchar(60) NOT NULL,
  `gaji` int(11) DEFAULT NULL,
  `nik_kk` varchar(17) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `ttl` text,
  `alamat` text,
  `email` text,
  `bpjstk` varchar(16) DEFAULT NULL,
  `bpjskes` varchar(16) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `periode` int(3) DEFAULT NULL,
  `start_kontrak` varchar(12) DEFAULT NULL,
  `end_kontrak` varchar(12) DEFAULT NULL,
  `decisionkontrak` varchar(6) DEFAULT NULL,
  `status_karyawan` varchar(10) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nik_akt`, `nama`, `status_pkwt`, `jabatan`, `divisi`, `dept`, `post`, `gaji`, `nik_kk`, `jk`, `ttl`, `alamat`, `email`, `bpjstk`, `bpjskes`, `bank`, `periode`, `start_kontrak`, `end_kontrak`, `decisionkontrak`, `status_karyawan`, `keterangan`) VALUES
(1, '14', 'Ratih Purwaningsih', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Body Binding', 4635133, '3514190511910002', 'Laki-Laki', '-', 'DUSUN KAMPUNG BARU RT. 002 RW.004 GRATI TUNON, GRATI, KABUPATEN PASURUAN', 'cici.meong01@gmail.com', '13031923546', '0001541266964', '9000021974820', 0, '2013-12-23', '2024-04-10', '', 'aktif', ''),
(2, '16', 'Ali Usman', 'PMNT', 'Operator', 'Direct', 'Painting', 'MH Assembly Labeling', 4635133, '3575014304910003', 'Laki-Laki', '-', 'DSN BARENG 001/001 BANTER BENJENG KABUPATEN GRESIK', 'lenanana1608@gmail.com', '10014791965', '0001541266975', '9000021996088', 0, '2013-12-23', '2024-04-10', '', 'aktif', ''),
(3, '19', 'Retno Sri Winarti', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'MH Assembly Machine head ', 4635133, '3514147007900002', 'Laki-Laki', '-', 'JL. LOMOREJO LATEK UTARA. RT01 RW 01 BANGIL PASURUAN', 'reisyaauliaq@gmail.com', '12010802846', '0001822570975', '9000025149221', 0, '2013-12-27', '2024-04-10', '', 'aktif', ''),
(4, '25', 'Arif Dwi Fendra', 'PMNT', 'Operator', 'Direct', 'Wood Warehouse', 'VC & BA Body Sanding', 4635133, '3575011104850003', 'Laki-Laki', '-', 'SIDOWAYAH.RT 004/RW 001.DESA SIDOWAYAH.KECAMTAN BEJI PASURUAN', 'fdra715@gmail.com', '8010764739', '0001541267291', '9000026647884', 0, '2013-12-24', '2024-04-10', '', 'aktif', ''),
(5, '29', 'Iis Farera Imsawati', 'PMNT', 'Operator', 'Direct', 'Assembly', 'VC PE Inspections', 4635133, '3514130407900004', 'Laki-Laki', '-', 'PERUM ASABRI BLOK B 40 RT 01 RW 13 DESA NOGOSARI KECAMATAN PANDAAN KABUPATEN PASURUAN', 'iisfareraimsawati@gmail.com', '14020821774', '0001541267368', '9000026647850', 0, '2014-01-02', '2024-04-10', '', 'aktif', ''),
(6, '33', 'Muhammad Khunain', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'VC Bracing Line', 4635133, '3514231010880002', 'Laki-Laki', '-', 'JL. KH.WACHID HASYIM GG.9 NO.13,RT.02 RW.06 KELURAHAN KEBONSARI,KECAMATAN PANGGUNGREJO,KOTA PASURUAN', 'muhammadkhunain@gmail.com', '13028814799', '0001305590051', '9000026634312', 0, '2014-02-03', '2024-04-10', '', 'aktif', ''),
(7, '41', 'Muhamad Luqman Khakim', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC Fingerboard Gluing', 4635133, '3575011910960001', 'Laki-Laki', '-', 'JL SLAMET RIADI GG VIII , RT 01/ RW 02 KELURAHAN GENTONG KECAMATAN GADING REJO KOTA PASURUAN ', 'luqmankhakim23@yahoo.com', '17049135118', '0001078152671', '9000042186974', 0, '2014-02-06', '2024-04-10', '', 'aktif', ''),
(8, '43', 'Muhammad Edfin Perdana', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'VC Body Putty Assembly', 4635133, '3514131402910001', 'Laki-Laki', '-', 'JL. DR SUTOMO 30B RT.001 RW.003 SUKALIPURO, DERMO, BANGIL', 'edfinperdana@gmail.com', '16028745251', '0001704290589', '9000037768620', 0, '2014-02-17', '2024-04-10', '', 'aktif', ''),
(9, '46', 'Febri Indra Wahyu', 'PMNT', 'Operator', 'Direct', 'Painting', 'Stamping Machine/Plywood Inspector', 4635133, '3575011305900005', 'Laki-Laki', '-', 'JL. COKROAMINOTO RT/RW 001/003 KEL BLANDONGAN KECAMATAN BUGUL KIDUL', 'febriindra117@gmail.com', '15029153622', '0001543358711', '9000030148374', 0, '2014-02-17', '2024-04-10', '', 'aktif', ''),
(10, '51', 'AinurRofiq', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC Assembly Silk Print', 4635133, '3514150508920002', 'Laki-Laki', '-', 'JL PLOASAN NO 728B RT 01 RW 06 KEL KERSIKAN BANGIL ', 'ammaralfatih0328@gmail.com', '15025704998', '0001543358687', '9000030153440', 0, '2014-02-20', '2024-04-10', '', 'aktif', ''),
(11, '57', 'Maskhurin', 'PMNT', 'Operator', 'Direct', 'Painting', 'MH Sealer Inspection', 4635133, '3514170608960002', 'Laki-Laki', '-', 'JL. HANGTUA 2/3 RT/RW 03/03 KEL/KEC. GADING REJO , KOTA PASURUAN', 'kcuriind@gmail.com', '18039961547', '0002250575728', '9000041377467', 0, '2014-02-26', '2024-04-10', '', 'aktif', ''),
(12, '58', 'Hadi Triyono', 'PMNT', 'Operator', 'Direct', 'Painting', 'Kalimba Assembly', 4635133, '3575012904960001', 'Laki-Laki', '-', 'JL BHAYANGKARI 656 RT 13 RW 04 JUWET KENONGO PORONG', 'haditriyono.ht@gmail.com', '18032517825', '0001646026121', '9000033698003', 0, '2014-02-26', '2024-04-10', '', 'aktif', ''),
(13, '63', 'Jumrotul Fitriya', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Bracing Cutting', 4635133, '3514182106950003', 'Laki-Laki', '-', 'SIDOWAYAH RT01/RW 01.DESA SIDOWAYAH,BEJI PASURUAN', 'fitrisafitri946@gmail.com', '18024322523', '0002066624469', '9000037767929', 0, '2014-02-27', '2024-04-10', '', 'aktif', ''),
(14, '65', 'Solehudin', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'BA Neck Shape Sanding', 4635133, '3514200909900001', 'Laki-Laki', '-', 'JIMBARAN WETAN RT 03 RW 01 WONOAYU SIDOARJO', 'solehudin2696@gmail.com', '17002613333', '0002237173683', '9000039845574', 0, '2014-03-03', '2024-04-10', '', 'aktif', ''),
(15, '66', 'Sofiati', 'PMNT', 'Operator', 'Direct', 'Assembly', 'MH Neck', 4635133, '3514152711890003', 'Laki-Laki', '-', 'PANDEAN REMBANG RT 2 RW 1 NOMOR 33 KABUPATEN PASURUAN', 'sofiati1230@gmail.com', '17015964996', '0000716495433', '9000008989056', 0, '2014-03-03', '2024-04-10', '', 'aktif', ''),
(16, '68', 'Intan Fitriyanti', 'PMNT', 'Operator', 'Direct', 'Assembly', 'VC Assembly Fingerboard Sanding', 4635133, '3514181202980001', 'Laki-Laki', '-', 'KRAJAN RT 01 RW 02 KELURAHAN KRATON KECAMATAN KRATON ', 'intanfitriyanti0@gmail.com', '17005951904', '0000717959441', '9000041298267', 0, '2014-03-12', '2024-04-10', '', 'aktif', ''),
(17, '78', 'Slamet Mardianto', 'PMNT', 'Operator', 'Direct', 'Assembly', 'Fingerboard Line', 4635133, '3514221809960007', 'Laki-Laki', '-', 'KARANG WINGKO RT. 003 RW. 006 KELURAHAN WIROGUNAN KECAMATAN PURWOREJO KOTA PASURUAN', 'mardian28031992@gmail.com', '17027512734', '0001743869711', '9000042275579', 0, '2014-04-01', '2024-04-10', '', 'aktif', ''),
(18, '83', 'Mukhammad Afifudin', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 4635133, '3575011708950004', 'Laki-Laki', '-', 'BEKACAK RT/RW 03/03 KOLURSARI BANGIL PASURUAN', 'afifu7874@gmail.com', '18060563808', '0000785417894', '9000041391617', 0, '2014-04-10', '2024-04-10', '', 'aktif', ''),
(19, '89', 'Fita Yulianti', 'PMNT', 'Operator', 'Direct', 'assembly', 'Bracing', 4635133, '3514152801990001', 'Laki-Laki', '-', 'WARUNG DOWO TIMUR RT03 RW011 WARUNG DOWO KEC. POHJENTREK  PASURUAN', 'rafafita56@gmail.com', '18039961521', '0001537357972', '9000019080994', 0, '2014-04-21', '2024-04-10', '', 'aktif', ''),
(20, '99', 'Anita Kurniawati', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 4635133, '3514202301990002', 'Laki-Laki', '-', 'PERUM PEKOREN INDAH RT1/RW13 KEL PEKOREN, KECAMATAN REMBANG - PASURUAN ', 'kurniawatianita24@gmail.com', '17031151321', '0000717951486', '9000026648080', 0, '2014-05-19', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(21, '113', 'Siti Maslikha', 'PMNT', 'Operator', 'Direct', 'Assembly', 'Bridge', 4635133, '3514072611950002', 'Laki-Laki', '-', 'JL. GATOT SUBROTO RT 02 RW 06 KELURAHAN KARANGKETUG KOTA PASURUAN', 'icha1988.im@gmail.com', '17015982618', '0000716045657', '1440020356033', 0, '2014-06-02', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(22, '121', 'Saiful', 'PMNT', 'Operator', 'Direct', 'Painting', 'Sideboard Ribbon', 4635133, '3514180810920001', 'Laki-Laki', '-', 'DUSUN JREBENG RT001 RW 011 DESA SUMBERDAWESARI KECAMATAN GRATI KABUPATEN PASURUAN', 'lufias0610@gmail.com', '18067708281', '0002054067052', '1440015765602', 0, '2014-06-04', '2024-04-10', '', 'aktif', ''),
(23, '122', 'A. Aris Suriyanto', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Sideboard Sanding', 4635133, '3514072611950002', 'Laki-Laki', '-', '', '', '17015982618', '0000716045657', '9000032436611', 0, '2014-06-04', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(24, '133', 'Afrizal Yunanto', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Nut Cutting & EQ', 4635133, '3514072611950002', 'Laki-Laki', '-', 'PERUMNAS KRATON HARMONI D2-30, RT 14/11, BENDUNGAN, KRATON, PASURUAN', 'afrizalyunanto13974@gmail.com', '17015982618', '0000716045657', '9000026519430', 0, '2014-06-18', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(25, '134', 'Mukhamad Arifin', 'PMNT', 'Operator', 'Direct', 'Painting', 'BA Fretting', 4635133, '3514072611950002', 'Laki-Laki', '-', 'GUYANGAN RT1/RW2 GENENGWARU REMBANG PASURUAN', 'azzahra.zahra99887@gmail.com', '17015982618', '0000716045657', '9000026519679', 0, '2014-06-19', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(26, '138', 'Fajri Romadhonia', 'PMNT', 'Operator', 'Direct', 'Assembly', 'BA Inspector', 4635133, '3514072611950002', 'Laki-Laki', '-', 'DUSUN REBONO BARAT RT 004 RW 006 KELURAHAN REBONO KECAMATAN WONOREJO', 'niaananda21@gmail.com', '17015982618', '0000716045657', '9000042187998', 0, '2014-06-23', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(27, '139', 'Qurrotul Akyun', 'PMNT', 'Operator', 'Direct', 'Assembly', 'VC Sealer Sanding', 4635133, '3514202301990002', 'Laki-Laki', '-', 'DUSUN LEMARIS, 001/010, KEBONWARIS, PANDAAN, PASURUAN', 'unyukayun@gmail.com', '17031151321', '0000717951486', '9000034331968', 0, '2014-06-23', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(28, '140', 'Mokhamad Agus Mujiyono', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'MH Packing', 4635133, '3514072611950002', 'Laki-Laki', '-', 'JL. TENGIRI 553 RT/RW 007/003 BENDOMUNGAL BANGIL PASURUAN', 'putriramadhanirania09@gmail.com', '17015982618', '0000716045657', '9000026634569', 0, '2014-06-23', '2024-04-10', '', 'aktif', 'New 3A May Assesment'),
(29, '144', 'Yusuf Yulisman', 'PMNT', 'Operator', 'Direct', 'Painting', 'Kalimba', 4635133, '3514190409900001', 'Laki-Laki', '-', 'LK. BAKALAN RT4 RW1 KELURAHAN PAGAK, KECAMATAN BEJI, KABUPATEN PASURUAN', 'yusufyulisman26@gmail.com', '21035545371', '0000719226393', '1440020522964', 0, '2014-06-25', '2024-04-10', '', 'aktif', ''),
(30, '146', 'Faisal Muzzaqi', 'PMNT', 'Operator', 'Direct', 'Painting', 'Parts Warehouse', 4635133, '3511111809020001', 'Laki-Laki', '-', 'PERUM GRAND KENCANA BLOK I NO. 5 RT/RW 003/004 GEMPENG BANGIL', 'reveriedream21@gmail.com', '21035545413', '0001795279702', '9000044378546', 0, '2014-06-26', '2024-04-10', '', 'aktif', ''),
(31, '163', 'Muhammad Zainudin Arif', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 4635133, '3514051606970003', 'Laki-Laki', '-', 'JL.BADER RT04 RW03 DESA KALIREJO KECAMATAN BANGIL.KAB.PASURUAN', 'arifsyaman6@gmail.com', '21022776138', '0002594929454', '1440020356074', 0, '2014-08-04', '2024-04-10', '', 'aktif', ''),
(32, '188', 'Mochammad Novel Catur Wicaksono', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'Bracing', 4635133, '3514062805920002', 'Laki-Laki', '-', 'DSN GROGOL GEDE DESA GEBANGMALANG RT 001 RW 004 KECAMATAN MOJOANYAR KABUPATEN MOJOKERTO', 'velosdan1234@gmail.com', '24024199861', '0003072261475', '1440024973890', 0, '2014-08-25', '2024-04-10', '', 'aktif', ''),
(33, '192', 'Zaenul Efendi', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'VC Neck Shape sanding', 4635133, '3514192010910002', 'Laki-Laki', '-', 'DUSUN GAPUK,RT01/RW01,DESA KAWIS REJO, KECAMATAN REJOSO, KABUPATEN PASURUAN', 'zaenulefendi88@gmail.com', '24024199671', '0002896388998', '1440024974625', 0, '2014-08-25', '2024-04-10', '', 'aktif', ''),
(34, '197', 'M.Sholehudin Zuhri', 'PMNT', 'Operator', 'Direct', 'Wood Working', 'Bridge', 4635133, '3514060710940001', 'Laki-Laki', '-', 'JALAN. IR H JUANDA NO. 5 RT/RW 001/003 DESA TAPAAN KEC. BUGUL KIDUL', 'sholehudinzuhri2019@gmail.com', '24043965888', '0002611532529', '1440025101822', 0, '2014-08-25', '2024-04-10', '', 'aktif', ''),
(35, '203', 'Bagus Subroto', 'PMNT', 'Operator', 'Direct', 'Assembly', 'VC Sideboard Ribbon', 4635133, '3514180205950003', 'Laki-Laki', '-', 'JL.DR WAHIDIN S HUSODO 7/54, RT:02 RW:02,PETAMANAN, PANGGUNGREJO, PASURUAN', 'bagussubroto220790@gmail.com', '24043966316', '0001043107288', '1440025101566', 0, '2014-09-01', '2024-04-10', '', 'aktif', ''),
(36, '205', 'Suparno', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC SideBoard Sanding', 4635133, '3575032509970001', 'Laki-Laki', '-', 'RT/RW.004/005 DESA.SEMEDUSARI KEC.LEKOK KAB.PASURUAN', 'suparnorara44@gmail.com', '24043966324', '0001704290692 ', '1440025102085', 0, '2014-09-01', '2024-04-10', '', 'aktif', ''),
(37, '214', 'Mochammad Fiqi', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC Packing', 4635133, '3514161006960007', 'Laki-Laki', '-', '', '', '24056150568', '0001705633648', '1440025182038', 0, '2014-09-12', '2024-04-10', '', 'aktif', ''),
(38, '215', 'Mochammad Irawan', 'PMNT', 'Operator', 'Direct', 'Assembly', 'VC Microfiller', 4635133, '3514180411920006', 'Laki-Laki', '-', 'PERUMAHAN WIROGUNAN RESIDENCE BLOK S NO. 159 RT. 06 RW. 08 KELURAHAN WIROGUNAN KECAMATAN PURWOREJO KABUPATEN PASURUAN ', 'mochirawan43@gmail.com', '24056150642', '0000717981063', '1440025181113', 0, '2014-09-12', '2024-04-10', '', 'aktif', ''),
(39, '217', 'Nur Kholis', 'PMNT', 'Operator', 'Direct', 'Assembly', 'kalimba room', 4635133, '3507241908890002', 'Laki-Laki', '-', 'BUNUT SELATAN  RT/RW.001/004 DESA PEJANGKUNGAN KEC.REMBANG', 'nurkholisrika87@gmail.com', '24056150592', '0001458199855 ', '1440025181071', 0, '2014-09-03', '2024-04-10', '', 'aktif', ''),
(40, '637', 'Luluk Atul Mukaromah', 'PMNT', 'Operator', 'Direct', 'Painting', 'VC Soft Sanding & Decal', 4635133, '3514155210910003', 'Laki-Laki', '-', 'LK. BAKALAN RT4 RW1 KELURAHAN PAGAK, KECAMATAN BEJI, KABUPATEN PASURUAN', 'lulukatulmukaromah12@gmail.com', '14009120479', '0001541266931', '9000021969465', 0, '2017-08-01', '2024-04-10', '', 'aktif', ''),
(41, '1430', 'Taufan Maulana Haris', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Fingerboard Gluing', 3600000, '3575011910960001', 'Laki-Laki', '-', 'JL KH ABD KHAMID GG 7/33  , RT 05/RW 04 , KELURAHAN KARANGANYAR KECAMATAN PANGGUNG REJO KOTA PASURUAN', 'taufanmaulanaharis19@gmail.com', '17049135118', '0001078152671', '9000042186974', 0, '2023-08-16', '2024-07-15', '', 'aktif', ''),
(42, '1431', 'Teguh Budiarto', '3A', 'Operator', 'Direct', 'CNC', 'CNC ', 3600000, '3514180702970001', 'Laki-Laki', '-', 'DS. BELANDONGAAN BUGUL KIDUL RT05 RW05 BUGUL KIDUL  KOTA PASURUAN', 'budiikutego@gmail.com', '16025590148', '0001704011556', '9000037769511', 0, '2023-08-16', '2024-07-15', '', 'aktif', ''),
(43, '1432', 'Mochamad Aziz', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Putty Assembly', 3600000, '3514131402910001', 'Laki-Laki', '-', 'JL.KELURAHAN BAKALAN, RT.004/RW.001, PAGAK, BEJI, PASURUAN', ' azizmochamadaziz8@gmail.com', '16028745251', '0001704290589', '9000037768620', 0, '2023-08-16', '2024-07-15', '', 'aktif', ''),
(44, '1433', 'Hoiron', '3A', 'Operator', 'Direct', 'Assembly', 'MH Assembly Fingerboard Sanding', 3600000, '3514151104940003', 'Laki-Laki', '-', 'BERAN ORO ORO OMBO WETAN RT:003 RW:001 KECAMATAN REMBANG KABUPATEN PASURUAN ', 'hoironkrotok@gmail.com', '16025590247', '0001890876407', '9000037769479', 0, '2023-08-16', '2024-07-15', '', 'aktif', ''),
(45, '1435', 'Adi Setiawan', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Fingerboard Gluing', 3600000, '3575023006970002', 'Laki-Laki', '-', 'DSN. BANDILAN II RT 05 RW 02, DS. RANUKLINDUNGAN, KEC. GRATI - KAB. PASURUAN ', 'adisetiawan55577@gmail.com', '23015939624', '0002443232171', '9000039166922', 0, '2023-05-01', '2024-04-30', '', 'aktif', ''),
(46, '1444', 'M. Maulana', '3A', 'Operator', 'Direct', 'Wood Warehouse', 'Stamping Machine/Plywood Inspector', 3600000, '3575011305900005', 'Laki-Laki', '-', 'JL. HALMAHERA GANG 12A NO.68', 'yasminfairuzkhalisa@gmail.com', '15029153622', '0001543358711', '9000030148374', 0, '2023-10-20', '2024-09-19', '', 'aktif', ''),
(47, '1447', 'Abdul Musa', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Neck Shape Sanding', 3700000, '3514142812920001', 'Laki-Laki', '-', 'DUSUN SATAK RT 003 RW 002 DESA MANARUWI KECAMATAN BANGIL KABUPATEN PASURUAN', 'abdulmusa.2818@gmail.com', '23015939608', '0001704372557', '9000039827853', 0, '2023-05-01', '2024-04-30', '', 'aktif', ''),
(48, '1450', 'Dedy Susanto', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck & End Pin', 3600000, '3514130307940006', 'Laki-Laki', '-', 'KETAPAN,PEKOREN,REMBANG,PASURUAN RT 003/RW 008', 'rievaaurellaa27@gmail.com', '15029153655', '0001536385127', '9000030144589', 0, '2023-12-17', '2024-11-16', '', 'aktif', ''),
(49, '1451', 'Bagus Setiawan', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 3600000, '3514230601970001', 'Laki-Laki', '-', 'KRANDON LOR, RT/RW 02/05, REJOSO KIDUL, REJOSO, PASURUAN', 'bagusshetiawan@gmail.com', '17036353682', '0001537874921', '9000042300310', 0, '2023-12-17', '2024-11-16', '', 'aktif', ''),
(50, '1453', 'Moh. Rizki Arifin', '3A', 'Operator', 'Direct', 'Painting', 'Omega 4/ UV ROOM', 3700000, '3575022809970005', 'Laki-Laki', '-', 'JL. MARGO TARUNO NGEGGOT, RT06/RW01/KEBONAGUNG,PURWOREJO,KOTA PASURUAN', 'rizqim648@gmail.com', '16028745269', '0001978583398', '9000037768182', 0, '2023-12-17', '2024-11-16', '', 'aktif', ''),
(51, '1456', 'Havid', '3A', 'Operator', 'Direct', 'Assembly', 'VC Assembly Silk Print', 3600000, '3514150508920002', 'Laki-Laki', '-', 'DESA REMBANG RT04 RW04 KEC.REMBANG KAB. PASURUAN', 'havidzjo79@gmail.com', '15025704998', '0001543358687', '9000030153440', 0, '2023-12-18', '2024-11-17', '', 'aktif', ''),
(52, '1457', 'Badrus Sholeh', '3A', 'Operator', 'Direct', 'Wood Working', 'BA/VC Bracing Gluing', 3600000, '3514152807940003', 'Laki-Laki', '-', 'SUMBERGLAGAH RT.012 RW.006 KECAMATAN.REMBANG KABUPATEN.PASURUAN', 'septiantatagkurniawan1234@gmail.com', '15029153705', '0001543358733', '9000030144548', 0, '2023-12-18', '2024-11-17', '', 'aktif', ''),
(53, '1458', 'Moch. Febriyanto', '3A', 'Operator', 'Direct', 'Wood Working', 'Neck (Preparation)', 3600000, '3575020602920001', 'Laki-Laki', '-', 'MOCH FEBRIYANTO JL.KH.HASYIM ASYARI RT02 RW09 BAKALAN BUGUL KIDUL', 'febry.m021@gmail.com', '15040266858', '0000786366549', '9000032655210', 0, '2023-12-10', '2024-11-09', '', 'aktif', ''),
(54, '1459', 'Moch. Miskan Arief', '3A', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 3600000, '3514140812790009', 'Laki-Laki', '-', 'JL. DR. SUTOMO RT.001, RW.003 DERMO BANGIL', '', '15048184186', '0001180813239', '9000021974747', 0, '2023-11-15', '2024-10-14', '', 'aktif', ''),
(55, '1461', 'M. Jamil', '3A', 'Operator', 'Direct', 'Wood Working', 'Fingerboard CNC', 3600000, '3575032105930002', 'Laki-Laki', '-', 'JL. IMAM BONJOL GG 09 RT05/RW04 KEL. TAPA\'AN KEC. BUGUL KIDUL KOTA PASURUAN', 'iftahistiarini7@gmail.com', '15029153689', '0001543358722', '9000030144571', 0, '2023-12-11', '2024-11-10', '', 'aktif', ''),
(56, '1462', 'Akhmad Jamik', '3A', 'Operator', 'Direct', 'Painting', 'VC Repair', 3700000, '3575031010970001', 'Laki-Laki', '-', 'DOROPAYUNG RT03 RW03 KEL.SEKARGADUNG KECAMATAN PURWOREJO KOTA PASURUAN', 'akhmadjamik09@gmail.com', '15044920807', '0001897556556', '9000033697930', 0, '2024-01-19', '2024-12-19', '', 'aktif', ''),
(57, '1463', 'Muhammad Rouf', '3A', 'Operator', 'Direct', 'Painting', 'MH Sealer Inspection', 3700000, '3514170608960002', 'Laki-Laki', '-', 'KRAPYAK REJO ,RT002 /RW005 ,KRAPYAK REJO/GADINGREJO/PASURUAN', 'zahrashofi27@gmail.com', '18039961547', '0002250575728', '9000041377467', 0, '2023-12-19', '2024-11-18', '', 'aktif', ''),
(58, '1465', 'Dimas Angga Tri Kurniawan', '3A', 'Operator', 'Direct', 'Assembly', 'Kalimba Assembly', 3700000, '3575012904960001', 'Laki-Laki', '-', 'JL.UNTUNG SUROPATI RT003/RW001 KELURAHAN PURUTREJO KECAMATAN PURWOREJO KOTA PASURUAN', 'anggadimas290496@gmail.com', '18032517825', '0001646026121', '9000033698003', 0, '2024-01-19', '2024-12-19', '', 'aktif', ''),
(59, '1468', 'Muhammad Ayyub', '3A', 'Operator', 'Direct', 'Wood Working', 'Fingerboard Line', 3700000, '3514150707930001', 'Laki-Laki', '-', 'DUSUN KRAJAN, 001/004', 'rianayubi95@gmail.com', '15044921375', '0001254328299', '9000032302961', 0, '2024-01-19', '2024-12-19', '', 'aktif', ''),
(60, '1469', 'Suwarno', '3A', 'Operator', 'Direct', 'Assembly', 'BA Fretting', 3600000, '3514222912900001', 'Laki-Laki', '-', 'DUSUN JATIKETOK, RT001/RW008, DESA GEJUGJATI, KECAMATAN LEKOK, KABUPATEN PASURUAN', 'nanok.adisuwarno@gmail.com', '13024672522', '0001541266053', '9000026642307', 0, '2023-11-21', '2024-10-21', '', 'aktif', ''),
(61, '1472', 'Mokhammad Haffi Al Madani', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding Wheel', 3700000, '3575020107960082', 'Laki-Laki', '-', 'GAYAMAN RT02 RW03 KEL.KEBONAGUNG KEC.PURWOREJO KOTA PASURUAN', 'haffialmadani0107@gmail.com', '18013220274', '0002203978138', '1440017253052', 0, '2024-03-16', '2025-02-15', '', 'aktif', ''),
(62, '1473', 'Arif Fauzi', '3A', 'Operator', 'Direct', 'Painting', 'MH Sealer Sanding', 3700000, '3514143004850001', 'Laki-Laki', '-', 'RT/RW:002/001,DESA/KELURAHAN:LATEK,KECAMATAN:BANGIL,KOTA/KABUPATEN:PASURUAN', 'farif5985@gmail.com', '18032517809', '0000204034566', '1440016836287', 0, '2024-03-16', '2025-02-15', '', 'aktif', ''),
(63, '1475', 'Faidulloh', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Bracing Cutting', 3700000, '3514182106950003', 'Laki-Laki', '-', 'DESA PEJANGKUNGAN, DUSUN BUNUT UTARA, RT 02 RW 02, KECAMATAN REMBANG, KABUPATEN PASURUAN ', 'faidulloh95@gmail.com', '18024322523', '0002066624469', '9000037767929', 0, '2024-03-16', '2025-02-15', '', 'aktif', ''),
(64, '1476', 'Imam Hanafi', '3A', 'Operator', 'Direct', 'Wood Working', 'Bridge Line', 3700000, '3514141005940003', 'Laki-Laki', '-', 'JL. PANDEAN KIDUL BARU III/513 04/08 KIDUL DALEM, BANGIL, PASURUAN', 'hanafiqhy@gmail.com', '17005951870', '0002237220819', '9000041298366', 0, '2023-11-18', '2024-10-17', '', 'aktif', ''),
(65, '1477', 'Roni Widjaya', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Neck Shape Sanding', 3700000, '3514200909900001', 'Laki-Laki', '-', 'DUSUN PENULUPAN RT/RW 02/03 DESA PARASREJO KECAMATAN POHJENTREK KABUPATEN PASURUAN ', 'ronimia0919@gmail.com', '17002613333', '0002237173683', '9000039845574', 0, '2023-11-18', '2024-10-17', '', 'aktif', ''),
(66, '1478', 'Abdul Halim', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 3700000, '3514152711890003', 'Laki-Laki', '-', 'KARANG PANAS II,RT/RW 01/06,DESA/KEL,ORO ORO OMBOWETAN,KEC,REMBANG,KAB,PASURUAN', 'zahrakeysha337@gmail.com', '17015964996', '0000716495433', '9000008989056', 0, '2024-03-18', '2025-02-17', '', 'aktif', ''),
(67, '1479', 'Makhmudi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck/ CNC Machine', 3700000, '3514192909930002', 'Laki-Laki', '-', 'DS.KADNUNG RT.004/RW.002 KEC.WINONGAN KAB.PASURUAN', 'thekompor12345@gmail.com', '18053064830', '0001540770399', '9000044943109', 0, '2023-11-17', '2024-10-16', '', 'aktif', ''),
(68, '1481', 'Lutfi Zakaria', '3A', 'Operator', 'Direct', 'Assembly', 'VC Assembly Fingerboard Sanding', 3700000, '3514181202980001', 'Laki-Laki', '-', 'LAJUK, RT 005 RW 003, DESA LAJUK, KECAMATAN GONDANGWETAN, KABUPATEN PASURUAN', 'lutfizakaria1202@gmail.com', '17005951904', '0000717959441', '9000041298267', 0, '2024-03-18', '2025-02-17', '', 'aktif', ''),
(69, '1482', 'Poniman', '3A', 'Operator', 'Direct', 'Assembly', 'BA String Installations', 3700000, '3575013010960002', 'Laki-Laki', '-', 'JL.GATOT SUBROTO,002/006, RANDUSARI, GADINGREJO, KOTA PASURUAN', 'poniman3010@gmail.com', '18008725980', '0000785968942', '1440015483099', 0, '2023-09-13', '2024-08-12', '', 'aktif', ''),
(70, '1484', 'Ahmad Sukhaimi', '3A', 'Operator', 'Direct', 'Painting', 'VC Manual Sealer', 3700000, '3575032206930002', 'Laki-Laki', '-', 'JL. CEMARA RT 01 RW 03 KELURAHAN BUGUL LOR KECAMATAN PANGGUNGREJO KOTA PASURUAN', 'amekyolo478@gmail.com', '17031151198', '0000786486778', '9000042297029', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(71, '1489', 'M. Suhadak', '2A', 'Operator', 'Direct', 'painting', 'BA Microfiller', 3100000, '3575032801970003', 'Laki-Laki', '-', '', '', '17058397476', '0000785763663', '9000042186891', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(72, '1491', 'Busar', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer Belt Sanding', 3700000, '3514230501890001', 'Laki-Laki', '-', 'DUSUN KASURAN,RT 01/RW 06,REJOSOLOR,REJOSO, PASURUAN ', 'anisanisaturrohmah@gmail.com', '17027760580', '0001541266097', '9000026648205', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(73, '1493', 'Muhammad Sabilillah', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Bracing Gluing/Laser Room', 3100000, '3514141708920003', 'Laki-Laki', '-', '', '', '15044920864', '0001897575535', '9000033697997', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(74, '1494', 'Feriadi', '3A', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 3700000, '3514130910910003', 'Laki-Laki', '-', 'JL CEMARA GG X/18,RT/RW 002/002 BUGUL LOR,PANGGUNG REJO,KOTA PASURUAN', 'nansyahazzahra@gmail.com', '15029153762', '0001543358777', '9000029907384', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(75, '1496', 'M. Rohman', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Final Inspection', 3700000, '3514163108930001', 'Laki-Laki', '-', 'KEDUNGREJO RT/RW 001/004 DESA/KELURAHAN REJOSARI KECAMATAN KRATON KABUPATEN PASURUAN', 'zilaqila123@gmail.com', '15003324207', '0000717312036', '9000026660317', 0, '2023-04-15', '2024-03-14', '', 'aktif', ''),
(76, '1497', 'Muhammat As\'at', '3A', 'Operator', 'Direct', 'Wood Working', 'BA/VC Body Routing', 3700000, '3514191910950001', 'Laki-Laki', '-', 'RT 01 / RW 06 , DESA/KELURAHAN: JELADRI , KECAMATAN: WINONGAN , KOTA/KABUPATEN: PASURUAN ', 'aadaja1927@gmail.com', '17031151107', '0001043146596', '9000042290867', 0, '2023-04-16', '2024-03-15', '', 'aktif', ''),
(77, '1499', 'Muhamad Asy\'ari', '3A', 'Operator', 'Direct', 'Painting', 'VC Wheel Sanding', 3700000, '3514161108950002', 'Laki-Laki', '-', 'CABEAN,RT 02 / RW 08 MULYOREJO KRATON PASURUAN', 'asyarimuhamad3@gmail. com', '16005488826', '0000715959718', '9000034306994', 0, '2023-04-16', '2024-03-15', '', 'aktif', ''),
(78, '1500', 'Ahmad Gojali', '3A', 'Operator', 'Direct', 'Wood Working', 'Fingerboard Line', 3700000, '3514221809960007', 'Laki-Laki', '-', 'DUSUN KERAJAN SELATAN RT03 RW02 DESA GEJUGJATI LEKOK PASURUAN', 'igojali353@gmail.com', '17027512734', '0001743869711', '9000042275579', 0, '2023-04-16', '2024-03-15', '', 'aktif', ''),
(79, '1502', 'Muhammad Rizki Aziz', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Assembly', 3700000, '3575012412910001', 'Laki-Laki', '-', 'JL.JOLONDRIO RT01 RW 04 KELURAHAN KRAPYAKREJO KECAMATAN GADINGREJO KOTA PASURUAN ', 'rizkisatuduatiga@gmail.com', '17031151172', '0000785702204', '9000042297078', 0, '2023-04-16', '2024-03-15', '', 'aktif', ''),
(80, '1503', 'Faizin Amir Hamzah', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 3700000, '3575011203960006', 'Laki-Laki', '-', 'JALAN SLAMET RIYADI RT 02 RW 03 KELURAHAN SEBANI KECAMATAN GADINGREJO KOTA PASURUAN', 'faizinamirhamzah1.996@gmail.com', '17031151115', '0001481524839', '9000034307752', 0, '2023-04-17', '2024-03-16', '', 'aktif', ''),
(81, '1504', 'Fachrur Rozi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 3700000, '3514141101970002', 'Laki-Laki', '-', '002/001.RACI.RACI.BANGIL.PASURUAN', 'fachrur123456789@gmail.com', '17020822783', '0002155211201', '9000041300287', 0, '2023-04-17', '2024-03-16', '', 'aktif', ''),
(82, '1505', 'Achmad Supa\'at', '3A', 'Operator', 'Direct', 'Painting', 'VC Sealer Manual Sanding', 3700000, '3514162701900001', 'Laki-Laki', '-', 'JL.SUNGKONO RT:1 RW:2, POGAR BANGIL ', 'asufaat@gmail.com', '14026715426', '0001541265581', '9000026634270', 0, '2023-04-17', '2024-03-16', '', 'aktif', ''),
(83, '1506', 'Muhammad Fatkhur Rosy', '3A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 3700000, '3575011708950004', 'Laki-Laki', '-', 'WETAN DALEM RT002/RW004, KELURAHAN,KECAMATAN, KOTA/KAB', 'fatkurrossi406@gmail.com', '18060563808', '0000785417894', '9000041391617', 0, '2023-04-17', '2024-03-16', '', 'aktif', ''),
(84, '1509', 'Fatkur Rohman', '3A', 'Operator', 'Direct', 'CNC', 'CNC Bromo', 3600000, '3514111303980002', 'Laki-Laki', '-', '01/014, DUSUN KENDAYAAN, DESA SEBANI, KECAMATAN PANDAAN, KABUPATEN PASURUAN', 'fatkhurrhmn1398@gmail.com', '17036353740', '0002157623684', '1440018502101', 0, '2023-04-17', '2024-03-18', '', 'aktif', ''),
(85, '1513', 'Muchammad Suryan', '3A', 'Operator', 'Direct', 'Assembly', 'BA Fretting', 3700000, '3514143103940003', 'Laki-Laki', '-', 'SATAK PILANG RT 09 RW 03 SATAK/MANARUWI KECAMATAN BANGIL  KOTA PASURUAN', 'suryanrian55@gmail.com', '17002822595', '0002237202843', '9000039841359', 0, '2023-04-16', '2024-03-15', '', 'aktif', ''),
(86, '1514', 'Fatkhur Rozak', '3A', 'Operator', 'Direct', 'Wood Working', 'BA All Solid Binding', 3700000, '3514191708010001', 'Laki-Laki', '-', '04/03.WINONGAN LOR.WINONGAN.KAB.PASURUAN', 'fatkhurrozak251@gmail.com', '21008418911', '0000719755784', '1440020166432', 0, '2023-04-18', '2024-03-17', '', 'aktif', ''),
(87, '1517', 'Akbar Imarunanda', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer Inspection', 3700000, '3575011912930001', 'Laki-Laki', '-', 'PERUM KRATON INDAH E1-15', 'aimarunanda@gmail.com', '17031151347', '0002314665044', '9000042290792', 0, '2023-04-18', '2024-03-17', '', 'aktif', ''),
(88, '1538', 'Dinul Huda Prayugi', '3A', 'Operator', 'Direct', 'Painting', 'Paint Mixer', 3700000, '3514093010860005', 'Laki-Laki', '-', 'JL. KEBONJAYA RT 03 RW 06 KELURAHAN KEBONAGUNG KECAMATAN PURWOREJO KOTA PASURUAN', 'semout.chilik@gmail.com', '17036353773', '0001876973409', '9000042300344', 0, '2023-05-23', '2024-04-23', '', 'aktif', ''),
(89, '1543', 'Ahmad Nadip Mauludi', '2A', 'Operator', 'Direct', 'Wood Warehouse', 'MH Sideboard Ribbon', 3000000, '3514151811990001', 'Laki-Laki', '-', '', 'ahmadnadipmauludi78@gmail.com', '20018900538', '0002936192466', '1440019334256', 0, '2023-05-23', '2024-04-23', '', 'aktif', ''),
(90, '1544', 'Surya Adi Saputra', '3A', 'Operator', 'Direct', 'Wood Working', 'Laser Machine', 3600000, '3515050204000002', 'Laki-Laki', '-', 'RT 04/RW 04, SEMAMBUNG, JABON, SIDOARJO ', 'inyourdreams980@gmail.com', '21002134696', '0000720701954', '1440020075732', 0, '2023-07-07', '2024-06-06', '', 'aktif', ''),
(91, '1546', 'Nur Anif Mufadiyah', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Body Assembly', 3600000, '3514150512990002', 'Laki-Laki', '-', 'PASINAN KULON, RT 01/ RW 03, REMBANG / REMBANG / PASURUAN', 'nuranif27@gmail.com', '19092686880', '0002732071814', '1440019063756', 0, '2023-08-08', '2024-07-07', '', 'aktif', ''),
(92, '1559', 'Wildan Maulana', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Body Sanding', 3600000, '3575030702940001', 'Laki-Laki', '-', 'JALAN HASANUDIN GG. 8 NO. 17 RT/RW 008/003 KELURAHAN KARANGANYAR KECAMATAN PANGGUNGREJO KOTA PASURUAN', 'maulana.wildan123@gmail.com', '19092686849', '0001438126751', '9000040373780', 0, '2023-07-22', '2024-06-21', '', 'aktif', ''),
(93, '1560', 'Nanang Eko Wahyudi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck Shape Sanding', 3600000, '3514200101970015', 'Laki-Laki', '-', 'REBALAS PENDOSO RT.001 RW. 013 GRATI PASURUAN', 'nanange963@gmail.com', '18039961588', '0000718005194', '9000042327891', 0, '2023-07-22', '2024-06-21', '', 'aktif', ''),
(94, '1561', 'Alif Maghnur Fatih', '3A', 'Operator', 'Direct', 'Wood Working', 'Sideboard Ribbon', 3600000, '3514180810920001', 'Laki-Laki', '-', 'JLN.KYAI SUPIK,RT=001/RW=002,TEMBOKREJO,PURWOREJO,PASURUAN', 'masalif0880@gmail.com', '18067708281', '0002054067052', '1440015765602', 0, '2023-09-22', '2024-08-22', '', 'aktif', ''),
(95, '1587', 'Ariyanto', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Sideboard Ribbon', 3600000, '3514182704950001', 'Laki-Laki', '-', 'DESA GONDANG REJO  RT 004 RW 005 KECAMATAN, GONDANG WETAN KABUPATEN, PASURUAN', 'anikamufidatunnisa123@gmail.com', '16025590114', '0002002019218', '9000037783397', 0, '2023-08-16', '2024-07-16', '', 'aktif', ''),
(96, '1588', 'Mohamad Nazilul Fajar', '3A', 'Operator', 'Direct', 'Parts Warehouse', 'Parts Warehouse', 3600000, '3514183011000001', 'Laki-Laki', '-', 'JL.KOLONEL SUGIONO,RT002/RW001,KELURAHAN TRAJENG,GADINGREJO,KOTA PASURUAN ', 'nazilulfajar@gmail.com', '21035545330', '0002808757282', '1440020522931', 0, '2023-08-17', '2024-07-16', '', 'aktif', ''),
(97, '1591', 'Umar Arif', '2A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 2400000, '3514191909000002', 'Laki-Laki', '-', 'DUSUN PUTAT RT01 RW05 PEANATAAN WINONGAN ', 'arifu7823@gmail.com', '21035545355', '0000718621964', '1440020522923', 0, '2023-08-21', '2024-07-20', '', 'aktif', ''),
(98, '1593', 'Sobikhul Munir', '2A', 'Operator', 'Direct', 'Wood Working', 'Kalimba', 3000000, '3514190409900001', 'Laki-Laki', '-', 'DSN LEBAK RT/RW:002/006 DESA LEBAK KEC. WINONGAN, PASURUAN', 'vcr199@gmail.com', '21035545371', '0000719226393', '1440020522964', 0, '2023-08-21', '2024-07-20', '', 'aktif', ''),
(99, '1594', 'Agus Nasrulloh', '2A', 'Operator', 'Direct', 'CNC', 'CNC ', 3000000, '3514192008960006', 'Laki-Laki', '-', 'RT.01 RW.06 DSN.LEBAK DS.LEBAK KEC.WINONGAN KAB.PASURUAN', 'gusa387@gmail.com', '21035545363', '0000718894787', '1440020524739', 0, '2023-08-22', '2024-07-21', '', 'aktif', ''),
(100, '1595', 'Rikza Wiramas Pratama', '3A', 'Operator', 'Direct', 'Parts Warehouse', 'Parts Warehouse', 3600000, '3511111809020001', 'Laki-Laki', '-', 'A YANI GG PANDE 43, 005/001, DABASAH, BONDOWOSO, BONDOWOSO', 'wira.6a@gmail.com', '21035545413', '0001795279702', '9000044378546', 0, '2023-07-02', '2024-06-01', '', 'aktif', ''),
(101, '1596', 'Abdul Jalal', '2A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 3000000, '3514050309940001', 'Laki-Laki', '-', 'KAMPUNG SIDOREJO RT 025 RW 010 KEL/DESA PASREPAN KEC PASREPAN.', 'abduljalal940903@gmail.com', '16028744999', '0001704290567', '9000037768273', 0, '2023-09-13', '2024-08-12', '', 'aktif', ''),
(102, '1609', 'Mukhamad Soimin Chozin', '2A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 3000000, '3514191601970001', 'Laki-Laki', '-', 'DSN KECIK RT 01/RW 01, LEBAK, WINONGAN, PASURUAN', 'soimboim94@gmail.com', '21062816372', '0000719261853', '1440020733637', 0, '2023-11-22', '2024-10-21', '', 'aktif', ''),
(103, '1616', 'Achmad Afandi', '3A', 'Operator', 'Direct', 'Assembly', 'MH Fetting', 3600000, '3514070504940002', 'Laki-Laki', '-', 'DUSUN PAGUBUKAN KAMPUNG BARU ', 'jannahmiftachul704@gmail.com', '16042390324', '0002237158956', '9000039827747', 0, '2023-12-18', '2024-11-17', '', 'aktif', ''),
(104, '1617', 'M. Tuhi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Cut Teeth Ribbon', 3600000, '3514160505950004', 'Laki-Laki', '-', 'SELOTAMBAK TENGAH RT 003 RW 005 DESA SELOTAMBAK KECAMATAN KRATON KABUPATEN PASURUAN', 'mtuhi151@gmail.com', '21071473975', '0001543371153', '9000041298192', 0, '2023-12-18', '2024-11-17', '', 'aktif', ''),
(105, '1619', 'Muhammad Ainun Najib', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Neck', 3700000, '3515052803970003', 'Laki-Laki', '-', 'RT.03/RW.04,DESA SEMAMBUNG/KELURAHAN SEMAMBUNG,KECAMATAN JABON,KABUPATEN SIDOARJO', 'gantengnajib253@gmail.com', '20077938502', '0000720982056', '1440019861134', 0, '2024-01-19', '2024-12-19', '', 'aktif', ''),
(106, '1623', 'M. Mukhlas', '3A', 'Operator', 'Direct', 'Wood Warehouse', 'Stamping Machine', 3600000, '3514172712940002', 'Laki-Laki', '-', 'JL.JOLONDRIYO \'RT 003/RW 005 ,DESA KRAPYAK REJO KEC.GADINGREJO KOTA PASURUAN', 'sulalatulkhoiriyah@gmail.com', '15017518430', '0000717786202', '1440016235738', 0, '2023-07-04', '2024-06-03', '', 'aktif', ''),
(107, '1629', 'Rokhmad Suwarno', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Sideboard Ribbon', 3000000, '3575020107970009', 'Laki-Laki', '-', 'JL KH ACHMAD DAHLAN RT01 RW04 KELURAHAN POHJENTREK, KECAMATAN PURWOREJO KOTA PASURUAN', 'rokhmadsoekarno@gmail.com', '17027512635', '0002050897836', '9000034320839', 0, '2023-11-08', '2024-10-07', '', 'aktif', 'Finished Punishment 1 Month'),
(108, '1631', 'Misbakhul Ulum', '3A', 'Operator', 'Direct', 'Painting', 'VC Top Coat Manual Manual', 3700000, '3514232712960001', 'Laki-Laki', '-', 'SADENG REJO REJOSO PASURUAN ', 'ulumm2712@gmail.com', '21008418929', '0000717907871', '1440020166390', 0, '2023-04-17', '2024-03-18', '', 'aktif', ''),
(109, '1635', 'Mohamad Hanafi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck Shape Sanding', 3600000, '3514200303960002', 'Laki-Laki', '-', 'DUSUN KEBRUAN RT 02 RW 09 , DESA KEDAWUNG KULON , KECAMATAN GRATI , KABUPATEN PASURUAN', 'mohammadhanafii1996@gmail.com', '22012128629', '0002002078978', '9000041298218', 0, '2023-05-23', '2024-04-23', '', 'aktif', ''),
(110, '1636', 'Muhammad Agung Kurniawan', '2A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 3000000, '3515051205960001', 'Laki-Laki', '-', 'RT.02 RW.04 SEMAMBUNG, JABON, SIDOARJO', 'kagung133@gmail.com', '20089419251', '0001380246669', '1440019982864', 0, '2023-05-06', '2024-04-05', '', 'aktif', ''),
(111, '1637', 'Junaedi', '2A', 'Operator', 'Direct', 'Wood Working', 'VC Neck', 3100000, '3514190701960002', 'Laki-Laki', '-', 'DUSUN KRAJAN, RT/RW 002/005, DESA KEDUNG REJO, KECAMATAN WINONGAN, KABUPATEN PASURUAN', 'cakjuned123@gmail.com', '21008418903', '0002259943413', '1440020166416', 0, '2023-05-15', '2024-04-14', '', 'aktif', ''),
(112, '1638', 'Moch. Zainul Arifin', '2A', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 3100000, '3575010512940001', 'Laki-Laki', '-', 'JL.GATOT SUBROTO,002/007,RANDUSARI,GADINGREJO,PASURUAN', 'za3479678@gmail.com', '17002624876', '0002237156785', '9000039827705', 0, '2023-05-03', '2024-04-02', '', 'aktif', ''),
(113, '1639', 'Mega Fariz Saputra', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding', 3600000, '3514190406980003', 'Laki-Laki', '-', 'TOKWIRO RT 03 RW 02 DESA WINONGAN LOR KEACAMTAN WINONGAN', 'megafarizsaputra@gmail.com', '16028745202', '0001704290657', '9000037768364', 0, '2023-08-02', '2024-07-02', '', 'aktif', ''),
(114, '1640', 'Ainun Najib', '3A', 'Operator', 'Direct', 'Wood Working', 'MM', 3600000, '3514150603990002', 'Laki-Laki', '-', 'DESA SIYAR RT003 RW003 KEC.REMBANG KAB.PASURUAN', 'najib9438@gmail.com', '21002134712', '0002624932045', '1440020075922', 0, '2023-06-08', '2024-05-07', '', 'aktif', ''),
(115, '1643', 'Fatkhul Rohman', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 3000000, '3514051606970003', 'Laki-Laki', '-', '', '', '21022776138', '0002594929454', '1440020356074', 0, '2023-07-10', '2024-06-09', '', 'aktif', ''),
(116, '1644', 'Anas Bahtiyar', '2A', 'Operator', 'Direct', 'Wood Working', 'VC Microfiller', 3000000, '3518060407900002', 'Laki-Laki', '-', 'OROKWALI RT/RW:03/01 DESA:GUNUNGSARI KECAMATAN:BEJI KABUPATEN:PASURUAN', 'anasbahtiar90@gmail.com', '18053064798', '0002046439607', '9000019081091', 0, '2023-07-20', '2024-06-19', '', 'aktif', ''),
(117, '1648', 'Muhammad', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Body Sanding', 3700000, '3514222304960004', 'Laki-Laki', '-', 'RT/RW 03/07, DUSUN JATIKETOK, DESA GEJUGJATI, KECAMATAN LEKOK, KABUPATEN PASURUAN', 'mamadjonah23@gmail.com', '22004788869', '0000719046887', '1440021576183', 0, '2024-03-19', '2025-02-18', '', 'aktif', ''),
(118, '1649', 'Mokh. Rifki Suhadak', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Binding', 3700000, '3514192209970004', 'Laki-Laki', '-', 'DUSUN PUTAT, RT 002 / RW 005, DESA PENATAAN, KECAMATAN WINONGAN, KABUPATEN PASURUAN', 'rifkisuhadak@gmail.com', '22004788851', '0000719172819', '1440021576217', 0, '2024-03-19', '2025-02-18', '', 'aktif', ''),
(119, '1650', 'Muhammad Barizi', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Sideboard Depth Sanding', 3700000, '3514180501980002', 'Laki-Laki', '-', 'RT 02 RW 02 DS TENGGILIS REJO KEC.GONDANG WETAN KAB. PASURUAN', 'barizi878@gmail.com', '22004788877', '0000718461134', '1440021576019', 0, '2024-03-15', '2025-02-14', '', 'aktif', ''),
(120, '1651', 'Khoiron Fikri', '2A', 'Operator', 'Direct', 'Wood Working', 'VC Body Routing', 3100000, '3514203012980004', 'Laki-Laki', '-', 'RT001 RW004 DESA KARANGKLIWON KECAMATAN GRATI KABUPATEN PASURUAN', 'khoironf667@gmail.com', '22004788844', '0000718757471', '1440021575995', 0, '2024-03-15', '2025-02-14', '', 'aktif', ''),
(121, '1652', 'Mohammad Khoirul Anam', '2A', 'Operator', 'Direct', 'Painting', 'Omega 1', 3000000, '3514220908000001', 'Laki-Laki', '-', 'DS.GEJUGJATI DSN.BANDUNGAN RT/ RW  003/005 KEC.LEKOK KAB.PASURUAN / 005 KAB', 'mohammadkhoirulanam64@gmail.com', '22012128595', '0003131146495', '1440021674681', 0, '2023-05-13', '2024-04-10', '', 'aktif', ''),
(122, '1653', 'Ahmad Fatoni', '2A', 'Operator', 'Direct', 'wood working', 'MH Neck', 3000000, '3515052705940001', 'Laki-Laki', '-', 'KEDUNG PANDAN RT.06 RW.03 KECAMATAN JABON KABUPATEN SIDOARJO', 'crytndut@gmail.com', '19060173432', '0000720540696', '1410018004929', 0, '2023-07-02', '2024-06-01', '', 'aktif', ''),
(123, '1655', 'Makhmud', '2A', 'Operator', 'Direct', 'Painting', 'Kalimba Room', 3000000, '3514200202000002', 'Laki-Laki', '-', 'DSN.BARAN RT:001 RW:004 DS.KARANGKLIWON KEC. GRATI KAB. PASURUAN', 'makhmudfatih@gmail.com', '22034919369', '0000718108839', '1440021969339', 0, '2023-09-17', '2024-08-16', '', 'aktif', ''),
(124, '1660', 'Abd Rokhim', '3A', 'Operator', 'Direct', 'Wood Working', 'VC BA Headstock Sanding', 3600000, '3575033004960005', 'Laki-Laki', '-', 'PERUMNAS HARMONI JL. ASTINA IV BLOK C-14 NO. 29 RT 12 RW 11 KEL. BENDUNGAN. KEC. KRATON KAB. PASURUAN', 'abdulrochim6737@gmail.com', '16025590072', '0001704011578', '9000037769461', 0, '2023-07-16', '2024-06-15', '', 'aktif', ''),
(125, '1661', 'Muhammad Irfan', '3A', 'Operator', 'Direct', 'Assembly', 'BA Packing', 3600000, '3514140206970003', 'Laki-Laki', '-', ' RT3/RW5,PANDELEKAN/RACI/BANGIL, PASURUAN', 'muhammadirfan17689@gmail.com', '16020404949', '0002068125074', '9000034332099', 0, '2023-07-16', '2024-06-15', '', 'aktif', ''),
(126, '1662', 'Diyo Alif Utama', '3A', 'Operator', 'Direct', 'Painting', 'BA Manualy Top Coat', 3600000, '3514231409920001', 'Laki-Laki', '-', 'DESA SADENGREJO, RT/RW 003/001, KELURAHAN SADENGREJO, KECAMATAN REJOSO, KABUPATEN PASURUAN', 'diyoalifutama@gmail.com', '16013194416', '0000717848267', '9000034327222', 0, '2023-07-16', '2024-06-15', '', 'aktif', ''),
(127, '1663', 'Imam Arik Fitriyanto', '3A', 'Operator', 'Direct', 'Wood Working', 'Cajon Operator', 3600000, '3575021402970001', 'Laki-Laki', '-', 'JL. SELAMET RIYADI RT 09 RW 08 KEC PURWOREJO KEL PURWOREJO KOTA PASURUAN', 'imamarik43@gmail.com', '17049135050', '0001704011567', '9000037769453', 0, '2023-07-16', '2024-06-15', '', 'aktif', ''),
(128, '1664', 'Jaenal Abidin', '3A', 'Operator', 'Direct', 'Wood Working', 'Bridge', 3600000, '3514220703930005', 'Laki-Laki', '-', 'SEMEDU SARI RT04/RE05, KECAMATAN LEKOK,KABUPATEN PASURUAN', 'nal555647@gmail.com', '16025590288', '0002237059721', '9000037769594', 0, '2023-07-17', '2024-06-16', '', 'aktif', ''),
(129, '1668', 'Muhammad Farit', '3A', 'Operator', 'Direct', 'Assembly', 'VC Assembly String Installation', 3600000, '3514141708950001', 'Laki-Laki', '-', 'TUGUSARI RT 004 RW 014 DESA/KELURAHAN KEPULUNGAN KECAMATAN GEMPOL KABUPATEN PASURUAN ', 'mfarit17@gmail.com', '17049135142', '0001541056691', '9000042186982', 0, '2023-07-19', '2024-06-18', '', 'aktif', ''),
(130, '1670', 'Achmad Irfani', '3A', 'Operator', 'Direct', 'Parts Warehouse', 'Parts Warehouse Assistant', 3600000, '3575010701930002', 'Laki-Laki', '-', 'JL.GATOT SUBROTO GG.3 RT.001 RW.003 KEL.PETAHUNAN KEC.GADINGREJO KOTA PASURUAN ', 'fanisick@gmail.com', '17020822767', '0001542426939', '1440016604941', 0, '2023-07-19', '2024-06-18', '', 'aktif', ''),
(131, '1679', 'Nanda Wahyu Pratama', '3A', 'Operator', 'Direct', 'Wood Working', 'Kalimba Room', 3700000, '3514141810980002', 'Laki-Laki', '-', 'JL.MANGGIS RT.05 RW 02 LUMPANG BOLONG, DERMO, BANGIL, PASURUAN', 'wnanda181@gmail.com', '24024199911', '0001312445878', '1440024973932', 0, '2024-01-04', '2024-04-03', '', 'aktif', ''),
(132, '1680', 'Mokhammad Yusuf Supa\'at', '3A', 'Operator', 'Direct', 'Painting', 'VC Manual Coloring', 3700000, '3514162205980001', 'Laki-Laki', '-', 'KAMPUNG SIDOREJO NO.5 RT. 024 RW. 10', 'yusufsupaat05@gmail.com', '24024199846', '0001043040363', '1440024973940', 0, '2024-02-04', '2024-04-03', '', 'aktif', ''),
(133, '1681', 'Agung Mokh. Arifin', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Final Inspection', 3700000, '3514142808940004', 'Laki-Laki', '-', 'JLN.STM TRISAKTI TALANGAN RT 011/RW 005 DESA GAJAH BENDO KEC.BEJI KAB.PASURUAN', 'agungmokharifin@gmail.com', '24024199762', '0000717710152', '1440024974252', 0, '2024-01-05', '2024-04-04', '', 'aktif', ''),
(134, '1683', 'Ilham Brilianto', '2A', 'Operator', 'Direct', 'Painting', 'Omega 4/ UV ROOM', 3100000, '3574032810940001', 'Laki-Laki', '-', 'DUSUN MINDI RT 01 RW 03 ,SIDOWAYAH,BEJI,KABUPATEN PASURUAN', 'ilhambrilianto@gmail.com', '24024199655', '0002227808665', '1440024973965', 0, '2024-01-09', '2024-04-08', '', 'aktif', ''),
(135, '1684', 'Moch  Khoirul Anam', '2A', 'Operator', 'Direct', 'Painting', 'VC microfiller', 3100000, '3514161609980005', 'Laki-Laki', '-', 'KEBON SAWAH RT 02 RW 07, KEL. KALIREJO, KEC,. KRATON, KAB. PASURUAN', 'ka887184@gmail.com', '24024199812', '0000718031136', '1440024973916', 0, '2024-01-10', '2024-04-09', '', 'aktif', ''),
(136, '1685', 'Mukhamad Fatchur Rohman', '3A', 'Operator', 'Direct', 'Assembly', 'VC Fretting', 3700000, '3514190111960001', 'Laki-Laki', '-', 'DSN SENTONO BARAT RT/RW 001/006 DESA JELADRI KECAMATAN WINONGAN KABUPATEN PASURUAN', 'encu011196@gmail.com', '24024199739', '0001043146607', '1440024973908', 0, '2024-01-10', '2024-04-09', '', 'aktif', ''),
(137, '1686', 'Achmad Sofianto', '3A', 'Operator', 'Direct', 'Assembly', 'MH Assembly Silkprint', 3700000, '3575022911930002', 'Laki-Laki', '-', 'JLN.PURUT KEMBANG RT 03 RW 01 KEL.PURUTREJO KEC.PURWOREJO KOTA PASURUAN.', 'fianf4760@gmail.com', '24024199663', '0000786370083', '9000032655186', 0, '2024-01-10', '2024-04-09', '', 'aktif', ''),
(138, '1687', 'M Rudianto', '3A', 'Operator', 'Direct', 'Wood Warehouse', 'Bracing', 3700000, '3514062805920002', 'Laki-Laki', '-', 'SEKAR KRAJAN.RT/RW. 04/05.DS.GONDANG REJO.KEC.GONDANG WETAN', 'ranto6975@gmail.com', '24024199861', '0003072261475', '1440024973890', 0, '2024-01-15', '2024-04-14', '', 'aktif', ''),
(139, '1688', 'Mochammad Khoirul Anam', '2A', 'Operator', 'Direct', 'Painting', 'BA Sealer Putty', 3100000, '3514230809950002', 'Laki-Laki', '-', 'DUSUN SARI REJO DESA ARJOSARI RT03 RW.02 KECAMATAN REJOSO KABUPATEN PASURUAN', 'mkhoirulanam0809@gmail.com', '24024199689', '0002054649857', '1440024973882', 0, '2024-01-17', '2024-04-16', '', 'aktif', ''),
(140, '1695', 'M Anwar Zain', '2A', 'Operator', 'Direct', 'Painting', 'VC microfiller', 3100000, '3575021508950001', 'Laki-Laki', '-', 'JL. SUKUN 100 RT/RW.002 KEL/DESA PURUTREJO .KECAMATAN .PURWOREJO', 'anwar95zain15@gmail.com', '24024199721', '0003574144282', '1440024973866', 0, '2024-01-23', '2024-04-22', '', 'aktif', ''),
(141, '1696', 'Bahrul Ulum', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Final Inspection', 3700000, '3514051205930002', 'Laki-Laki', '-', 'PANDEAN RT/RW 01/02 DESA PANDEAN KECAMATAN REMBANG PASURUAN', 'bahrul120593@gmail.com', '24024199838', '0002237222856', '1440024973874', 0, '2024-01-23', '2024-04-22', '', 'aktif', ''),
(142, '1697', 'Agus Misyanto', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Neck Shape sanding', 3700000, '3514192010910002', 'Laki-Laki', '-', 'DUSUN KEDAWUNG GANG.07 RT.004 RW.001 DESA KEDAWUNG KULON KEC.GRATI ', 'messianto.agus@gmail.com', '24024199671', '0002896388998', '1440024974625', 0, '2024-01-23', '2024-04-22', '', 'aktif', ''),
(143, '1700', 'Angga Diki Mahardika', '2A', 'Operator', 'Direct', 'Painting', 'MH Buffing', 3100000, '3575030610930001', 'Laki-Laki', '-', 'JL.IMAM BONJOL RT08/RW04 KELURAHAN BUGUL LOR KECAMATAN PANGGUNGREJO KOTA PASURUAN', 'anggapasuruan6@gmail.com', '24043965847', '0001049734517', '1440015716522', 0, '2024-02-01', '2024-04-30', '', 'aktif', ''),
(144, '1701', 'Yanwar Rakhmat Susanto', '2A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 3100000, '3575032901950003', 'Laki-Laki', '-', 'JL. HANGTUAH RT 04/RW 03, GADINGREJO, KEC. GADINGREJO, KOTA PASURUAN', 'ymamat29@gmail.com', '24043965789', '0001806817599 ', '1440021571192', 0, '2024-02-01', '2024-04-30', '', 'aktif', ''),
(145, '1702', 'Muhammad Tarekh Kamal', '2A', 'Operator', 'Direct', 'Painting', 'Cajon Operator', 3100000, '3514201003940001', 'Laki-Laki', '-', 'DSN KRAWAN RT.03 RW.04 DS KEDAWUNG WETAN KEC. GRATI KAB. PASURUAN', 'tarekhkamalm@gmail.com', '24043965870', '0000718845052 ', '1410024528119', 0, '2024-02-01', '2024-04-30', '', 'aktif', ''),
(146, '1703', 'Krisna Rizky Syahputra', '2A', 'Operator', 'Direct', 'Wood Working', 'VC body Putty Assembly', 0, '3575022003980002', 'Laki-Laki', '-', 'JL. ERLANGGA NO. 92, RT. 03 RW. 08, KEL. PURWOREJO KEC. PURWOREJO, KOTA PASURUAN', 'rizkyskrisna@gmail.com', '24043965904', '0001049703862 ', '1440025101640', 0, '2024-02-05', '2024-05-04', '', 'aktif', ''),
(147, '1704', 'Muhammad Aliman', '2A', 'Operator', 'Direct', 'Wood Working', 'Bridge', 0, '3514060710940001', 'Laki-Laki', '-', 'ALAMAT:BELANG RT/RW:001/005 KEL/DESA:PATEBON KECAMATAN:KEJAYAN KOTA/KABUPATEN:PASURUAN ', 'kingalim07101994@gmail.com', '24043965888', '0002611532529', '1440025101822', 0, '2024-02-05', '2024-05-04', '', 'aktif', ''),
(148, '1705', 'Mohamad Rochman', '2A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 0, '3514160311950003', 'Laki-Laki', '-', 'JL. JOLONDRIYO 003/004 KRAPYAKREJO GADINGREJO KOTA PASURUAN', 'mohamadrochman6@gmail.com', '24043965854', '0000716631175 ', '1440025101749', 0, '2024-02-07', '2024-05-06', '', 'aktif', ''),
(149, '1706', 'M Firmansyah', '2A', 'Operator', 'Direct', 'Wood Working', 'MH body sanding', 0, '3575023005960004', 'Laki-Laki', '-', 'JL. PANGLIMA SUDIRMAN 15 , RT 02 / RW 03 , LEMAH ARAB / PURWORWJO , PURWOREJO, KOTA PASURUAN', 'firmanshiemang81@gmail.com', '24043966308', '0001543358878 ', '1440025101665', 0, '2024-02-07', '2024-05-06', '', 'aktif', ''),
(150, '1707', 'Samsul Arifin', '2A', 'Operator', 'Direct', 'Wood Working', 'VC binding', 0, '3514151012980001', 'Laki-Laki', '-', 'SEDENGGUNG RT/RW:002/008 ORO-ORO OMBO KULON REMBANG PASURUAN', 'samsul10091999@gmail.com', '24043966332', '0003075957876', '1440025101871', 0, '2024-02-08', '2024-05-07', '', 'aktif', '');
INSERT INTO `karyawan` (`id`, `nik_akt`, `nama`, `status_pkwt`, `jabatan`, `divisi`, `dept`, `post`, `gaji`, `nik_kk`, `jk`, `ttl`, `alamat`, `email`, `bpjstk`, `bpjskes`, `bank`, `periode`, `start_kontrak`, `end_kontrak`, `decisionkontrak`, `status_karyawan`, `keterangan`) VALUES
(151, '1708', 'Tatok Adi Prasetyo', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Neck & End Pin', 0, '3515051004000003', 'Laki-Laki', '-', 'SEMAMBUNG RT 04 RW 04 SEMAMBUNG JABON SIDOARJO', 'tatokuwe@gmail.com', '24043966357', '0003070856237 ', '1440025101913', 0, '2024-02-09', '2024-05-08', '', 'aktif', ''),
(152, '1709', 'Supriadi', '2A', 'Operator', 'Direct', 'Assembly', 'VC Fretting', 0, '3514231502950002', 'Laki-Laki', '-', 'DESA KEMANTRENREJO RT06/RW01 KEC. REJOSO KAB. PASURUAN', 'supriyadics15@gmail.com', '24043966282', '0002453307085', '1440025102002', 0, '2024-02-12', '2024-05-11', '', 'aktif', ''),
(153, '1710', 'Ahmad Faizin Aliansah', '2A', 'Operator', 'Direct', 'Wood Working', 'VC Sideboard Ribbon', 0, '3514180205950003', 'Laki-Laki', '-', 'RT.02 RW.02 DUSUN KRAJAN DESA SEKAR PUTIH KECAMATAN GONDANG WETAN KABUPATEN PASURUAN', 'aliansahfaizin@gmail.com', '24043966316', '0001043107288', '1440025101566', 0, '2024-02-12', '2024-05-11', '', 'aktif', ''),
(154, '1711', 'Muhammad Ghozali', '2A', 'Operator', 'Direct', 'Wood Working', 'VA & BA Neck Line', 0, '3514151009930001', 'Laki-Laki', '-', 'DUSUN SELOTUMPANG RT 01 RW 06 DESA ORO-ORO OMBO KULON KEC_ REMBANG KAB_PASURUAN', 'ghozalimuhammad638@gmail.com', '24043965805', '0001398284987', '9000041298200', 0, '2024-02-15', '2024-05-14', '', 'aktif', ''),
(155, '1712', 'Moch Iqbal Fauzi', '2A', 'Operator', 'Direct', 'Wood Working', 'VC SideBoard Sanding', 0, '3575032509970001', 'Laki-Laki', '-', 'JL PATTIMURA GG 4 RT 9/ RW 2 KEL. BUGUL KIDUL, KEC. BUGUL KIDUL, KOTA PASURUAN ', 'iqbalfauzi741@gmail.com', '24043966324', '0001704290692 ', '1440025102085', 0, '2024-02-16', '2024-05-15', '', 'aktif', ''),
(156, '1714', 'Nur Maulana Malik Kussoleh Kholili', '2A', 'Operator', 'Direct', 'Wood Working', 'Bridge', 0, '3514221007980001', 'Laki-Laki', '-', 'DUSUN KENAYAN RT002 RW002 DESA SUMBERAGUN KECAMATAN GRATI KABUPATEN PASURUAN', 'malikkussoleh10@gmail.com ', '24043966340', '0002299738678 ', '1410024189367', 0, '2024-02-21', '2024-05-20', '', 'aktif', ''),
(157, '1715', 'Hardian Anggriawan', '2A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 0, '3515052603930001', 'Laki-Laki', '-', 'SEMAMBUNG RT 03 RW 2 JABON SIDOARJO', 'hardiananggriawan@gmail.com', '24056150535', '0002472371526', '1440020733652', 0, '2024-03-01', '2024-05-31', '', 'aktif', ''),
(158, '3', 'Mukhammad Salim', 'PMNT', 'Maintenance', 'Indirect', 'Maintenance', 'Building Maintenance', 4635133, '3514152503730002', 'Laki-Laki', '-', 'PEKOREN RT001 RW004 PEKOREN REMBANG PASURUAN', 'muchsalim025@gmail.com', '14005013181', '0001541267166', '9000021968913', 0, '2014-01-10', '2024-04-10', '', 'aktif', ''),
(159, '5', 'Zainul Arifin', 'PMNT', 'CNC', 'Indirect', 'Techinical', 'CNC', 4635133, '3515050411840001', 'Laki-Laki', '-', '05/04 SEMAMBUNG JABON SIDOARJO', 'zainularifin04111984@gmail.com', '14005013116', '0001814007418', '9000021963492', 0, '2013-12-13', '2024-04-10', '', 'aktif', ''),
(160, '6', 'Saiful', 'PMNT', 'CNC', 'Indirect', 'Techinical', 'CNC', 4635133, '3514150202800004', 'Laki-Laki', '-', '', 'msaiful0202@gmail.com', '10019567014', '0001541267267', '9000021963641', 0, '2013-12-13', '2024-04-10', '', 'aktif', ''),
(161, '7', 'Suudi', 'PKWT', 'Security', 'Indirect', 'security', 'security', 4400000, '3514150101031836', 'Laki-Laki', '-', '', 'ssudi5198@gmail.com', '21054354614', '0002738814941', '9000044943091', 0, '2012-06-28', '2024-04-10', '', 'aktif', ''),
(162, '18', 'Awang Satria Gunawan', 'PMNT-STAFF', 'PCT', 'Indirect', 'PCT', 'Wood Working Controller', 6700000, '3575020904800007', 'Laki-Laki', '-', 'JL. URIP SUMOHARJO II / 05 RT 02 RW 01 KELURAHAN POHJENTREK KECAMATAN PURWOREJO KOTA PASURUAN ', 'bhismapratama22@gmail.com', '09010884477', '0001541266391', '9000021964680', 0, '2013-12-17', '2024-04-10', '', 'aktif', ''),
(163, '24', 'Suryaji F M', 'PMNT-STAFF', 'Maintenance', 'Indirect', 'Maintenance', 'Machinery Maintenance', 5700000, '3515141603710003', 'Laki-Laki', '-', '', '', '14005013033', '0001541266661', '9000021964706', 0, '2013-10-07', '2024-04-10', '', 'aktif', ''),
(164, '30', 'Budi Nur  Cahyono', 'PMNT', 'Maintenance', 'Indirect', 'Maintenance', 'Machinery Maintenance', 4635133, '3515110712920001', 'Laki-Laki', '-', '003/003,TEMPEL,KRIAN,SIDOARJO', 'budinurc8@gmail.com', '14005013348', '0001541266773', '9000021963674', 0, '2014-01-09', '2024-04-10', '', 'aktif', ''),
(165, '76', 'Devi Kusuma Wardhani', 'PMNT-STAFF', 'Werehouse', 'Indirect', 'Parts Warehouse', 'Parts Warehouse Controller', 6000000, '3575026806800001', 'Laki-Laki', '-', 'JL. KH. A. DAHLAN NO. 94 RT 04 RW 03 KEL. POHJENTREK KEC. PURWOREJO KOTA PASURUAN', 'devikwardhani@gmail.com ', '06N40029946', '0001462771214', '1440004618481', 0, '2014-04-01', '2024-04-10', '', 'aktif', ''),
(166, '131', 'Muhammad Muzaqi', 'PMNT', 'Maintenance', 'Indirect', 'Maintenance', 'Maintenance', 4635133, '3514152906930003', 'Laki-Laki', '-', 'DUSUN PEJANGKUNGAN RT 01 / RW 05, KECAMATAN REMBANG, KABUPATEN PASURUAN', 'bitakanza1995@gmail.com', '14020821808', '0001162708334', '9000026647918', 0, '2014-06-18', '2024-04-10', '', 'aktif', ''),
(167, '253', 'Muhammad Riza Fahmi', 'PKWT', 'HRD', 'Indirect', 'HRD', 'HR manager', 5500000, '3578270408750002', 'Laki-Laki', '-', 'SIMO RUKUN 6 NO. 10 RT. 06 RW. 04 SIMOMULYO-SUKOMANUNGGAL, SURABAYA', 'rizafahmi1975@gmail.com', '15000372035', '0001541266334', '1440022241589', 0, '2015-03-18', '2024-04-10', '', 'aktif', ''),
(168, '787', 'Muchamad Faiz Abdillah', 'PMNT-STAFF', 'Factory Manager', 'Indirect', 'Office', 'Vice Factory Manager', 14000000, '3514072504920002', 'Laki-Laki', '-', 'JL KANDANGAN RT 2 RW 5 DESA PAKIJANGAN KEC WONOREJO KAB PASURUAB JATIM', 'faiztelkom10@gmail.com', '15029153820', '0001810485099', '9000029907400', 0, '2018-04-02', '2024-04-10', '', 'aktif', ''),
(169, '792', 'Rani Puspita', 'PMNT-STAFF', 'Accounting', 'Indirect', 'Accounting ', 'Head Accounting ', 6500000, '3515065801790002', 'Laki-Laki', '-', '', 'ranny1801dan@gmail.com', '17002822538', '0001542579636', '1420012156120', 0, '2019-05-24', '2024-04-10', '', 'aktif', ''),
(170, '1044', 'Hery Wahyuliadi', 'PMNT-STAFF', 'PCT', 'Indirect', 'PCT', 'Production QC', 7300000, '3514140407760001', 'Laki-Laki', '-', '', 'rumypotter@gmail.com', '19035177617', '0001542550961', '9000021963468', 0, '2020-06-10', '2024-04-10', '', 'aktif', ''),
(171, '1090', 'Fitria Nurhidayati', 'PMNT-STAFF', 'Purchasing', 'Indirect', 'Purchasing', 'Purchasing2', 5000000, '3514206802960001', 'Laki-Laki', '-', 'JL. BENGAWAN SOLO NO. 20, RT 3, RW 5, TEMBOKREJO, PURWOREJO, KOTA PASURUAN', 'fitrianurhidayati90@gmail.com', '19075169714', '0002456941588', '1410017364829', 0, '2020-11-04', '2024-04-10', '', 'aktif', ''),
(172, '1283', 'Achmad Khoirul Anam', 'PKWT', 'Wood Werehouse', 'Indirect', 'Wood Warehouse', 'Wood Warehouse Controller', 4800000, '3573042307940003', 'Laki-Laki', '-', 'JALAN BALI, RT 16 RW 05, DESA SAWAHAN, KEC. TUREN, KAB. MALANG', 'aachmadkhoirul@gmail.com', '20038170310', '0002358362395', '9000021386561', 0, '2023-02-18', '2024-04-10', '', 'aktif', ''),
(173, '1344', 'Denny Arya Aditama', 'PMNT-STAFF', 'Drafter', 'Indirect', 'Office', 'Drafter', 6500000, '3515072903980001', 'Laki-Laki', '-', 'DSN KARANGPLOSO RT 2 RW 4 DESA GELANG KECAMATAN TULANGAN SIDOARJO', 'dennyaryaaditama@gmail.com', '21008418846', '0001188260594', '1440020166366', 0, '2022-04-23', '2024-04-10', '', 'aktif', ''),
(174, '1428', 'Mahrus', '3A', 'Driver', 'Indirect', 'Office', 'Driver', 3700000, '3575012808820002', 'Laki-Laki', '-', 'JL.HASANUDIN GG4 NO17 RT01 RW04 KARANGANYAR PANGGUNGREJO PASURUAN JAWATIMURR', 'macruzardian69@gmail.com', '17049135159', '0001134249041', '9000042182379', 0, '2023-07-22', '2024-06-21', '', 'aktif', ''),
(175, '1483', 'Anita Indah Arianti', 'PMNT-STAFF', 'Purchasing', 'Indirect', 'Office', 'Purchasing', 5000000, '1218165301920002', 'Laki-Laki', '-', 'JL. BANDENG RT 5 RW 1, KAUMAN, BANGIL, PASURUAN', 'aianitaindah.ariyanti@gmail.com', '18032517858', '0001701657595', '1430014671026', 0, '2023-02-17', '2024-04-10', '', 'aktif', ''),
(176, '1522', 'Muhammad Solehudin', '3A', 'Maintenance', 'Indirect', 'Maintenance', 'Maintenance', 3700000, '3514132407980001', 'Laki-Laki', '-', 'SELORAWAN RT004 RW007 CANGKRING MALANG BEJI KAB PASURUAN', 'muhammadsolehudin044@gmail.com', '17042891642', '0002158285228', '9000042188079', 0, '2023-05-18', '2024-04-18', '', 'aktif', ''),
(177, '1658', 'Nanang Arifiyanto', '3A', 'Driver', 'Indirect', 'Office', 'Driver', 3700000, '3514142904900004', 'Laki-Laki', '-', 'JL. WISANGGENI NO.18 RT/01 RW/15 DESA GEDANGSEWU KECAMATAN PARE KABUPATEN PASURUAN', 'kenzo.alvarezza0509@gmail.com', '22083164156', '0003291981917', '1400017206351', 0, '2024-01-24', '2024-12-23', '', 'aktif', ''),
(178, '1671', 'Cesar Bagas Prastowo', 'PKWT', 'Administrator', 'Indirect', 'Office', 'Administrator', 4500000, '3310052109990001', 'Laki-Laki', '-', '', 'cesar123bagas@gmail.com', '23043818196', '0000165578297', '1380016329323', 0, '2023-06-17', '2024-05-16', '', 'aktif', ''),
(179, '1675', 'Doni Wicaksono', 'PKWT', 'IT & ERP Staff', 'Indirect', 'IT', 'IT & ERP Staff', 5000000, '3573022705990004', 'Laki-Laki', '-', 'JL GILIMANUK V NO 35 RT 4 RW 5 SAMAAN KLOJEN MALANG', 'doniwicaksono27@gmail.com', '23055656641', '0001538747853', '1550012457803', 0, '2023-12-01', '2024-04-10', '', 'aktif', ''),
(180, '1677', 'Muhamad Nuhan Kafabih', 'PKWT', 'Graphic Designer', 'Indirect', 'IT', 'Graphic Designer', 4800000, '3503113105970001', 'Laki-Laki', '-', 'RT/09 RW/04 LINGKUNGAN KRANDING, KELURAHAN TAMANAN, KECAMATAN TRENGGALEK, JAWA TIMUR', 'nuhancoc@gmail.com', '24024199796', '0000104640131', '1440024974237', 0, '2024-01-02', '2024-04-01', '', 'aktif', ''),
(181, '1678', 'Achmad Thol\'ul Fauzi', 'PKWT', 'BA Guitar Inspector ', 'Indirect', 'PCT', 'BA Guitar Inspector & PC', 4800000, '9101010703960002', 'Laki-Laki', '-', 'NUANSA CANDI 4 BLOK L23, PETAHUNAN, GADINGREJO, KOTA PASURUAN', 'achmadfauzhii11@gmail.com', '24024199648', '0001584966868', '1440024801695', 0, '2024-01-02', '2024-04-01', '', 'aktif', ''),
(182, '1692', 'Richard Wibowo', 'PKWT', 'VC Guitar Inspector ', 'Indirect', 'PCT', 'VC Guitar Inspector & PC', 4000000, '3276050911870004', 'Laki-Laki', '-', 'JL. SUNAN MURIA GANG BLUESAFIR 2 NO. B12 KELURAHAN KEBONSARI WETAN KECAMATAN KANIGARAN KOTA PROBOLINGGO', 'richard.wp07@gmail.com', '24024199804', '0002035989843', '1440024974245', 0, '2024-01-22', '2024-04-21', '', 'aktif', ''),
(183, '1698', 'Dika Tri Marda', 'PKWT', 'Shipping-1', 'Indirect', 'Office', 'Shipping-1', 5000000, '3516061212950001', 'Laki-Laki', '-', '', 'dikatrier@gmail.com', '24024199754', '0002216853191', '1400020557535', 0, '2024-01-26', '2024-04-25', '', 'aktif', ''),
(184, '1728', 'Nur Zahran Muharrami', 'PKWT', 'IT & ERP Staff', 'Indirect', 'IT', 'IT & ERP Staff', 4000000, '3573032304010006', 'Laki-Laki', '-', 'JL. SAMPURNA, RT 5, RW 1, CEMOROKANDANG, KEDUNGKANDANG, KOTA MALANG', 'zahran.muharrami.23@gmail.com', '24056150675', '0001540374197', '1440025182079', 0, '', '', '', 'aktif', ''),
(185, '1735', 'Dwi Sugeng Rinaldi', 'PKWT', 'Shipping-2', 'Indirect', 'Office', 'Shipping-2', 5000000, '3515112004970001', 'Laki-Laki', '-', '', 'dwirenaldi3@gmail.com', '24056150626', '0000722718617', '1440025182145', 0, '', '', '', 'aktif', ''),
(186, '1749', 'Ahmad Rizky Dwi Syahputra', 'PKWT', 'Accounting Assistant', 'Indirect', 'Office', 'Accounting Assistant', 4500000, '3524092408010002', 'Laki-Laki', '-', 'Desa Siman Rt.004/Rw.002 Siman-Sekaran, Lamongan-Jawa Timur', 'Ar3627800@gmail.com', 'Reg-await nos', '0003595158584', '1780006649475', 0, '', '', '', 'aktif', 'New Comer Start May'),
(187, '1750', 'Deryl Septianto', 'PKWT', 'BA Guitar Inspector ', 'Indirect', 'PCT', 'BA Guitar Inspector & PC', 0, '3514121909950004', 'Laki-Laki', '-', 'Sukci Rt.001/Rw004 Bulusari-Gempol, Pasuruan.-Jawa Timur', '', 'Reg-await nos', '0002180984152', '1440025497022', 0, '', '', '', 'aktif', 'New Comer Start May'),
(188, '1758', 'Resia Anugrah Wijikapindho', 'PKWT', 'HR Assistant', 'Indirect', 'Office', 'HR Assistant', 0, '3514120208980001', 'Laki-Laki', '-', 'Kejapanan RT.008/RW.023, Kejapanan, Gempol, Pasuruan', 'resianugrah11@gmail.com', 'Reg-await nos', '0001542189835', '1440025496891', 0, '', '', '', 'aktif', 'New Comer Start May'),
(189, '1765', 'Nur Saikhu', 'PKWT', 'Building Maintenance', 'Indirect', 'Maintenance', 'Building Maintenance', 0, '3515051401810002', 'Laki-Laki', '-', 'Semambung RT.005/RW.004, Semambung, Jabon, Sidoarjo', '', 'Reg-await nos', '0001541265513', '9000021964698', 0, '', '', '', 'aktif', 'New Comer Start May'),
(190, '1766', 'Mohammad Affan Hendi Firmansyah', 'PKWT', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse Controller', 0, '3529011108010004', 'Laki-Laki', '-', 'Jl. KH. Zainal Arifin No. 115, Bangselok, Sumenep', 'affanhendi1108@gmail.com', 'Reg-await nos', '0002436306952', '1400023932016', 0, '', '', '', 'aktif', 'New Comer Start May'),
(191, '1518', 'Khoirul Anam', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Assembly', 0, '3514160602910004', 'Laki-Laki', '-', 'DESA GROGOL DUSUN DADAPAN RT 2 RW 1 KEC. GONDANG WETAN', 'ncingsadewa@gmail.com', '17015965043', '0001706948324', '9000041376725', 0, '2023-06-07', '2024-05-06', '', 'aktif', 'New 3A May Assesment'),
(192, '1520', 'Febrian Adhitiya Putra', '3A', 'Operator', 'Direct', 'Wood Working', 'Bracing', 0, '3514152801990001', 'Laki-Laki', '-', 'PEKOREN INDAH K-8,RT 003 RW 013, KEL/DESA PEKOREN, KEC. REMBANG, KAB. PASURUAN', 'febrian.adhitiya@gmail.com', '18039961521', '0001537357972', '9000019080994', 0, '2023-06-07', '2024-05-06', '', 'aktif', ''),
(193, '1521', 'Moch. Fatchur Rozi', '2A', 'Operator', 'Direct', 'Wood Working', 'MH neck', 0, '3575020201960003', 'Laki-Laki', '-', 'JL. HALMAHERA 13/50 RT : 004, RW : 006, KELURAHAN : KARANGANYAR, KECAMATAN PANGGUNGREJO, KOTA PASURUAN', 'fatchurrozi1996@gmail.com', '16025590171', '0001542768884', '9000037769487', 0, '2023-06-09', '2024-05-08', '', 'aktif', 'Downgrade May Assesment'),
(194, '1523', 'Muhammad Komarudin', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding', 0, '3514202301990002', 'Laki-Laki', '-', 'DUSUN JERUK KRAJAN RT 003 RW 003 DESA JERUK KECAMATAN KRATON KABUPATEN PASURUAN', 'rudin1804@gmail.com', '17031151321', '0000717951486', '9000041644916', 0, '2023-06-07', '2024-05-06', '', 'aktif', 'New 3A May Assesment'),
(195, '1524', 'Mochammad Robhi Jaya Saputra', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Final Inspection', 0, '3514202301990002', 'Laki-Laki', '-', 'PARASAN RT01/RW05 KEL.GRATITUNON KEC.GRATI KAB.PASURUAN', 'jayarobhi019@gmail.com', '17031151321', '0000717951486', '9000042297110', 0, '2023-06-09', '2024-05-08', '', 'aktif', 'New 3A May Assesment'),
(196, '1525', 'Akhmad Sobikh', '3A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 0, '3514072611950002', 'Laki-Laki', '-', 'DSN KECIK RT 02 RW 01 DESA LEBAK KEC WINONGAN KAB PASURUAN ', 'akhmadsobik08@gmail.com', '17015982618', '0000716045657', '9000042300302', 0, '2023-06-09', '2024-05-08', '', 'aktif', 'New 3A May Assesment'),
(197, '1528', 'Moch. Rofiki', '3A', 'Operator', 'Direct', 'Assembly', 'BA String Installations', 0, '3514072611950002', 'Laki-Laki', '-', 'SAMA', 'rofikimoch9@gmail.com', '17015982618', '0000716045657', '9000042187584', 0, '2023-06-08', '2024-05-07', '', 'aktif', 'New 3A May Assesment'),
(198, '1531', 'Heri Siswanto', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck Shape Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'PAGUBUKAN KAMPUNG BARU,RT002RW008,DESA LEBAKSARI,KECAMATAN WONOREJO,PASURUAN', 'heriswanto.pasuruan@gmail.com', '17015982618', '0000716045657', '9000040387236', 0, '2023-06-12', '2002-05-11', '', 'aktif', 'New 3A May Assesment'),
(199, '1536', 'Mochammad Zainal Musta\'in', '3A', 'Operator', 'Direct', 'Painting', 'BA Sealer', 0, '3514202301990002', 'Laki-Laki', '-', 'JL. MT HARYONO 4, 003/003, MANDARAN REJO, PANGGUNG REJO, PASURUAN', 'zainalmustain67@gmail.com', '17031151321', '0000717951486', '9000041391575', 0, '2023-06-12', '2002-05-11', '', 'aktif', 'New 3A May Assesment'),
(200, '1537', 'Mohamad Khusni Junaedi', '3A', 'Operator', 'Direct', 'Painting', 'VC Wheel Sanding', 0, '3514202301990002', 'Laki-Laki', '-', 'JL. SLAMET RIYADI RT 002 RW 002 KEL. SEBANI KEC. GADINGREJO KOTA PASURUAN', 'junaedun@gmail.com', '17031151321', '0000717951486', '9000025149197', 0, '2023-06-15', '2024-05-14', '', 'aktif', 'New 3A May Assesment'),
(201, '1539', 'Saleh Fuddin', '3A', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 0, '3514202301990002', 'Laki-Laki', '-', 'DUSU TONDOWULAN, 01/06, BANJARKEJEN, PANDAAN, PASURUAN', 'shlhfudin@gmail.com', '17031151321', '0000717951486', '9000026648080', 0, '2023-06-15', '2024-05-14', '', 'aktif', 'New 3A May Assesment'),
(202, '1540', 'Abdul Rozaq', '3A', 'Operator', 'Direct', 'Wood Working', 'BA/VC NBJ Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN DOROAN 1 RT001/RW001 DESA SUDIMULYO KECAMATAN NGULING KABUPATEN PASURUAN. ', 'rozaqkacong@gmail.com', '17015982618', '0000716045657', '9000026642323', 0, '2023-06-12', '2024-05-11', '', 'aktif', 'New 3A May Assesment'),
(203, '1541', 'Muhammad Hanafi', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck Line Operator', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN KRAJAN RT 005/RW 002 KELURAHAN KEJAYAN KECAMATAN KEJAYAN KABUPATEN PASURUAN', 'hanafi0394@gmail.com', '17015982618', '0000716045657', '9000034321902', 0, '2023-06-15', '2024-05-14', '', 'aktif', 'New 3A May Assesment'),
(204, '1542', 'Mochamad Roni Sanjaya', '3A', 'Operator', 'Direct', 'Assembly', 'BA Fingerboard Manualy Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'WARUNGDOWO, RT 001 / RW 009, DESA WARUNGDOWO, KEC. POHJENTREK, KAB. PASURUAN', 'ronisanjaya1612@gmail.com', '17015982618', '0000716045657', '9000019080960', 0, '2023-06-18', '2024-05-17', '', 'aktif', 'New 3A May Assesment'),
(205, '1545', 'Muhamat Atik Ramadhan', '3A', 'Operator', 'Direct', 'Wood Working', 'Bracing', 0, '3514072611950002', 'Laki-Laki', '-', 'JLN.IMAM BONJOL , RT 02 RW 03, KELURAHAN BUGUL LOR, KECAMATAN PANGGUNG REJO, KOTA PASURUAN ', 'atikramadhan529@gmail.com', '17015982618', '0000716045657', '1440020075906', 0, '2023-06-07', '2024-05-06', '', 'aktif', 'New 3A May Assesment'),
(206, '1547', 'M. Yusrizal Fuadi', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Binding', 0, '3514072611950002', 'Laki-Laki', '-', 'JL KH ACHMAD DAHLAN GANG 15 NO 21 RT 04 RW 05 KELURAHAN POHJENTREK KECAMATAN PURWOREJO KOTA PASURUAN', 'myusrizalfuadi@gmail.com', '17015982618', '0000716045657', '1440020355993', 0, '2023-06-07', '2024-05-06', '', 'aktif', 'New 3A May Assesment'),
(207, '1548', 'M. Rifki Ardiansyah', '3A', 'Operator', 'Direct', 'Wood Working', 'Cut Teeth Ribbon', 0, '3514072611950002', 'Laki-Laki', '-', 'TAMANAN RT/RW 002/004 KEL/DESA ORO2 OMBO KULON KECAMATAN REMBANG', 'rifkyardiansyah779@gmail.com', '17015982618', '0000716045657', '9000032655152', 0, '2023-06-07', '2024-05-06', '', 'aktif', 'New 3A May Assesment'),
(208, '1549', 'Mochamad Yahya', '2A', 'Operator', 'Direct', 'Wood Working', '3Pcs Neck Preparation & Gluing', 0, '3514160107910004', 'Laki-Laki', '-', 'JL.STASIUN KRATON NO.15', 'chemolalesha@gmail.com', '14009120495', '0001889480654', '9000021979902', 0, '2023-06-10', '2024-05-09', '', 'aktif', 'Resign on May, 27'),
(209, '1550', 'Adi Kurniawan', '3A', 'Operator', 'Direct', 'Assembly', 'VC Fingerboard Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN KRAJAN RT 03/RW02 TAMBAKSAR KRATONAN PASURUAN ', 'adikurniawan5247@gmail.com', '17015982618', '0000716045657', '9000026648023', 0, '2023-06-10', '2024-05-09', '', 'aktif', 'New 3A May Assesment'),
(210, '1551', 'Deni Adi Setyawan', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 0, '3514072611950002', 'Laki-Laki', '-', 'DSN PLINGGISAN,04/02,PLINGGISAN,KECAMATAN KRATON,KABUPATEN PASURUAN', 'deniadisetyawan@gmail.com', '17015982618', '0000716045657', '1440019447116', 0, '2023-06-10', '2024-05-09', '', 'aktif', 'New 3A May Assesment'),
(211, '1552', 'Akhmad Zamroni', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Assembly ', 0, '3514072611950002', 'Laki-Laki', '-', '', '', '17015982618', '0000716045657', '1440019387221', 0, '2023-06-16', '2024-05-15', '', 'aktif', 'New 3A May Assesment'),
(212, '1553', 'Rio Susanto', '3A', 'Operator', 'Direct', 'wood working', 'Bridge', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN KEBONREJO,RT/RW 001/003, DESA/KELURAHAN KEBONREJO,KECAMATAN GRATI. KOTA/KABUPATEN PASURUAN', 'riosusantoh@gmail.com', '17015982618', '0000716045657', '1440020356033', 0, '2023-06-16', '2024-05-15', '', 'aktif', 'New 3A May Assesment'),
(213, '1554', 'Muchammad Ali Ridho', '3A', 'Operator', 'Direct', 'Wood Working', 'Fingerboard ', 0, '3514182601940002', 'Laki-Laki', '-', 'DUSUN PEKANGKUNGAN RT:004 RW:002 DESA PEKANGKUNGAN, KECAMATAN GONDANGWETAN, KABUPATEN PASURUAN ', '94ali.ridhi@gmail.com', '18067708224', '0002622267292', '9000044941665', 0, '2023-06-16', '2024-05-15', '', 'aktif', 'End Of Contract May, 24'),
(214, '1555', 'Danial Asrori', '3A', 'Operator', 'Direct', 'Painting', 'VC Sealer Putty', 0, '3514202301990002', 'Laki-Laki', '-', 'JL. KH MANSYUR GG. MELATI RT.002/RW. 001 TEMBOKREJO PURWOREJO KOTA PASURUAN ', 'daniel.10as.da@gmail.com', '17031151321', '0000717951486', '9000042297086', 0, '2023-06-21', '2024-05-20', '', 'aktif', 'New 3A May Assesment'),
(215, '1556', 'Muhammad Indrawan', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Assembly', 0, '3514072611950002', 'Laki-Laki', '-', 'NGANGLANG, RT/RW 001/013 ORO-ORO OMBOKULON REMBANG', 'indra085852@gmail.com', '17015982618', '0000716045657', '1440020075849', 0, '2023-06-20', '2024-05-19', '', 'aktif', 'New 3A May Assesment'),
(216, '1557', 'Muchammad Irfan Maulana', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Fingerboard', 0, '3514150911010004', 'Laki-Laki', '-', 'KRAJAN . DS.PANDEAN . KEC.REMBANG . RT/01 . RW/02 . KAB.PASURUAN', 'irfanmaulana09112001@gmail.com', '21008418838', '0002738815222', '1440020091671', 0, '2023-06-20', '2024-05-19', '', 'aktif', 'Finished Punishment 1 Month / new 3A may Assesment'),
(217, '1558', 'Wahyudi Putra', '3A', 'Operator', 'Direct', 'Assembly', 'VC Packing', 0, '3514072611950002', 'Laki-Laki', '-', 'DESA WINONGAN KIDUL RT03/RW02 KECAMATAN WINONGAN PASURUAN ', 'wahyudi303putra@gmail.com', '17015982618', '0000716045657', '9000034332081', 0, '2023-06-23', '2024-05-22', '', 'aktif', 'New 3A May Assesment'),
(218, '1562', 'Hasbulloh', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Sideboard Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN KRAJAN RT.02 RW.02 DESA SELOTAMBAK KECAMATAN KRATON KABUPATEN PASURUAN 67151', 'hasbulloh093@gmail.com', '17015982618', '0000716045657', '9000032436611', 0, '2023-06-24', '2024-05-23', '', 'aktif', 'New 3A May Assesment'),
(219, '1563', 'Sibro Mulis', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Neck', 0, '3514072611950002', 'Laki-Laki', '-', 'JL.KELURAHAN BAKALAN RT/RW 004/001 KEL/DESA PAGAK KECAMATAN BEJI', 'muhlissibro720@gmail.com', '17015982618', '0000716045657', '9000030153713', 0, '2023-06-24', '2024-05-23', '', 'aktif', 'New 3A May Assesment'),
(220, '1564', 'Misbah', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 0, '3514151511970003', 'Laki-Laki', '-', 'ALAMAT: REMBANG 1, RT/RW: 001/003, KEL/DESA: REMBANG, KECAMATAN: REMBANG, KABUPATEN: PASURUAN', 'misbahmisbah.151197@gmail.com', '17042891667', '0002157623717', '9000042187972', 0, '2023-06-25', '2024-05-24', '', 'aktif', ''),
(221, '1565', 'Zainus Sholihin', '3A', 'Operator', 'Direct', 'CNC', 'Bromo', 0, '3514072611950002', 'Laki-Laki', '-', 'WATULUNYU RT003 RW010 ORO-ORO OMBO KULON REMBANG PASURUAN', 'zainus219@gmail.com', '17015982618', '0000716045657', '9000030153705', 0, '2023-06-24', '2024-05-23', '', 'aktif', 'New 3A May Assesment'),
(222, '1567', 'Muchamad Agam Baharullah', '3A', 'Operator', 'Direct', 'Wood Working', 'BA Trustrod Machine', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN BUARAN RT.3 RW.1 DESA MANIKREJO KEC.REJOSO KAB.PASURUAN', 'agam.baharullah@gmail.com', '17015982618', '0000716045657', '9000026660606', 0, '2023-06-25', '2024-05-24', '', 'aktif', 'New 3A May Assesment'),
(223, '1568', 'Muhammad Hasbi Haqiqi', '3A', 'Operator', 'Direct', 'Wood Working', 'BA WW Final Inspection', 0, '3514072611950002', 'Laki-Laki', '-', 'KRAJAN RT/RW 002/002 PANDEAN REMBANG PASURUAN', 'hasbihaqiqi94@gmail.com', '17015982618', '0000716045657', '9000026519851', 0, '2023-06-25', '2024-05-24', '', 'aktif', 'New 3A May Assesment'),
(224, '1569', 'Muhammad Andrik', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Body Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'RT/01 RW/05 DESA BLANDONGAN KECAMATAN BUGUL KIDUL KOTA PASURUAN', 'andriyukail70@gmail.com', '17015982618', '0000716045657', '9000026519885', 0, '2023-06-25', '2024-05-24', '', 'aktif', 'New 3A May Assesment'),
(225, '1570', 'Angga Apriliansyah', '3A', 'Operator', 'Direct', 'Wood Working', 'MH Neck Shape Sanding', 0, '3514072611950002', 'Laki-Laki', '-', 'JL ERLANGGA GG 1 NO 2, RT 02 RW 05, KELURAHAN PURWOREJO, KECAMATAN PURWOREJO, KOTA PASURUAN', 'kun.liansyah8300@gmail.com', '17015982618', '0000716045657', '1440014669029', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(226, '1571', 'Arifin', '3A', 'Operator', 'Direct', 'Parts Warehouse', 'Parts Warehouse', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN KRAJAN, RT/RW 002/002, DESA KAMBINGANREJO, KEC. GRATI, KABUPATEN PASURUAN', 'radenputra744@gmail.com', '17015982618', '0000716045657', '1440020356090', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(227, '1572', 'Mukhamad Rudiyanto', '3A', 'Operator', 'Direct', 'Painting', 'VC Manual Coloring', 0, '3514202301990002', 'Laki-Laki', '-', 'PANDEAN 02/03 DESA WINONGAN KIDUL KECAMATAN WINONGAN KABUPATEN PASURUAN ', 'rudiyantomukhamad31096@gmail.com', '17031151321', '0000717951486', '9000042275405', 0, '2023-06-25', '2024-05-24', '', 'aktif', 'New 3A May Assesment'),
(228, '1574', 'Mochamad Nur Cholis', '3A', 'Operator', 'Direct', 'wood working', 'VC Bracing Gluing', 0, '3514061306960001', 'Laki-Laki', '-', 'JL. GATOT SUBROTO, RT 003/RW 004, PETAHUNAN, GADING REJO, PASURUAN ', 'mochamadcolis@yahoo.com', '17020822775', '0001042715395', '9000041635955', 0, '2023-06-26', '2024-05-25', '', 'aktif', ''),
(229, '1575', 'Muhammad Ilyas', '3A', 'Operator', 'Direct', 'Assembly', 'BA Nut Cutting & EQ', 0, '3514072611950002', 'Laki-Laki', '-', 'JL.JEND.S.PARMAN RT 1 RW 1 KELURAHAN: PANGGUNGREJO KECAMATAN: PANGGUNGREJO,KOTA PASURUAN', 'ilyasuciha99@gmail.com', '17015982618', '0000716045657', '9000026519430', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(230, '1576', 'Mukhammad Taufik', '3A', 'Operator', 'Direct', 'Assembly', 'BA Fretting', 0, '3514072611950002', 'Laki-Laki', '-', 'KARANGKETUG-MLAGI 05/03 KEL.KARANGKETUC. KEC. GADINGREJO KOTA PASURUN', 'mukhammadtaufik2727@gmail.com', '17015982618', '0000716045657', '9000026519679', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(231, '1577', 'Muhammad Murtadho', '3A', 'Operator', 'Direct', 'Assembly', 'BA Assembly Packing', 0, '3514072611950002', 'Laki-Laki', '-', 'DUSUN JATIKETOK RT 002 RW 008 DESA GEJUGJATI KECAMATAN LEKOK', 'tadho0202@gmail.com', '17015982618', '0000716045657', '9000026660259', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(232, '1578', 'M. Zaenul Abidin', '3A', 'Operator', 'Direct', 'Assembly', 'BA Labeling', 0, '3514072611950002', 'Laki-Laki', '-', 'LAJUK MURJATI,05/03,LAJUK,GONDANGWETAN, PASURUAN ', '', '17015982618', '0000716045657', '9000042275470', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(233, '1580', 'Muhamad Rozikin', '3A', 'Operator', 'Direct', 'Painting', 'BA Microfiller', 0, '3514202301990002', 'Laki-Laki', '-', 'BARAT, 002/005, TAMPUNG, REMBANG, PASURUAN', 'muhammadrozikin328@gmail.com', '17031151321', '0000717951486', '1440014715236', 0, '2023-06-28', '2024-05-27', '', 'aktif', 'New 3A May Assesment'),
(234, '1581', 'Muhammad Hilmi santoso', '3A', 'Operator', 'Direct', 'Assembly', 'BA Inspector', 0, '3514072611950002', 'Laki-Laki', '-', 'JL.IRIAN JAYA GG ANGGREK RT/RW 001/002. KELURAHAN GADINGREJO. KECAMATAN GADINGREJO. KOTA PASURUAN', 'hilmysantosa80@gmail.com', '17015982618', '0000716045657', '9000042187998', 0, '2023-06-27', '2024-05-26', '', 'aktif', 'New 3A May Assesment'),
(235, '1583', 'M. Safarudin', '3A', 'Operator', 'Direct', 'Painting', 'VC Sealer Sanding', 0, '3514202301990002', 'Laki-Laki', '-', 'DUSUN PANUMBUAN RT02 RW 01 DESA RACI KECAMATAN BANGIL', 'safarudinrudi3@gmail.com', '17031151321', '0000717951486', '9000034331968', 0, '2023-06-28', '2024-05-27', '', 'aktif', 'New 3A May Assesment'),
(236, '1584', 'Usman', '3A', 'Operator', 'Direct', 'Assembly', 'MH Packing', 0, '3514072611950002', 'Laki-Laki', '-', 'KARANGASEM', 'siwingusman@gmail.com', '17015982618', '0000716045657', '9000026634569', 0, '2023-06-27', '2024-05-26', '', 'aktif', 'New 3A May Assesment'),
(237, '1641', 'Nurul Huda', '2A', 'Operator', 'Direct', 'Painting', 'Cajon Operator', 0, '3514202301990002', 'Laki-Laki', '-', 'PEKOREN RT 02 RW 07 KECAMATAN REMBANG', 'hudasandem8@gmail.com', '17031151321', '0000717951486', '1440020075914', 0, '2023-06-22', '2024-05-22', '', 'aktif', 'New 2A May Assesment'),
(238, '1642', 'Muhammad Zainul Fanani', '3A', 'Operator', 'Direct', 'Wood Working', 'VC Neck', 0, '3514072611950002', 'Laki-Laki', '-', 'JL. NANGKA 504 RT 02 RW 07 KIDUL DALEM BANGIL', 'zainulfanani101@gmail.com', '17015982618', '0000716045657', '1440019063830', 0, '2023-06-08', '2024-05-07', '', 'aktif', 'New 3A May Assesment'),
(239, '1646', 'Dewi Sunarsih', '3A', 'Operator', 'Direct', 'Painting', 'MH Microfiller', 0, '3514072611950002', 'Laki-Laki', '-', 'TAMANAN,002/004,ORO2 OMBO KULON ,REMBANG, PASURUAN', 'sunarsihdewi4@gmail.com', '17015982618', '0000716045657', '9000042275538', 0, '2023-06-26', '2024-05-25', '', 'aktif', 'New 3A May Assesment'),
(240, '1654', 'Irsyadul Ibad', '3A', 'Operator', 'Direct', 'Assembly', 'BA Inspector', 0, '3514072611950002', 'Laki-Laki', '-', 'JL JEND S PARMAN KEL MANDARAN REJO KEC PANGGUNG REJO RT 04 RW 05 KOTA PASURUAN', 'faqihilarsyad@gmail.com', '17015982618', '0000716045657', '9000042275595', 0, '2023-06-15', '2024-05-15', '', 'aktif', 'New 3A May Assesment'),
(241, '1716', 'Yuman Wijaya', '2A', 'Operator', 'Direct', 'Painting', 'MH PE & Sealer Putty 2', 0, '3514172505930001', 'Laki-Laki', '-', 'DUSUN MAGERSARI DESA PLERET RT03 RW05', 'youman.wijaya13@gmail.com', '24056150543', '0001704290624', '9000037769388', 0, '2024-03-04', '2024-06-03', '', 'aktif', ''),
(242, '1717', 'Abd Rochman Fani', '1A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 0, '3514183007000002', 'Laki-Laki', '-', 'KRAMAT RT04RW03 KELURAHAN GONDANGREJO KECAMATAN GONDANG WETAN', 'vansugal21@gmail.com', '24056150501', '0000717463517 ', '1440025181956', 0, '2024-03-04', '2024-06-03', '', 'aktif', ''),
(243, '1718', 'Dony Arianto', '2A', 'Operator', 'Direct', 'Assembly', 'VC Assembly Labelling', 0, '3575032208960001', 'Laki-Laki', '-', 'BLANDONGAN RT/3 RW/2 KEL.BLANDONGAN KEC.BUGUL KIDUL KOTA PASURUAN', 'donyarianto454@gmail.com', '24056150493', '0001541266244', '1440025181964', 0, '2024-03-05', '2024-06-04', '', 'aktif', ''),
(244, '1719', 'Moh Zainul Abidin', '2A', 'Operator', 'Direct', 'Wood Working', 'VC body binding', 0, '3514193006960011', 'Laki-Laki', '-', 'DUSUN KALONGAN, RT 02 RW 05 ,DESA MENDALAN KEC.WINONGAN KAB.PASURUAN ', 'zainulkempot707@gmail.com', '24056150519', '0000718347363', '1440025181972', 0, '2024-03-05', '2024-06-04', '', 'aktif', ''),
(245, '1720', 'Abdul Salam', '1A', 'Operator', 'Direct', 'Assembly', 'VC assembly Silk print', 0, '3575030212000003', 'Laki-Laki', '-', 'JL.IMAM BONJOL RT02 RW03 BUGUL LOR PANGGUNG REJO KOTA PASURUAN ', 'salamgantengg99@gmail.com', '24056150485', '0002416276495', '1440025181998', 0, '2024-03-06', '2024-06-04', '', 'aktif', ''),
(246, '1721', 'Mukhamad Aris Abdillah', '1A', 'Operator', 'Direct', 'Painting', 'MH microfiller', 0, '3514232406010002', 'Laki-Laki', '-', 'DSN.SADENG RT.01/RW.01 SADENGREJO,REJOSO,PASURUAN', 'mukhamadarisabdillah@gmail.com', '24056150527', '0000719272236 ', '1440025182194', 0, '2024-03-07', '2024-06-06', '', 'aktif', ''),
(247, '1722', 'Abdul Rohman', '1A', 'Operator', 'Direct', 'Assembly', 'VC Packing', 0, '3514161006960007', 'Laki-Laki', '-', 'DUSUN PASAR RT 12 RW 05 DESA MLATEN KECAMATAN NGULING KABUPATEN PASURUAN ', 'abdulrohman6966@gmail.com', '24056150568', '0001705633648', '1440025182038', 0, '2024-03-08', '2024-06-07', '', 'aktif', ''),
(248, '1723', 'Riko Kurniawan', '1A', 'Operator', 'Direct', 'Painting', 'VC Microfiller', 0, '3514180411920006', 'Laki-Laki', '-', 'MURJATI RT 05 / RW 03 LAJUK GONDANGWETAN PASURUAN', 'kurniawanriko036@gmail.com', '24056150642', '0000717981063', '1440025181113', 0, '2024-03-11', '2024-06-10', '', 'aktif', ''),
(249, '1724', 'Pramudya Tito Luhur Waskito', '1A', 'Operator', 'Direct', 'Wood Working', 'Laser Room', 0, '3514141907980006', 'Laki-Laki', '-', 'JL. BENDOSULUNG RT.002 /  RW.005 KEL.POGAR - KEC. BANGIL - KAB.PASURUAN', 'pramudyatito19@gmail.com', '24056150584', '0002938767614', '1440019515813', 0, '2024-03-11', '2024-06-10', '', 'aktif', ''),
(250, '1726', 'Bavris Wahyu Afrianto', '1A', 'Operator', 'Direct', 'Wood Working', 'kalimba room', 0, '3507241908890002', 'Laki-Laki', '-', 'JALAN KERTAREJASA 14 RT 02 RW 03 CANDIRENGGO SINGOSARI MALANG', 'bavris.wahyu89@gmail.com', '24056150592', '0001458199855 ', '1440025181071', 0, '', '', '', 'aktif', ''),
(251, '1727', 'Mokhammad Jakfar Shodiq', '1A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood warehouse', 0, '3514202506990003', 'Laki-Laki', '-', 'DUSUN BUNTALAN RT/RW 003/006 DESA KEDAWUNG WETAN KECAMATAN GRATI KABUPATEN PASURUAN ', 'shodiqjakfar101@gmail.com', '24056150659', '0001537871725', '1440025182293', 0, '', '', '', 'aktif', 'Resign on May 27'),
(252, '1729', 'Fajar Sodik Akbar', '1A', 'Operator', 'Direct', 'Painting', 'VC Manual Sanding', 0, '3514141603000005', 'Laki-Laki', '-', 'JL. TENGIRI 433 RT/RW 006/002 KEL. BENDOMUNGAL, KEC. BANGIL, KAB. PASURUAN, JAWA TIMUR 67154', 'masfajar358@gmail.com', '24056150550', '0003243883814 ', '1440025181055', 0, '', '', '', 'aktif', ''),
(253, '1730', 'Moch Syafi\'udin', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Neck & End Pin', 0, '3514151703980001', 'Laki-Laki', '-', 'REMBANG IV RT/RW/001/007 KEC REMBANG KAB.PASURUAN ', 'syafiudinm54@gmail.com', '24056150576', '0000717146616', '1440025181006', 0, '', '', '', 'aktif', ''),
(254, '1731', 'Muhammad Shihabuddin', '1A', 'Operator', 'Direct', 'Wood Working', 'VC Body Assembly', 0, '3514162510980001', 'Laki-Laki', '-', 'DESA PLINGGISAN, RT001/RW002, KECAMATAN KRATON KABUPATEN PASURUAN', 'muhammadshihabuddin1@gmail.com', '24056150683', '0002771835658 ', '1440021409195', 0, '', '', '', 'aktif', ''),
(255, '1732', 'Abdul Rohman Munir', '1A', 'Operator', 'Direct', 'Wood Working', 'MH Sideboard Ribbon', 0, '3575010205990005', 'Laki-Laki', '-', 'JL. APEL 8 BLOK D8 NO.15 RT.7 RW.5 KEL. BUGUL KIDUL KEC. BUGUL KIDUL KOTA PASURUAN', 'dulrm23@gmail.com', '24056150600', '0000785669927', '1440019884086', 0, '', '', '', 'aktif', ''),
(256, '1733', 'Mochammad Aldy Prasandy', '1A', 'Operator', 'Direct', 'Wood Working', 'Cajon Operator', 0, '3514032801010001', 'Laki-Laki', '-', 'DUSUN KEBONTENGAH RT/RW 001/002, DESA PUSPO, KEC PUSPO, KAB PASURUAN', 'aldyprasandy230@gmail.com', '24056150667', '0003071005312 ', '1440020191141', 0, '', '', '', 'aktif', ''),
(257, '1734', 'Rama Ariski', '1A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding', 0, '3516062810950003', 'Laki-Laki', '-', 'RT.001/RW.001/DUSUN.BANYURIP/KEL.MOJOREJO/KEC.PUNGGING/KAB.PASURUAN', 'ariskirama@gmail.com', '24056150634', '0002066910129 ', '1440025181923', 0, '', '', '', 'aktif', ''),
(258, '1738', 'Muchammad Rifky Afandi', '1A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding', 0, '3575010101960006', 'Laki-Laki', '-', 'JL. HALMAHERA GANG 9 NOMER 52, RT02 RW05, KELURAHAN GADINGREJO, KECAMATAN GADINGREJO, KOTA PASURUAN', 'muchammadrifky01@gmail.com', '24068866995', '0000786272679', '1440025323079', 0, '', '', '', 'aktif', ''),
(259, '1739', 'Devid Widyandoko', '1A', 'Operator', 'Direct', 'Assembly', 'VC Packing', 0, '3514090204960003', 'Laki-Laki', '-', 'DSN. ROMACAN RT03 RT04 DS. KENDURUAN KEC. SUKOREJO PASURUAN', 'songoenemdevide@gmail.com', '24068867001', '0003065964748', '1440019783544', 0, '', '', '', 'aktif', ''),
(260, '1740', 'Ainur Rohman Robianto', '1A', 'Operator', 'Direct', 'Painting', 'MH Sealer Sanding', 0, '3514131910940002', 'Laki-Laki', '-', 'KOLURSARI RT/RW. 06/02 KEL. KOLURSARI, KEC. BANGIL, KAB. PASURUAN . ', 'ainurchelsea@gmail.com', '24068867035', '0002089686216', '1440025323145', 0, '', '', '', 'aktif', ''),
(261, '1741', 'Arief Firmansyah', '1A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 0, '3575012603950002', 'Laki-Laki', '-', '', 'lspplm@yahoo.com', '24068866987', '0002159709669', '1440025323350', 0, '', '', '', 'aktif', ''),
(262, '1744', 'Nasrul Amin', '1A', 'Operator', 'Direct', 'Wood Working', 'MH Final Inspection', 0, '3575011305970001', 'Laki-Laki', '-', 'JL JOLONDRIO, RT 02 RW 04, KEL KRAPYAKREJO, KEC GADINGREJO, KOTA PASURUAN', 'nasrulamin1305@gmail.com', '24068867027', '0002066623863', '1440025323210', 0, '', '', '', 'aktif', ''),
(263, '1745', 'Muchammad Farid Fachri', '1A', 'Operator', 'Direct', 'Wood Working', 'MH NBJ Gluing', 0, '3514131610970002', 'Laki-Laki', '-', 'RT.03/RW.08 DSN.POHKECIK DSA.BAUJENG KRC.BEJI KAB.PASURUAN', 'faridfachri150@gmail.com', '24068867019', '0003238627408', '1440025323335', 0, '', '', '', 'aktif', ''),
(264, '1746', 'Akhmad Jauhari', '1A', 'Operator', 'Direct', 'Painting', 'Cajon Operator', 0, '3514162309990003', 'Laki-Laki', '-', '', 'akhmad.jauhari1927@gmail.com', 'Reg-await nos', '0000716269691 ', '1440018458114', 0, '', '', '', 'aktif', 'New Comer Start May'),
(265, '1747', 'Mokhamad Risky', '1A', 'Operator', 'Direct', 'Assembly', 'MH Assembly String Installation', 0, '3514190504940003', 'Laki-Laki', '-', '', 'mukhrizky1994krm@gmail.com', 'Reg-await nos', '0000718631379', '1440025496974', 0, '', '', '', 'aktif', 'New Comer Start May'),
(266, '1748', 'Akhmad Shofi Ainur Rochman', '1A', 'Operator', 'Direct', 'Wood Working', 'Fingerboard', 0, '3506221612980001', 'Laki-Laki', '-', '', 'akhmad.shofii123@gmail.com', 'Reg-await nos', '0001079199325', '1440025496941', 0, '', '', '', 'aktif', 'New Comer Start May'),
(267, '1751', 'Puji Ari Irawan', '1A', 'Operator', 'Direct', 'Assembly', 'VC String Installation', 0, '3575022812940002', 'Laki-Laki', '-', '', 'Suliwangamok.28@gmail.com', 'Reg-await nos', '0001639193523 ', '1440022431347', 0, '', '', '', 'aktif', 'New Comer Start May'),
(268, '1752', 'Muhammad Khumaidi', '1A', 'Operator', 'Direct', 'Wood Working', 'Bracing', 0, '3514230109940002', 'Laki-Laki', '-', '', 'muhammadkhumaidi07@gmail.com', 'Reg-await nos', '0001043112341', '1440025496982', 0, '', '', '', 'aktif', 'New Comer Start May'),
(269, '1753', 'Mochammad Faizin Aidin', '1A', 'Operator', 'Direct', 'Painting', 'MH microfiller', 0, '3514121912010003', 'Laki-Laki', '-', '', 'faizinaidin99@gmail.com', 'Reg-await nos', '0002770619657', '1410021770540', 0, '', '', '', 'aktif', 'New Comer Start May'),
(270, '1754', 'Mokhamad Agung Mukhlisin', '1A', 'Operator', 'Direct', 'Painting', 'Softsanding', 0, '3575011811030002', 'Laki-Laki', '-', '', 'mokhamadagungmukhlisin@gmail.com', 'Reg-await nos', '0000113264447', '1440025482685', 0, '', '', '', 'aktif', 'New Comer Start May'),
(271, '1755', 'Mokhamad Agus Baktiyar', '1A', 'Operator', 'Direct', 'Wood Warehouse', 'Wood Warehouse', 0, '3575031608940005', 'Laki-Laki', '-', '', 'MASBAKTIYAR@GMAIL.COM', 'Reg-await nos', '0002416357596', '1410024135576', 0, '', '', '', 'aktif', 'New Comer Start May'),
(272, '1756', 'Mukhamad Murtadho', '1A', 'Operator', 'Direct', 'Wood Working', 'MH Neck', 0, '3514230106940003', 'Laki-Laki', '-', '', 'mkhmdmrtdho@gmail.com', 'Reg-await nos', '0002017874215', '1440025497006', 0, '', '', '', 'aktif', 'New Comer Start May'),
(273, '1757', 'Zainal Arifin', '1A', 'Operator', 'Direct', 'Painting', 'MH microfiller', 0, '3514141312950001', 'Laki-Laki', '-', '', 'andikjenal@gmail.com', 'Reg-await nos', '0002235816415', '1440025496875', 0, '', '', '', 'aktif', 'New Comer Start May'),
(274, '1759', 'Deni Sefta Pradana', '1A', 'Operator', 'Direct', 'Wood Working', 'Laser Room', 0, '3575023009000001', 'Laki-Laki', '-', '', 'deniseftapradana10@gmail.com', 'Reg-await nos', '0000786361983', '1440024758952', 0, '', '', '', 'aktif', 'New Comer Start May'),
(275, '1760', 'Muhammad Basir', '1A', 'Operator', 'Direct', 'Wood Working', 'MH Neck & End Pin', 0, '3514160704950003', 'Laki-Laki', '-', '', 'muhammadbasir809@gmail.com', 'Reg-await nos', '0003238604291', '1440025482651', 0, '', '', '', 'aktif', 'New Comer Start May'),
(276, '1761', 'Dedik Wijianto', '1A', 'Operator', 'Direct', 'Painting', 'PE Sanding Wheel', 0, '3514201012910001', 'Laki-Laki', '-', '', 'wijiantodedik33@gmail.com', 'Reg-await nos', '0002479257707', '1440022965534', 0, '', '', '', 'aktif', 'New Comer Start May'),
(277, '1762', 'Muhamad Dandi Prayoga', '1A', 'Operator', 'Direct', 'Wood Working', 'VC Wheel Body Sanding', 0, '3514051509980004', 'Laki-Laki', '-', '', 'Tragedi.dandi07@gmail.com', 'Reg-await nos', '0002447468019 ', '1440025496909', 0, '', '', '', 'aktif', 'New Comer Start May'),
(278, '1763', 'Mukhamad Majid', '1A', 'Operator', 'Direct', 'Wood Working', 'MH Final Inspection', 0, '3575010107980093', 'Laki-Laki', '-', '', '', 'Reg-await nos', '0002416041314', '1440025496917', 0, '', '', '', 'aktif', 'New Comer Start May'),
(279, '1764', 'Muhammad Ali Maksum', '1A', 'Operator', 'Direct', 'Painting', 'BA Sealer Sanding', 0, '3575032304010003', 'Laki-Laki', '-', '', 'muhammadalimaksum1@gmail.com', 'Reg-await nos', '0000786056466', '1440025496925', 0, '', '', '', 'aktif', 'New Comer Start May'),
(280, '1689', 'Mochamad Alfan Agustian', '1A', 'Operator', 'Direct', 'Assembly', 'VC Assembly String installation', 2500000, '3514062308890001', 'Laki-Laki', '-', '', '', '24024199713', '0002808543115', '1440024974559', 0, '2024-01-18', '2024-04-17', '', 'non-aktif', 'Resign Not Follow Regulations'),
(281, '1534', 'Muhammad Anang Arifin', '3A', 'Operator', 'Direct', 'Painting', 'MH Repair', 3600000, '3514062201960002', 'Laki-Laki', '-', '', '', '17027512759', '0002155211278', '9000042275504', 0, '2023-05-21', '2024-04-20', '', 'non-aktif', 'Resign Not Follow Regulations (Mei 05)'),
(282, '1627', 'Mohammad Afiyan Wahyu A', '2A', 'Operator', 'Direct', 'Wood Working', 'MH Sideboard Ribbon', 3100000, '3514140303980000', 'Laki-Laki', '-', '', '', '19092686906', '0002002016845', '1440019063855', 0, '2024-03-18', '2025-02-17', '', 'non-aktif', 'Layoff (Last Work on March\'18/2024)'),
(283, '1669', 'Achmad Misbach Wahyu Purnomo', '3A', 'Operator', 'Direct', 'Painting', 'MH microfiller', 3600000, '3514182810960000', 'Laki-Laki', '-', '', '', '21029709777', '0000718263775', '1440020461684', 0, '2023-07-19', '2024-06-18', '', 'non-aktif', 'Layoff (Last Work on March\'18/2024)'),
(284, '1694', 'Agus Suryadi', '2A', 'Operator', 'Direct', 'Assembly', 'MH assembly string installation', 3100000, '3575011608880002', 'Laki-Laki', '-', '', '', '24024199697', '0001876368914', '1440024973841', 0, '2024-01-23', '2024-04-22', '', 'non-aktif', 'End Contract April 24, 2024'),
(285, '1699', 'Ifan Cahya Kusuma', '1A', 'Operator', 'Direct', 'Assembly', 'MH assembly string installation', 2500000, '3514140804990005', 'Laki-Laki', '-', '', '', '24043966274', '0001879000907', '1440025101772', 0, '2024-02-01', '2024-04-30', '', 'non-aktif', 'End Contract April 30, 2024'),
(286, '1736', 'Dwi Anugerah', '1A', 'Operator', 'Direct', 'Wood Working', 'Laser Room', 2500000, '3507241508970005', 'Laki-Laki', '-', '', '', '24056150618', '0001703394685', '1440025182327', 0, '', '', '', 'non-aktif', 'New Comer - Resign On March 30'),
(287, '1743', 'M Taufiq', '1A', 'Operator', 'Direct', 'Painting', 'MH Microfiller', 2500000, '3514172603960002', 'Laki-Laki', '-', '', '', '24068867043', '0001701627412', '1440018172095', 0, '', '', '', 'non-aktif', 'New Comer Start April - Resign On April 26'),
(288, '1676', 'Torik Harmas Priatna', 'PKWT', 'HRD', 'Indirect', 'HRD', 'HRD & GA Assistant', 5000000, '3505120602990001', 'Laki-Laki', '-', '', '', '24024199879', '0002261091971', '1420018871029', 0, '2024-01-02', '2024-04-01', '', 'non-aktif', ''),
(289, '1691', 'Agung Aji Samudra', 'PKWT', 'Shipping', 'Indirect', 'Office', 'Shipping-1', 5000000, '3307080302960007', 'Laki-Laki', '-', '', '', '24024199747', '0003064922223', '1030007671163', 0, '2024-01-22', '2024-04-21', '', 'non-aktif', ''),
(290, '1737', 'Moch Aditya Lesmana', 'PKWT', 'HRD', 'Indirect', 'HRD', 'HRD & GA Assistant', 4000000, '3515051704990001', 'Laki-Laki', '-', '', '', 'NOT REGISTERED', 'NOT REGISTERED', '', 0, '', '', '', 'non-aktif', 'New Comer -- Resign Not Follow -- 19 April 2024'),
(291, '1742', 'Agus Miftakul Huda', 'PKWT', 'Accounting ', 'Indirect', 'Accounting ', 'accounting', 4700000, '3521140708960002', 'Laki-Laki', '-', '', '', 'NOT REGISTERED', 'NOT REGISTERED', '142001770904', 0, '', '', '', 'non-aktif', 'New Comer -- Resign Not Follow -- 24 April 2024'),
(292, '1767', 'Saiful Anwar', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514151801900001', 'Laki-Laki', '-', 'Mojokopek RT.001/RW.006, Mojoparon, Rembang, Pasuruan', '', '', '', '', 0, '2024-06-03', '2024-09-02', '', 'aktif', ''),
(293, '1769', 'Muhammad Syarif Hidayatullah', 'PKWT', 'Administrator', 'Indirect', 'Administrator', 'Administrator', 0, '3514231708960004', 'Laki-Laki', '-', 'Sedengan RT.004/RW.003, Arjosari, Rejoso, Pasuruan', '', '', '', '', 0, '2024-06-03', '2024-09-02', '', 'aktif', ''),
(294, '1770', 'Ajirasa', 'PKWT', 'WW Controller', 'Indirect', 'WW Controller', 'WW Controller', 0, '3515080106980001', 'Laki-Laki', '-', 'Lemahputro 4 No.80 RT.019/RW.004, Lemahputro, Sidoarjo, Sidoarjo', '', '', '', '', 0, '2024-06-03', '2024-09-02', '', 'aktif', ''),
(295, '1772', 'Syaiful Huda', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514160807000002', 'Laki-Laki', '-', 'Grinting RT.002/RW.005, Mulyorejo, Kraton, Pasuruan', '', '', '', '', 0, '2024-06-04', '2024-09-03', '', 'aktif', ''),
(296, '1775', 'Rio Syaifudin', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514230101980003', 'Laki-Laki', '-', 'Sendang RT.003/RW.003, Manikrejo, Rejoso, Pasuruan', '', '', '', '', 0, '2024-06-07', '2024-09-06', '', 'aktif', ''),
(297, '1776', 'Ferly Andrean', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3505141610970001', 'Laki-Laki', '-', 'Dusun Bendilputih RT.004/RW.001, Tumpang, Talun, Blitar', '', '', '', '', 0, '2024-06-10', '2024-09-09', '', 'aktif', ''),
(298, '1777', 'Arik Kuswanto', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514232301020001', 'Laki-Laki', '-', 'Dusun Telbuk RT.001/RW.005, Kawisrejo, Rejoso, Pasuruan', '', '', '', '', 0, '2024-06-10', '2024-09-09', '', 'aktif', ''),
(299, '1778', 'Alvri Herdiyono', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514143001980004', 'Laki-Laki', '-', 'Dusun Nganglang RT.003/RW.002, Oro-Oro Ombokulon, Rembang, Pasuruan', '', '', '', '', 0, '2024-06-10', '2024-09-09', '', 'aktif', ''),
(300, '1779', 'Mochamad Nizar Prasetyo', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514131108960001', 'Laki-Laki', '-', 'Beji RT.001/RW.003, Beji, Beji, Pasuruan', '', '', '', '', 0, '2024-06-11', '2024-09-10', '', 'aktif', ''),
(301, '1780', 'Muhamad Rosuli', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514231205010001', 'Laki-Laki', '-', 'Karanganyar ? Rejosokidul RT.002/RW.001, Rejoso Kidul, Rejoso, Pasuruan', '', '', '', '', 0, '2024-06-11', '2024-09-10', '', 'aktif', ''),
(302, '1781', 'Agus Santoso', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514202408970003', 'Laki-Laki', '-', 'Gang Pande RT.003/RW.003, Kebonsari, Panggungrejo, Kota Pasuruan', '', '', '', '', 0, '2024-06-13', '2024-09-12', '', 'aktif', ''),
(303, '1782', 'M. Lukman Arianto', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575022204950002', 'Laki-Laki', '-', 'Jl. Dusun Kajarkuning RT.003/RW.001, Kedawungwetan, Grati, Pasuruan', '', '', '', '', 0, '2024-06-13', '2024-09-12', '', 'aktif', ''),
(304, '1783', 'Muqorrobin', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575031606960004', 'Laki-Laki', '-', 'Jl. Trunojoyo RT.001/RW.002, Tapa?an, Bugul Kidul, Kota Pasuruan', '', '', '', '', 0, '2024-06-13', '2024-09-12', '', 'aktif', ''),
(305, '1784', 'Yusril Mochtarom', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514151605990002', 'Laki-Laki', '-', 'Kriyan RT.002/RW.012, Pekoren, Rembang, Pasuruan', '', '', '', '', 0, '2024-06-13', '2024-09-12', '', 'aktif', ''),
(306, '1785', 'Agung Gumelar', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514181704040001', 'Laki-Laki', '-', 'Terate I RT.002/RW.008, Karangsentul, Gondangwetan, Pasuruan', '', '', '', '', 0, '2024-06-14', '2024-09-13', '', 'aktif', ''),
(307, '1786', 'Muhamad Humaidilah', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514131301050003', 'Laki-Laki', '-', 'Kenep RT.005/RW.001, Kenep, Beji, Pasuruan', '', '', '', '', 0, '2024-06-14', '2024-09-13', '', 'aktif', ''),
(308, '1787', 'Rikki Bagus Sunendra', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514140608960004', 'Laki-Laki', '-', 'Jl. Nener RT.013/RW.005, Kalianyar, Bangil, Pasuruan', '', '', '', '', 0, '2024-06-14', '2024-09-13', '', 'aktif', ''),
(309, '1788', 'Soiful Anwar', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3516052404940001', 'Laki-Laki', '-', 'Dsn. Kalanganyar RT.001/RW.001, Bandarasri, Ngoro Mojokerto', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', '');
INSERT INTO `karyawan` (`id`, `nik_akt`, `nama`, `status_pkwt`, `jabatan`, `divisi`, `dept`, `post`, `gaji`, `nik_kk`, `jk`, `ttl`, `alamat`, `email`, `bpjstk`, `bpjskes`, `bank`, `periode`, `start_kontrak`, `end_kontrak`, `decisionkontrak`, `status_karyawan`, `keterangan`) VALUES
(310, '1789', 'Jamaluddin', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3513102009990004', 'Laki-Laki', '-', 'Warungdowo Timur RT.001/RW.010, Warungdowo, Pohjentrek, Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(311, '1790', 'Muhamad Bahrudin Abdillah', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514202705980001', 'Laki-Laki', '-', 'Dusun Dawe Wetan RT.003/RW.006, Sumberdawesari, Grati, Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(312, '1791', 'Setya Addar Quthni', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575031009980001', 'Laki-Laki', '-', 'Perum Sekar Indah I A-18 RT.001/RW.006, Sekargadung, Purworejo, Kota Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(313, '1792', 'Agung Laksono', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514191907990001', 'Laki-Laki', '-', 'Dusun Kedungwaru Lor RT.002/RW.003, Sidepan, Winongan, Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(314, '1793', 'Muhammad Mustofa', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514211307950002', 'Laki-Laki', '-', 'Dusun Kedundung RT.012/RW.003, Watuprapat, Nguling, Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(315, '1794', 'Muhammad Abdillah', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575020310020005', 'Laki-Laki', '-', 'Jl. Margo Taruno RT,004/RW.001, Kebonagung, Purworejo, Kota Pasuruan', '', '', '', '', 0, '2024-06-18', '2024-09-17', '', 'aktif', ''),
(316, '1768', 'Dicky Setiawan', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3514142009990001', 'Laki-Laki', '-', 'Kolursari No.39 RT.003/RW.002, Kolursari, Bangil, Pasuruan', '', '', '', '', 0, '2024-06-03', '2024-09-02', '', 'non-aktif', ''),
(317, '1771', 'Mukhammad Misbakhul Badri', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575033003010003', 'Laki-Laki', '-', 'Jl. Ir. H. Juanda RT.004/RW.004, Tapa?an, Bugul Kidul, Kota Pasuruan', '', '', '', '', 0, '2024-06-04', '2024-09-03', '', 'non-aktif', ''),
(318, '1773', 'Ahmad Aldi Yudis Setiawan', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3515043007990001', 'Laki-Laki', '-', 'Dsn. Babatan RT.009/RW.003, Bakalan, Purwosari, Pasuruan', '', '', '', '', 0, '2024-06-05', '2024-09-04', '', 'non-aktif', ''),
(319, '1774', 'Dwi Putra Ramadhani', '1A', 'Operator', 'Direct', 'Operator', 'Operator', 0, '3575011410040001', 'Laki-Laki', '-', 'Jl. Halmahera 12/17 RT.001/RW.009, Trajeng, Panggungrejo, Kota Pasuruan', '', '', '', '', 0, '2024-06-05', '2024-09-04', '', 'non-aktif', '');

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
(2, 'TestingSG1', '123', 'IT', 'PMNT', 8000000, 0, 0, 0, 0, 0, 0, 8000000, 100000, 100000, 0, 0, 0, 0, 7800000, 'donydonny4@gmail.com', '12'),
(3, 'TestingSG2', '124', 'ACC', 'PKWT', 7000000, 0, 0, 0, 0, 0, 0, 7000000, 100000, 100000, 0, 0, 0, 0, 6800000, 'doniwicaksono27@gmail.com', '13'),
(4, 'TestingSG3', '125', 'HRD', '1A', 6000000, 0, 0, 0, 0, 0, 0, 6000000, 100000, 100000, 0, 0, 0, 0, 5800000, 'zahran.muharammi.23@gmail.com', '14'),
(5, 'TestingSG4', '126', 'OPERATOR', '2A', 5000000, 0, 0, 0, 0, 0, 0, 5000000, 100000, 100000, 0, 0, 0, 0, 4800000, '', '15'),
(6, 'TestingSG5', '127', 'PURCHS', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '16'),
(7, 'TestingSG6', '128', 'ACC', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '17'),
(8, 'TestingSG7', '129', 'CNC', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '18'),
(9, 'TestingSG8', '130', 'CNC', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '19'),
(10, 'TestingSG9', '131', 'CNC', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '20'),
(11, 'TestingSG10', '132', 'CNC', '3A', 4000000, 0, 0, 0, 0, 0, 0, 4000000, 100000, 100000, 0, 0, 0, 0, 3800000, '', '21');

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
(4, '<p>tes</p>', 'Riza Fahmi ', 'Gempol , Monumen Jayandaru', '1');

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

--
-- Dumping data for table `riwayat_pkwt`
--

INSERT INTO `riwayat_pkwt` (`id`, `idk`, `nik_akt`, `status_pkwt`, `start_kontrak`, `end_kontrak`, `pdfpkwt`, `tgl_simpan`) VALUES
(14, 4, '7', 'PKWT', '2014-06-19', '2024-04-10', NULL, '2024-06-18');

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
  `role` enum('admin','non_admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(39, 'HRD', 'hrd', 'HRD', '-', 'admin', '$2y$10$fPBkZYTTWQQ/a8IqWTueqOSDzY1DbatpMXP1yEd9zfcgcRfaRQDBK', 1718069719, 'user.png', 1),
(40, 'Doni', 'Doni', 'IT', '-', 'admin', '$2y$10$vitJvnf1fj39mvoQhq4v2esXNny./432Jk71hPIxuaekweaYEs4km', 1718692487, 'user.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `workingdays`
--

CREATE TABLE `workingdays` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `nik` varchar(6) NOT NULL,
  `dept` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `ijin` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `cuti` int(11) NOT NULL,
  `alpha` int(11) NOT NULL,
  `total_hari_kerja` int(11) NOT NULL,
  `total_hari_phl` int(11) NOT NULL,
  `jam1pertama` int(11) NOT NULL,
  `jam2lebih` int(11) NOT NULL,
  `hari_libur2x` int(11) NOT NULL,
  `harilibur8` int(11) NOT NULL,
  `total_overtime` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workingdays`
--

INSERT INTO `workingdays` (`id`, `nama`, `nik`, `dept`, `section`, `ijin`, `sakit`, `cuti`, `alpha`, `total_hari_kerja`, `total_hari_phl`, `jam1pertama`, `jam2lebih`, `hari_libur2x`, `harilibur8`, `total_overtime`, `email`) VALUES
(1, 'nama', 'nik', 'dept', 'section', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'email'),
(2, 'TestingWD1', '123', 'IT', 'IT', 1, 0, 0, 0, 21, 0, 1, 1, 0, 0, 2, 'donydonny4@gmail.com'),
(3, 'TestingWD2', '124', 'OPERATOR', 'OPERATOR', 2, 0, 0, 0, 20, 0, 1, 2, 0, 0, 3, 'doniwicaksono27@gmail.com'),
(4, 'TestingWD3', '125', 'PURC', 'PURC', 3, 0, 0, 0, 19, 0, 0, 0, 0, 0, 0, 'zahran.muharrami.23@gmail.com'),
(5, 'TestingWD4', '126', 'HRD', 'HRD', 4, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, NULL),
(6, 'TestingWD5', '127', 'EXM', 'EXM', 5, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, NULL),
(7, 'TestingWD6', '128', 'EXM', 'EXM', 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, NULL),
(8, 'TestingWD7', '129', 'EXM', 'EXM', 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, NULL),
(9, 'TestingWD8', '130', 'EXM', 'EXM', 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, NULL),
(10, 'TestingWD9', '131', 'EXM', 'EXM', 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, NULL),
(11, 'TestingWD10', '132', 'EXM', 'EXM', 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, NULL);

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
-- Indexes for table `workingdays`
--
ALTER TABLE `workingdays`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pkwt`
--
ALTER TABLE `pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `riwayat_pkwt`
--
ALTER TABLE `riwayat_pkwt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `workingdays`
--
ALTER TABLE `workingdays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
