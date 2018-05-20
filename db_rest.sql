-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2017 at 05:08 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.6.30-1+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_car`
--

CREATE TABLE IF NOT EXISTS `tb_car` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(4) NOT NULL,
  `make` varchar(30) NOT NULL,
  `model` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_car`
--

INSERT INTO `tb_car` (`id`, `year`, `make`, `model`) VALUES
(1, 2010, 'honda', 'mobilio'),
(2, 1994, 'Acura', 'NSX'),
(3, 1992, 'Toyota', 'Corolla'),
(4, 1981, 'DeLorean', 'DMC-12'),
(5, 2010, 'Suzuki', 'APV'),
(6, 2012, 'Toyota', 'Avanza'),
(7, 2011, 'Nissan', 'Evalia'),
(8, 2013, 'Toyota', 'Alphard');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
