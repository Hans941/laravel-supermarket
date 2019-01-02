-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: test_supermarket
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,2,6,'Index','fa-bar-chart','/',NULL,'2019-01-02 00:25:40'),(2,0,5,'Admin','fa-tasks','',NULL,'2019-01-02 00:25:40'),(3,2,7,'Users','fa-users','auth/users',NULL,'2019-01-02 00:25:40'),(4,2,8,'Roles','fa-user','auth/roles',NULL,'2019-01-02 00:25:40'),(5,2,9,'Permission','fa-ban','auth/permissions',NULL,'2019-01-02 00:25:40'),(6,2,10,'Menu','fa-bars','auth/menu',NULL,'2019-01-02 00:25:41'),(7,2,11,'Operation log','fa-history','auth/logs',NULL,'2019-01-02 00:25:41'),(8,0,1,'用户管理','fa-users','users','2019-01-02 00:20:48','2019-01-02 00:20:58'),(9,0,2,'商品管理','fa-amazon','products','2019-01-02 00:24:10','2019-01-02 00:24:15'),(10,0,3,'订单管理','fa-anchor','orders','2019-01-02 00:24:37','2019-01-02 00:24:42'),(11,0,4,'优惠券','fa-rmb','coupon_codes','2019-01-02 00:25:36','2019-01-02 00:25:40');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-01-02 00:23:00','2019-01-02 00:23:00'),(7,'商品管理','products','','/products*','2019-01-02 00:53:03','2019-01-02 00:53:03'),(8,'订单管理','orders','','/orders*','2019-01-02 00:53:21','2019-01-02 00:53:21'),(9,'优惠券管理','coupon_codes','','/coupon_codes*','2019-01-02 00:54:31','2019-01-02 00:54:31');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-01-02 00:17:40','2019-01-02 00:17:40'),(2,'运营','operator','2019-01-02 00:23:38','2019-01-02 00:23:38');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$uCYBjiSuc6bRe.kSnVCyrefwswuibQQw/wL53gEDfTDh/dYLeVEae','Administrator',NULL,'vAr1G0sNIJ5CqhjjImBViw9fUtfdVcDnaDXD4qtNPyU3ZOx3QddfFqa10BLF','2019-01-02 00:17:40','2019-01-02 00:17:40'),(2,'operator_1','$2y$10$BlXuz1VlX7opsLrAI6Q5P.llc3rIPCRhfpYlT4QLugnWdmgHCNErS','运营1号','images/QQ20190102-OCR-0_IMG.jpg','nnLrmqkEo0lcGny2qofBlTI89zMVrTLy8wMANjRs9FADUch5q0KxS4I7vAZ7','2019-01-02 00:57:00','2019-01-02 00:57:00');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-02 17:01:14
