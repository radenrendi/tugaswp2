-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2018 at 01:47 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datamahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat_asal` varchar(100) NOT NULL,
  `alamat_sekarang` varchar(100) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `fakultas` varchar(50) NOT NULL,
  `absen` varchar(25) NOT NULL,
  `tugas` varchar(30) NOT NULL,
  `uts` varchar(35) NOT NULL,
  `uas` varchar(40) NOT NULL,
  `study` varchar(45) NOT NULL,
  `sks` varchar(50) NOT NULL,
  `grade` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`ID`, `username`, `password`, `level`, `nim`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat_asal`, `alamat_sekarang`, `no_telepon`, `email`, `agama`, `fakultas`, `absen`, `tugas`, `uts`, `uas`, `study`, `sks`, `grade`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'admin', '17140023', 'Raden Rendi', 'Laki-Laki', 'Bandung', '1995-10-10', 'Bandung', 'Bandung', '081394034768', 'radenrendi@gmail.com', 'Islam', 'TI', '80', '70', '70', '70', 'Internetworking', '4', 'B'),
(2, 'dinna', 'c399440fe7440b7a33e8de0cdcd7f015', 'user', '17140024', 'Dinna Mariyana', 'Perempuan', 'Bandung', '1995-05-03', 'Bandung', 'Bandung', '08987805120', 'dinna@gmail.com', 'Islam', 'TI', '80', '60', '50', '50', 'Rekayasa Perangkat Lunak', '4', 'C'),
(5, 'yogiedika', 'e69bb9b83b55a0b1df71a50550362133', 'user', '17140025', 'Yogie Dika', 'Laki-Laki', 'Sumedang', '1995-05-09', 'Sumedang', 'Bandung', '08987805349', 'yogie@gmail.com', 'Islam', 'MI', '70', '65', '80', '70', 'Pemrograman Web', '4', 'B'),
(6, 'fredy', '9113207c1da37b6891004653f0d01da5', 'user', '17140026', 'Fredy Wijaya', 'Laki-Laki', 'Bandung', '1994-10-24', 'Bandung', 'Bandung', '081394037895', 'fredy@gmail.com', 'Islam', 'SI', '45', '57', '40', '50', 'Sistem Informasi', '3', 'D'),
(7, 'yosep', '43759d1f86197328c32113e65cc3ad2c', 'user', '17140027', 'Yosep Maulana', 'Laki-Laki', 'Tasikmalaya', '1995-10-16', 'Tasikmalaya', 'Bandung', '08187684239', 'yosep@gmail.com', 'Islam', 'SI', '80', '70', '75', '78', 'Software Testing', '3', 'A'),
(8, 'dinni', '7078aa86ed3254f034a8a3170ae8d597', 'user', '17140028', 'Dinni Mariyani', 'Perempuan', 'Sumatra', '1994-08-09', 'Sumatra', 'Banten', '08780234721', 'dinni@gmail.com', 'Islam', 'MI', '90', '80', '70', '70', 'Pengolahan Citra', '3', 'A'),
(9, 'intan', '46a7357b0b816cb9dd56d70d2a385cfd', 'user', '17140029', 'Intan Putri', 'Perempuan', 'Bandung', '1994-03-05', 'Bandung', 'Bandung', '08780237456', 'intan@gmail.com', 'Kristen', 'Kedokteran', '70', '80', '68', '89', 'Ilmu Biomedik', '4', 'B'),
(10, 'Sinta', 'ad388556cdd6816279c1cc334c925a09', 'user', '17140030', 'Sinta Novita', 'Perempuan', 'Bandung', '1994-02-05', 'Bandung', 'Bandung', '081453728394', 'sinta@gmail.com', 'Kristen', 'Kedokteran', '68', '76', '78', '67', 'Kedokteran Klinik', '4', 'C'),
(11, 'fajar', '7bedc9fd30769590c992b8f7f23738f7', 'user', '17140031', 'Fajar Ramadan', 'Laki-Laki', 'Bandung', '1995-01-30', 'Bandung', 'Bandung', '08765738293', 'fajar@gmail.com', 'Islam', 'TI', '75', '92', '85', '90', 'Metode Penelitian', '4', 'A'),
(12, 'leo', '657b298b04e033810343842f993c9817', 'user', '17140032', 'Leo Setyadi', 'Laki-Laki', 'Jambi', '1995-05-16', 'Jambi', 'Bandung', '08984657239', 'leo@gmail.com', 'Islam', 'MI', '86', '89', '67', '78', 'Jaringan Komputer', '4', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
