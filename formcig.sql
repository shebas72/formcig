-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 19, 2020 at 04:00 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formcig`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE IF NOT EXISTS `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `project`, `description`) VALUES
(1, 'asddsadas', 'sadasdasd', 'adadadas'),
(2, 'adasdasdas', 'sadasdas', 'asdadasas'),
(3, '23123213', 'asdadas', 'adadasda'),
(4, 'adasdasdasdsa', 'asdadsadsad', 'sadadasdas');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `description`) VALUES
(1, 'asdadsadsad', 'asdadasda'),
(2, 'adadasdas', 'adadadadadas'),
(3, 'testtestestst', 'ererewrewrwe');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `shopurl` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_time` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `lname`, `email`, `dob`, `pname`, `shopurl`, `company`, `telephone`, `street`, `city`, `state`, `zip`, `country`, `password`, `date_time`) VALUES
(5, 'shebas', 'khan', 'shebas.veer@gmail.com', '2020-05-16', 'asddadas', 'adadada', 'asdadada', 'adadada', 'adadadas', 'asdadad', 'adadadada', 'asdadada', 'Afghanistan', '772a5ce892d6a11faa116acb096d46857fa9678d', '2020-05-13'),
(6, 'adadasdas', 'asdadasda', 'asdadadas@adasda.com', '2020-05-14', 'asdadasda', 'asdadasd', 'adadas', 'asdada', 'adadad', 'sadasda', 'asdadas', 'asdadasa', 'Åland Islands', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2020-05-13'),
(7, 'dsfsdfds', 'sdfsdfdsfsd', 'sfdsfdsfsdfsdfsdfds@asdas.com', '', 'dsfsd', 'dsfsdfds', '', '', 'sdfdss', 'dsfsd', 'dsfdsf', 'dfsfds', 'Afghanistan', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', '2020-05-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
