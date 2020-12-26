-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 03:43 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `generate_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_ruang_audit`
--

CREATE TABLE `peminjaman_ruang_audit` (
  `no_surat` varchar(50) NOT NULL,
  `tanggal_surat` date NOT NULL,
  `kepada` varchar(50) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `tanggal_acara` varchar(50) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `ruangan` varchar(255) NOT NULL,
  `ketua_panitia` varchar(20) NOT NULL,
  `nim_ketua_panitia` varchar(10) NOT NULL,
  `sekretaris_panitia` varchar(20) NOT NULL,
  `nim_sekretaris_panitia` varchar(10) NOT NULL,
  `ketua_fosti` varchar(20) NOT NULL,
  `nim_ketua_fosti` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(11) NOT NULL,
  `nama_surat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_delegasi`
--

CREATE TABLE `surat_delegasi` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surat_izinkuliah`
--

CREATE TABLE `surat_izinkuliah` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'beny', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peminjaman_ruang_audit`
--
ALTER TABLE `peminjaman_ruang_audit`
  ADD PRIMARY KEY (`no_surat`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat_delegasi`
--
ALTER TABLE `surat_delegasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat_izinkuliah`
--
ALTER TABLE `surat_izinkuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
