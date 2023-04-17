-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 09:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enterprise`
--

-- --------------------------------------------------------

--
-- Table structure for table `client_master`
--

CREATE TABLE `client_master` (
  `No` int(100) NOT NULL,
  `Client_No` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Telephone` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_master`
--

INSERT INTO `client_master` (`No`, `Client_No`, `Name`, `City`, `Region`, `Created_at`, `Updated_at`, `Telephone`) VALUES
(1, 'C001', 'Benjamin Mensah', 'Accra', 'Greater Accra', '2022-12-14 07:24:10', '2022-12-14 07:24:10', NULL),
(2, 'C002', 'Elijah Tawiah', 'Kumasi', 'Ashanti', '2022-12-14 07:25:17', '2022-12-14 07:25:17', NULL),
(3, 'C003', 'Akosua Aidoo', 'Nkawkaw', 'Eastern', '2022-12-14 07:26:10', '2022-12-15 08:23:19', NULL),
(4, 'C004', 'Emmanuel Osei', 'Ho', 'Volta', '2022-12-14 07:27:30', '2022-12-15 08:29:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `No` int(100) NOT NULL,
  `Product_No` varchar(100) DEFAULT NULL,
  `Descp` varchar(100) DEFAULT NULL,
  `Profit_PCT` int(100) DEFAULT NULL,
  `Sell_Price` int(100) DEFAULT NULL,
  `Cost_Price` int(100) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`No`, `Product_No`, `Descp`, `Profit_PCT`, `Sell_Price`, `Cost_Price`, `Created_at`, `Updated_at`) VALUES
(1, 'P0001', 'T-Shirt', 100, 350, 250, '2022-12-14 07:33:06', '2022-12-14 07:33:06'),
(3, 'P0003', 'Jeans', 250, 950, 500, '2022-12-14 07:34:33', '2022-12-15 08:35:21'),
(4, 'P0004', 'Trousers', 300, 850, 550, '2022-12-14 07:35:12', '2022-12-14 07:35:12');

-- --------------------------------------------------------

--
-- Table structure for table `sales_master`
--

CREATE TABLE `sales_master` (
  `No` int(100) NOT NULL,
  `SalesMan_No` varchar(100) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Region` varchar(100) DEFAULT NULL,
  `Salary` int(100) DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_master`
--

INSERT INTO `sales_master` (`No`, `SalesMan_No`, `Name`, `City`, `Region`, `Salary`, `Created_at`, `Updated_at`) VALUES
(1, 'S0001', 'Ama Jennifer', 'Accra', 'Greater Accra', 3000, '2022-12-14 07:40:44', '2022-12-14 07:40:44'),
(2, 'S0002', 'Raj Pablo', 'Kumasi', 'Ashanti', 4000, '2022-12-14 07:41:35', '2022-12-14 07:41:35'),
(3, 'S0003', 'Kojo Hanson', 'Koforidua', 'Eastern', 3600, '2022-12-14 07:42:26', '2022-12-14 07:42:26'),
(4, 'S0004', 'Steve David', 'Ho', 'Volta', 3200, '2022-12-14 07:43:16', '2022-12-14 07:43:16'),
(5, 'S0005', 'Mary Ann', 'Accra', 'Greater Accra', 5500, '2022-12-14 07:44:06', '2022-12-14 07:44:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client_master`
--
ALTER TABLE `client_master`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `sales_master`
--
ALTER TABLE `sales_master`
  ADD PRIMARY KEY (`No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client_master`
--
ALTER TABLE `client_master`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales_master`
--
ALTER TABLE `sales_master`
  MODIFY `No` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
