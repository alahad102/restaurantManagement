-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2018 at 06:36 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aname` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aname`, `password`) VALUES
('admin11', '111'),
('admin13', '1'),
('admin11', '111'),
('admin13', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rid` varchar(55) NOT NULL,
  `resid` varchar(55) NOT NULL,
  `avgrate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rid`, `resid`, `avgrate`) VALUES
('1', '1', 3),
('2', '4', 4),
('3', '3', 3),
('4', '2', 4),
('5', '5', 3);

-- --------------------------------------------------------

--
-- Table structure for table `restbl`
--

CREATE TABLE `restbl` (
  `userid` varchar(55) NOT NULL,
  `resid` varchar(55) NOT NULL,
  `resname` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `location` varchar(55) NOT NULL,
  `imagedata` varchar(655) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restbl`
--

INSERT INTO `restbl` (`userid`, `resid`, `resname`, `address`, `location`, `imagedata`) VALUES
('1', '1', 'TasteBud', '33/D, Plot-D, Dhaka', 'Banani', 'img/m1.jpg'),
('2', '2', 'Bistro', '44/D,Block-C,Dhaka', 'Banani', 'img/m1.jpg'),
('3', '3', 'Cafe Mocha', 'House-3,Dhanmondi-15,Dhaka', 'Dhanmondi', 'img/m1.jpg'),
('4', '4', 'Cafe Coffee Day', '47/B,Khilgaon,Dhaka', 'Khilgaon', 'img/m1.jpg'),
('5', '5', 'Pinewood', '88/C, Khilgaon', 'Khilgaon', 'img/mtst.png'),
('7', '6', 'Red Window', 'House-3,Dhanmondi-3,Dhaka', 'Dhanmondi', 'img/m1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `reid` varchar(55) NOT NULL,
  `resid` varchar(55) NOT NULL,
  `reviewname` varchar(655) NOT NULL,
  `rating` varchar(55) NOT NULL,
  `review` varchar(655) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`reid`, `resid`, `reviewname`, `rating`, `review`) VALUES
('3', '4', 'jojo', '5', 'nice'),
('2', '1', 'unagi', '5', 'not good'),
('1', '1', 'unagi', '1', 'not good'),
('4', '4', 'el', '2', 'not good'),
('5', '3', 'mike', '5', 'awesome'),
('6', '3', 'jack', '1', 'not good'),
('7', '2', 'john', '4', 'good'),
('8', '2', 'sansa', '4', 'good'),
('9', '1', 'tokyo', '3', 'average'),
('10', '5', 'justine', '3', 'average');

-- --------------------------------------------------------

--
-- Table structure for table `rsvtable`
--

CREATE TABLE `rsvtable` (
  `rsvid` varchar(55) NOT NULL,
  `resid` varchar(55) NOT NULL,
  `name` varchar(555) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `date` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL,
  `people` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rsvtable`
--

INSERT INTO `rsvtable` (`rsvid`, `resid`, `name`, `contact`, `date`, `time`, `people`) VALUES
('1', '1', 'unagi', '47474', '06 -02 -2018', '4-5', '3'),
('2', '3', 'lolo', '4545', '06 -02 -2018', '4-5', '3'),
('3', '2', 'kol', '5656', '03 -02 -2018', '4-5', '6'),
('4', '1', 'unagi', '47474', '10 -02 -2018', '4-5', '3'),
('8', '5', 'kol', '4545', '13 -02 -2018', '4-5', '5'),
('6', '4', 'unagi', '47474', '13 -02 -2018', '4-5', '3'),
('7', '4', 'unagi', '47474', '14 -02 -2018', '4-5', '3'),
('9', '1', 'kol', '4545', '12 -02 -2018', '2-3', '6'),
('10', '5', 'jojo', '4545', '10 -02 -2018', '4-5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` varchar(11) NOT NULL,
  `username` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `password` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `email`, `password`) VALUES
('1', 'm', 'm@gmail.com', '1'),
('3', 'lolo', 'lolo@gmail.com', '4'),
('2', 'el', 'el@gmail.com', '1'),
('4', 'mike', 'mike@gmail.com', '5'),
('5', 'berline', 'b@outlook.com', '5'),
('6', 'hoho', 'hoho@yahoo.com', '1'),
('7', 'moscow', 'm@outlook.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `restbl`
--
ALTER TABLE `restbl`
  ADD PRIMARY KEY (`resid`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`reid`);

--
-- Indexes for table `rsvtable`
--
ALTER TABLE `rsvtable`
  ADD PRIMARY KEY (`rsvid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
