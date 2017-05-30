/*
SQLyog Community v12.2.3 (64 bit)
MySQL - 10.1.21-MariaDB : Database - linemap
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`linemap` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `linemap`;

/*Table structure for table `mapdetails` */

DROP TABLE IF EXISTS `mapdetails`;

CREATE TABLE `mapdetails` (
  `mapDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `rowNumber` int(5) NOT NULL,
  `year` int(4) NOT NULL,
  `score` int(4) NOT NULL,
  PRIMARY KEY (`mapDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2439 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `mapdetails` */

insert  into `mapdetails`(`mapDetailsId`,`rowNumber`,`year`,`score`) values 
(2395,1,1990,20),
(2396,1,1991,21),
(2397,1,1992,31),
(2398,1,1993,49),
(2399,1,1995,21),
(2400,1,1996,50),
(2401,1,1997,52),
(2402,1,1998,53),
(2403,1,1999,54),
(2404,1,1999,62),
(2405,1,2000,63),
(2406,2,1991,10),
(2407,2,1992,12),
(2408,2,1994,16),
(2409,2,1993,37),
(2410,2,1995,18),
(2411,2,1996,24),
(2412,2,1997,21),
(2413,2,1998,23),
(2414,2,1999,31),
(2415,2,1999,32),
(2416,2,2000,22),
(2417,3,1999,62),
(2418,3,1991,21),
(2419,3,1992,11),
(2420,3,1993,23),
(2421,3,1995,11),
(2422,3,1996,30),
(2423,3,1997,42),
(2424,3,1998,23),
(2425,3,1991,34),
(2426,3,2000,63),
(2427,3,2003,12),
(2428,4,1993,23),
(2429,4,1991,11),
(2430,4,1992,31),
(2431,4,1994,11),
(2432,4,1996,60),
(2433,4,1997,72),
(2434,4,1998,23),
(2435,4,1999,44),
(2436,4,2001,21),
(2437,4,2000,63),
(2438,4,2001,21);

/* Procedure structure for procedure `addMapDetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `addMapDetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addMapDetails`(in rowNo int(5),in pYear int(4),in pScore int(4))
BEGIN
	insert into `mapdetails`(`rowNumber`,`year`,`score`)
	values(rowNo,pYear,pScore);
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `deleteMapDetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `deleteMapDetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteMapDetails`()
BEGIN
	delete from `mapdetails`;
		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getMapDetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `getMapDetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getMapDetails`()
BEGIN
	select min(`year`) as minYear,max(`year`) as maxYear from `mapdetails`;
	
	SELECT `rowNumber`,`year`,SUM(`score`) as score FROM `mapdetails` GROUP BY `year`,`rowNumber` ORDER BY `rowNumber`,`year`;
	
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
