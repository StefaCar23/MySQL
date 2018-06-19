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
CREATE DATABASE IF NOT EXISTS `sql_stefan` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sql_stefan`;

-- Dumping structure for table sql_stefan.customer_tbl
CREATE TABLE IF NOT EXISTS `customer_tbl` (
  `CUST_ID` varchar(10) NOT NULL,
  `CUST_NAME` varchar(35) NOT NULL,
  `CUST_ADDRESS` varchar(40) NOT NULL,
  `CUST_CITY` varchar(20) NOT NULL,
  `CUST_STATE` char(2) NOT NULL,
  `CUST_ZIP` varchar(5) NOT NULL,
  `CUST_PHONE` varchar(10) DEFAULT NULL,
  `CUST_FAX` varchar(10) DEFAULT NULL,
  `CUST_GENDER` enum('m','f') DEFAULT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.customer_tbl: ~0 rows (approximately)
DELETE FROM `customer_tbl`;
/*!40000 ALTER TABLE `customer_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.employee_pay_tbl
CREATE TABLE IF NOT EXISTS `employee_pay_tbl` (
  `EMP_ID` varchar(10) NOT NULL,
  `POS` varchar(20) DEFAULT NULL,
  `DATE_HITE` date NOT NULL,
  `PAY_RATE` decimal(6,2) NOT NULL,
  `SALARY` decimal(8,2) NOT NULL,
  `BONUS` decimal(6,2) NOT NULL,
  PRIMARY KEY (`EMP_ID`),
  CONSTRAINT `EMP_ID_FK` FOREIGN KEY (`EMP_ID`) REFERENCES `employee_tbl` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.employee_pay_tbl: ~0 rows (approximately)
DELETE FROM `employee_pay_tbl`;
/*!40000 ALTER TABLE `employee_pay_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_pay_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.employee_tbl
CREATE TABLE IF NOT EXISTS `employee_tbl` (
  `emp_id` varchar(10) NOT NULL,
  `LAST_NAME` varchar(15) NOT NULL,
  `FIRST_NAME` varchar(15) NOT NULL,
  `ADDRESS` varchar(40) NOT NULL,
  `CITY` varchar(15) NOT NULL,
  `STATE` char(2) NOT NULL,
  `ZIP` varchar(5) NOT NULL,
  `PHONE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.employee_tbl: ~0 rows (approximately)
DELETE FROM `employee_tbl`;
/*!40000 ALTER TABLE `employee_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.orders_tbl
CREATE TABLE IF NOT EXISTS `orders_tbl` (
  `ORD_NUM` varchar(10) NOT NULL,
  `CUST_ID` varchar(10) NOT NULL,
  `PROD_ID` varchar(10) NOT NULL,
  `QTY` int(6) NOT NULL,
  `ORD_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ORD_NUM`),
  KEY `CUST_ID_FK` (`CUST_ID`),
  KEY `PROD_ID_FK` (`PROD_ID`),
  CONSTRAINT `CUST_ID_FK` FOREIGN KEY (`CUST_ID`) REFERENCES `customer_tbl` (`CUST_ID`),
  CONSTRAINT `PROD_ID_FK` FOREIGN KEY (`PROD_ID`) REFERENCES `products_tbl` (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.orders_tbl: ~0 rows (approximately)
DELETE FROM `orders_tbl`;
/*!40000 ALTER TABLE `orders_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.products_tbl
CREATE TABLE IF NOT EXISTS `products_tbl` (
  `PROD_ID` varchar(10) NOT NULL,
  `PROD_NAME` varchar(40) NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.products_tbl: ~0 rows (approximately)
DELETE FROM `products_tbl`;
/*!40000 ALTER TABLE `products_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_tbl` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
