-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 05:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(200) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1520297499, 1064969819, 'Hii Ansh'),
(2, 1520297499, 1064969819, 'Kal chalega na'),
(3, 1520297499, 1064969819, 'Btaa'),
(4, 1064969819, 1520297499, 'Haan chalunga'),
(5, 1520297499, 1064969819, 'ok'),
(6, 1520297499, 1064969819, 'Ball laani hai ?'),
(7, 1520297499, 1064969819, 'Bta na'),
(8, 1520297499, 1064969819, 'bta'),
(9, 1520297499, 1064969819, 'are bta'),
(10, 1520297499, 1064969819, 'na'),
(11, 1520297499, 1064969819, 'pagal bta'),
(12, 1520297499, 1064969819, 'yrr'),
(13, 1520297499, 1064969819, 'aisa kya kar rha hai'),
(14, 1520297499, 1064969819, 'ooye'),
(15, 1064969819, 1520297499, 'Abe haan thike le aaiyo yrr'),
(16, 1064969819, 1520297499, 'or itne message mt kiya kar '),
(17, 1064969819, 1520297499, 'bhai'),
(18, 1064969819, 1520297499, 'papa dekh skte hai'),
(19, 1520297499, 1064969819, 'Haan thike nhhi krunga '),
(20, 1520297499, 1064969819, 'khush'),
(21, 1064969819, 1520297499, 'haan khush'),
(22, 1520297499, 1064969819, 'aur sunn mein call karunga'),
(23, 1520297499, 1064969819, 'tab ghr se nikal jaiyo'),
(24, 1064969819, 1520297499, 'okay thike'),
(25, 1064969819, 1520297499, 'lekin tu yaad se call kardiyo'),
(26, 1246595126, 1520297499, 'Hii Akku'),
(27, 1246595126, 1520297499, 'aur kya kar rhi hai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1520297499, 'Ansh', 'Goyal', 'alexgoyal6397@gmail.com', 'ChorSaale', '1663106664ansh.jfif', 'Active now'),
(2, 1246595126, 'Akansha', 'Sharma', 'akanshasharma@gmail.com', 'iamakansha', '1663106768Akansha.png', 'Offline now'),
(3, 523000002, 'Nidhi', 'Sharma', 'nidhisharma@gmail.com', 'nidhi1234', '1663106853Nidhi.jfif', 'Offline now'),
(4, 35885999, 'Golu', 'Thakur', 'goluthakur@gmail.com', 'goluthakur', '1663107820Golu.png', 'Offline now'),
(5, 1064969819, 'Shrey', 'Gaur', 'shreygaur@gmail.com', 'shreygaur', '1663108965Shrey.png', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
