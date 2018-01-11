-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: SSDUT
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add xszz',1,'add_xszz'),(2,'Can change xszz',1,'change_xszz'),(3,'Can delete xszz',1,'delete_xszz'),(4,'Can add log entry',2,'add_logentry'),(5,'Can change log entry',2,'change_logentry'),(6,'Can delete log entry',2,'delete_logentry'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add permission',4,'add_permission'),(11,'Can change permission',4,'change_permission'),(12,'Can delete permission',4,'delete_permission'),(13,'Can add user',5,'add_user'),(14,'Can change user',5,'change_user'),(15,'Can delete user',5,'delete_user'),(16,'Can add content type',6,'add_contenttype'),(17,'Can change content type',6,'change_contenttype'),(18,'Can delete content type',6,'delete_contenttype'),(19,'Can add session',7,'add_session'),(20,'Can change session',7,'change_session'),(21,'Can delete session',7,'delete_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(3,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(6,'contenttypes','contenttype'),(7,'sessions','session'),(1,'xszz','xszz');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-12-30 08:47:00.649317'),(2,'auth','0001_initial','2017-12-30 08:47:09.835659'),(3,'admin','0001_initial','2017-12-30 08:47:11.861992'),(4,'admin','0002_logentry_remove_auto_add','2017-12-30 08:47:12.018641'),(5,'contenttypes','0002_remove_content_type_name','2017-12-30 08:47:13.134292'),(6,'auth','0002_alter_permission_name_max_length','2017-12-30 08:47:13.335566'),(7,'auth','0003_alter_user_email_max_length','2017-12-30 08:47:13.492127'),(8,'auth','0004_alter_user_username_opts','2017-12-30 08:47:13.555760'),(9,'auth','0005_alter_user_last_login_null','2017-12-30 08:47:14.669959'),(10,'auth','0006_require_contenttypes_0002','2017-12-30 08:47:14.715305'),(11,'auth','0007_alter_validators_add_error_messages','2017-12-30 08:47:14.774555'),(12,'auth','0008_alter_user_username_max_length','2017-12-30 08:47:15.160906'),(13,'sessions','0001_initial','2017-12-30 08:47:15.807898'),(14,'xszz','0001_initial','2017-12-30 08:47:16.181707');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xszz_xszz`
--

DROP TABLE IF EXISTS `xszz_xszz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xszz_xszz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `link` varchar(200) CHARACTER SET latin1 NOT NULL,
  `time` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2318 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xszz_xszz`
--

LOCK TABLES `xszz_xszz` WRITE;
/*!40000 ALTER TABLE `xszz_xszz` DISABLE KEYS */;
INSERT INTO `xszz_xszz` VALUES (1929,'【转发】本科生部分课程扩容通知 ','http://ssdut.dlut.edu.cn/info/1120/12070.htm','2018-01-08'),(1930,'[转发]有关开发区校区2017-2018学年春季学期辅修双学位选课的...','http://ssdut.dlut.edu.cn/info/1120/12068.htm','2018-01-08'),(1931,'关于体育馆近期开放时间调整的通知','http://ssdut.dlut.edu.cn/info/1116/12065.htm','2018-01-05'),(1932,'关于软件学院2017-2018学年春季学期辅修选课通知','http://ssdut.dlut.edu.cn/info/1120/12061.htm','2018-01-05'),(1933,'关于通用智能终端应用程序基础等三门课程的选课注意','http://ssdut.dlut.edu.cn/info/1120/12060.htm','2018-01-05'),(1934,'关于召开大连理工大学软件学院2018年寒假社会实践出征仪式暨...','http://ssdut.dlut.edu.cn/info/1116/12059.htm','2018-01-04'),(1935,'关于体育馆元旦假期开放时间的通知','http://ssdut.dlut.edu.cn/info/1116/12018.htm','2017-12-29'),(1936,'关于公示2018年“橙梦先锋”队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/12011.htm','2017-12-29'),(1937,'软件学院2015级专业选修课《拓展英语》课程介绍','http://ssdut.dlut.edu.cn/info/1120/12010.htm','2017-12-29'),(1938,'转发：日语听说期末考试口试的安排','http://ssdut.dlut.edu.cn/info/1120/11999.htm','2017-12-29'),(1939,'关于软件学院2017级 培养计划讲解及选课说明会的通知','http://ssdut.dlut.edu.cn/info/1120/11993.htm','2017-12-28'),(1940,'2018年寒假“橙梦先锋”实践团面试通知','http://ssdut.dlut.edu.cn/info/1116/11989.htm','2017-12-28'),(1941,'关于公示2018年寒假橙梦企航（北京）线路队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11982.htm','2017-12-27'),(1942,'转发：关于2017-2018学年第二学期（春季）本科生选课工作安排...','http://ssdut.dlut.edu.cn/info/1120/11980.htm','2017-12-27'),(1943,'16级学生选课技巧与咨询说明会','http://ssdut.dlut.edu.cn/info/1120/11979.htm','2017-12-27'),(1944,'关于公示2018年寒假橙梦企航（大连）线路队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11959.htm','2017-12-26'),(1945,'学业指导中心2017-2018学年专业教师一对多课程指导课程表(第...','http://ssdut.dlut.edu.cn/info/1116/11958.htm','2017-12-26'),(1946,'【实践立项】关于2018寒假社会实践立项的通知','http://ssdut.dlut.edu.cn/info/1116/11955.htm','2017-12-26'),(1947,'［第十二届科技文化节］获奖名单－游戏策划大赛','http://ssdut.dlut.edu.cn/info/1120/11954.htm','2017-12-26'),(1948,'［第十二届科技文化节］获奖名单－ERP巅峰模拟创业大赛','http://ssdut.dlut.edu.cn/info/1120/11953.htm','2017-12-26'),(1949,'［第十二届科技文化节］获奖名单－智能车友谊赛','http://ssdut.dlut.edu.cn/info/1120/11952.htm','2017-12-26'),(1950,'［第十二届科技文化节］获奖名单－51单片机程序设计竞赛','http://ssdut.dlut.edu.cn/info/1120/11951.htm','2017-12-26'),(1951,'［第十二届科技文化节］获奖名单－C语言知识竞赛','http://ssdut.dlut.edu.cn/info/1120/11950.htm','2017-12-26'),(1952,'［第十二届科技文化节］获奖名单-数学建模大赛','http://ssdut.dlut.edu.cn/info/1120/11949.htm','2017-12-26'),(1953,'［第十二届科技文化节］获奖名单-网页设计大赛','http://ssdut.dlut.edu.cn/info/1120/11948.htm','2017-12-26'),(1954,'［第十二届科技文化节］获奖名单-黑框游戏设计大赛','http://ssdut.dlut.edu.cn/info/1120/11946.htm','2017-12-26'),(1955,'［第十二届科技文化节］获奖名单-黑框游戏设计大赛','http://ssdut.dlut.edu.cn/info/1120/11946.htm','2017-12-26'),(1956,'关于《关于2017年大连市闽籍大学生励志奖学金评定工作的通知...','http://ssdut.dlut.edu.cn/info/1116/11943.htm','2017-12-25'),(1957,'关于公示“橙梦企航”（西安）团队队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11942.htm','2017-12-25'),(1958,'软件学院确定2018年发展对象公开述责答辩的通知','http://ssdut.dlut.edu.cn/info/1116/11939.htm','2017-12-25'),(1959,'学业指导中心2017-2018学年专业教师一对多课程指导课程表(第...','http://ssdut.dlut.edu.cn/info/1116/11936.htm','2017-12-25'),(1960,'【实践宣讲】关于2018寒假社会实践宣讲会的通知','http://ssdut.dlut.edu.cn/info/1116/11933.htm','2017-12-23'),(1961,'关于公示“橙梦企航”（上海）团队队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11932.htm','2017-12-22'),(1962,'关于公布“絮写心语”心理健康教育征文大赛作品获奖结果的通知','http://ssdut.dlut.edu.cn/info/1116/11931.htm','2017-12-22'),(1963,'关于公示“橙梦企航”（杭州）团队队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11929.htm','2017-12-22'),(1964,'2018年寒假橙梦企航（大连）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11928.htm','2017-12-22'),(1965,'关于ERP开发调课通知','http://ssdut.dlut.edu.cn/info/1120/11927.htm','2017-12-22'),(1966,'美国佛罗里达大学电子与计算机工程学院（University of Flori...','http://ssdut.dlut.edu.cn/info/1120/11925.htm','2017-12-22'),(1967,'关于公示“橙梦企航”（南京）团队队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11923.htm','2017-12-22'),(1968,'2018年寒假橙梦企航（成都）线路面试结果 ','http://ssdut.dlut.edu.cn/info/1116/11922.htm','2017-12-21'),(1969,'关于2016级上交素质提升课程之职业生涯规划课程学习心得的通...','http://ssdut.dlut.edu.cn/info/1116/11921.htm','2017-12-21'),(1970,'关于组织收看2017年全国科学道德和学风建设宣讲教育报告会视...','http://ssdut.dlut.edu.cn/info/1116/11920.htm','2017-12-21'),(1971,'关于共青团大连理工大学软件学院委员会2017年度“两优一先”...','http://ssdut.dlut.edu.cn/info/1116/11919.htm','2017-12-21'),(1972,'关于公示“橙梦企航”（深圳）团队队员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11916.htm','2017-12-21'),(1973,'2017-2018全国高校“西普杯”信息安全铁人三项赛报名开启','http://ssdut.dlut.edu.cn/info/1120/11915.htm','2017-12-21'),(1974,'关于举行2017年校园地国家助学贷款面签会的通知','http://ssdut.dlut.edu.cn/info/1116/11914.htm','2017-12-20'),(1975,'关于2014级、2015级、2016级本科生第二课堂（团委方向）学分...','http://ssdut.dlut.edu.cn/info/1116/11913.htm','2017-12-20'),(1976,'2018年寒假橙梦企航（北京）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11912.htm','2017-12-20'),(1977,'2018年寒假橙梦企航（西安）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11911.htm','2017-12-20'),(1978,'大连理工大学滑雪体验课教学视频学习流程说明','http://ssdut.dlut.edu.cn/info/1120/11910.htm','2017-12-20'),(1979,'2018年寒假橙梦企航（南京）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11906.htm','2017-12-19'),(1980,'2018年寒假橙梦企航（上海）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11905.htm','2017-12-19'),(1981,'2018年寒假橙梦企航（上海）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11905.htm','2017-12-19'),(1982,'2018年寒假橙梦企航（杭州）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11903.htm','2017-12-19'),(1983,'2018年寒假橙梦企航（成都）线路面试通知','http://ssdut.dlut.edu.cn/info/1116/11897.htm','2017-12-19'),(1984,'2016-2017学年国家奖学金证书领取通知','http://ssdut.dlut.edu.cn/info/1116/11896.htm','2017-12-19'),(1985,'转发：开发区校区第17周、18周考试安排 ','http://ssdut.dlut.edu.cn/info/1120/11895.htm','2017-12-19'),(1986,'关于软件学院2016-2017学年十佳学子及各类标兵上交材料的通知','http://ssdut.dlut.edu.cn/info/1116/11894.htm','2017-12-19'),(1987,'关于开展2017年“寒冬送暖”系列活动的通知','http://ssdut.dlut.edu.cn/info/1116/11891.htm','2017-12-18'),(1988,'【实践招募】关于增加2018年寒假“橙梦企航”走访城市武汉并...','http://ssdut.dlut.edu.cn/info/1116/11890.htm','2017-12-18'),(1989,'关于学生工作办公室勤工助学岗位招聘的通知','http://ssdut.dlut.edu.cn/info/1116/11882.htm','2017-12-18'),(1990,'关于大连理工大学软件学院“志愿辽宁”志愿者注册事宜开展的通知','http://ssdut.dlut.edu.cn/info/1116/11878.htm','2017-12-16'),(1991,'2017年开发区校区滑雪体验课开课说明','http://ssdut.dlut.edu.cn/info/1120/11877.htm','2017-12-16'),(1992,'学业指导中心2017-2018学年专业教师一对多课程指导课程表(第...','http://ssdut.dlut.edu.cn/info/1116/11876.htm','2017-12-15'),(1993,'学业指导中心2017-2018学年本科生科研能力提升讲座(第四期)','http://ssdut.dlut.edu.cn/info/1116/11875.htm','2017-12-15'),(1994,'12月15日赖晓晨老师计算机组织与结构停课通知','http://ssdut.dlut.edu.cn/info/1120/11874.htm','2017-12-14'),(1995,'关于开展共青团大连理工大学软件学院委员会2017年度“两优一...','http://ssdut.dlut.edu.cn/info/1116/11870.htm','2017-12-14'),(1996,'关于面向全院举办考风考纪宣讲的通知','http://ssdut.dlut.edu.cn/info/1116/11865.htm','2017-12-14'),(1997,'关于2018届在校外做毕业设计的同学提交材料的通知','http://ssdut.dlut.edu.cn/info/1120/11863.htm','2017-12-14'),(1998,'【实践招募】2018年寒假“橙梦先锋”社会实践活动队员招募通...','http://ssdut.dlut.edu.cn/info/1116/11860.htm','2017-12-13'),(1999,'关于公示2018年寒假“橙梦企航之励志企业行”人员名单的通知','http://ssdut.dlut.edu.cn/info/1116/11859.htm','2017-12-13'),(2000,'转发：关于12月16日开发区校区教学楼A、B区封楼、停课的通知 ','http://ssdut.dlut.edu.cn/info/1120/11858.htm','2017-12-13'),(2001,'转发：关于全国大学外语四、六级考试听力试音的通知 ','http://ssdut.dlut.edu.cn/info/1120/11857.htm','2017-12-13'),(2002,'关于2014-2017级本科生“第二课堂”中社会实践必修学分认定标...','http://ssdut.dlut.edu.cn/info/1116/11851.htm','2017-12-12'),(2003,'关于领取英语四、六级准考证通知','http://ssdut.dlut.edu.cn/info/1120/11852.htm','2017-12-12'),(2004,'关于召开2016级和2015级本科教学咨询会的通知','http://ssdut.dlut.edu.cn/info/1120/11850.htm','2017-12-12'),(2005,'【实践招募】2018年寒假“橙梦企航”社会实践活动队员招募通...','http://ssdut.dlut.edu.cn/info/1116/11832.htm','2017-12-11'),(2006,'关于软件学院2016-2017学年十佳学子及各类标兵名单的公示','http://ssdut.dlut.edu.cn/info/1116/11830.htm','2017-12-11'),(2007,'关于软件学院2016-2017学年十佳学子及各类标兵名单的公示','http://ssdut.dlut.edu.cn/info/1116/11830.htm','2017-12-11'),(2008,'(转校园门户通知）关于2018届大连理工大学优秀毕业生评审结果...','http://ssdut.dlut.edu.cn/info/1116/11823.htm','2017-12-11'),(2009,'关于2018年寒假“橙梦企航之励志企业行”面试的通知    ','http://ssdut.dlut.edu.cn/info/1116/11821.htm','2017-12-11'),(2010,'关于面向软件学院2016级学生开设“素质提升计划”必修课之大...','http://ssdut.dlut.edu.cn/info/1116/11815.htm','2017-12-08'),(2011,'关于召开2017级本科教学咨询会的通知','http://ssdut.dlut.edu.cn/info/1120/11814.htm','2017-12-08'),(2012,'［第十二届科技文化节］获奖名单－金融创新应用大赛','http://ssdut.dlut.edu.cn/info/1120/11812.htm','2017-12-08'),(2013,'［第十二届科技文化节］获奖名单－code人心弦程序设计竞赛','http://ssdut.dlut.edu.cn/info/1120/11811.htm','2017-12-08'),(2014,'［第十二届科技文化节］获奖名单－第三届梦创杯创意大赛','http://ssdut.dlut.edu.cn/info/1120/11810.htm','2017-12-08'),(2015,'[紧急]2017年积极分子培训考试的通知','http://ssdut.dlut.edu.cn/info/1116/11809.htm','2017-12-08'),(2016,'关于“橙梦企航之励志企业行”活动招募队员的通知','http://ssdut.dlut.edu.cn/info/1116/11802.htm','2017-12-06'),(2017,'2017年11月份学生公寓卫生检查成绩公示','http://ssdut.dlut.edu.cn/info/1120/11796.htm','2017-12-05'),(2018,'软件学院关于辽宁省、大连市、大连理工大学优秀毕业生推荐名...','http://ssdut.dlut.edu.cn/info/1116/11794.htm','2017-12-04'),(2019,'关于加强学生安全教育管理工作的通知 ','http://ssdut.dlut.edu.cn/info/1116/11793.htm','2017-12-04'),(2020,'开发区校区第四届日语配音比赛决赛入围名单','http://ssdut.dlut.edu.cn/info/1120/11790.htm','2017-12-04'),(2021,'关于辽宁省、大连市、大连理工大学优秀毕业生推荐名单的公示','http://ssdut.dlut.edu.cn/info/1116/11776.htm','2017-12-01'),(2022,'关于评选2018届优秀毕业生时所需的综合排名等相关数据的最终...','http://ssdut.dlut.edu.cn/info/1116/11775.htm','2017-12-01'),(2023,'软件学院16级本科生专业分流公示','http://ssdut.dlut.edu.cn/info/1120/11773.htm','2017-12-01'),(2024,'关于面向中日国际信息与软件学院2016级学生开设“素质提升计...','http://ssdut.dlut.edu.cn/info/1116/11772.htm','2017-12-01'),(2025,'关于面向软件学院2016级学生开设“素质提升计划”必修课之大...','http://ssdut.dlut.edu.cn/info/1116/11771.htm','2017-12-01'),(2026,'转发：关于举办2018年全国大学生英语竞赛的通知','http://ssdut.dlut.edu.cn/info/1120/11770.htm','2017-12-01'),(2027,'转发通知：开发区校区第14周考试安排-尔雅通识和健康教育','http://ssdut.dlut.edu.cn/info/1120/11769.htm','2017-12-01'),(2028,'2018年开发区校区创新创业训练项目题目公布','http://ssdut.dlut.edu.cn/info/1120/11760.htm','2017-11-30'),(2029,'关于开展辽宁省、大连市2018届优秀毕业生推荐工作的通知','http://ssdut.dlut.edu.cn/info/1116/11758.htm','2017-11-30'),(2030,'关于开展大连理工大学2018届优秀毕业生评选工作的通知   ','http://ssdut.dlut.edu.cn/info/1116/11757.htm','2017-11-30'),(2031,'关于公示评选2018届优秀毕业生时所需的综合排名等相关数据的...','http://ssdut.dlut.edu.cn/info/1116/11756.htm','2017-11-30'),(2032,'关于软件学院党员之家学生干部选拔的通知','http://ssdut.dlut.edu.cn/info/1116/11753.htm','2017-11-30'),(2033,'关于软件学院党员之家学生干部选拔的通知','http://ssdut.dlut.edu.cn/info/1116/11753.htm','2017-11-30'),(2034,'关于评选2016-2017学年软件学院十佳学子、各类优秀学生标兵的...','http://ssdut.dlut.edu.cn/info/1116/11751.htm','2017-11-30'),(2035,'16级专业分流大数据面试通知','http://ssdut.dlut.edu.cn/info/1120/11738.htm','2017-11-29'),(2036,'2017-2018学年精英小先生讲团活动通知','http://ssdut.dlut.edu.cn/info/1116/11737.htm','2017-11-29'),(2037,'学业指导中心2017-2018学年本科生科研能力提升讲座(第三期)','http://ssdut.dlut.edu.cn/info/1116/11736.htm','2017-11-29'),(2038,'16级专业分流数媒和人工智能面试通知','http://ssdut.dlut.edu.cn/info/1120/11735.htm','2017-11-29'),(2039,'关于申请评选2016—2017年度金普新区“最美志愿者”的通知','http://ssdut.dlut.edu.cn/info/1116/11710.htm','2017-11-26'),(2040,'转发：第十二次CCF CSP认证（12月3日）报名通知','http://ssdut.dlut.edu.cn/info/1120/11700.htm','2017-11-24'),(2041,'关于面向软件学院2016级学生开设“素质提升计划”必修课之大...','http://ssdut.dlut.edu.cn/info/1116/11681.htm','2017-11-23'),(2042,'关于大连理工大学软件学院红色先锋团成员招募的通知','http://ssdut.dlut.edu.cn/info/1116/11680.htm','2017-11-23'),(2043,'关于软件学院2017年入党积极分子培训的通知','http://ssdut.dlut.edu.cn/info/1116/11650.htm','2017-11-23'),(2044,'关于申报2018年大学生创新创业训练计划项目的通知','http://ssdut.dlut.edu.cn/info/1120/11644.htm','2017-11-22'),(2045,'[转]开发区校区第13周考试安排','http://ssdut.dlut.edu.cn/info/1120/11640.htm','2017-11-22'),(2046,'关于软件学院2016级本科生专业及专业方向分流的通知','http://ssdut.dlut.edu.cn/info/1120/11639.htm','2017-11-22'),(2047,'关于评选大连理工大学2016-2017学年优秀青年志愿者的通知','http://ssdut.dlut.edu.cn/info/1116/11630.htm','2017-11-21'),(2048,'关于2017年度台湾、港澳及华侨学生奖学金评审工作的通知','http://ssdut.dlut.edu.cn/info/1116/11629.htm','2017-11-21'),(2049,'第十二届科技文化节平面设计大赛获奖名单','http://ssdut.dlut.edu.cn/info/1120/11623.htm','2017-11-20'),(2050,'第十一届英特尔杯全国大学生软件创新大赛报名通知','http://ssdut.dlut.edu.cn/info/1120/11622.htm','2017-11-20'),(2051,'[转]开发区校区第12周考试安排-18日调整','http://ssdut.dlut.edu.cn/info/1120/11620.htm','2017-11-20'),(2052,'关于面向软件学院2016级学生开设“素质提升计划”必修课之大...','http://ssdut.dlut.edu.cn/info/1116/11607.htm','2017-11-17'),(2053,'“素质提升计划”必修课之大学生职业生涯规划课程课内及课外...','http://ssdut.dlut.edu.cn/info/1116/11605.htm','2017-11-17'),(2054,'2018届毕业生图像采集通知','http://ssdut.dlut.edu.cn/info/1120/11601.htm','2017-11-17'),(2055,'软件学院2017年积极分子培训预通知及报名通知','http://ssdut.dlut.edu.cn/info/1116/11599.htm','2017-11-17'),(2056,'2017年软件学院暑期优秀个人实践报告评比结果公示','http://ssdut.dlut.edu.cn/info/1116/11592.htm','2017-11-16'),(2057,'腾讯校企合作移动互联网定制班招生通知','http://ssdut.dlut.edu.cn/info/1120/11586.htm','2017-11-16'),(2058,'软件学院尔雅通识课未登录学生名单','http://ssdut.dlut.edu.cn/info/1120/11570.htm','2017-11-14'),(2059,'软件学院尔雅通识课未登录学生名单','http://ssdut.dlut.edu.cn/info/1120/11570.htm','2017-11-14'),(2060,'关于体育馆11月11日（周六）开放时间调整的通知','http://ssdut.dlut.edu.cn/info/1116/11538.htm','2017-11-10'),(2061,'关于启动2018届本科毕业设计（论文）工作的通知','http://ssdut.dlut.edu.cn/info/1120/11530.htm','2017-11-10'),(2062,'转发：关于2018届本科毕业生图像采集报名的通知','http://ssdut.dlut.edu.cn/info/1120/11526.htm','2017-11-09'),(2063,'“小黑盒”杯第十二届科技文化节来袭！','http://ssdut.dlut.edu.cn/info/1120/11525.htm','2017-11-09'),(2064,'关于2017年亚太地区大学生数学建模竞赛（APMCM）的通知','http://ssdut.dlut.edu.cn/info/1120/11515.htm','2017-11-07'),(2065,'2018年国际数学建模竞赛报名通知','http://ssdut.dlut.edu.cn/info/1120/11514.htm','2017-11-07'),(2066,'新加坡国立大学系统科学学院研究生项目宣讲会','http://ssdut.dlut.edu.cn/info/1120/11510.htm','2017-11-07'),(2067,'关于组织开展第十四届“趣加·攀登杯”校区选拔赛——“逐梦杯...','http://ssdut.dlut.edu.cn/info/1120/11504.htm','2017-11-06'),(2068,'关于开发区校区体育馆举办“首届体育文化节”的通知','http://ssdut.dlut.edu.cn/info/1116/11498.htm','2017-11-03'),(2069,'关于开展2016-2017年度学校暨软件学院基层党支部建设创新方案...','http://ssdut.dlut.edu.cn/info/1116/11495.htm','2017-11-03'),(2070,'关于2017年度第二期学生预备党员培训结业考试安排的通知','http://ssdut.dlut.edu.cn/info/1116/11492.htm','2017-11-03'),(2071,'关于高级C语言与网络编程调课通知','http://ssdut.dlut.edu.cn/info/1120/11491.htm','2017-11-03'),(2072,'关于召开日本北陆先端科学技术大学院大学留学说明会的通知','http://ssdut.dlut.edu.cn/info/1120/11482.htm','2017-11-02'),(2073,'关于推荐学生赴日本立命馆大学攻读硕士研究生的通知','http://ssdut.dlut.edu.cn/info/1120/11473.htm','2017-11-01'),(2074,'[转]开发区校区形势与政策补考安排','http://ssdut.dlut.edu.cn/info/1120/11468.htm','2017-11-01'),(2075,'【第十二届科技文化节】第三届梦创杯创意大赛','http://ssdut.dlut.edu.cn/info/1120/11464.htm','2017-11-01'),(2076,'【第十二届科技文化节】 小黑盒杯网页设计大赛','http://ssdut.dlut.edu.cn/info/1120/11458.htm','2017-11-01'),(2077,'【第十二届科技文化节】 小黑盒杯Code人心弦程序设计大赛','http://ssdut.dlut.edu.cn/info/1120/11457.htm','2017-11-01'),(2078,'【第十二届科技文化节】 小黑盒杯黑框游戏设计大赛','http://ssdut.dlut.edu.cn/info/1120/11460.htm','2017-11-01'),(2079,'【第十二届科技文化节】 小黑盒杯游戏策划大赛','http://ssdut.dlut.edu.cn/info/1120/11459.htm','2017-11-01'),(2080,'【第十二届科技文化节】51单片机程序设计竞赛','http://ssdut.dlut.edu.cn/info/1120/11466.htm','2017-11-01'),(2081,'【第十二届科技文化节】C语言知识竞赛','http://ssdut.dlut.edu.cn/info/1120/11465.htm','2017-11-01'),(2082,'【第十二届科技文化节】ERP巅峰模拟创业大赛','http://ssdut.dlut.edu.cn/info/1120/11463.htm','2017-11-01'),(2083,'【第十二届科技文化节】金融创新应用大赛','http://ssdut.dlut.edu.cn/info/1120/11462.htm','2017-11-01'),(2084,'【第十二届科技文化节】数学建模大赛','http://ssdut.dlut.edu.cn/info/1120/11461.htm','2017-11-01'),(2085,'【第十二届科技文化节】数学建模大赛','http://ssdut.dlut.edu.cn/info/1120/11461.htm','2017-11-01'),(2086,'【第十二届科技文化节】智能车友谊赛','http://ssdut.dlut.edu.cn/info/1120/11467.htm','2017-11-01'),(2087,'[转]开发区校区9周考试安排','http://ssdut.dlut.edu.cn/info/1120/11447.htm','2017-10-31'),(2088,'关于开展大连理工大学2017年“活力团支部”创建遴选活动的通...','http://ssdut.dlut.edu.cn/info/1116/11445.htm','2017-10-31'),(2089,'关于启用“本科生自助打印系统”的通知','http://ssdut.dlut.edu.cn/info/1120/11442.htm','2017-10-31'),(2090,'关于公示2016-2017学年大连市先进班集体名单的通知','http://ssdut.dlut.edu.cn/info/1116/11435.htm','2017-10-30'),(2091,'（报名及说明会）美国加州大学欧文分校2018年暑期科研项目','http://ssdut.dlut.edu.cn/info/1120/11425.htm','2017-10-27'),(2092,'（报名及说明会）美国加州大学欧文分校2018年秋季派出3+2项目','http://ssdut.dlut.edu.cn/info/1116/11423.htm','2017-10-27'),(2093,'关于公示2016-2017学年大连理工大学先进班集体名单的通知','http://ssdut.dlut.edu.cn/info/1116/11419.htm','2017-10-27'),(2094,'学业指导中心2017-2018学年本科生科研能力提升讲座(第二期)','http://ssdut.dlut.edu.cn/info/1116/11408.htm','2017-10-26'),(2095,'关于公布2016-2017学年院优良学风班、院优良学风标兵班、校优...','http://ssdut.dlut.edu.cn/info/1116/11394.htm','2017-10-25'),(2096,'关于软件学院第十六届团委学生会副部级学生干部挂职工作名单...','http://ssdut.dlut.edu.cn/info/1116/11392.htm','2017-10-24'),(2097,'关于2017年大连市“正源”大学生奖学金软件学院推荐人名单公...','http://ssdut.dlut.edu.cn/info/1116/11391.htm','2017-10-24'),(2098,'关于推荐2016-2017学年大连市三好学生的通知','http://ssdut.dlut.edu.cn/info/1120/11385.htm','2017-10-24'),(2099,'关于领取第九届全国大学生数学竞赛（辽宁赛区）预赛的准考证...','http://ssdut.dlut.edu.cn/info/1120/11379.htm','2017-10-24'),(2100,'关于评选2017年大连市“正源”大学生奖学金的 通知','http://ssdut.dlut.edu.cn/info/1116/11373.htm','2017-10-23'),(2101,'关于软件学院第十六届团委学生会各级学生干部名单公示的通知','http://ssdut.dlut.edu.cn/info/1116/11367.htm','2017-10-23'),(2102,'关于2017级本科生网上电子注册学籍查询的通知','http://ssdut.dlut.edu.cn/info/1120/11352.htm','2017-10-23'),(2103,'【实践评比】关于评选2017年暑假社会实践优秀个人实践报告的...','http://ssdut.dlut.edu.cn/info/1116/11342.htm','2017-10-22'),(2104,'2017年软件学院暑期社会实践校级优秀个人与院级优秀个人评比...','http://ssdut.dlut.edu.cn/info/1116/11341.htm','2017-10-22'),(2105,'2017年软件学院暑期社会实践院级优秀实践队伍最终名单公示','http://ssdut.dlut.edu.cn/info/1116/11340.htm','2017-10-22'),(2106,'2017年软件学院暑期社会实践校级优秀实践队伍最终名单公示','http://ssdut.dlut.edu.cn/info/1116/11339.htm','2017-10-22'),(2107,'关于举办“美国宾州州立大学国际交流报告会”的通知','http://ssdut.dlut.edu.cn/info/1120/11318.htm','2017-10-20'),(2108,'关于体育馆10月20日临时闭馆的通知','http://ssdut.dlut.edu.cn/info/1116/11312.htm','2017-10-19'),(2109,'[转]关于举办2017年秋季学期第四期“名师面对面”活动的通知','http://ssdut.dlut.edu.cn/info/1120/11307.htm','2017-10-19'),(2110,'关于举办澳洲留学项目工作说明会的通知','http://ssdut.dlut.edu.cn/info/1120/11305.htm','2017-10-19'),(2111,'关于举办澳洲留学项目工作说明会的通知','http://ssdut.dlut.edu.cn/info/1120/11305.htm','2017-10-19'),(2112,'关于开展第十届“10.10”大学生心理文化月活动通知','http://ssdut.dlut.edu.cn/info/1116/11294.htm','2017-10-18'),(2113,'关于举办“第四届全国高校云计算应用创新大赛”的通知','http://ssdut.dlut.edu.cn/info/1120/11292.htm','2017-10-18'),(2114,'关于举办第九届蓝桥杯全国软件和信息技术专业人才大赛的通知','http://ssdut.dlut.edu.cn/info/1120/11291.htm','2017-10-18'),(2115,'关于2017-2018学年第一期社区挂职名单公示及核对的通知','http://ssdut.dlut.edu.cn/info/1116/11283.htm','2017-10-17'),(2116,'关于选拔大连理工大学2017年青年马克思主义者培养工程暨“红...','http://ssdut.dlut.edu.cn/info/1116/11282.htm','2017-10-17'),(2117,'2017“英飞凌杯”全国高校无人机创新设计应用大赛','http://ssdut.dlut.edu.cn/info/1120/11271.htm','2017-10-17'),(2118,'开发区校区平面设计大赛通知','http://ssdut.dlut.edu.cn/info/1120/11262.htm','2017-10-16'),(2119,' 2017年大连理工大学暑期社会实践校级优秀个人评比结果公示','http://ssdut.dlut.edu.cn/info/1116/11260.htm','2017-10-16'),(2120,'2017年软件学院暑期社会实践院级优秀个人评比结果公示','http://ssdut.dlut.edu.cn/info/1116/11259.htm','2017-10-16'),(2121,'2017年省级、校级创新训练项目中期检查安排通知','http://ssdut.dlut.edu.cn/info/1120/11239.htm','2017-10-16'),(2122,'关于举办大连理工大学开发区校区第二届日语书法大赛的通知','http://ssdut.dlut.edu.cn/info/1120/11221.htm','2017-10-13'),(2123,'2017年大连理工大学开发区校区“日语朗诵比赛”通知','http://ssdut.dlut.edu.cn/info/1120/11219.htm','2017-10-13'),(2124,'团委学习部“我和考试有个诚信之约”活动宣讲会成功举办','http://ssdut.dlut.edu.cn/info/1116/11209.htm','2017-10-13'),(2125,'首届‘解放号杯’程序员大赛通知','http://ssdut.dlut.edu.cn/info/1120/11207.htm','2017-10-13'),(2126,'大连理工大学开发区校区第四届日语配音比赛','http://ssdut.dlut.edu.cn/info/1120/11206.htm','2017-10-13'),(2127,'关于开展2016~2017学年软件学院“优良学风班”评选的通知','http://ssdut.dlut.edu.cn/info/1116/11205.htm','2017-10-13'),(2128,'关于举办开发区校区2017年秋季运动会当天停课通知','http://ssdut.dlut.edu.cn/info/1120/11202.htm','2017-10-13'),(2129,'开发区校区2017级本科生军事理论课上课通知','http://ssdut.dlut.edu.cn/info/1120/11200.htm','2017-10-12'),(2130,'关于体育馆10月14日（周六）器械健身馆临时闭馆的通知','http://ssdut.dlut.edu.cn/info/1116/11199.htm','2017-10-12'),(2131,'关于招募2017-2018学年软件学院团委学生会副部级学生干部挂职...','http://ssdut.dlut.edu.cn/info/1116/11195.htm','2017-10-12'),(2132,'学业指导中心2017-2018学年本科生科研能力提升讲座(第一期)','http://ssdut.dlut.edu.cn/info/1116/11194.htm','2017-10-12'),(2133,'关于2016-2017学年专项奖学金（第二批）评审工作启动的通知','http://ssdut.dlut.edu.cn/info/1116/11193.htm','2017-10-12'),(2134,'关于领取2018届毕业生信息核对表的通知','http://ssdut.dlut.edu.cn/info/1120/11191.htm','2017-10-12'),(2135,'关于开展大连理工大学开发区校区2017秋季学期社区挂职（第一...','http://ssdut.dlut.edu.cn/info/1116/11189.htm','2017-10-11'),(2136,'\"计算机系统组装与设置 \"课第9-12节课上课时间','http://ssdut.dlut.edu.cn/info/1120/11188.htm','2017-10-11'),(2137,'\"计算机系统组装与设置 \"课第9-12节课上课时间','http://ssdut.dlut.edu.cn/info/1120/11188.htm','2017-10-11'),(2138,'关于软件学院2017-2018学年团校（三级）培训支部团支书招募的...','http://ssdut.dlut.edu.cn/info/1116/11183.htm','2017-10-11'),(2139,'关于参加日本早稻田大学信息生产系统研究科（简称IPS）留学说...','http://ssdut.dlut.edu.cn/info/1120/11182.htm','2017-10-11'),(2140,'\"传感网与无线网络\"课程本周五补课通知','http://ssdut.dlut.edu.cn/info/1120/11181.htm','2017-10-11'),(2141,'软件学院2017年第二期学生预备党员培训通知','http://ssdut.dlut.edu.cn/info/1116/11171.htm','2017-10-10'),(2142,' 软件学院17级“信息技术导论”10月14日第2次课上课时间地点...','http://ssdut.dlut.edu.cn/info/1120/11167.htm','2017-10-09'),(2143,'关于学习贯彻习近平总书记给南开大学新入伍大学生重要回信精...','http://ssdut.dlut.edu.cn/info/1116/11166.htm','2017-10-09'),(2144,'2017年大学生创新创业训练项目报销流程与规定','http://ssdut.dlut.edu.cn/info/1120/11163.htm','2017-10-09'),(2145,'2017年暑期软件学院社会实践校级二、三等奖优秀队伍拟定推选...','http://ssdut.dlut.edu.cn/info/1116/11123.htm','2017-09-30'),(2146,'2017年暑期软件学院社会实践院级优秀队伍评比结果公示','http://ssdut.dlut.edu.cn/info/1116/11122.htm','2017-09-30'),(2147,'关于开展大连理工大学2016--2017学年专项奖学金（第一批）评...','http://ssdut.dlut.edu.cn/info/1116/11121.htm','2017-09-30'),(2148,'关于体育馆国庆假期业余健身开放时间的通知','http://ssdut.dlut.edu.cn/info/1116/11107.htm','2017-09-27'),(2149,'软件学院关于领取英语四、六级核对表的通知','http://ssdut.dlut.edu.cn/info/1120/11103.htm','2017-09-27'),(2150,'关于2017年下半年法定节假日安排的通知( 课程相关安排）','http://ssdut.dlut.edu.cn/info/1120/11102.htm','2017-09-27'),(2151,'课序号03、04的“数据结构与算法”课调课通知','http://ssdut.dlut.edu.cn/info/1120/11101.htm','2017-09-27'),(2152,'软件学院关于对2017级本科生实施导师制的通知','http://ssdut.dlut.edu.cn/info/1120/11100.htm','2017-09-27'),(2153,'关于招募团委青年志愿者协会会员的通知','http://ssdut.dlut.edu.cn/info/1116/11093.htm','2017-09-25'),(2154,'软件学院关于本科生导师指导手册抽查的通知','http://ssdut.dlut.edu.cn/info/1120/11080.htm','2017-09-25'),(2155,'关于本学期大学物理实验二级选课系统15至18周课程选课的通知','http://ssdut.dlut.edu.cn/info/1120/11067.htm','2017-09-25'),(2156,'“传感网络与无线网络技术”9月26日调课通知','http://ssdut.dlut.edu.cn/info/1120/11066.htm','2017-09-25'),(2157,'关于一卡通服务厅调整国庆、中秋节假期办公时间的通知','http://ssdut.dlut.edu.cn/info/1120/11064.htm','2017-09-25'),(2158,'开发区校区语言与思维实训基地英语部第四届学生干部换届结果','http://ssdut.dlut.edu.cn/info/1120/11060.htm','2017-09-25'),(2159,'【秋季运动会】关于秋季运动会招募志愿者的通知','http://ssdut.dlut.edu.cn/info/1116/11043.htm','2017-09-22'),(2160,'转发：关于举办2017年秋季学期第二期“名师面对面”活动的通...','http://ssdut.dlut.edu.cn/info/1120/11041.htm','2017-09-22'),(2161,'【秋季运动会】关于开发区校区秋季运动会学生运动员报名的通知','http://ssdut.dlut.edu.cn/info/1116/11034.htm','2017-09-21'),(2162,'物联网与智能车组招募大二新成员','http://ssdut.dlut.edu.cn/info/1120/11032.htm','2017-09-21'),(2163,'物联网与智能车组招募大二新成员','http://ssdut.dlut.edu.cn/info/1120/11032.htm','2017-09-21'),(2164,'Android 全国大学生移动互联网创新挑战赛通知','http://ssdut.dlut.edu.cn/info/1120/11022.htm','2017-09-20'),(2165,'2017级软件学院“英语听说1”调课通知','http://ssdut.dlut.edu.cn/info/1120/11020.htm','2017-09-20'),(2166,'转：7月9月毕业生领取证书的通知','http://ssdut.dlut.edu.cn/info/1120/11010.htm','2017-09-20'),(2167,'关于2014级本学期选修社会实践、形势与政策课确认通知','http://ssdut.dlut.edu.cn/info/1120/11009.htm','2017-09-20'),(2168,'（即将截止） CCF 大学生计算机系统与程序设计竞赛(CCSP)报名...','http://ssdut.dlut.edu.cn/info/1120/11006.htm','2017-09-19'),(2169,'个性化选修课《日语影视剧配音表演》开课通知','http://ssdut.dlut.edu.cn/info/1120/11000.htm','2017-09-19'),(2170,'软件学院参加分级考试学生名单','http://ssdut.dlut.edu.cn/info/1120/10994.htm','2017-09-18'),(2171,'软件学院推荐2018年优秀应届本科毕业生免试攻读研究生录取名...','http://ssdut.dlut.edu.cn/info/1120/10979.htm','2017-09-18'),(2172,'转发：关于2017年12月全国大学外语考试报名工作的通知','http://ssdut.dlut.edu.cn/info/1120/10969.htm','2017-09-18'),(2173,'11次ccf CSP 认证准考证打印的通知','http://ssdut.dlut.edu.cn/info/1120/10920.htm','2017-09-15'),(2174,'领取“计算机组织与结构实验”报告册通知','http://ssdut.dlut.edu.cn/info/1120/10905.htm','2017-09-15'),(2175,'17-18学年第一学期上机安排','http://ssdut.dlut.edu.cn/info/1120/10904.htm','2017-09-15'),(2176,'2018年优秀应届本科毕业生免试攻读研究生科创保研录取名单公...','http://ssdut.dlut.edu.cn/info/1120/10903.htm','2017-09-15'),(2177,'软件学院推荐2018年优秀应届本科毕业生免试攻读研究生录取名...','http://ssdut.dlut.edu.cn/info/1120/10901.htm','2017-09-15'),(2178,'关于开展大连理工大学2016-2017学年校优秀学生标兵评选工作的...','http://ssdut.dlut.edu.cn/info/1116/10889.htm','2017-09-14'),(2179,'软件学院推荐2018年优秀应届本科毕业生免试攻读研究生名单公...','http://ssdut.dlut.edu.cn/info/1120/10875.htm','2017-09-14'),(2180,'国际信息与软件学院本科课程助教岗位申请通知','http://ssdut.dlut.edu.cn/info/1120/10874.htm','2017-09-14'),(2181,'关于本学期大学物理实验二级选课的通知','http://ssdut.dlut.edu.cn/info/1120/10871.htm','2017-09-14'),(2182,'软件学院本科课程助教岗位申请流程','http://ssdut.dlut.edu.cn/info/1120/10869.htm','2017-09-14'),(2183,'2018年保研报名并确认名单公示','http://ssdut.dlut.edu.cn/info/1120/10859.htm','2017-09-13'),(2184,'关于2017-2018学年秋季学期研究生申请本科课程助教岗位的通知','http://ssdut.dlut.edu.cn/info/1120/10853.htm','2017-09-13'),(2185,'2017年大学生创新创业训练计划项目中期检查通知','http://ssdut.dlut.edu.cn/info/1120/10852.htm','2017-09-13'),(2186,'关于领取第二十六届大学生数学竞赛获奖证书的通知','http://ssdut.dlut.edu.cn/info/1120/10851.htm','2017-09-13'),(2187,'2017年校区科技创新保研答辩名单与安排','http://ssdut.dlut.edu.cn/info/1120/10849.htm','2017-09-13'),(2188,'目前保研报名公示','http://ssdut.dlut.edu.cn/info/1120/10844.htm','2017-09-13'),(2189,'目前保研报名公示','http://ssdut.dlut.edu.cn/info/1120/10844.htm','2017-09-13'),(2190,'17-18学年第一学期选课补录通知','http://ssdut.dlut.edu.cn/info/1120/10840.htm','2017-09-13'),(2191,'2014级保研专业综合排名公示','http://ssdut.dlut.edu.cn/info/1120/10839.htm','2017-09-13'),(2192,'16、17级第三周体育理论课上课通知','http://ssdut.dlut.edu.cn/info/1120/10809.htm','2017-09-12'),(2193,'关于科技创新类免试推荐硕士研究生有关事宜的通知','http://ssdut.dlut.edu.cn/info/1120/10806.htm','2017-09-12'),(2194,'软件学院2018年推荐优秀应届本科毕业生免试攻读硕士学位研究...','http://ssdut.dlut.edu.cn/info/1120/10805.htm','2017-09-12'),(2195,'2014级三年成绩排名公示','http://ssdut.dlut.edu.cn/info/1120/10804.htm','2017-09-12'),(2196,'“计算几何与计算机图形学”调课通知','http://ssdut.dlut.edu.cn/info/1120/10786.htm','2017-09-11'),(2197,'   课序号01、02、05、06“计算机组织与结构”调课通知','http://ssdut.dlut.edu.cn/info/1120/10785.htm','2017-09-11'),(2198,'转发：大连理工大学第二十届研究生支教团招募预通知','http://ssdut.dlut.edu.cn/info/1116/10773.htm','2017-09-10'),(2199,'关于CCF计算机软件能力认证考试报名通知','http://ssdut.dlut.edu.cn/info/1120/10772.htm','2017-09-10'),(2200,'校体教部开展2017级新生体质测试的通知','http://ssdut.dlut.edu.cn/info/1120/10771.htm','2017-09-10'),(2201,'2014级本科生推免及接收政策宣讲预通知','http://ssdut.dlut.edu.cn/info/1120/10759.htm','2017-09-10'),(2202,'关于“第二课堂”中社会实践课程选课的通知','http://ssdut.dlut.edu.cn/info/1116/10751.htm','2017-09-08'),(2203,'网络信息安全实验上课安排','http://ssdut.dlut.edu.cn/info/1120/10739.htm','2017-09-08'),(2204,'关于软件学院2016级2016-2017学年（1-3学期）成绩专业排名公...','http://ssdut.dlut.edu.cn/info/1120/10732.htm','2017-09-07'),(2205,'关于领取本学期辅修乘车证的通知','http://ssdut.dlut.edu.cn/info/1120/10731.htm','2017-09-07'),(2206,'关于软件学院2014级2016-2017学年（成绩）专业排名公示的通知...','http://ssdut.dlut.edu.cn/info/1120/10729.htm','2017-09-07'),(2207,'关于软件学院2015级2016-2017学年（成绩）专业排名公示的通知','http://ssdut.dlut.edu.cn/info/1120/10723.htm','2017-09-07'),(2208,'‍关于语言与思维实训基地英语部2017年换届选拔通知','http://ssdut.dlut.edu.cn/info/1120/10709.htm','2017-09-06'),(2209,'“工科数学分析基础II”重修班开课通知','http://ssdut.dlut.edu.cn/info/1120/10693.htm','2017-09-06'),(2210,'9月6日“创造性思维与创新方法”课停上','http://ssdut.dlut.edu.cn/info/1120/10692.htm','2017-09-06'),(2211,'2017年下半年本学期大学物理实验上课通知','http://ssdut.dlut.edu.cn/info/1120/10691.htm','2017-09-06'),(2212,'关于科创奖学金公布材料中（小美赛）统计的说明','http://ssdut.dlut.edu.cn/info/1120/10689.htm','2017-09-06'),(2213,'关于开发区校区2017级新生参观心理咨询室的通知','http://ssdut.dlut.edu.cn/info/1116/10670.htm','2017-09-06'),(2214,'关于2016-2017学年开发区校区外语教育中心语言与思维训练基地...','http://ssdut.dlut.edu.cn/info/1120/10669.htm','2017-09-06'),(2215,'关于2016-2017学年开发区校区外语教育中心语言与思维训练基地...','http://ssdut.dlut.edu.cn/info/1120/10669.htm','2017-09-06'),(2216,'大连理工大学阿尔法实验室招收2018年度推免生','http://ssdut.dlut.edu.cn/info/1120/10640.htm','2017-09-05'),(2217,'关于公示2016-2017学年开发区校区外语教育中心语言与思维训练...','http://ssdut.dlut.edu.cn/info/1120/10630.htm','2017-09-05'),(2218,'软件学院2017届本科毕业生九月答辩安排-9月7日答辩','http://ssdut.dlut.edu.cn/info/1120/10629.htm','2017-09-05'),(2219,'本学期大四学生实训通知','http://ssdut.dlut.edu.cn/info/1120/10607.htm','2017-09-05'),(2220,'大连理工大学开发区校区2017年新生体检工作安排','http://ssdut.dlut.edu.cn/info/1116/10604.htm','2017-09-05'),(2221,'朱明老师创造性思维与创新方法调整上课时间','http://ssdut.dlut.edu.cn/info/1120/10602.htm','2017-09-05'),(2222,'关于公示2016-2017学年中日国际信息与软件学院优秀学生奖学金...','http://ssdut.dlut.edu.cn/info/1116/10601.htm','2017-09-05'),(2223,'2016-2017学年科创奖学金最终版公布','http://ssdut.dlut.edu.cn/info/1120/10600.htm','2017-09-05'),(2224,'关于公示大连理工大学开发区校区2017年迎新志愿者志愿服务时...','http://ssdut.dlut.edu.cn/info/1116/10572.htm','2017-09-04'),(2225,'学生公寓2016年10月份——2017年6月份的卫生检查成绩公示','http://ssdut.dlut.edu.cn/info/1116/10562.htm','2017-09-04'),(2226,'2016-2017学年科技创新奖学金评比材料公示','http://ssdut.dlut.edu.cn/info/1120/10541.htm','2017-09-03'),(2227,'关于上交2017暑假社会实践后期材料及暑假社会实践后期答辩的...','http://ssdut.dlut.edu.cn/info/1116/10540.htm','2017-09-02'),(2228,'14级本科生校内进实训基地的同学选课通知','http://ssdut.dlut.edu.cn/info/1120/10537.htm','2017-09-01'),(2229,'关于本学期注册的通知','http://ssdut.dlut.edu.cn/info/1120/10536.htm','2017-09-01'),(2230,'本学期大四学生实训通知','http://ssdut.dlut.edu.cn/info/1120/10535.htm','2017-09-01'),(2231,'关于体育馆业余健身开放时间的通知','http://ssdut.dlut.edu.cn/info/1116/10530.htm','2017-08-31'),(2232,'[报名即将截止］2017年“高教社”杯全国大学生数学建模竞赛报...','http://ssdut.dlut.edu.cn/info/1120/10527.htm','2017-08-31'),(2233,'开发区校区2016-2017学年2015级社会工作奖学金打擂通知及其他...','http://ssdut.dlut.edu.cn/info/1116/10526.htm','2017-08-31'),(2234,'关于本学期体育补考安排通知','http://ssdut.dlut.edu.cn/info/1120/10523.htm','2017-08-31'),(2235,'开发区校区2016-2017学年2015级社会工作奖学金打擂入围名单公...','http://ssdut.dlut.edu.cn/info/1116/10493.htm','2017-08-21'),(2236,'秋季学期补考安排','http://ssdut.dlut.edu.cn/info/1120/10491.htm','2017-08-16'),(2237,'2016-2017学年软件学院团委学生会相关行为积分公示（最终版）','http://ssdut.dlut.edu.cn/info/1116/10482.htm','2017-08-09'),(2238,'2016-2017学年软件学院团委学生会相关行为积分公示（更新版）','http://ssdut.dlut.edu.cn/info/1116/10469.htm','2017-08-01'),(2239,'关于一卡通服务厅暑假期间办公时间安排的通知','http://ssdut.dlut.edu.cn/info/1120/10265.htm','2017-07-23'),(2240,'关于核对2017—2018学年秋季学期辅修选课的通知(更新)','http://ssdut.dlut.edu.cn/info/1120/10436.htm','2017-07-23'),(2241,'关于核对2017—2018学年秋季学期辅修选课的通知(更新)','http://ssdut.dlut.edu.cn/info/1120/10436.htm','2017-07-23'),(2242,'关于2016-2017年度千优寝室评比的通知','http://ssdut.dlut.edu.cn/info/1116/10427.htm','2017-07-22'),(2243,'关于软件学院第十六届团委学生会副部级学生干部（试用期）名...','http://ssdut.dlut.edu.cn/info/1116/10423.htm','2017-07-21'),(2244,'关于核对2017—2018学年秋季学期辅修选课的通知','http://ssdut.dlut.edu.cn/info/1120/10418.htm','2017-07-21'),(2245,'关于公布软件学院、国际信息与软件学院2017级新生班导生名单...','http://ssdut.dlut.edu.cn/info/1116/10417.htm','2017-07-21'),(2246,'第三届语言与思维实训基地日语部学生干部换届结果','http://ssdut.dlut.edu.cn/info/1120/10415.htm','2017-07-21'),(2247,'关于大连理工大学开发区校区2017年迎新志愿者名单公示及核对...','http://ssdut.dlut.edu.cn/info/1116/10408.htm','2017-07-20'),(2248,'关于软件学院学生广播台副部级学生干部候选人名单公示的通知','http://ssdut.dlut.edu.cn/info/1116/10405.htm','2017-07-20'),(2249,'校区2017年创新创业引导基金支持项目公布','http://ssdut.dlut.edu.cn/info/1120/10403.htm','2017-07-20'),(2250,'【科创】2016-2017学年校区科技创新奖学金评定信息第二轮公示','http://ssdut.dlut.edu.cn/info/1120/10402.htm','2017-07-20'),(2251,'‍开发区bp辩论与开发区模联活动志愿者名单公示-外语教育中心','http://ssdut.dlut.edu.cn/info/1120/10401.htm','2017-07-20'),(2252,'‍模联协会行为积分公示-7月21日早8:00修订-外语教育中心','http://ssdut.dlut.edu.cn/info/1120/10399.htm','2017-07-20'),(2253,'2016-2017学年软件学院团委学生会相关行为积分公示（第一版）','http://ssdut.dlut.edu.cn/info/1116/10398.htm','2017-07-19'),(2254,'2017年CSC-IBM优秀学生奖学金推荐名单公示','http://ssdut.dlut.edu.cn/info/1120/10397.htm','2017-07-19'),(2255,'关于软件学院学生广播台副部级学生干部招募的通知','http://ssdut.dlut.edu.cn/info/1116/10391.htm','2017-07-19'),(2256,'2017年橙梦企航北京团队成员名单公示','http://ssdut.dlut.edu.cn/info/1116/10388.htm','2017-07-19'),(2257,'2017年橙梦企航沈阳团队成员名单公示','http://ssdut.dlut.edu.cn/info/1116/10387.htm','2017-07-19'),(2258,'2017年橙梦起航上海团队成员名单公示','http://ssdut.dlut.edu.cn/info/1116/10384.htm','2017-07-18'),(2259,'2017年橙梦起航杭州团队成员名单公示','http://ssdut.dlut.edu.cn/info/1116/10383.htm','2017-07-18'),(2260,'2017年CSC-IBM优秀学生奖学金申报通知','http://ssdut.dlut.edu.cn/info/1120/10382.htm','2017-07-18'),(2261,'2017年橙梦起航大连团队成员名单公示','http://ssdut.dlut.edu.cn/info/1116/10381.htm','2017-07-18'),(2262,'关于2017级新生班导生面试的通知','http://ssdut.dlut.edu.cn/info/1116/10380.htm','2017-07-18'),(2263,'[转学校]关于召开2017年转大类（专业）学生培训会的通知','http://ssdut.dlut.edu.cn/info/1120/10369.htm','2017-07-18'),(2264,'关于社团社长招募的通知','http://ssdut.dlut.edu.cn/info/1116/10363.htm','2017-07-17'),(2265,'关于社团社长换届公示的通知','http://ssdut.dlut.edu.cn/info/1116/10362.htm','2017-07-17'),(2266,'关于公布2017橙梦企航深圳团最终名单及安排的通知','http://ssdut.dlut.edu.cn/info/1116/10361.htm','2017-07-17'),(2267,'关于公布2017橙梦企航深圳团最终名单及安排的通知','http://ssdut.dlut.edu.cn/info/1116/10361.htm','2017-07-17'),(2268,'2017年暑期“橙梦企航”沈阳团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10349.htm','2017-07-17'),(2269,'关于2018届实习生签订校外实习协议书和风险提示书的通知（第...','http://ssdut.dlut.edu.cn/info/1116/10336.htm','2017-07-17'),(2270,'软件学院2016级奖学金评审安排通知','http://ssdut.dlut.edu.cn/info/1116/10321.htm','2017-07-17'),(2271,'【科创】2016-2017学年校区科技创新奖学金评定信息第一轮公示','http://ssdut.dlut.edu.cn/info/1120/10320.htm','2017-07-17'),(2272,'关于招聘2017级新生班导生的通知','http://ssdut.dlut.edu.cn/info/1116/10310.htm','2017-07-17'),(2273,'关于第三届语言与思维实训基地日语部换届选拔的通知','http://ssdut.dlut.edu.cn/info/1120/10307.htm','2017-07-17'),(2274,'2017年暑期“橙梦企航”杭州团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10304.htm','2017-07-16'),(2275,'开发区校区2016-2017学年2015级社会工作奖学金评审流程及其他...','http://ssdut.dlut.edu.cn/info/1116/10303.htm','2017-07-15'),(2276,'2017-2018学年创新创业实践中心副主任名单公布','http://ssdut.dlut.edu.cn/info/1120/10302.htm','2017-07-15'),(2277,'2017年暑期“橙梦企航”南京团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10301.htm','2017-07-15'),(2278,'2017年暑期“橙梦企航”北京团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10300.htm','2017-07-14'),(2279,'2017年暑期“橙梦企航”深圳团队面试的通知','http://ssdut.dlut.edu.cn/info/1116/10299.htm','2017-07-14'),(2280,'关于软件学院第十六届团委学生会部长级及以上学生干部候选人...','http://ssdut.dlut.edu.cn/info/1116/10290.htm','2017-07-14'),(2281,'关于2014级社会工作奖学金打擂时间安排的通知','http://ssdut.dlut.edu.cn/info/1116/10288.htm','2017-07-14'),(2282,'关于领取2017-2018学年校历的通知','http://ssdut.dlut.edu.cn/info/1120/10286.htm','2017-07-14'),(2283,'2017年暑期“橙梦起航”大连团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10285.htm','2017-07-14'),(2284,'2017年暑期“橙梦企航”赴西安企业行队员名单公示','http://ssdut.dlut.edu.cn/info/1116/10283.htm','2017-07-14'),(2285,'橙梦企航上海团队面试通知','http://ssdut.dlut.edu.cn/info/1116/10282.htm','2017-07-14'),(2286,'2015级金融信息化专业方向师生见面会','http://ssdut.dlut.edu.cn/info/1120/10275.htm','2017-07-13'),(2287,'2017 Android 全国大学生移动互联网创新挑战赛通知','http://ssdut.dlut.edu.cn/info/1120/10270.htm','2017-07-12'),(2288,'中国公益基金会数据骇客马拉松比赛通知','http://ssdut.dlut.edu.cn/info/1120/10269.htm','2017-07-12'),(2289,'2017届毕业设计二次答辩安排的通知','http://ssdut.dlut.edu.cn/info/1120/10267.htm','2017-07-12'),(2290,'关于招募2017年开发区校区迎新志愿者的通知','http://ssdut.dlut.edu.cn/info/1116/10257.htm','2017-07-11'),(2291,'关于公示大连理工大学开发区校区2016-2017学年优秀青年志愿者...','http://ssdut.dlut.edu.cn/info/1116/10256.htm','2017-07-11'),(2292,'关于2016-2017学年第三期社区挂职名单公示及核对的通知','http://ssdut.dlut.edu.cn/info/1116/10255.htm','2017-07-11'),(2293,'关于2016-2017学年第三期社区挂职名单公示及核对的通知','http://ssdut.dlut.edu.cn/info/1116/10255.htm','2017-07-11'),(2294,'转入软件学院面试安排','http://ssdut.dlut.edu.cn/info/1120/10253.htm','2017-07-11'),(2295,'关于补办学生证的通知','http://ssdut.dlut.edu.cn/info/1120/10252.htm','2017-07-11'),(2296,'关于举办第三届“原创视频比赛”的通知','http://ssdut.dlut.edu.cn/info/1120/10249.htm','2017-07-11'),(2297,'关于软件学院2014级开展2016-2017学年社会工作奖学金申报的通...','http://ssdut.dlut.edu.cn/info/1116/10243.htm','2017-07-11'),(2298,'关于成立2014级2016-2017学年奖学金评审委员会的通知','http://ssdut.dlut.edu.cn/info/1116/10242.htm','2017-07-11'),(2299,'2017全国平面公益广告大赛作品征集公告','http://ssdut.dlut.edu.cn/info/1120/10240.htm','2017-07-11'),(2300,'学生公寓6月份卫生检查成绩公示','http://ssdut.dlut.edu.cn/info/1116/10235.htm','2017-07-10'),(2301,'2014级本科生校外实习规定及相关材料-修订','http://ssdut.dlut.edu.cn/info/1120/10232.htm','2017-07-10'),(2302,' 关于 2017-2018学年秋季学期辅修选课通知 ','http://ssdut.dlut.edu.cn/info/1120/10219.htm','2017-07-10'),(2303,'关于2017-2018学年第一学期（秋季）本科生选课工作安排的通知','http://ssdut.dlut.edu.cn/info/1120/10209.htm','2017-07-10'),(2304,'关于2014级补休素质拓展课程的通知','http://ssdut.dlut.edu.cn/info/1116/10207.htm','2017-07-09'),(2305,'软件学院2016级素质拓展训练课程上课相关通知(第二批)','http://ssdut.dlut.edu.cn/info/1116/10206.htm','2017-07-09'),(2306,'关于软件学院第十六届团委学生会部长级及以上学生干部补招笔...','http://ssdut.dlut.edu.cn/info/1116/10205.htm','2017-07-08'),(2307,'关于软件学院第十六届团委学生会副部级学生干部换届面试的通知','http://ssdut.dlut.edu.cn/info/1116/10203.htm','2017-07-08'),(2308,'关于评选大连理工大学开发区校区2016-2017学年优秀青年志愿者...','http://ssdut.dlut.edu.cn/info/1116/10202.htm','2017-07-07'),(2309,'关于软件学院第十六届团委学生会副部级学生干部换届笔试的通知','http://ssdut.dlut.edu.cn/info/1116/10200.htm','2017-07-07'),(2310,'关于软件学院第十六届团委学生会部长级及以上学生干部补招的通知','http://ssdut.dlut.edu.cn/info/1116/10199.htm','2017-07-07'),(2311,'软件学院2017届本科毕业生二次答辩安排-时间调整到下周四','http://ssdut.dlut.edu.cn/info/1120/10196.htm','2017-07-07'),(2312,'关于软件学院、国际信息与软件学院开展大连理工大学2016-2017...','http://ssdut.dlut.edu.cn/info/1116/10190.htm','2017-07-07'),(2313,'关于夏季学期第三周考试安排的通知','http://ssdut.dlut.edu.cn/info/1120/10189.htm','2017-07-07'),(2314,'关于3舍三层、四层换床施工的通知','http://ssdut.dlut.edu.cn/info/1116/10183.htm','2017-07-07'),(2315,'关于学生社团社长换届竞选的通知','http://ssdut.dlut.edu.cn/info/1116/10182.htm','2017-07-07'),(2316,'关于开展开发区校区“星级社团”审定的通知','http://ssdut.dlut.edu.cn/info/1116/10181.htm','2017-07-07'),(2317,'“埃森哲杯”移动互联网竞赛获奖通知','http://ssdut.dlut.edu.cn/info/1120/10170.htm','2017-07-07');
/*!40000 ALTER TABLE `xszz_xszz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-11 22:23:30
