-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2020 at 02:51 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jiokisancrmweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(75) NOT NULL,
  `last_name` varchar(75) NOT NULL,
  `email_address` varchar(75) DEFAULT NULL,
  `password` varchar(75) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email_address`, `password`, `created_time`) VALUES
(1, 'Akshay', 'Dusane', 'akshay.dusane@ril.com', '$2a$10$6z6f0t8ESznMTViCdMYclexhAdDRwTtjne2e0E.nqqlb5ojR/fFeK', '2020-03-05 17:52:44'),
(3, 'Sachin', 'Tendulkar', 'sachin@example.com', '$2a$10$nLwKs36O0zzusprv7BdKMOo8Xn31lE3Wp67sdqqQ/t6detzBa2B7q', '2020-03-06 17:06:42'),
(4, 'Sachin1', 'Tendulka12r', 'sachi12n@example.com', '$2a$10$4y9ivYVNiyNMJVU0flH0Ee45PGROf2pSrQ/thte4ngvH8lzUaH7M6', '2020-03-06 19:16:09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
