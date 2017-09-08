/*
SQLyog Community
MySQL - 5.6.26 : Database - inmar_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `tbl_cat_subcats` */

DROP TABLE IF EXISTS `tbl_cat_subcats`;

CREATE TABLE `tbl_cat_subcats` (
  `cs_id` int(10) NOT NULL AUTO_INCREMENT,
  `cs_cat_id` int(10) NOT NULL,
  `cs_scat_id` int(10) NOT NULL,
  PRIMARY KEY (`cs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_cat_subcats` */

insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (1,1,3);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (2,1,13);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (3,2,4);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (4,3,7);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (5,4,11);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (6,5,8);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (7,6,9);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (8,7,5);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (9,8,2);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (10,8,10);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (11,8,12);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (12,9,6);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (13,10,1);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (16,12,17);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (17,12,18);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (18,13,19);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (19,13,20);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (20,14,21);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (21,14,22);
insert  into `tbl_cat_subcats`(`cs_id`,`cs_cat_id`,`cs_scat_id`) values (22,14,23);

/*Table structure for table `tbl_categories` */

DROP TABLE IF EXISTS `tbl_categories`;

CREATE TABLE `tbl_categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(250) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_categories` */

insert  into `tbl_categories`(`cat_id`,`cat_name`) values (1,'Audio Video');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (2,'Bakery Bread');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (3,'Bouquets and Cut Flowers');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (4,'Crackers');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (5,'Frozen Bake');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (6,'Frozen Shellfish');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (7,'Housewares');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (8,'Other Seafood');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (9,'Self Service Deli Cold');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (10,'Service Deli');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (11,'Cricket');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (12,'Cricket Grounds');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (13,'Test Cat 01 for test dept 01');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (14,'Test Cat 02 for test dept 01');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (15,'Test Cat 03 for test dept 01');
insert  into `tbl_categories`(`cat_id`,`cat_name`) values (16,'Test Cat 04 for test dept 01');

/*Table structure for table `tbl_departments` */

DROP TABLE IF EXISTS `tbl_departments`;

CREATE TABLE `tbl_departments` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(250) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_departments` */

insert  into `tbl_departments`(`dept_id`,`dept_name`) values (1,'Bakery');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (2,'Deli and Foodservice');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (3,'Floral');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (4,'Frozen');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (5,'GM');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (6,'Grocery');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (7,'Seafood');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (8,'Sports');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (9,'Test Dept 01');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (10,'Test Dept 02');
insert  into `tbl_departments`(`dept_id`,`dept_name`) values (11,'Test Dept 03');

/*Table structure for table `tbl_dept_cats` */

DROP TABLE IF EXISTS `tbl_dept_cats`;

CREATE TABLE `tbl_dept_cats` (
  `dc_id` int(10) NOT NULL AUTO_INCREMENT,
  `dc_dept_id` int(10) NOT NULL,
  `dc_cat_id` int(10) NOT NULL,
  PRIMARY KEY (`dc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_dept_cats` */

insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (1,1,2);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (2,2,9);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (3,2,10);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (4,3,3);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (5,4,5);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (6,5,1);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (7,5,7);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (8,6,4);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (9,7,6);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (10,7,8);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (16,8,12);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (17,9,13);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (18,9,14);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (19,9,15);
insert  into `tbl_dept_cats`(`dc_id`,`dc_dept_id`,`dc_cat_id`) values (20,9,16);

/*Table structure for table `tbl_dump` */

DROP TABLE IF EXISTS `tbl_dump`;

CREATE TABLE `tbl_dump` (
  `sku_id` int(10) DEFAULT NULL,
  `sku_name` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `department` varchar(250) DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `subcategory` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_dump` */

insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (1,'SKUDESC1','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (2,'SKUDESC2','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (3,'SKUDESC3','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (4,'SKUDESC4','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (5,'SKUDESC5','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (6,'SKUDESC6','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (7,'SKUDESC7','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (8,'SKUDESC8','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (9,'SKUDESC9','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (10,'SKUDESC10','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (11,'SKUDESC11','Permiter','Seafood','Other Seafood','All Other Seafood');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (12,'SKUDESC12','Permiter','Seafood','Other Seafood','Prepared Seafood Entrees');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (13,'SKUDESC13','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (14,'SKUDESC14','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (15,'SKUDESC15','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (16,'SKUDESC16','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (17,'SKUDESC17','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (18,'SKUDESC18','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (19,'SKUDESC19','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (20,'SKUDESC20','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (21,'SKUDESC21','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (22,'SKUDESC22','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (23,'SKUDESC23','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (24,'SKUDESC24','Permiter','Seafood','Other Seafood','All Other Seafood');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (25,'SKUDESC25','Permiter','Seafood','Other Seafood','Prepared Seafood Entrees');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (26,'SKUDESC26','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (27,'SKUDESC27','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (28,'SKUDESC28','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (29,'SKUDESC29','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (30,'SKUDESC30','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (31,'SKUDESC31','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (32,'SKUDESC32','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (33,'SKUDESC33','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (34,'SKUDESC34','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (35,'SKUDESC35','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (36,'SKUDESC36','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (37,'SKUDESC37','Permiter','Seafood','Other Seafood','All Other Seafood');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (38,'SKUDESC38','Permiter','Seafood','Other Seafood','Prepared Seafood Entrees');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (39,'SKUDESC39','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (40,'SKUDESC40','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (41,'SKUDESC41','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (42,'SKUDESC42','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (43,'SKUDESC43','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (44,'SKUDESC44','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (45,'SKUDESC45','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (46,'SKUDESC46','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (47,'SKUDESC47','Permiter','Seafood','Other Seafood','All Other Seafood');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (48,'SKUDESC48','Permiter','Seafood','Other Seafood','Prepared Seafood Entrees');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (49,'SKUDESC49','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (50,'SKUDESC50','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (51,'SKUDESC51','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (52,'SKUDESC52','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (53,'SKUDESC53','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (54,'SKUDESC54','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (55,'SKUDESC55','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (56,'SKUDESC56','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (57,'SKUDESC57','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (58,'SKUDESC58','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (59,'SKUDESC59','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (60,'SKUDESC60','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (61,'SKUDESC61','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (62,'SKUDESC62','Permiter','Seafood','Other Seafood','All Other Seafood');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (63,'SKUDESC63','Permiter','Seafood','Other Seafood','Prepared Seafood Entrees');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (64,'SKUDESC64','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (65,'SKUDESC65','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (66,'SKUDESC66','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (67,'SKUDESC67','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (68,'SKUDESC68','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (69,'SKUDESC69','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (70,'SKUDESC70','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (71,'SKUDESC71','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (72,'SKUDESC72','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (73,'SKUDESC73','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (74,'SKUDESC74','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (75,'SKUDESC75','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (76,'SKUDESC76','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (77,'SKUDESC77','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (78,'SKUDESC78','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (79,'SKUDESC79','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (80,'SKUDESC80','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (81,'SKUDESC81','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (82,'SKUDESC82','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (83,'SKUDESC83','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (84,'SKUDESC84','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (85,'SKUDESC85','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (86,'SKUDESC86','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (87,'SKUDESC87','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (88,'SKUDESC88','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (89,'SKUDESC89','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (90,'SKUDESC90','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (91,'SKUDESC91','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (92,'SKUDESC92','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (93,'SKUDESC93','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (94,'SKUDESC94','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (95,'SKUDESC95','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (96,'SKUDESC96','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (97,'SKUDESC97','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (98,'SKUDESC98','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (99,'SKUDESC99','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (100,'SKUDESC100','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (101,'SKUDESC101','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (102,'SKUDESC102','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (103,'SKUDESC103','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (104,'SKUDESC104','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (105,'SKUDESC105','Permiter','Seafood','Other Seafood','Salads');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (106,'SKUDESC106','Permiter','Bakery','Bakery Bread','Bagels');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (107,'SKUDESC107','Permiter','Deli and Foodservice','Self Service Deli Cold','Beverages');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (108,'SKUDESC108','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (109,'SKUDESC109','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (110,'SKUDESC110','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (111,'SKUDESC111','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (112,'SKUDESC112','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (113,'SKUDESC113','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (114,'SKUDESC114','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (115,'SKUDESC115','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (116,'SKUDESC116','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (117,'SKUDESC117','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (118,'SKUDESC118','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (119,'SKUDESC119','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (120,'SKUDESC120','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (121,'SKUDESC121','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (122,'SKUDESC122','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (123,'SKUDESC123','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (124,'SKUDESC124','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (125,'SKUDESC125','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (126,'SKUDESC126','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (127,'SKUDESC127','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (128,'SKUDESC128','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (129,'SKUDESC129','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (130,'SKUDESC130','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (131,'SKUDESC131','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (132,'SKUDESC132','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (133,'SKUDESC133','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (134,'SKUDESC134','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (135,'SKUDESC135','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (136,'SKUDESC136','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (137,'SKUDESC137','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (138,'SKUDESC138','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (139,'SKUDESC139','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (140,'SKUDESC140','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (141,'SKUDESC141','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (142,'SKUDESC142','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (143,'SKUDESC143','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (144,'SKUDESC144','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (145,'SKUDESC145','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (146,'SKUDESC146','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (147,'SKUDESC147','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (148,'SKUDESC148','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (149,'SKUDESC149','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (150,'SKUDESC150','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (151,'SKUDESC151','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (152,'SKUDESC152','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (153,'SKUDESC153','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (154,'SKUDESC154','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (155,'SKUDESC155','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (156,'SKUDESC156','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (157,'SKUDESC157','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (158,'SKUDESC158','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (159,'SKUDESC159','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (160,'SKUDESC160','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (161,'SKUDESC161','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (162,'SKUDESC162','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (163,'SKUDESC163','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (164,'SKUDESC164','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (165,'SKUDESC165','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (166,'SKUDESC166','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (167,'SKUDESC167','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (168,'SKUDESC168','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (169,'SKUDESC169','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (170,'SKUDESC170','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (171,'SKUDESC171','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (172,'SKUDESC172','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (173,'SKUDESC173','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (174,'SKUDESC174','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (175,'SKUDESC175','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (176,'SKUDESC176','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (177,'SKUDESC177','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (178,'SKUDESC178','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (179,'SKUDESC179','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (180,'SKUDESC180','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (181,'SKUDESC181','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (182,'SKUDESC182','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (183,'SKUDESC183','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (184,'SKUDESC184','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (185,'SKUDESC185','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (186,'SKUDESC186','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (187,'SKUDESC187','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (188,'SKUDESC188','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (189,'SKUDESC189','Center','GM','Audio Video','Video DVD');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (190,'SKUDESC190','Permiter','GM','Housewares','Beeding');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (191,'SKUDESC191','Permiter','Seafood','Frozen Shellfish','Frozen Shellfish');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (192,'SKUDESC192','Permiter','Floral','Bouquets and Cut Flowers','Bouquets and Cut Flowers');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (193,'SKUDESC193','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (194,'SKUDESC194','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (195,'SKUDESC195','Permiter','Deli and Foodservice','Service Deli','All Other');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (196,'SKUDESC196','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (197,'SKUDESC197','Center','Grocery','Crackers','Rice Cakes');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (198,'SKUDESC198','Center','GM','Audio Video','Audio');
insert  into `tbl_dump`(`sku_id`,`sku_name`,`location`,`department`,`category`,`subcategory`) values (199,'SKUDESC199','Center','Frozen','Frozen Bake','Bread or Dough Products Frozen');

/*Table structure for table `tbl_loc_depts` */

DROP TABLE IF EXISTS `tbl_loc_depts`;

CREATE TABLE `tbl_loc_depts` (
  `ld_id` int(10) NOT NULL AUTO_INCREMENT,
  `ld_loc_id` int(10) NOT NULL,
  `ld_dept_id` int(10) NOT NULL,
  PRIMARY KEY (`ld_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_loc_depts` */

insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (1,1,4);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (2,1,5);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (3,1,6);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (4,2,1);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (5,2,2);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (6,2,3);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (7,2,5);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (8,2,7);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (16,3,8);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (17,4,9);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (18,4,10);
insert  into `tbl_loc_depts`(`ld_id`,`ld_loc_id`,`ld_dept_id`) values (19,4,11);

/*Table structure for table `tbl_locations` */

DROP TABLE IF EXISTS `tbl_locations`;

CREATE TABLE `tbl_locations` (
  `loc_id` int(10) NOT NULL AUTO_INCREMENT,
  `loc_name` varchar(250) NOT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_locations` */

insert  into `tbl_locations`(`loc_id`,`loc_name`) values (1,'Center');
insert  into `tbl_locations`(`loc_id`,`loc_name`) values (2,'Permiter');
insert  into `tbl_locations`(`loc_id`,`loc_name`) values (3,'Outer Permiter');
insert  into `tbl_locations`(`loc_id`,`loc_name`) values (4,'Test Location');

/*Table structure for table `tbl_products` */

DROP TABLE IF EXISTS `tbl_products`;

CREATE TABLE `tbl_products` (
  `sku_id` int(10) NOT NULL,
  `sku_name` varchar(250) DEFAULT NULL,
  `loc_id` int(10) DEFAULT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `cat_id` int(10) DEFAULT NULL,
  `scat_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`sku_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_products` */

insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (1,'SKUDESC1',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (2,'SKUDESC2',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (3,'SKUDESC3',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (4,'SKUDESC4',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (5,'SKUDESC5',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (6,'SKUDESC6',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (7,'SKUDESC7',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (8,'SKUDESC8',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (9,'SKUDESC9',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (10,'SKUDESC10',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (11,'SKUDESC11',2,7,8,2);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (12,'SKUDESC12',2,7,8,10);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (13,'SKUDESC13',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (14,'SKUDESC14',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (15,'SKUDESC15',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (16,'SKUDESC16',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (17,'SKUDESC17',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (18,'SKUDESC18',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (19,'SKUDESC19',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (20,'SKUDESC20',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (21,'SKUDESC21',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (22,'SKUDESC22',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (23,'SKUDESC23',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (24,'SKUDESC24',2,7,8,2);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (25,'SKUDESC25',2,7,8,10);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (26,'SKUDESC26',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (27,'SKUDESC27',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (28,'SKUDESC28',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (29,'SKUDESC29',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (30,'SKUDESC30',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (31,'SKUDESC31',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (32,'SKUDESC32',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (33,'SKUDESC33',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (34,'SKUDESC34',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (35,'SKUDESC35',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (36,'SKUDESC36',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (37,'SKUDESC37',2,7,8,2);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (38,'SKUDESC38',2,7,8,10);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (39,'SKUDESC39',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (40,'SKUDESC40',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (41,'SKUDESC41',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (42,'SKUDESC42',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (43,'SKUDESC43',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (44,'SKUDESC44',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (45,'SKUDESC45',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (46,'SKUDESC46',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (47,'SKUDESC47',2,7,8,2);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (48,'SKUDESC48',2,7,8,10);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (49,'SKUDESC49',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (50,'SKUDESC50',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (51,'SKUDESC51',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (52,'SKUDESC52',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (53,'SKUDESC53',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (54,'SKUDESC54',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (55,'SKUDESC55',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (56,'SKUDESC56',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (57,'SKUDESC57',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (58,'SKUDESC58',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (59,'SKUDESC59',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (60,'SKUDESC60',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (61,'SKUDESC61',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (62,'SKUDESC62',2,7,8,2);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (63,'SKUDESC63',2,7,8,10);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (64,'SKUDESC64',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (65,'SKUDESC65',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (66,'SKUDESC66',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (67,'SKUDESC67',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (68,'SKUDESC68',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (69,'SKUDESC69',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (70,'SKUDESC70',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (71,'SKUDESC71',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (72,'SKUDESC72',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (73,'SKUDESC73',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (74,'SKUDESC74',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (75,'SKUDESC75',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (76,'SKUDESC76',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (77,'SKUDESC77',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (78,'SKUDESC78',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (79,'SKUDESC79',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (80,'SKUDESC80',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (81,'SKUDESC81',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (82,'SKUDESC82',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (83,'SKUDESC83',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (84,'SKUDESC84',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (85,'SKUDESC85',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (86,'SKUDESC86',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (87,'SKUDESC87',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (88,'SKUDESC88',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (89,'SKUDESC89',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (90,'SKUDESC90',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (91,'SKUDESC91',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (92,'SKUDESC92',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (93,'SKUDESC93',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (94,'SKUDESC94',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (95,'SKUDESC95',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (96,'SKUDESC96',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (97,'SKUDESC97',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (98,'SKUDESC98',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (99,'SKUDESC99',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (100,'SKUDESC100',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (101,'SKUDESC101',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (102,'SKUDESC102',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (103,'SKUDESC103',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (104,'SKUDESC104',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (105,'SKUDESC105',2,7,8,12);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (106,'SKUDESC106',2,1,2,4);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (107,'SKUDESC107',2,2,9,6);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (108,'SKUDESC108',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (109,'SKUDESC109',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (110,'SKUDESC110',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (111,'SKUDESC111',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (112,'SKUDESC112',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (113,'SKUDESC113',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (114,'SKUDESC114',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (115,'SKUDESC115',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (116,'SKUDESC116',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (117,'SKUDESC117',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (118,'SKUDESC118',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (119,'SKUDESC119',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (120,'SKUDESC120',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (121,'SKUDESC121',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (122,'SKUDESC122',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (123,'SKUDESC123',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (124,'SKUDESC124',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (125,'SKUDESC125',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (126,'SKUDESC126',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (127,'SKUDESC127',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (128,'SKUDESC128',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (129,'SKUDESC129',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (130,'SKUDESC130',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (131,'SKUDESC131',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (132,'SKUDESC132',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (133,'SKUDESC133',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (134,'SKUDESC134',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (135,'SKUDESC135',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (136,'SKUDESC136',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (137,'SKUDESC137',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (138,'SKUDESC138',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (139,'SKUDESC139',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (140,'SKUDESC140',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (141,'SKUDESC141',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (142,'SKUDESC142',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (143,'SKUDESC143',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (144,'SKUDESC144',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (145,'SKUDESC145',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (146,'SKUDESC146',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (147,'SKUDESC147',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (148,'SKUDESC148',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (149,'SKUDESC149',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (150,'SKUDESC150',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (151,'SKUDESC151',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (152,'SKUDESC152',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (153,'SKUDESC153',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (154,'SKUDESC154',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (155,'SKUDESC155',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (156,'SKUDESC156',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (157,'SKUDESC157',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (158,'SKUDESC158',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (159,'SKUDESC159',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (160,'SKUDESC160',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (161,'SKUDESC161',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (162,'SKUDESC162',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (163,'SKUDESC163',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (164,'SKUDESC164',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (165,'SKUDESC165',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (166,'SKUDESC166',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (167,'SKUDESC167',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (168,'SKUDESC168',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (169,'SKUDESC169',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (170,'SKUDESC170',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (171,'SKUDESC171',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (172,'SKUDESC172',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (173,'SKUDESC173',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (174,'SKUDESC174',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (175,'SKUDESC175',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (176,'SKUDESC176',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (177,'SKUDESC177',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (178,'SKUDESC178',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (179,'SKUDESC179',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (180,'SKUDESC180',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (181,'SKUDESC181',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (182,'SKUDESC182',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (183,'SKUDESC183',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (184,'SKUDESC184',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (185,'SKUDESC185',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (186,'SKUDESC186',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (187,'SKUDESC187',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (188,'SKUDESC188',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (189,'SKUDESC189',1,5,1,13);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (190,'SKUDESC190',2,5,7,5);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (191,'SKUDESC191',2,7,6,9);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (192,'SKUDESC192',2,3,3,7);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (193,'SKUDESC193',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (194,'SKUDESC194',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (195,'SKUDESC195',2,2,10,1);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (196,'SKUDESC196',1,4,5,8);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (197,'SKUDESC197',1,6,4,11);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (198,'SKUDESC198',1,5,1,3);
insert  into `tbl_products`(`sku_id`,`sku_name`,`loc_id`,`dept_id`,`cat_id`,`scat_id`) values (199,'SKUDESC199',1,4,5,8);

/*Table structure for table `tbl_subcategories` */

DROP TABLE IF EXISTS `tbl_subcategories`;

CREATE TABLE `tbl_subcategories` (
  `scat_id` int(10) NOT NULL AUTO_INCREMENT,
  `scat_name` varchar(250) NOT NULL,
  PRIMARY KEY (`scat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subcategories` */

insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (1,'All Other');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (2,'All Other Seafood');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (3,'Audio');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (4,'Bagels');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (5,'Beeding');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (6,'Beverages');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (7,'Bouquets and Cut Flowers');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (8,'Bread or Dough Products Frozen');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (9,'Frozen Shellfish');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (10,'Prepared Seafood Entrees');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (11,'Rice Cakes');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (12,'Salads');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (13,'Video DVD');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (17,'Bats');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (18,'Balls');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (21,'Test SUB cat 01');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (22,'Test SUB cat 02');
insert  into `tbl_subcategories`(`scat_id`,`scat_name`) values (23,'Test SUB cat 03');

/*Table structure for table `vw_cat_subcats` */

DROP TABLE IF EXISTS `vw_cat_subcats`;

/*!50001 DROP VIEW IF EXISTS `vw_cat_subcats` */;
/*!50001 DROP TABLE IF EXISTS `vw_cat_subcats` */;

/*!50001 CREATE TABLE  `vw_cat_subcats`(
 `cs_id` int(10) ,
 `cat_id` int(10) ,
 `cat_name` varchar(250) ,
 `scat_id` int(10) ,
 `scat_name` varchar(250) 
)*/;

/*Table structure for table `vw_dept_cats` */

DROP TABLE IF EXISTS `vw_dept_cats`;

/*!50001 DROP VIEW IF EXISTS `vw_dept_cats` */;
/*!50001 DROP TABLE IF EXISTS `vw_dept_cats` */;

/*!50001 CREATE TABLE  `vw_dept_cats`(
 `dc_id` int(10) ,
 `dept_id` int(10) ,
 `dept_name` varchar(250) ,
 `cat_id` int(10) ,
 `cat_name` varchar(250) 
)*/;

/*Table structure for table `vw_ldcs_data` */

DROP TABLE IF EXISTS `vw_ldcs_data`;

/*!50001 DROP VIEW IF EXISTS `vw_ldcs_data` */;
/*!50001 DROP TABLE IF EXISTS `vw_ldcs_data` */;

/*!50001 CREATE TABLE  `vw_ldcs_data`(
 `loc_id` int(10) ,
 `loc_name` varchar(250) ,
 `dept_id` int(10) ,
 `dept_name` varchar(250) ,
 `cat_id` int(10) ,
 `cat_name` varchar(250) ,
 `scat_id` int(10) ,
 `scat_name` varchar(250) 
)*/;

/*Table structure for table `vw_loc_depts` */

DROP TABLE IF EXISTS `vw_loc_depts`;

/*!50001 DROP VIEW IF EXISTS `vw_loc_depts` */;
/*!50001 DROP TABLE IF EXISTS `vw_loc_depts` */;

/*!50001 CREATE TABLE  `vw_loc_depts`(
 `ld_id` int(10) ,
 `loc_id` int(10) ,
 `loc_name` varchar(250) ,
 `dept_id` int(10) ,
 `dept_name` varchar(250) 
)*/;

/*Table structure for table `vw_products` */

DROP TABLE IF EXISTS `vw_products`;

/*!50001 DROP VIEW IF EXISTS `vw_products` */;
/*!50001 DROP TABLE IF EXISTS `vw_products` */;

/*!50001 CREATE TABLE  `vw_products`(
 `sku_id` int(10) ,
 `sku_name` varchar(250) ,
 `loc_id` int(10) ,
 `loc_name` varchar(250) ,
 `dept_id` int(10) ,
 `dept_name` varchar(250) ,
 `cat_id` int(10) ,
 `cat_name` varchar(250) ,
 `scat_id` int(10) ,
 `scat_name` varchar(250) 
)*/;

/*View structure for view vw_cat_subcats */

/*!50001 DROP TABLE IF EXISTS `vw_cat_subcats` */;
/*!50001 DROP VIEW IF EXISTS `vw_cat_subcats` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_cat_subcats` AS (select `sc`.`cs_id` AS `cs_id`,`sc`.`cs_cat_id` AS `cat_id`,`c`.`cat_name` AS `cat_name`,`sc`.`cs_scat_id` AS `scat_id`,`s`.`scat_name` AS `scat_name` from ((`tbl_cat_subcats` `sc` join `tbl_categories` `c`) join `tbl_subcategories` `s`) where ((`sc`.`cs_cat_id` = `c`.`cat_id`) and (`sc`.`cs_scat_id` = `s`.`scat_id`))) */;

/*View structure for view vw_dept_cats */

/*!50001 DROP TABLE IF EXISTS `vw_dept_cats` */;
/*!50001 DROP VIEW IF EXISTS `vw_dept_cats` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_dept_cats` AS (select `dc`.`dc_id` AS `dc_id`,`dc`.`dc_dept_id` AS `dept_id`,`d`.`dept_name` AS `dept_name`,`dc`.`dc_cat_id` AS `cat_id`,`c`.`cat_name` AS `cat_name` from ((`tbl_dept_cats` `dc` join `tbl_departments` `d`) join `tbl_categories` `c`) where ((`dc`.`dc_dept_id` = `d`.`dept_id`) and (`dc`.`dc_cat_id` = `c`.`cat_id`))) */;

/*View structure for view vw_ldcs_data */

/*!50001 DROP TABLE IF EXISTS `vw_ldcs_data` */;
/*!50001 DROP VIEW IF EXISTS `vw_ldcs_data` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_ldcs_data` AS (select `ld`.`ld_loc_id` AS `loc_id`,`l`.`loc_name` AS `loc_name`,`ld`.`ld_dept_id` AS `dept_id`,`d`.`dept_name` AS `dept_name`,`dc`.`dc_cat_id` AS `cat_id`,`c`.`cat_name` AS `cat_name`,`cs`.`cs_scat_id` AS `scat_id`,`s`.`scat_name` AS `scat_name` from ((((((`tbl_loc_depts` `ld` join `tbl_dept_cats` `dc`) join `tbl_cat_subcats` `cs`) join `tbl_locations` `l`) join `tbl_departments` `d`) join `tbl_categories` `c`) join `tbl_subcategories` `s`) where ((`ld`.`ld_dept_id` = `dc`.`dc_dept_id`) and (`dc`.`dc_cat_id` = `cs`.`cs_cat_id`) and (`ld`.`ld_loc_id` = `l`.`loc_id`) and (`dc`.`dc_dept_id` = `d`.`dept_id`) and (`cs`.`cs_cat_id` = `c`.`cat_id`) and (`cs`.`cs_scat_id` = `s`.`scat_id`))) */;

/*View structure for view vw_loc_depts */

/*!50001 DROP TABLE IF EXISTS `vw_loc_depts` */;
/*!50001 DROP VIEW IF EXISTS `vw_loc_depts` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_loc_depts` AS (select `ld`.`ld_id` AS `ld_id`,`ld`.`ld_loc_id` AS `loc_id`,`l`.`loc_name` AS `loc_name`,`ld`.`ld_dept_id` AS `dept_id`,`d`.`dept_name` AS `dept_name` from ((`tbl_loc_depts` `ld` join `tbl_locations` `l`) join `tbl_departments` `d`) where ((`ld`.`ld_loc_id` = `l`.`loc_id`) and (`ld`.`ld_dept_id` = `d`.`dept_id`))) */;

/*View structure for view vw_products */

/*!50001 DROP TABLE IF EXISTS `vw_products` */;
/*!50001 DROP VIEW IF EXISTS `vw_products` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_products` AS (select `p`.`sku_id` AS `sku_id`,`p`.`sku_name` AS `sku_name`,`p`.`loc_id` AS `loc_id`,`l`.`loc_name` AS `loc_name`,`p`.`dept_id` AS `dept_id`,`d`.`dept_name` AS `dept_name`,`p`.`cat_id` AS `cat_id`,`c`.`cat_name` AS `cat_name`,`p`.`scat_id` AS `scat_id`,`s`.`scat_name` AS `scat_name` from ((((`tbl_products` `p` join `tbl_locations` `l`) join `tbl_departments` `d`) join `tbl_categories` `c`) join `tbl_subcategories` `s`) where ((`p`.`loc_id` = `l`.`loc_id`) and (`p`.`dept_id` = `d`.`dept_id`) and (`p`.`cat_id` = `c`.`cat_id`) and (`p`.`scat_id` = `s`.`scat_id`)) order by `p`.`sku_id`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
