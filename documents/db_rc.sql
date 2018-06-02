-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 01, 2018 at 11:15 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rc`
--

-- --------------------------------------------------------

--
-- Table structure for table `rc_kecamatan`
--

DROP TABLE IF EXISTS `rc_kecamatan`;
CREATE TABLE `rc_kecamatan` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `uc_kota_kab` varchar(15) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_kecamatan`
--

INSERT INTO `rc_kecamatan` (`id`, `uc`, `uc_kota_kab`, `nama_kecamatan`) VALUES
(1, 'KEC-001', 'KB-001', 'Asemrowo'),
(2, 'KEC-002', 'KB-001', 'Benowo'),
(3, 'KEC-003', 'KB-001', 'Bubutan'),
(4, 'KEC-004', 'KB-001', 'Bulak'),
(5, 'KEC-005', 'KB-001', 'Dukuh Pakis'),
(6, 'KEC-006', 'KB-001', 'Gayungan'),
(7, 'KEC-007', 'KB-001', 'Genteng'),
(8, 'KEC-008', 'KB-001', 'Gubeng'),
(9, 'KEC-009', 'KB-001', 'Gunung Anyar'),
(10, 'KEC-010', 'KB-001', 'Jambangan'),
(11, 'KEC-011', 'KB-001', 'Karangpilang'),
(12, 'KEC-012', 'KB-001', 'Kenjeran'),
(13, 'KEC-013', 'KB-001', 'Krembangan'),
(14, 'KEC-014', 'KB-001', 'Lakarsantri'),
(15, 'KEC-015', 'KB-001', 'Mulyorejo'),
(16, 'KEC-016', 'KB-001', 'Pabean Cantikan'),
(17, 'KEC-017', 'KB-001', 'Pakal'),
(18, 'KEC-018', 'KB-001', 'Rungkut'),
(19, 'KEC-019', 'KB-001', 'Sambikerep'),
(20, 'KEC-020', 'KB-001', 'Sawahan'),
(21, 'KEC-021', 'KB-001', 'Semampir'),
(22, 'KEC-022', 'KB-001', 'Simokerto'),
(23, 'KEC-023', 'KB-001', 'Sukolilo');

-- --------------------------------------------------------

--
-- Table structure for table `rc_kelurahan`
--

DROP TABLE IF EXISTS `rc_kelurahan`;
CREATE TABLE `rc_kelurahan` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `uc_kecamatan` varchar(15) NOT NULL,
  `nama_kelurahan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_kelurahan`
--

INSERT INTO `rc_kelurahan` (`id`, `uc`, `uc_kecamatan`, `nama_kelurahan`) VALUES
(1, 'KEL-001', 'KEC-001', 'Asemrowo'),
(2, 'KEL-002', 'KEC-001', ' Genting Kalianak'),
(3, 'KEL-003', 'KEC-001', 'Tambak Sarioso'),
(4, 'KEL-004', 'KEC-002', 'Kandangan'),
(5, 'KEL-005', 'KEC-002', 'Romokalisari'),
(6, 'KEL-006', 'KEC-002', 'Sememi'),
(7, 'KEL-007', 'KEC-002', 'Tambak Osowilangun'),
(8, 'KEL-008', 'KEC-003', 'Alun-Alun Contong'),
(9, 'KEL-009', 'KEC-003', ' Bubutan');

-- --------------------------------------------------------

--
-- Table structure for table `rc_kota_kab`
--

DROP TABLE IF EXISTS `rc_kota_kab`;
CREATE TABLE `rc_kota_kab` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `nama_kota_kab` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_kota_kab`
--

INSERT INTO `rc_kota_kab` (`id`, `uc`, `nama_kota_kab`) VALUES
(1, 'KB-001', 'Kota Surabaya'),
(2, 'KB-002', 'Kab Sidoarjo');

-- --------------------------------------------------------

--
-- Table structure for table `rc_paslon`
--

DROP TABLE IF EXISTS `rc_paslon`;
CREATE TABLE `rc_paslon` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `no_urut` tinyint(1) NOT NULL,
  `cagub` varchar(50) NOT NULL,
  `cawagub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_paslon`
--

INSERT INTO `rc_paslon` (`id`, `uc`, `no_urut`, `cagub`, `cawagub`) VALUES
(1, 'PAS-001', 1, 'Khofifah Indar Parawansa', 'Emil Elestianto Dardak'),
(2, 'PAS-002', 2, 'Saifullah Yusuf', 'Puti Guntur Soekarno');

-- --------------------------------------------------------

--
-- Table structure for table `rc_saksi`
--

DROP TABLE IF EXISTS `rc_saksi`;
CREATE TABLE `rc_saksi` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `uc_tps` varchar(15) NOT NULL,
  `uc_paslon` varchar(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `is_saksi_utama` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_saksi`
--

INSERT INTO `rc_saksi` (`id`, `uc`, `uc_tps`, `uc_paslon`, `username`, `password`, `is_saksi_utama`) VALUES
(1, 'SAKSI-001', 'TPS-001', 'PAS-001', 'saksikofifah', '5526a00b4cfde898dda0785b8d20cd81', 1),
(2, 'SAKSI-002', 'TPS-001', 'PAS-002', 'saksisai', '6855297be3dc0f8edf1b830b51d6a1fb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rc_tps`
--

DROP TABLE IF EXISTS `rc_tps`;
CREATE TABLE `rc_tps` (
  `id` int(3) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `no_tps` varchar(10) NOT NULL,
  `uc_kelurahan` varchar(15) NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_tps`
--

INSERT INTO `rc_tps` (`id`, `uc`, `no_tps`, `uc_kelurahan`, `rt`, `rw`) VALUES
(1, 'TPS-001', 'TPS. 0210', 'KEL-001', '001', '010');

-- --------------------------------------------------------

--
-- Table structure for table `rc_user`
--

DROP TABLE IF EXISTS `rc_user`;
CREATE TABLE `rc_user` (
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(225) NOT NULL,
  `fulname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rc_user`
--

INSERT INTO `rc_user` (`id`, `username`, `password`, `fulname`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `rc_vote_paslon_1`
--

DROP TABLE IF EXISTS `rc_vote_paslon_1`;
CREATE TABLE `rc_vote_paslon_1` (
  `id` bigint(15) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `uc_tps` varchar(15) NOT NULL,
  `uc_paslon` varchar(15) NOT NULL,
  `jml_vote` int(15) NOT NULL,
  `jml_akhir_tps` int(15) NOT NULL,
  `golput` int(15) NOT NULL,
  `cacat` int(15) NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rc_vote_paslon_2`
--

DROP TABLE IF EXISTS `rc_vote_paslon_2`;
CREATE TABLE `rc_vote_paslon_2` (
  `id` bigint(15) NOT NULL,
  `uc` varchar(15) NOT NULL,
  `uc_tps` varchar(15) NOT NULL,
  `uc_paslon` varchar(15) NOT NULL,
  `jml_vote` int(15) NOT NULL,
  `jml_akhir_tps` int(15) NOT NULL,
  `golput` int(15) NOT NULL,
  `cacat` int(15) NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rc_kecamatan`
--
ALTER TABLE `rc_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_kelurahan`
--
ALTER TABLE `rc_kelurahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_kota_kab`
--
ALTER TABLE `rc_kota_kab`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_paslon`
--
ALTER TABLE `rc_paslon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_saksi`
--
ALTER TABLE `rc_saksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_tps`
--
ALTER TABLE `rc_tps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_user`
--
ALTER TABLE `rc_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_vote_paslon_1`
--
ALTER TABLE `rc_vote_paslon_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rc_vote_paslon_2`
--
ALTER TABLE `rc_vote_paslon_2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rc_kecamatan`
--
ALTER TABLE `rc_kecamatan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rc_kelurahan`
--
ALTER TABLE `rc_kelurahan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rc_kota_kab`
--
ALTER TABLE `rc_kota_kab`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rc_paslon`
--
ALTER TABLE `rc_paslon`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rc_saksi`
--
ALTER TABLE `rc_saksi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rc_tps`
--
ALTER TABLE `rc_tps`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rc_user`
--
ALTER TABLE `rc_user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rc_vote_paslon_1`
--
ALTER TABLE `rc_vote_paslon_1`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rc_vote_paslon_2`
--
ALTER TABLE `rc_vote_paslon_2`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
