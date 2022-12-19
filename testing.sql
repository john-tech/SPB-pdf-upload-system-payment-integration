-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 12:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `map_data`
--

CREATE TABLE `map_data` (
  `id` int(11) NOT NULL,
  `miles` varchar(222) NOT NULL,
  `f_name` varchar(244) NOT NULL,
  `email_add` varchar(244) NOT NULL,
  `p_no` varchar(244) NOT NULL,
  `coun` varchar(244) NOT NULL,
  `pick_add` varchar(244) NOT NULL,
  `pick_add_line` varchar(244) NOT NULL,
  `pick_city` varchar(244) NOT NULL,
  `pick_zip` varchar(244) NOT NULL,
  `drop_add_line` varchar(244) NOT NULL,
  `drop_city` varchar(244) NOT NULL,
  `drop_zip` varchar(244) NOT NULL,
  `rec_name` varchar(244) NOT NULL,
  `rec_email` varchar(244) NOT NULL,
  `rec_con_numb` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map_data`
--

INSERT INTO `map_data` (`id`, `miles`, `f_name`, `email_add`, `p_no`, `coun`, `pick_add`, `pick_add_line`, `pick_city`, `pick_zip`, `drop_add_line`, `drop_city`, `drop_zip`, `rec_name`, `rec_email`, `rec_con_numb`) VALUES
(59, '2,541 mi', 'Asif Aslam', 'asif@gmail.com', '033413319999', 'pakistan', 'xyz', '13', 'karachi', '123123', 'Isla', 'Islamabad', '88550', 'asif', 'asif@gmail.com', '03341331990'),
(66, '', 'asif', 'asif@gmail.com', '033413319999', 'pakistan', 'usa', '1 Apple Park Way, Cupertino, CA, USA', '', '', '', '', '', '', '', ''),
(67, '', '', '', '', '', '', '', '', '', '225 Liberty Street, New York, NY, USA', 'isl', '45687', 'asif', 'asif@gmail.com', '03341331990'),
(68, '', 'aa', 'asif@gmail.com', '033413319999', 'pakistan', 'xyz', '2', '', '', '', '', '', '', '', ''),
(69, '', 'aa', 'asif@gmail.com', '033413319999', 'pakistan', 'xyz', '225 Liberty Street, New York, NY, USA', '', '', '', '', '', '', '', ''),
(70, '', 'Asif Aslam', 'asif@gmail.com', '033413319999', 'pakistan', 'xyz', '112 Ocean Avenue, Amityville, NY, USA', 'karachi', '123123', '112 Ocean Avenue, Amityville, NY, USA', 'isl', '45687', '1', 'asif@gmail.com', '03341331990'),
(71, '', '11', '', '', '', '', '261 5th Avenue, New York, NY, USA', '', '', '250 Vesey Street, New York, NY, USA', '', '', '', '', ''),
(72, '', '', '', '', '', '', '1585 Charleston Rd, Mountain View, CA, USA', '', '', '420 Kent Avenue, Brooklyn, NY, USA', '', '', '', '', ''),
(73, '', 'Asif Aslam', 'zohaib@gmail.com', '033413319999', 'pakistan', 'xyz', '261 5th Avenue, New York, NY, USA', 'karachi', '123123', '', '', '', '', '', ''),
(74, '', '', '', '', '', '', '', '', '', '112 Ocean Avenue, Amityville, NY, USA', 'Islamabad', '32', 'asif', '', '03341331990'),
(75, '', 'Ali', 'Ali@gmail.com', '03344325448', 'usa', 'usa new york', '', '', '', '', '', '', '', '', ''),
(76, '', '', '', '', '', '', 'Karachi Street, West Bloomfield Township, MI, USA', '', '', '', '', '', '', '', ''),
(77, '2,932 mi', 'ali', 'ali@gmail.com', '03341331888', 'sua', 'usa street', '388 Greenwich Street, New York, NY, USA', 'karachi', '123123', 'Eastridge Mall, San Jose, CA, USA', 'Islamabad', '45687', 'asif', 'asuf@gmail.com', '1231231231'),
(78, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '', '1', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_item_name` varchar(250) NOT NULL,
  `order_item_quantity` int(11) NOT NULL,
  `order_item_price` double(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `order_item_name`, `order_item_quantity`, `order_item_price`) VALUES
(1, 1, 'T-shirt 3', 1, 400.00),
(2, 2, 'T-shirt 2', 1, 460.00),
(3, 2, 'T-shirt 1', 1, 350.00),
(4, 3, 'T-shirt 1', 1, 350.00),
(5, 4, 'T-shirt 2', 1, 460.00),
(6, 5, 'T-shirt 2', 1, 460.00),
(7, 6, 'T-shirt 7', 1, 270.00),
(8, 6, 'T-shirt 3', 1, 400.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `order_id` int(11) NOT NULL,
  `order_number` int(11) NOT NULL,
  `order_total_amount` double(12,2) NOT NULL,
  `transaction_id` varchar(200) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_expiry_month` varchar(30) NOT NULL,
  `card_expiry_year` varchar(30) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `card_holder_number` varchar(250) NOT NULL,
  `email_address` varchar(250) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(250) NOT NULL,
  `customer_pin` varchar(30) NOT NULL,
  `customer_state` varchar(250) NOT NULL,
  `customer_country` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `order_number`, `order_total_amount`, `transaction_id`, `card_cvc`, `card_expiry_month`, `card_expiry_year`, `order_status`, `card_holder_number`, `email_address`, `customer_name`, `customer_address`, `customer_city`, `customer_pin`, `customer_state`, `customer_country`) VALUES
(6, 153915, 670.00, 'txn_1GJJIMKQPG65jWaj9Tbkvowg', 856, '05', '2024', 'succeeded', '4242424242424242', 'johnsmith@gmail.com', 'John Smith', '2528 Langtown Road', 'Toledo', '43602', 'OH', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `payer_id` varchar(255) NOT NULL,
  `payer_email` varchar(255) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `payer_id`, `payer_email`, `amount`, `currency`, `payment_status`) VALUES
(1, 'PAYID-MON2GII63D05161R1685435T', 'QN5G94MCHK5V2', 'sb-hlp3d515227@personal.example.com', 20.00, 'USD', 'approved'),
(2, 'PAYID-MON2G4Y5FG659090U952824K', 'QN5G94MCHK5V2', 'sb-hlp3d515227@personal.example.com', 210.00, 'USD', 'approved'),
(3, 'PAYID-MOOMP5I8B324173MH5694401', 'QN5G94MCHK5V2', 'sb-hlp3d515227@personal.example.com', 100.00, 'USD', 'approved'),
(4, 'PAYID-MOQJMCI78R10680137231358', 'QN5G94MCHK5V2', 'sb-hlp3d515227@personal.example.com', 20.00, 'USD', 'approved'),
(5, 'PAYID-MOQKGOY37W47618LK571080E', 'QN5G94MCHK5V2', 'sb-hlp3d515227@personal.example.com', 20.00, 'USD', 'approved'),
(6, 'PAYID-MOQK5PQ89H23188TN0672537', 'AY22SVNNTUKQW', 'sb-svrtq668012@personal.example.com', 20.00, 'USD', 'approved'),
(7, 'PAYID-MOQLGFA0R726569RP634663V', 'AY22SVNNTUKQW', 'sb-svrtq668012@personal.example.com', 20.00, 'USD', 'approved'),
(8, 'PAYID-MOQLGFA0R726569RP634663V', 'AY22SVNNTUKQW', 'sb-svrtq668012@personal.example.com', 20.00, 'USD', 'approved'),
(9, 'PAYID-MOQLIPY0X4476322L0414838', 'AY22SVNNTUKQW', 'sb-svrtq668012@personal.example.com', 20.00, 'USD', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(5) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `interval` enum('D','W','M','Y') COLLATE utf8_unicode_ci NOT NULL COMMENT 'D=Days (1 to 90) | W=Weeks (1 to 52) | M=Months (1 to 24) | Y=Years (1 to 5)',
  `interval_count` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_description` text NOT NULL,
  `post_status` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_description`, `post_status`) VALUES
(19, 'abc', 'xyz', 'draft'),
(18, 'asif', 'asif', 'draft'),
(17, 'abcs', 'xyzs', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'T-shirt 1', 'image-1.jpg', 350.00),
(2, 'T-shirt 2', 'image-2.jpg', 460.00),
(3, 'T-shirt 3', 'image-3.png', 400.00),
(4, 'T-shirt 4', 'image-4.jpg', 530.00),
(5, 'T-shirt 5', 'image-5.jpg', 400.00),
(6, 'T-shirt 6', 'image-6.jpg', 320.00),
(7, 'T-shirt 7', 'image-7.jpg', 270.00);

-- --------------------------------------------------------

--
-- Table structure for table `upload_pdf`
--

CREATE TABLE `upload_pdf` (
  `id` int(222) NOT NULL,
  `pdfs` varchar(222) NOT NULL,
  `book_price` varchar(333) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `upload_pdf`
--

INSERT INTO `upload_pdf` (`id`, `pdfs`, `book_price`, `user_id`) VALUES
(60, '89837-ICT1_JULY2014_Color.pdf', '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `amount`) VALUES
(93, 'asif', 'asif@gmail.com', 'ce0b996aa0b7d64169a4b8ffeaf878c5', '4000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map_data`
--
ALTER TABLE `map_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_pdf`
--
ALTER TABLE `upload_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map_data`
--
ALTER TABLE `map_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `upload_pdf`
--
ALTER TABLE `upload_pdf`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
