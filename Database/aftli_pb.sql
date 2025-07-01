-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 22, 2025 at 03:59 PM
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
-- Database: `aftli_pb`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `NIS` varchar(9) NOT NULL,
  `NamaSiswa` varchar(25) NOT NULL,
  `TempatTglLahir` varchar(25) NOT NULL,
  `JenisKelamin` varchar(15) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `TglPendaftaran` varchar(12) NOT NULL,
  `BerlakuHingga` varchar(12) NOT NULL,
  `Kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `databuku`
--

CREATE TABLE `databuku` (
  `KodeBuku` varchar(9) NOT NULL,
  `NamaBuku` varchar(25) NOT NULL,
  `NamaPengarang` varchar(25) NOT NULL,
  `Penerbit` varchar(25) NOT NULL,
  `TahunTerbit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `NIK` varchar(9) NOT NULL,
  `NamaKaryawan` varchar(25) NOT NULL,
  `JenisKelamin` varchar(15) NOT NULL,
  `Jabatan` varchar(12) NOT NULL,
  `Absen` varchar(31) NOT NULL,
  `JumlahAbsen` varchar(31) NOT NULL,
  `Tunjangan` varchar(15) NOT NULL,
  `Jumlah Gaji` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Nama` varchar(25) NOT NULL,
  `TTL` varchar(30) NOT NULL,
  `JenisKelamin` varchar(15) NOT NULL,
  `Alamat` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `KonfirmasiPassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `NIS` varchar(20) NOT NULL,
  `NamaSiswa` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `KodeBuku` varchar(20) NOT NULL,
  `NamaBuku` varchar(50) NOT NULL,
  `Penerbit` varchar(50) NOT NULL,
  `TglPinjam` varchar(20) NOT NULL,
  `TglKembali` varchar(20) NOT NULL,
  `LamaPinjam` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`NIS`),
  ADD UNIQUE KEY `NIS` (`NIS`);

--
-- Indexes for table `databuku`
--
ALTER TABLE `databuku`
  ADD PRIMARY KEY (`KodeBuku`),
  ADD UNIQUE KEY `KodeBuku` (`KodeBuku`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`NIK`),
  ADD UNIQUE KEY `NIK` (`NIK`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`NIS`,`KodeBuku`,`TglPinjam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
