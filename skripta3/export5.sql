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

-- Dumping data for table sql_stefan.customer_tbl: ~15 rows (approximately)
DELETE FROM `customer_tbl`;
/*!40000 ALTER TABLE `customer_tbl` DISABLE KEYS */;
INSERT INTO `customer_tbl` (`CUST_ID`, `CUST_NAME`, `CUST_ADDRESS`, `CUST_CITY`, `CUST_STATE`, `CUST_ZIP`, `CUST_PHONE`, `CUST_FAX`, `CUST_GENDER`) VALUES
	('090', 'WENDY WOLF', '3345 GATEWAY DR', 'INDIANAPOLIS', 'IN', '46224', '3172913421', NULL, 'f'),
	('109', 'NANCY BUNKER', 'APT A 4556 WATERWAY', 'BROAD RIPPLE', 'IN', '47950', '3174262323', NULL, 'f'),
	('12', 'MARYS GIFT SHOP', '435 MAIN ST', 'DANVILLE', 'IL', '47978', '3178567221', '3178523434', NULL),
	('21', 'MORGANS CANDIES AND TREATS', '5657 W TENTH ST', 'INDIANAPOLIS', 'IN', '46234', '3172714398', NULL, NULL),
	('221', 'RYANS STUFF', '2337 S SHELBY ST', 'INDIANAPOLIS', 'IN', '47834', '3175634402', NULL, NULL),
	('232', 'LESLIE GLEASON', '798 HARDAWAY DR', 'INDIANAPOLIS', 'IN', '47856', '3175457690', NULL, 'f'),
	('287', 'GAVINS PLACE', '9880 ROCKVILLE RD', 'INDIANAPOLIS', 'IN', '46244', '5172719991', '5172719992', NULL),
	('288', 'HOLLYS GAMEARAMA', '567 US 31 SOUTH', 'WHITELAND', 'IN', '49980', '3178879023', NULL, NULL),
	('333', 'JASONS AND DALLAS GOODIES', 'LAFAYETTE SQ MALL', 'INDIANAPOLIS', 'IN', '46222', '3172978886', '3172978887', NULL),
	('345', 'JOHN DOBKO', 'RR3 BOX 76', 'LEBANON', 'IN', '49967', '7658970090', NULL, 'm'),
	('43', 'SCHYLERS NOVELTIES', '17 MAPLE ST', 'LEBANON', 'IN', '48990', '3174346758', NULL, NULL),
	('432', 'SCOTTYS MARKET', 'RR2 BOX 173', 'BROWNSBURG', 'IN', '45687', '3178529835', '3178529836', NULL),
	('560', 'ANDYS CANDIES', 'RR 1 BOX 34', 'NASHVILLE', 'IN', '48756', '8123239871', NULL, NULL),
	('590', 'HEATHERS FEATHERS AND THINGS', '4090 N SHADELAND AVE', 'INDIANAPOLIS', 'IN', '43278', '3175456768', NULL, NULL),
	('610', 'REGANS HOBBIES INC', '451 GREEN ST', 'PLAINFIELD', 'IN', '46818', '3178393441', '3178399090', NULL);
/*!40000 ALTER TABLE `customer_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.employee_pay_tbl
CREATE TABLE IF NOT EXISTS `employee_pay_tbl` (
  `EMP_ID` varchar(10) NOT NULL,
  `POS` varchar(20) DEFAULT NULL,
  `DATE_HITE` date NOT NULL,
  `PAY_RATE` decimal(6,2) NOT NULL,
  `SALARY` decimal(8,2) NOT NULL,
  `BONUS` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`),
  CONSTRAINT `EMP_ID_FK` FOREIGN KEY (`EMP_ID`) REFERENCES `employee_tbl` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.employee_pay_tbl: ~6 rows (approximately)
DELETE FROM `employee_pay_tbl`;
/*!40000 ALTER TABLE `employee_pay_tbl` DISABLE KEYS */;
INSERT INTO `employee_pay_tbl` (`EMP_ID`, `POS`, `DATE_HITE`, `PAY_RATE`, `SALARY`, `BONUS`) VALUES
	('213764555', 'SALES MANAGER', '1994-08-14', 12.50, 30000.00, 2000.00),
	('220984332', 'SHIPPER', '1996-07-22', 11.00, 27500.00, NULL),
	('311549902', 'MARKETING', '1989-05-23', 15.00, 40000.00, NULL),
	('313782439', 'SALESMAN', '1997-06-28', 13.75, 20000.00, 1000.00),
	('442346889', 'TEAM LEADER', '1990-06-17', 14.75, 25000.00, NULL),
	('443679012', 'SHIPPER', '1991-01-14', 15.00, 38500.00, NULL);
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

-- Dumping data for table sql_stefan.employee_tbl: ~6 rows (approximately)
DELETE FROM `employee_tbl`;
/*!40000 ALTER TABLE `employee_tbl` DISABLE KEYS */;
INSERT INTO `employee_tbl` (`emp_id`, `LAST_NAME`, `FIRST_NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `PHONE`) VALUES
	('213764555', 'GLASS', 'BRANDON', '1710 MAIN ST', 'WHITELAND', 'IN', '47885', '3178984321'),
	('220984332', 'WALLACE', 'MARIAH', '7889 KEYSTONE AVE', 'INDIANAPOLIS', 'IN', '46741', '3173325986'),
	('311549902', 'STEPHENS', 'TINA', 'RR 3 BOX 17A', 'GREENWOOD', 'IN', '47890', '3178784465'),
	('313782439', 'GLASS', 'JACOB', '3789 WHITE RIVER BLVD', 'INDIANAPOLIS', 'IN', '45734', '3175457676'),
	('442346889', 'PLEW', 'LINDA', '3301 BEACON', 'INDIANAPOLIS', 'IN', '46224', '3172978990'),
	('443679012', 'SPURGEON', 'TIFFANY', '5 GEORGE COURT', 'INDIANAPOLIS', 'IN', '46234', '3175679007');
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

-- Dumping data for table sql_stefan.orders_tbl: ~9 rows (approximately)
DELETE FROM `orders_tbl`;
/*!40000 ALTER TABLE `orders_tbl` DISABLE KEYS */;
INSERT INTO `orders_tbl` (`ORD_NUM`, `CUST_ID`, `PROD_ID`, `QTY`, `ORD_DATE`) VALUES
	('16C17', '090', '222', 2, '1999-10-17'),
	('18D778', '287', '90', 10, '1999-10-17'),
	('23E934', '432', '13', 20, '1999-10-15'),
	('32A132', '43', '222', 27, '1999-10-10'),
	('32A133', '43', '13', 34, '1999-11-20'),
	('56A901', '232', '11235', 1, '1999-10-22'),
	('56A902', '232', '11235', 7, '1999-11-02'),
	('56A917', '12', '90', 100, '1999-09-30'),
	('56A918', '12', '90', 41, '1999-11-15');
/*!40000 ALTER TABLE `orders_tbl` ENABLE KEYS */;

-- Dumping structure for table sql_stefan.products_tbl
CREATE TABLE IF NOT EXISTS `products_tbl` (
  `PROD_ID` varchar(10) NOT NULL,
  `PROD_NAME` varchar(40) NOT NULL,
  `PRICE` decimal(6,2) NOT NULL,
  PRIMARY KEY (`PROD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table sql_stefan.products_tbl: ~11 rows (approximately)
DELETE FROM `products_tbl`;
/*!40000 ALTER TABLE `products_tbl` DISABLE KEYS */;
INSERT INTO `products_tbl` (`PROD_ID`, `PROD_NAME`, `PRICE`) VALUES
	('11235', 'WITCHES COSTUME', 29.99),
	('119', 'ASSORTED MASKS', 4.95),
	('13', 'FALSE PARAFFIN TEETH', 1.10),
	('15', 'ASSORTED COSTUMES', 10.00),
	('222', 'PLASTIC PUMPKIN 18 INCH', 7.75),
	('301', 'FIREMAN COSTUME', 29.99),
	('302', 'POLICEMAN COSTUME', 29.99),
	('6', 'PUMPKIN CANDY', 1.45),
	('87', 'PLASTIC SPIDERS', 1.05),
	('9', 'CANDY CORN', 1.35),
	('90', 'LIGHTED LANTERNS', 14.50);
/*!40000 ALTER TABLE `products_tbl` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
