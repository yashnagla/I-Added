-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 02:09 PM
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
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `cloth_donations`
--

CREATE TABLE `cloth_donations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `pickup_address` varchar(255) NOT NULL,
  `size` enum('small','medium','large','xl') NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `type` enum('shirt','t-shirt','pants','dress','skirt','others') NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cloth_donations`
--

INSERT INTO `cloth_donations` (`id`, `name`, `mobile`, `pickup_address`, `size`, `gender`, `type`, `comments`) VALUES
(1, 'Prabhupad', '1029384756', '', 'medium', 'female', 'dress', 'For Girls'),
(2, 'Prabhupad', '1029384756', '', 'medium', 'female', 'dress', 'For Girls'),
(3, 'Prabhupad', '1029384756', '', 'medium', 'female', 'dress', 'For Girls'),
(4, 'Prabhupad', '1029384756', 'Jaipur', 'medium', 'female', 'dress', 'For Girls'),
(5, 'Yash', '1234567890', 'Jaipur', 'small', 'male', 'shirt', 'For Boys\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `email`, `username`, `message`) VALUES
(1, 'naglayash@gmail.com', 'Yash', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `pickup_location` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`id`, `name`, `mobile`, `pickup_location`, `quantity`, `comments`) VALUES
(1, 'Nipun', '0987654321', 'Jaipur', 100, 'Dal, Batti, Churma'),
(2, 'YAsh', '1234567890', 'Jaipur', 100, 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `fund_donation`
--

CREATE TABLE `fund_donation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `comments` text DEFAULT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fund_donation`
--

INSERT INTO `fund_donation` (`id`, `name`, `mobile`, `address`, `amount`, `comments`, `type`) VALUES
(1, 'Yash', '1234567890', 'Jaipur', 1000.00, 'To old-age homes', 'Fund'),
(2, 'Yash', '1234567890', 'Jaipur', 1000.00, 'Yash', 'Fund');

-- --------------------------------------------------------

--
-- Table structure for table `other_donations`
--

CREATE TABLE `other_donations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `item` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `pickup_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_donations`
--

INSERT INTO `other_donations` (`id`, `name`, `mobile`, `item`, `quantity`, `pickup_address`) VALUES
(1, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, ''),
(2, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, ''),
(3, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, ''),
(4, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, ''),
(5, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, ''),
(6, 'Yash', '2910473856', '100 sets of books for 10th class students', 100, '100 sets of books for 10th class students'),
(7, 'Nipun', '1234567890', 'For school students', 1000, 'For school students'),
(8, 'Yash', '1234567890', 'Copies', 100, 'Jaipur');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `username`, `email`, `mobile`, `password`, `cpassword`, `token`, `status`) VALUES
(1, 'Yash', '2020pgiadyash13@poornima.org', '1234567890', '$2y$10$lhJzmgECuF3lQr4HzsXFY.PuQLb4WOqoB8AWtTukks0TOMr9ibtU.', '$2y$10$8XBy5XTnL7JRl4IK1vKxPeOEF1Jy0kMcNI.bzVnsrcACNc.HTdsQu', 'c0812fa73124dc8d55c0814b1ae20b', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cloth_donations`
--
ALTER TABLE `cloth_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_donation`
--
ALTER TABLE `fund_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_donations`
--
ALTER TABLE `other_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cloth_donations`
--
ALTER TABLE `cloth_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fund_donation`
--
ALTER TABLE `fund_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `other_donations`
--
ALTER TABLE `other_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
