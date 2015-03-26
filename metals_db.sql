-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2015 at 09:01 PM
-- Server version: 5.6.16
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `metals_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gold`
--

CREATE TABLE IF NOT EXISTS `gold` (
  `ID` int(11) NOT NULL,
  `Coin` varchar(50) NOT NULL,
  `Mintage` varchar(255) NOT NULL,
  `Weight` decimal(10,5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gold`
--

INSERT INTO `gold` (`ID`, `Coin`, `Mintage`, `Weight`) VALUES
(1, 'African Krugerrand', '1982', '1.00000'),
(2, 'Austrian Philharmonic', '1997', '1.00000'),
(3, 'Australian Gold Nugget/Kangaroo', '2006', '1.00000'),
(4, 'Gold British Sovereign', '1907', '0.23500'),
(5, 'Gold British Sovereign', '1916', '0.23500'),
(6, 'Gold British Sovereign', '1881', '0.23500'),
(7, 'Canadian Gold Maple Leaf', '1985', '1.00000'),
(8, 'French 20 Franc Rooster', '1909', '0.18000'),
(9, 'French 20 Franc Rooster', '1912', '0.18000'),
(10, 'French 20 Franc Rooster', '1913', '0.18000'),
(11, '$50 Mexican 50 Peso', '1947', '1.20000'),
(12, 'Swiss 20 Franc Helvetia', '1927', '0.18000'),
(13, 'Swiss 20 Franc Helvetia (x3)', '1930', '0.54000'),
(14, '$20 Liberty Double Eagle', '1900', '0.96750'),
(15, '$20 St. Gaudens', '1924', '0.96750'),
(16, '$50 American Gold Buffalo', '2008', '1.00000'),
(17, '$50 American Gold Eagle', '1988', '1.00000'),
(18, '$50 American Gold Eagle', '2000', '1.00000'),
(19, '$25 American Gold Eagle (x4)', '2008', '2.00000'),
(20, '$25 American Gold Eagle', '2003', '0.50000'),
(21, '$25 American Gold Eagle', '2002', '0.50000'),
(22, '$25 American Gold Eagle', '1998', '0.50000'),
(23, '$10 American Gold Eagle', '1999', '0.25000'),
(24, '$5 American Gold Eagle', '1999', '0.10000');

-- --------------------------------------------------------

--
-- Table structure for table `silver`
--

CREATE TABLE IF NOT EXISTS `silver` (
  `ID` int(11) NOT NULL,
  `Coin` varchar(50) NOT NULL,
  `Mintage` varchar(255) NOT NULL,
  `Weight` decimal(10,5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `silver`
--

INSERT INTO `silver` (`ID`, `Coin`, `Mintage`, `Weight`) VALUES
(1, 'Canadian Silver Maple Leaf (x100)', '2006', '100.00000'),
(2, 'Generic Silver Round (x9)', '2003', '9.00000'),
(3, 'US Constitution Bicentennial Silver Dollar', '1987', '1.00000'),
(4, 'Morgan Silver Dollar (x4)', '1921', '3.09376'),
(5, 'Morgan Silver Dollar (x2)', '1921', '1.54688'),
(6, 'Morgan Silver Dollar', '1902', '0.77344'),
(7, 'Morgan Silver Dollar', '1900-O', '0.77344'),
(8, 'Morgan Silver Dollar', '1899-O', '0.77344'),
(9, 'Morgan Silver Dollar', '1890', '0.77344'),
(10, 'Morgan Silver Dollar', '1885', '0.77344'),
(11, 'Morgan Silver Dollar', '1883', '0.77344'),
(12, 'Morgan Silver Dollar', '1882', '0.77344'),
(13, 'Morgan Silver Dollar', '1881-O', '0.77344'),
(14, 'Morgan Silver Dollar', '1880-O', '0.77344'),
(15, 'Morgan Silver Dollar', '1879-O', '0.77344'),
(16, 'American Silver Eagle', '2014', '1.00000'),
(17, 'American Silver Eagle', '2013', '1.00000'),
(18, 'American Silver Eagle', '2012', '1.00000'),
(19, 'American Silver Eagle', '2011', '1.00000'),
(20, 'American Silver Eagle', '2010', '1.00000'),
(21, 'American Silver Eagle', '2009', '1.00000'),
(22, 'American Silver Eagle', '2008', '1.00000'),
(23, 'American Silver Eagle', '2007', '1.00000'),
(24, 'American Silver Eagle', '2006', '1.00000'),
(25, 'American Silver Eagle', '2005', '1.00000'),
(26, 'American Silver Eagle', '2003', '1.00000'),
(27, 'American Silver Eagle', '2002', '1.00000'),
(28, 'American Silver Eagle', '1988', '1.00000'),
(29, 'American Silver Eagle', '1986', '1.00000'),
(30, 'American Silver Eagle (x19)', '1986-2004', '19.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gold`
--
ALTER TABLE `gold`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `silver`
--
ALTER TABLE `silver`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gold`
--
ALTER TABLE `gold`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `silver`
--
ALTER TABLE `silver`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
