-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 05:08 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_peserta`
--

CREATE TABLE `data_peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jkel` varchar(16) NOT NULL,
  `email` varchar(100) NOT NULL,
  `instansi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_peserta`
--

INSERT INTO `data_peserta` (`id`, `nama`, `jkel`, `email`, `instansi`) VALUES
(19, 'Maulana Aditya', 'Laki-laki', 'kkcmr14@gmail.com', 'UIN');

-- --------------------------------------------------------

--
-- Table structure for table `data_webinar`
--

CREATE TABLE `data_webinar` (
  `id_webinar` int(11) NOT NULL,
  `judul_webinar` varchar(200) NOT NULL,
  `tgl_webinar` varchar(200) NOT NULL,
  `waktu_webinar` varchar(200) NOT NULL,
  `pemateri` varchar(200) NOT NULL,
  `link_webinar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_webinar`
--

INSERT INTO `data_webinar` (`id_webinar`, `judul_webinar`, `tgl_webinar`, `waktu_webinar`, `pemateri`, `link_webinar`) VALUES
(9, 'Webinar Kebangsaan Nasional', '24 Desember 2021', '13:00 - 14:00', 'Sandiaga Uno', 'https://meet.google.com/zyw-xois-dtk');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `username`, `password`) VALUES
(1, 'admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_peserta`
--
ALTER TABLE `data_peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_webinar`
--
ALTER TABLE `data_webinar`
  ADD PRIMARY KEY (`id_webinar`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_peserta`
--
ALTER TABLE `data_peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `data_webinar`
--
ALTER TABLE `data_webinar`
  MODIFY `id_webinar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
