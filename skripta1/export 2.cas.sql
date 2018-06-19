-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.17-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for sql_stefan
DROP DATABASE IF EXISTS `sql_stefan`;
CREATE DATABASE IF NOT EXISTS `sql_stefan` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sql_stefan`;

-- Dumping structure for table sql_stefan.customer_tbl
DROP TABLE IF EXISTS `customer_tbl`;
CREATE TABLE IF NOT EXISTS `customer_tbl` (
  `CUST_ID` varchar(10) NOT NULL,
  `CUST_NAME` varchar(25) DEFAULT NULL,
  `CUST_ADDRESS` varchar(30) NOT NULL,
  `CUST_CITY` varchar(20) NOT NULL,
  `CUST_STATE` char(2) NOT NULL,
  `CUST_ZIP` int(5) NOT NULL,
  `CUST_PHONE` int(10) DEFAULT NULL,
  `CUST_FAX` int(10) DEFAULT NULL,
  `CUST_GENDER` enum('m','f') DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sql_stefan.employee_tbl
DROP TABLE IF EXISTS `employee_tbl`;
CREATE TABLE IF NOT EXISTS `employee_tbl` (
  `emp_id` varchar(10) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `ADDRESS` varchar(30) NOT NULL,
  `CITY` varchar(15) NOT NULL,
  `STATE` char(2) NOT NULL,
  `ZIP` int(5) NOT NULL,
  `PHONE` char(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table sql_stefan.products_tbl
DROP TABLE IF EXISTS `products_tbl`;
CREATE TABLE IF NOT EXISTS `products_tbl` (
  `PROD_ID` char(10) NOT NULL,
  `PROD_NAME` varchar(40) NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
