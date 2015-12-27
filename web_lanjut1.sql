-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 22, 2015 at 08:32 AM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web_lanjut1`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_barang_id` int(11) NOT NULL,
  `nama_barang` varchar(40) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL DEFAULT '0',
  `stok` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `jenis_barang_id`, `nama_barang`, `satuan`, `harga`, `stok`) VALUES
(1, 1, 'Gula', 'Kg', 5000, 7),
(2, 1, 'Beras Cianjur', 'Kg', 10000, 100),
(3, 1, 'Minyak Goreng', 'Kg', 20000, 23),
(4, 2, 'Gelas', 'Dosin', 30000, 1),
(5, 2, 'Sendok Makan', 'Dosin', 10000, 4),
(6, 3, 'Sabun Mandi', 'Bungkus', 5000, 10),
(7, 3, 'Sampho', 'Botol 800 mg', 20000, 10),
(8, 4, 'Buku Tulis', 'Pcs', 5000, 10),
(9, 1, 'Jagung', 'Kg', 4000, 100),
(10, 1, 'Beras C4', 'Kg', 8000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE IF NOT EXISTS `jenis_barang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jenis_barang` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `jenis_barang`) VALUES
(1, 'Sembako'),
(2, 'Alat Rumah Tangga'),
(3, 'Kosmetik'),
(4, 'Alat Tulis'),
(5, '2');

-- --------------------------------------------------------

--
-- Table structure for table `katalog`
--

CREATE TABLE IF NOT EXISTS `katalog` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `kdBuku` varchar(12) NOT NULL,
  `judul` varchar(12) NOT NULL,
  `penggarang` varchar(15) NOT NULL,
  `sampul` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`id`, `kdBuku`, `judul`, `penggarang`, `sampul`) VALUES
(5, 'q', 'q', 'q', 'herii.png'),
(6, 'k', 'k', 'k', 'Nature-3D-wa'),
(7, 'k', 'k', 'k', 'Screenshot f'),
(8, 'a', 'j', 'j', 'imagesqw.jpe'),
(9, 'A100a', 'Nodejs', 'heriipurnama', 'Screenshot f'),
(10, 'q', 'h', 'h', 'no.jpg'),
(11, 'A1000B', 'Node.js', 'wasih', 'no.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` char(40) NOT NULL,
  `jenis_kelamin` char(40) NOT NULL,
  `agama` char(1) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `foto` varchar(15) DEFAULT NULL,
  `email` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jenis_kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `password`, `foto`, `email`) VALUES
('12', 'wasih', 'P', '1', 'banjarnegara', '1996-05-18', 'banjar', '1234', 'wasih.png', 'wasig@heri.com'),
('125410101', 'heriipurnama', 'L', '1', 'prambanan', '1996-05-18', 'prambanan', 'prambanan', 'herii.png', 'heriipurnama@outlook.com'),
('s', 's', 'L', '2', 's', '1996-05-18', '1111111111111111111111', 'outsider', 'Node.js__Das_um', 'wasig@heri.com');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `id` smallint(6) NOT NULL,
  `no_nota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id`, `no_nota`) VALUES
(1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE IF NOT EXISTS `penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_nota` int(30) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga_saat_ini` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_nota`, `tanggal`, `barang_id`, `qty`, `harga_saat_ini`) VALUES
(1, 3, '2015-10-13', 3, 2, 20000),
(2, 3, '2015-10-13', 4, 2, 30000),
(3, 3, '2015-10-13', 5, 6, 10000),
(4, 6, '2015-10-20', 1, NULL, 5000),
(5, 6, '2015-10-20', 2, NULL, 10000),
(6, 7, '2015-10-20', 1, 12, 5000),
(7, 0, '2015-10-20', 1, 1, 5000),
(8, 28, '2015-11-23', 1, NULL, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` char(50) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `password`, `email`, `active`) VALUES
(1, 'heriipurnama', 'wasih', 'cf9e88f4294e0cc9031044f2a38d4684', 'wasih', 1),
(3, 'wasih', 'wasih2', 'cf9e88f4294e0cc9031044f2a38d4684', 'wasih', 1),
(4, 'heriipurnamaku', 'wasih1', '6812af90c6a1bbec134e323d7e70587b', 'heri@gmail.wasih', 1),
(5, 'heriipurnamaku', 'purnama', '202cb962ac59075b964b07152d234b70', 'her@gmail.com', 0),
(6, '11', 'q', '099b3b060154898840f0ebdfb46ec78f', 'her2@gmail.com', 0),
(7, 'w', 'w', 'ad57484016654da87125db86f4227ea3', 'wasih@gmail.com', 0),
(8, 'heriipurnama', 'heri', '202cb962ac59075b964b07152d234b70', 'herii@gmail.com', 0),
(9, 'ana', 'ana', '276b6c4692e78d4799c12ada515bc3e4', 'ana@gmail.com', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
