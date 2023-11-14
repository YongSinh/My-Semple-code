-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2023 at 04:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecm_g1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `tel` varchar(16) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address_des` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `customer_id`, `province_id`, `firstname`, `lastname`, `tel`, `email`, `address_des`, `create_at`) VALUES
(1, 41, 6, 'Nara', 'Som', '0966890666', NULL, '#123 St 129, SongKat Phone Penh Thmey, Khan SanSok, Phnom Penh', '2023-04-24 13:42:58'),
(2, 41, 9, 'Naren', 'Som', '0966890667', NULL, '#45 St 252, Nikom, ThmorKol, Battam Bong', '2023-04-24 13:50:39'),
(3, 20, 9, 'Naren', 'Som', '0966890667', NULL, '#45 St 252, Nikom, ThmorKol, Battam Bong', '2023-04-24 13:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `quantity`, `create_at`) VALUES
(3, 26, 14, 1, '2023-05-16 14:51:11'),
(4, 26, 15, 1, '2023-05-16 14:52:36'),
(5, 26, 13, 1, '2023-05-16 14:52:45'),
(6, 26, 12, 1, '2023-05-16 14:52:49'),
(7, 29, 12, 1, '2023-05-16 14:53:14'),
(8, 29, 15, 1, '2023-05-16 14:53:18'),
(9, 41, 15, 1, '2023-05-23 13:24:12');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `parent_id`, `image`, `order_number`, `create_at`, `create_by`) VALUES
(1, 'Mac', 'Mac V ', 0, 'd2814d22599b27e48283ba1f4ea3f2e5', 0, '2023-04-06 14:56:28', 1),
(2, 'DELL', 'DELL Description ', 0, '631805882e2b95f9652eae3927fadb3d', 0, '2023-04-06 14:56:53', 1),
(3, 'Lenevo', 'Lenevo Description', 0, '54e3ac6a2e821eadf9be905de8e7b312', 0, '2023-04-06 14:57:03', 1),
(4, 'Asus', 'Asus Description', 0, '', 0, '2023-04-06 14:57:12', 1),
(5, 'HP', 'HP Description', 0, 'f92e035f5117cbf3457c1695357d3167', 0, '2023-04-06 14:57:20', 1),
(6, 'Microsoft', 'Microsoft des', 0, '65c1b43aabc9f10b4eae057948871b86', 0, '2023-04-27 14:52:32', 1),
(7, 'IPhone', 'IPhone', 0, '79403efa0f1dfd69a0b229d27dccc3b7', 0, '2023-04-27 14:54:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `tel` varchar(16) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `firstname`, `lastname`, `gender`, `dob`, `tel`, `email`, `password`, `image`, `is_active`) VALUES
(31, 'Mr', 'Solo', 1, '2023-03-14', '099877788', 'solo@gmail.com', '', 'f635820e472dfae4e47b1d8abad5a15d', 1),
(36, 'Mr', 'Polo', 1, '2023-03-16', '0898887634', 'polo@gmail.com', '', 'd231b119c6a2d8e79ab75aa7ee0a515f', 1),
(37, 'Ms', 'July', 0, '2023-03-16', '096777743', 'july@gmail.com', '', '7fccf206b37b6cf325f3c8fd8a95e9f6', 1),
(38, 'Ms', 'Sokly', 0, '2023-03-16', '09877665656', 'sokly@gmail.com', '', 'c36bc562ff006371197cd4c52bd2ab8c', 1),
(40, 'Ms', 'Admin101', 0, '1999-01-22', '09877665656', 'admin101@gmail.com', '$2b$10$qOYgndhOOruExMY2tw5Xa.vr99ta1tKVklnLdrSfLvJJw6dP6VJou', 'c4008c82c767fe33e8bc3b985e19ad06', 1),
(41, 'Ms', 'nara', 0, '2023-05-15', '0926737474', 'nora@gmail.com', '$2b$10$BpsnQnrVYeHTE8sdbV8F9.agmonZls6WF87PLLZSwtLLkjBEAeYgG', '5fe4785bcb018a52b7e18fe89af2f984', 1),
(42, 'Ms', 'Sivy', 0, '2023-05-15', '092344344', 'bora@gmail.com', '$2b$10$bgHqz7AWHBXdvmDnu10WlOXYVWC0rkS2BJLck8nvdcG3rlOGXxa7W', '4ae3a846c2df8ade152ff058b12fcb84', 1),
(43, 'MR', 'Dara', 1, '2023-03-30', NULL, 'dara@gmail.com', '$2b$10$fj7rdiMSM5S9IwISIrKRUehFOnB4MuxwF1jyT9ZSLzKXd/bxxAzDy', 'a0fc9e3d1cdf5548b9f2a14f7e2bad82', 1),
(44, 'VV', 'VV', 1, '2023-03-30', NULL, 'vv@gmail.com', '$2b$10$nOmI4ynNV/t0CzwnQVcEZO0FgPYzI1jMNCNpsAqzA9iSzbltL1sE6', 'c26e5e9d8ced277546ec9c17f0c7a39f', 1),
(45, 'bora1', 'som', 1, NULL, NULL, 'bora1@gmail.com', '$2b$10$yNaSrBg0an3BjrZsYptSH.bBXqnhEIKoROTA4GpxM5MwFqC5kWrOS', NULL, NULL),
(46, 'a101', 'a101', 1, '2023-03-30', NULL, 'a101@gmail.com', '$2b$10$hb.gdQMWAUD2KZ82Je/HKuNWGOTJLcavYxOo7fN4fkWY4RBdCbzOy', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `tel` varchar(16) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province_name` varchar(120) NOT NULL,
  `address_des` text NOT NULL,
  `total_item` int(6) NOT NULL DEFAULT 0,
  `total_order` decimal(5,0) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(120) NOT NULL,
  `payment_date` datetime DEFAULT NULL,
  `order_status_id` int(11) NOT NULL,
  `order_status_name` varchar(120) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `address_id`, `firstname`, `lastname`, `email`, `tel`, `province_id`, `province_name`, `address_des`, `total_item`, `total_order`, `comment`, `payment_method_id`, `payment_method_name`, `payment_date`, `order_status_id`, `order_status_name`, `create_at`) VALUES
(5, 20, 3, 'Nara', 'Som', NULL, '0966890666', 6, 'Phnom Penh', '#123 St 129, SongKat Phone Penh Thmey, Khan SanSok, Phnom Penh', 2, 1138, '', 1, 'Cash On Delivery', NULL, 1, 'Pending', '2023-05-23 15:02:53'),
(6, 20, 3, 'Nara', 'Som', NULL, '0966890666', 6, 'Phnom Penh', '#123 St 129, SongKat Phone Penh Thmey, Khan SanSok, Phnom Penh', 4, 4836, '', 1, 'Cash On Delivery', NULL, 1, 'Pending', '2023-05-23 15:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` decimal(6,0) NOT NULL DEFAULT 0,
  `quantity` int(5) NOT NULL DEFAULT 0,
  `total` decimal(6,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_product_id`, `order_id`, `product_id`, `product_name`, `price`, `quantity`, `total`) VALUES
(7, 5, 15, 'LENOVO IDEAPAD 3 14IAU7 (I5 1235U / 8GB / SSD 512GB M2 PCIE / 14\"FHD )', 569, 2, 0),
(8, 6, 14, 'MACBOOK AIR 13 ( M1 CHIP / 16GB / SSD 256GB /13.3)', 1200, 1, 0),
(9, 6, 13, 'LENOVO THINKPAD E14 G4 (I5 1235U / 8GB / SSD 512GB M2 PCIE / 14\"FHD )', 1212, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `code` int(60) NOT NULL,
  `status` tinyint(4) DEFAULT 1,
  `description` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `name`, `code`, `status`, `description`, `create_at`) VALUES
(1, 'Pending', 0, 1, 'Your order has been placed successfully! Thanks for shopping with us', '2023-04-24 13:03:34'),
(2, 'Preparing order', 0, 1, ' We re processing your order. We will SMS you an update when it is ready for delivery.', '2023-04-24 13:03:34'),
(3, 'Packed', 0, 1, 'Your order has been packed.', '2023-04-24 13:03:34'),
(4, 'Shipped', 0, 1, 'Get excited! Your order has been shipped!', '2023-04-24 13:03:34'),
(5, 'Delivered', 0, 1, 'Your order is complete. We hope to see you shopping with us again soon!', '2023-04-24 13:03:34'),
(6, 'Canceled', 0, 1, 'Your order has been canceled.', '2023-04-24 13:03:34'),
(7, 'Phone denied', 0, 1, 'We could not reach you at the moment! Please contact us back.', '2023-04-24 13:03:34'),
(8, 'Store pick up', 0, 1, 'Your order is ready for store pickup!', '2023-04-24 13:03:34');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_method_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `code` varchar(60) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_method_id`, `name`, `code`, `image`, `description`, `create_at`) VALUES
(1, 'Cash On Delivery', 'cod', NULL, NULL, '2023-04-24 12:48:52'),
(2, 'ABA Pay', 'aba_pay', NULL, NULL, '2023-04-24 12:48:52'),
(3, 'Wing', 'wing', NULL, NULL, '2023-04-24 12:48:52'),
(4, 'ACLEDA', 'ac', NULL, NULL, '2023-04-24 12:48:52'),
(5, 'Chip Mong Bank', 'ac', NULL, NULL, '2023-04-24 12:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `price` decimal(6,0) NOT NULL,
  `quantity` int(6) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `create_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_id`, `name`, `barcode`, `price`, `quantity`, `image`, `description`, `status`, `create_at`, `create_by`) VALUES
(2, 1, 'Macbook Pro 2020', '', 2990, 20, '', 'Macbook Pro 2020 RAM 8GB, SSD 1TB', 1, '2023-04-25 14:08:16', NULL),
(3, 1, 'Macbook Pro 2021', '', 2200, 10, '', 'Macbook Pro 2020 RAM 8GB, SSD 521TB', 1, '2023-04-25 14:08:16', NULL),
(4, 1, 'Lenevo 2022', '', 2300, 10, '', 'Macbook Pro 2020 RAM 8GB, SSD 521TB', 1, '2023-04-25 14:08:16', NULL),
(5, 2, 'Dell 2000 4GB 512 SSD', '101', 1000, 4, '', 'Details : Dell 2000 4GB 512 SSD', 1, '2023-05-08 14:27:56', 1),
(6, 2, 'Dell 2012 8GB 1T SSD', '102', 2000, 6, NULL, 'Details : Dell 2012 8GB 512 SSD', 0, '2023-05-08 14:38:14', 1),
(13, 3, 'LENOVO THINKPAD E14 G4 (I5 1235U / 8GB / SSD 512GB M2 PCIE / 14\"FHD )', '12', 1212, 10, 'ba9dffbf17e34d3ff4aa5718cc5b366f', '-CPU: Intel® Core™ i5-1235U Processor (Cores10,Threads12,  3.30GHz Up to 4.40GHz)\r\n       -RAM: 8GB DDR4 3200MHz\r\n       -Storage: SSD 512GB M2 PCIE\r\n       -Optical Drive: N/A\r\n       -Graphic: Intel® Iris® Xe Graphics\r\n       -Display : 14\"FHD(1920 x 1080)  anti-glare, 250 nits', 1, '2023-05-15 14:48:29', 1),
(14, 1, 'MACBOOK AIR 13 ( M1 CHIP / 16GB / SSD 256GB /13.3)', '1009', 1200, 9, '6904bec240b4c027caed6845170790d3', '- CPU: Apple M1 Chip 8-Core CPU, 7-Core GPU, and 16-Core Neural Engine', 1, '2023-05-15 14:58:50', 1),
(15, 3, 'LENOVO IDEAPAD 3 14IAU7 (I5 1235U / 8GB / SSD 512GB M2 PCIE / 14\"FHD )', '1010', 569, 7, '4e667437a7d202b16c6b8a39362a64f8', '- CPU: Intel® Core™ i5-1235U Processor (Cores10,Threads12,  3.30GHz Up to 4.40GHz)', 1, '2023-05-15 14:59:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `order_number` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53'),
(5, 'Cambodia Provinces Delivery Fee', 'All Cambodia Provinces', '2019-10-24 17:13:30', '2016-12-23 01:52:39'),
(6, 'Phnom Penh', 'Delivery in Phnom Penh', '2019-11-05 14:44:42', '2019-08-03 10:00:22'),
(7, 'Oddar Meancheay (Kerry)', 'Oddar Meancheay', '2019-11-07 14:09:32', '2019-10-24 17:11:46'),
(8, 'Oddar Meancheay (Other )', 'Oddar Meancheay', '2019-11-07 14:09:16', '2019-10-24 17:20:02'),
(9, 'Battambang', 'Battambang', '0000-00-00 00:00:00', '2019-11-07 14:05:05'),
(10, 'Kampong Cham', 'Kampong Cham', '0000-00-00 00:00:00', '2019-11-07 14:05:22'),
(11, 'Kampong Chhnang', 'Kampong Chhnang', '0000-00-00 00:00:00', '2019-11-07 14:05:38'),
(12, 'Kampong Som', 'Kampong Som', '0000-00-00 00:00:00', '2019-11-07 14:05:54'),
(13, 'Kampong Speu', 'Kampong Speu', '0000-00-00 00:00:00', '2019-11-07 14:06:07'),
(14, 'Kampong Thom', 'Kampong Thom', '0000-00-00 00:00:00', '2019-11-07 14:06:19'),
(15, 'Kampot', 'Kampot', '0000-00-00 00:00:00', '2019-11-07 14:06:31'),
(16, 'Kandal', 'Kandal', '0000-00-00 00:00:00', '2019-11-07 14:06:44'),
(17, 'Kaoh Kong', 'Kaoh Kong', '0000-00-00 00:00:00', '2019-11-07 14:06:58'),
(18, 'Keb', 'Keb', '0000-00-00 00:00:00', '2019-11-07 14:07:10'),
(19, 'Kratie', 'Kratie', '0000-00-00 00:00:00', '2019-11-07 14:07:21'),
(20, 'Mondul Kiri', 'Mondul Kiri', '0000-00-00 00:00:00', '2019-11-07 14:07:33'),
(21, 'Pailin', 'Pailin', '0000-00-00 00:00:00', '2019-11-07 14:09:47'),
(22, 'Preah Seihanu', 'Preah Seihanu (Kompong Som or Sihanoukville)', '0000-00-00 00:00:00', '2019-11-07 14:10:22'),
(23, 'Preah Vihear', 'Preah Vihear', '0000-00-00 00:00:00', '2019-11-07 14:10:36'),
(24, 'Prey Veng', 'Prey Veng', '0000-00-00 00:00:00', '2019-11-07 14:10:54'),
(25, 'Pursat', 'Pursat', '0000-00-00 00:00:00', '2019-11-07 14:11:11'),
(26, 'Ratanak Kiri', 'Ratanak Kiri', '0000-00-00 00:00:00', '2019-11-07 14:11:27'),
(27, 'Siemreap', 'Siemreap', '0000-00-00 00:00:00', '2019-11-07 14:11:40'),
(28, 'Stung Treng', 'Stung Treng', '0000-00-00 00:00:00', '2019-11-07 14:11:53'),
(29, 'Svay Rieng', 'Svay Rieng', '0000-00-00 00:00:00', '2019-11-07 14:12:08'),
(30, 'Takeo', 'Takeo', '0000-00-00 00:00:00', '2019-11-07 14:12:25'),
(31, 'Banteay Meanchey', 'Banteay Meanchey', '0000-00-00 00:00:00', '2019-11-07 14:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(120) NOT NULL,
  `lastname` varchar(120) NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`, `create_at`) VALUES
(1, 20, 12, '2023-05-22 16:29:10'),
(2, 20, 14, '2023-05-22 16:29:10'),
(3, 20, 15, '2023-05-22 16:29:10'),
(4, 29, 12, '2023-05-22 16:29:10'),
(5, 29, 14, '2023-05-22 16:29:10'),
(6, 29, 15, '2023-05-22 16:29:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
