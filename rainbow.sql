-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 04:14 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rainbow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `cms_id` int(10) UNSIGNED NOT NULL,
  `id` varchar(100) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `jobtitle` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `address` varchar(3000) DEFAULT NULL,
  `note` text,
  `date_entered` datetime NOT NULL,
  `created_by` varchar(200) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(200) NOT NULL,
  `fk_tenant_id` int(11) NOT NULL,
  `fk_tenant_token` varchar(18) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`cms_id`, `id`, `fullname`, `phone`, `email`, `company`, `jobtitle`, `website`, `address`, `note`, `date_entered`, `created_by`, `last_modified`, `last_modified_by`, `fk_tenant_id`, `fk_tenant_token`, `status`) VALUES
(1, '12838431', 'HAqq', '07037716490', 'haqq4peace@gmail.com', 'ww', 'hhh', 'hhh', 'Haqq', NULL, '2018-03-27 00:34:19', 'haqq4peace@gmail.com', '2018-03-26 23:34:19', '', 1, '046795f1bd78182179', 'active'),
(2, '16933022', 'SAMIU SALIHU', '07037716490', '4277haqq@gmail.com', 'ww', 'hhh', 'dff', 'Haqq', NULL, '2018-04-11 15:09:54', 'cyberhaqq@naij.com', '2018-04-11 14:09:54', '', 10, '5c1ee87a923d147887', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `group_description` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_modified_by` varchar(50) NOT NULL,
  `fk_tenant_id` int(11) NOT NULL,
  `fk_tenant_token` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `group_memberid` int(11) NOT NULL,
  `fkgroups_groupid` int(11) NOT NULL,
  `fkgroups_groupname` varchar(100) NOT NULL,
  `fkcms_cid` varchar(100) NOT NULL,
  `fk_tenant_id` int(11) NOT NULL,
  `fk_tenant_token` varchar(18) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenant_id` int(10) UNSIGNED NOT NULL,
  `tenant_name` varchar(100) NOT NULL,
  `tenant_phone` varchar(100) NOT NULL,
  `tenant_email` varchar(60) NOT NULL,
  `tenant_pass` char(40) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `tenant_pic` varchar(10000) NOT NULL,
  `tenant_status` char(10) DEFAULT NULL,
  `tenant_registration_date` datetime NOT NULL,
  `tenant_expiry_date` varchar(100) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_modified_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenant_id`, `tenant_name`, `tenant_phone`, `tenant_email`, `tenant_pass`, `verified`, `tenant_pic`, `tenant_status`, `tenant_registration_date`, `tenant_expiry_date`, `last_modified`, `last_modified_by`) VALUES
(1, 'Samiu Salihu', '07037716490', 'haqq4peace@gmail.com', 'samiu987', 1, 'gg.jpg', 'TRIAL', '2018-03-27 00:33:12', '2018-04-11 00:33:12', '2018-03-26 23:33:12', ''),
(2, '', '', 'cyberhaqq@yahoo.com', '2ddc3be2ac9d42c1056a07dabbe9dc090d46f12c', 0, '', 'TRIAL', '2018-03-30 06:43:59', '2018-04-14 06:43:59', '2018-03-30 05:43:59', ''),
(6, '', '', 'cyberhaqq@gmail.com', '2ddc3be2ac9d42c1056a07dabbe9dc090d46f12c', 0, '', 'TRIAL', '2018-03-30 06:50:30', '2018-04-14 06:50:30', '2018-03-30 05:50:30', ''),
(10, '', '', 'cyberhaqq@naij.com', '2ddc3be2ac9d42c1056a07dabbe9dc090d46f12c', 0, '', 'TRIAL', '2018-03-30 06:53:40', '2018-04-14 06:53:40', '2018-03-30 05:53:40', ''),
(11, '', '', 'cyberhaqq@naija.com', '2ddc3be2ac9d42c1056a07dabbe9dc090d46f12c', 0, '', 'TRIAL', '2018-03-30 06:54:34', '2018-04-14 06:54:34', '2018-03-30 05:54:34', ''),
(21, 'SAMIU SALIHU', '07037716490', 'realhaqq@yahoo.com', '2ddc3be2ac9d42c1056a07dabbe9dc090d46f12c', 0, '', 'TRIAL', '2018-04-01 07:42:49', '2018-04-16 07:42:49', '2018-04-01 06:42:49', '');

-- --------------------------------------------------------

--
-- Table structure for table `tenant_tokens`
--

CREATE TABLE `tenant_tokens` (
  `tenant_token_id` int(10) UNSIGNED NOT NULL,
  `fktk_tid` int(11) NOT NULL,
  `tenant_token` varchar(18) NOT NULL,
  `date_entered` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant_tokens`
--

INSERT INTO `tenant_tokens` (`tenant_token_id`, `fktk_tid`, `tenant_token`, `date_entered`) VALUES
(1, 1, '046795f1bd78182179', '2018-03-27 00:33:12'),
(2, 2, '4d418d31ced6104702', '2018-03-30 06:43:59'),
(5, 6, '81b61c8b94ea197411', '2018-03-30 06:50:30'),
(8, 10, '5c1ee87a923d147887', '2018-03-30 06:53:40'),
(9, 11, 'a36bf5a6bef7142985', '2018-03-30 06:54:34'),
(10, 12, 'b53781db891d155292', '2018-04-01 06:53:13'),
(11, 13, '8d422962762d112899', '2018-04-01 06:57:21'),
(12, 14, '5628bf7512f9174174', '2018-04-01 07:09:12'),
(13, 15, '1de0aa3a0353116902', '2018-04-01 07:10:36'),
(14, 16, 'ee1a62c2c4b8137082', '2018-04-01 07:21:55'),
(15, 20, '6041e2184835164743', '2018-04-01 07:25:00'),
(16, 21, '1f6264b52dd9157876', '2018-04-01 07:42:49');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `status`) VALUES
(1, '667tys6tge66tew6y6', 'unused'),
(2, '564646gghdshh44', 'unused');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`group_memberid`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`tenant_id`),
  ADD UNIQUE KEY `tenant_email` (`tenant_email`);

--
-- Indexes for table `tenant_tokens`
--
ALTER TABLE `tenant_tokens`
  ADD PRIMARY KEY (`tenant_token_id`),
  ADD UNIQUE KEY `tenant_token` (`tenant_token`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `cms_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `group_memberid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `tenant_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tenant_tokens`
--
ALTER TABLE `tenant_tokens`
  MODIFY `tenant_token_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
