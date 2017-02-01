-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: localhost    Database: uni
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
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
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add c dept',7,'add_cdept'),(20,'Can change c dept',7,'change_cdept'),(21,'Can delete c dept',7,'delete_cdept'),(22,'Can add course',8,'add_course'),(23,'Can change course',8,'change_course'),(24,'Can delete course',8,'delete_course'),(25,'Can add department',9,'add_department'),(26,'Can change department',9,'change_department'),(27,'Can delete department',9,'delete_department'),(28,'Can add feedback course',10,'add_feedbackcourse'),(29,'Can change feedback course',10,'change_feedbackcourse'),(30,'Can delete feedback course',10,'delete_feedbackcourse'),(31,'Can add feedback inst',11,'add_feedbackinst'),(32,'Can change feedback inst',11,'change_feedbackinst'),(33,'Can delete feedback inst',11,'delete_feedbackinst'),(34,'Can add feedback lab',12,'add_feedbacklab'),(35,'Can change feedback lab',12,'change_feedbacklab'),(36,'Can delete feedback lab',12,'delete_feedbacklab'),(37,'Can add feedback tut',13,'add_feedbacktut'),(38,'Can change feedback tut',13,'change_feedbacktut'),(39,'Can delete feedback tut',13,'delete_feedbacktut'),(40,'Can add instructor',14,'add_instructor'),(41,'Can change instructor',14,'change_instructor'),(42,'Can delete instructor',14,'delete_instructor'),(43,'Can add lab',15,'add_lab'),(44,'Can change lab',15,'change_lab'),(45,'Can delete lab',15,'delete_lab'),(46,'Can add stu lab',16,'add_stulab'),(47,'Can change stu lab',16,'change_stulab'),(48,'Can delete stu lab',16,'delete_stulab'),(49,'Can add stu tut',17,'add_stutut'),(50,'Can change stu tut',17,'change_stutut'),(51,'Can delete stu tut',17,'delete_stutut'),(52,'Can add student',18,'add_student'),(53,'Can change student',18,'change_student'),(54,'Can delete student',18,'delete_student'),(55,'Can add takes',19,'add_takes'),(56,'Can change takes',19,'change_takes'),(57,'Can delete takes',19,'delete_takes'),(58,'Can add tutorial',20,'add_tutorial'),(59,'Can change tutorial',20,'change_tutorial'),(60,'Can delete tutorial',20,'delete_tutorial');
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
  `username` varchar(30) NOT NULL,
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
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
-- Table structure for table `c_dept`
--

DROP TABLE IF EXISTS `c_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `c_dept` (
  `courseno` int(6) NOT NULL AUTO_INCREMENT,
  `dept_id` int(6) NOT NULL,
  `course_id` int(6) NOT NULL,
  PRIMARY KEY (`courseno`),
  UNIQUE KEY `unique1` (`dept_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `c_dept_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `c_dept_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_dept`
--

LOCK TABLES `c_dept` WRITE;
/*!40000 ALTER TABLE `c_dept` DISABLE KEYS */;
INSERT INTO `c_dept` VALUES (3,1,3),(4,1,4),(23,1,14),(6,2,5),(7,2,6),(22,3,14),(1,4,1),(2,4,2),(8,4,7),(15,4,11),(21,4,13),(9,5,8),(10,5,9),(12,5,10),(13,5,11),(20,5,13),(11,6,10),(14,6,11),(17,6,12),(19,6,13),(16,7,12),(18,7,13);
/*!40000 ALTER TABLE `c_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(5) NOT NULL,
  `title` char(25) DEFAULT NULL,
  `credits` int(2) DEFAULT NULL,
  `instructor_id` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'DBMS',9,6),(2,'AI',8,8),(3,'Relativity',11,1),(4,'Quantum Mechanics',13,2),(5,'Complex Analysis',9,3),(6,'Elliptic Curves',7,4),(7,'Cryptography',9,7),(8,'Feedback Systems',10,9),(9,'Signals and Systems',11,10),(10,'Electo-mechanical Systems',8,11),(11,'Robotic Joints',9,12),(12,'Molecular Biology',11,13),(13,'Advanced Prosthesis',9,14),(14,'Radioactivity',12,5),(15,'Number Theory',12,3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myuser`@`localhost`*/ /*!50003 trigger trig_course
before insert on course
for each row begin
if (id < 0) or (title like Null) or (credits < 0) or (instructor_id < 0) then
SIGNAL SQLSTATE '45000'   
 SET MESSAGE_TEXT = 'INVALID INPUT';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(6) NOT NULL,
  `dept_name` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Physics'),(2,'Math'),(3,'Chemistry'),(4,'Computer Sci'),(5,'Electrical Eng'),(6,'Mechanical Eng'),(7,'Biological Eng');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myuser`@`localhost`*/ /*!50003 trigger trig_dept
before insert on department
for each row begin
if (id < 0) or (dept_name like Null) then
SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = 'INVALID INPUT';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'feedback','cdept'),(8,'feedback','course'),(9,'feedback','department'),(10,'feedback','feedbackcourse'),(11,'feedback','feedbackinst'),(12,'feedback','feedbacklab'),(13,'feedback','feedbacktut'),(14,'feedback','instructor'),(15,'feedback','lab'),(18,'feedback','student'),(16,'feedback','stulab'),(17,'feedback','stutut'),(19,'feedback','takes'),(20,'feedback','tutorial'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-10-14 19:04:16.590108'),(2,'auth','0001_initial','2016-10-14 19:04:24.936404'),(3,'admin','0001_initial','2016-10-14 19:04:27.070327'),(4,'contenttypes','0002_remove_content_type_name','2016-10-14 19:04:28.330480'),(5,'auth','0002_alter_permission_name_max_length','2016-10-14 19:04:28.531836'),(6,'auth','0003_alter_user_email_max_length','2016-10-14 19:04:28.676716'),(7,'auth','0004_alter_user_username_opts','2016-10-14 19:04:28.734333'),(8,'auth','0005_alter_user_last_login_null','2016-10-14 19:04:29.414464'),(9,'auth','0006_require_contenttypes_0002','2016-10-14 19:04:29.459710'),(10,'sessions','0001_initial','2016-10-14 19:04:30.128109');
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
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('wg6ik5ycgqfyfhva7lgrk40zb9i6rsud','Njk2ZWQ3MGY2ZTQzY2M0NWJmMzE5MTBhN2IyMzdmZWU2NGI5MDQyYjp7InZhbGlkYXRlZCI6IkxPR0dFRCBPVVQifQ==','2016-11-05 10:45:11.366916');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_course`
--

DROP TABLE IF EXISTS `feedback_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_course` (
  `id` char(10) NOT NULL,
  `course_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  `grading_policy` int(1) DEFAULT NULL,
  `quality_of_tests` int(1) DEFAULT NULL,
  `challenging` int(1) DEFAULT NULL,
  `appreciation` int(1) DEFAULT NULL,
  `relevance` int(1) DEFAULT NULL,
  `availibility_material` int(1) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique1` (`student_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `feedback_course_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_course_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_course`
--

LOCK TABLES `feedback_course` WRITE;
/*!40000 ALTER TABLE `feedback_course` DISABLE KEYS */;
INSERT INTO `feedback_course` VALUES ('1_5',5,1,6,5,4,4,3,3,''),('2_12',12,2,6,4,5,5,3,4,''),('3_12',12,3,5,4,4,4,4,4,''),('5_12',12,5,3,5,6,3,3,4,''),('6_12',12,6,5,4,4,3,4,3,''),('7_12',12,7,4,6,4,4,4,4,''),('8_12',12,8,7,6,5,5,3,4,''),('9_12',12,9,6,3,5,5,3,3,'');
/*!40000 ALTER TABLE `feedback_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_inst`
--

DROP TABLE IF EXISTS `feedback_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_inst` (
  `id` char(10) NOT NULL,
  `instructor_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  `teaching_method` int(1) DEFAULT NULL,
  `evaluation_time` int(1) DEFAULT NULL,
  `regularity` int(1) DEFAULT NULL,
  `legibility` int(1) DEFAULT NULL,
  `audibility` int(1) DEFAULT NULL,
  `ability_to_explain` int(1) DEFAULT NULL,
  `willingess_outside_class` int(1) DEFAULT NULL,
  `interactiveness` int(1) DEFAULT NULL,
  `length_lecture` int(1) DEFAULT NULL,
  `course_id` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique1` (`student_id`,`instructor_id`),
  KEY `instructor_id` (`instructor_id`),
  CONSTRAINT `feedback_inst_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_inst_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_inst`
--

LOCK TABLES `feedback_inst` WRITE;
/*!40000 ALTER TABLE `feedback_inst` DISABLE KEYS */;
INSERT INTO `feedback_inst` VALUES ('1_5',3,1,5,5,3,4,3,3,3,5,4,5),('2_12',13,2,5,4,4,4,4,4,3,4,5,12),('3_12',13,3,4,5,4,4,4,4,3,4,5,12),('5_12',13,5,5,4,3,4,3,3,3,4,4,12),('6_12',13,6,4,4,4,4,3,4,3,4,5,12),('7_12',13,7,5,4,3,4,3,4,3,4,4,12),('8_12',13,8,5,5,4,4,4,4,3,4,4,12),('9_12',13,9,5,4,4,4,4,3,3,4,5,12);
/*!40000 ALTER TABLE `feedback_inst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_lab`
--

DROP TABLE IF EXISTS `feedback_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_lab` (
  `id` char(10) NOT NULL,
  `lab_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  `quality_assignment` int(1) DEFAULT NULL,
  `assessment` int(1) DEFAULT NULL,
  `regularity` int(1) DEFAULT NULL,
  `helpfullness_ta` int(1) DEFAULT NULL,
  `length` int(1) DEFAULT NULL,
  `usefullness` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique1` (`student_id`,`lab_id`),
  KEY `lab_id` (`lab_id`),
  CONSTRAINT `feedback_lab_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_lab_ibfk_2` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_lab_ibfk_3` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_lab_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_lab`
--

LOCK TABLES `feedback_lab` WRITE;
/*!40000 ALTER TABLE `feedback_lab` DISABLE KEYS */;
INSERT INTO `feedback_lab` VALUES ('3_12',7,3,4,5,3,4,4,4),('5_12',7,5,4,4,4,3,4,3),('6_12',7,6,5,4,3,4,4,5),('9_12',7,9,4,4,3,4,4,4);
/*!40000 ALTER TABLE `feedback_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_tut`
--

DROP TABLE IF EXISTS `feedback_tut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_tut` (
  `id` char(10) NOT NULL,
  `tutorial_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  `quality_assignment` int(1) DEFAULT NULL,
  `assessment` int(1) DEFAULT NULL,
  `regularity` int(1) DEFAULT NULL,
  `helpfullness_ta` int(1) DEFAULT NULL,
  `length` int(1) DEFAULT NULL,
  `usefullness` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique1` (`student_id`,`tutorial_id`),
  KEY `tutorial_id` (`tutorial_id`),
  CONSTRAINT `feedback_tut_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_tut_ibfk_2` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorial` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_tut_ibfk_3` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorial` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `feedback_tut_ibfk_4` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_tut`
--

LOCK TABLES `feedback_tut` WRITE;
/*!40000 ALTER TABLE `feedback_tut` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback_tut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `id` int(6) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `dept_id` int(5) DEFAULT '0',
  `password` char(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (1,'Einstein',1,'Einstein'),(2,'Bose',1,'Bose'),(3,'Tao',2,'Tao'),(4,'Euler',2,'Euler'),(5,'Curie',3,'Curie'),(6,'Reddy',4,'Reddy'),(7,'Turing',4,'Turing'),(8,'Minsky',4,'Minsky'),(9,'Tesla',5,'Tesla'),(10,'Bardeen',5,'Bardeen'),(11,'Slotine',6,'Slotine'),(12,'Sloan',6,'Sloan'),(13,'Khorana',7,'Khorana'),(14,'Stark',7,'Stark');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myuser`@`localhost`*/ /*!50003 trigger trig_inst 
before insert on instructor
for each row begin
if (id < 0) or (name like Null) or (dept_id < 0) or (password like Null) then
SIGNAL SQLSTATE '45000'   
 SET MESSAGE_TEXT = 'INVALID INPUT';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `lab`
--

DROP TABLE IF EXISTS `lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lab` (
  `id` int(6) NOT NULL,
  `course_id` int(5) DEFAULT NULL,
  `classroom` char(10) DEFAULT NULL,
  `ta` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `lab_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lab`
--

LOCK TABLES `lab` WRITE;
/*!40000 ALTER TABLE `lab` DISABLE KEYS */;
INSERT INTO `lab` VALUES (1,2,'AI-Lab','Qwin'),(2,10,'Workshop','Siam'),(3,1,'DB-Lab','Ab'),(4,13,'Robolab','Stark'),(5,7,'Cry-Lab','Rath'),(6,8,'Ctrlab','Po'),(7,12,'Biolab','Tia'),(8,14,'Radlab','Mia');
/*!40000 ALTER TABLE `lab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myuser`@`localhost`*/ /*!50003 trigger trig_lab before insert on lab for each row begin if (id < 0) or (course_id < 0) then SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = 'INVALID INPUT'; end if; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stu_lab`
--

DROP TABLE IF EXISTS `stu_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_lab` (
  `labno` int(6) NOT NULL AUTO_INCREMENT,
  `lab_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  PRIMARY KEY (`labno`),
  UNIQUE KEY `unique1` (`student_id`,`lab_id`),
  KEY `lab_id` (`lab_id`),
  CONSTRAINT `stu_lab_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_lab_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_lab`
--

LOCK TABLES `stu_lab` WRITE;
/*!40000 ALTER TABLE `stu_lab` DISABLE KEYS */;
INSERT INTO `stu_lab` VALUES (4,1,2),(16,5,2),(18,7,3),(22,8,3),(3,1,4),(9,3,4),(12,4,4),(15,5,4),(11,4,5),(17,6,5),(20,7,5),(7,2,6),(19,7,6),(1,1,7),(6,2,7),(14,4,7),(2,1,8),(8,3,8),(10,4,8),(5,2,9),(13,4,9),(21,7,9);
/*!40000 ALTER TABLE `stu_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_tut`
--

DROP TABLE IF EXISTS `stu_tut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_tut` (
  `tutno` int(6) NOT NULL AUTO_INCREMENT,
  `tutorial_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  PRIMARY KEY (`tutno`),
  UNIQUE KEY `unique1` (`student_id`,`tutorial_id`),
  KEY `tutorial_id` (`tutorial_id`),
  CONSTRAINT `stu_tut_ibfk_1` FOREIGN KEY (`tutorial_id`) REFERENCES `tutorial` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stu_tut_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_tut`
--

LOCK TABLES `stu_tut` WRITE;
/*!40000 ALTER TABLE `stu_tut` DISABLE KEYS */;
INSERT INTO `stu_tut` VALUES (11,5,1),(12,6,1),(14,7,1),(1,1,2),(3,1,4),(6,2,4),(10,5,4),(5,2,5),(7,3,5),(9,4,5),(15,7,6),(4,2,8),(8,3,8),(2,1,10),(13,6,10),(16,7,10);
/*!40000 ALTER TABLE `stu_tut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(6) NOT NULL,
  `name` char(20) DEFAULT NULL,
  `year` int(2) DEFAULT NULL,
  `degree` char(10) DEFAULT NULL,
  `dept_id` int(6) DEFAULT '0',
  `password` char(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'May',3,'BS',1,'May'),(2,'Tom',4,'BS',2,'Tom'),(3,'Sam',3,'PhD',3,'Sam'),(4,'Tim',4,'BTech',4,'Tim'),(5,'Liz',5,'PhD',5,'Liz'),(6,'Ann',3,'BTech',6,'Ann'),(7,'Bob',2,'MTech',7,'Bob'),(8,'Ram',3,'BTech',4,'Ram'),(9,'Ria',1,'PhD',7,'Ria'),(10,'Sia',3,'MTech',2,'Sia'),(11,'May',4,'BS',1,'May');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger trig_stu before insert on student
for each row
begin
if  not ((id > 0) and (name not like Null) and (year between 1 and 10) and (dept_id > 0) and (password not like Null)) 
then
signal sqlstate '45000'
 set message_text =  "INVALID DATA ENTRY";
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takes` (
  `regno` int(6) NOT NULL AUTO_INCREMENT,
  `course_id` int(6) NOT NULL,
  `student_id` int(6) NOT NULL,
  `grades` char(2) DEFAULT 'PE',
  PRIMARY KEY (`regno`),
  UNIQUE KEY `unique1` (`student_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes`
--

LOCK TABLES `takes` WRITE;
/*!40000 ALTER TABLE `takes` DISABLE KEYS */;
INSERT INTO `takes` VALUES (1,3,1,'A'),(2,4,1,'B'),(3,5,1,'C'),(4,9,1,'A'),(5,5,2,'B'),(6,6,2,'C'),(7,7,2,'A'),(8,2,2,'B'),(9,12,2,'C'),(10,14,3,'A'),(11,12,3,'B'),(12,2,4,'C'),(13,1,4,'A'),(14,7,4,'B'),(15,6,4,'C'),(16,9,4,'A'),(17,13,4,'B'),(18,12,5,'C'),(19,8,5,'A'),(20,11,5,'B'),(21,13,5,'C'),(22,10,6,'A'),(23,11,6,'B'),(24,12,6,'C'),(25,12,7,'A'),(26,13,7,'B'),(27,2,7,'C'),(28,10,7,'A'),(29,1,8,'B'),(30,2,8,'C'),(31,11,8,'A'),(32,13,8,'B'),(33,12,8,'C'),(34,12,9,'A'),(35,13,9,'B'),(36,10,9,'C'),(37,5,10,'A'),(38,6,10,'B'),(39,3,10,'C'),(41,3,5,'B');
/*!40000 ALTER TABLE `takes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tutorial` (
  `id` int(5) NOT NULL,
  `course_id` int(5) DEFAULT NULL,
  `classroom` char(10) DEFAULT NULL,
  `ta` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `tutorial_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
INSERT INTO `tutorial` VALUES (1,6,'LT-1','Singh'),(2,13,'Workshop','Kate'),(3,11,'Roboshop','Saha'),(4,8,'LT-2','Rob'),(5,9,'LT-3','Lil'),(6,3,'LT-4','Bohr'),(7,4,'LT-5','Feynman');
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`myuser`@`localhost`*/ /*!50003 trigger trig_tut before insert on tutorial for each row begin if (id < 0) or (course_id < 0) then SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = 'INVALID INPUT'; end if; end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `view_inst`
--

DROP TABLE IF EXISTS `view_inst`;
/*!50001 DROP VIEW IF EXISTS `view_inst`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_inst` AS SELECT 
 1 AS `course_id`,
 1 AS `inst_id`,
 1 AS `inst_name`,
 1 AS `dept_id`,
 1 AS `stu_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_lab`
--

DROP TABLE IF EXISTS `view_lab`;
/*!50001 DROP VIEW IF EXISTS `view_lab`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_lab` AS SELECT 
 1 AS `course_id`,
 1 AS `lab_id`,
 1 AS `ta`,
 1 AS `stu_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tut`
--

DROP TABLE IF EXISTS `view_tut`;
/*!50001 DROP VIEW IF EXISTS `view_tut`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_tut` AS SELECT 
 1 AS `course_id`,
 1 AS `tut_id`,
 1 AS `ta`,
 1 AS `stu_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_inst`
--

/*!50001 DROP VIEW IF EXISTS `view_inst`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_inst` AS select `c`.`id` AS `course_id`,`i`.`id` AS `inst_id`,`i`.`name` AS `inst_name`,`i`.`dept_id` AS `dept_id`,`s`.`id` AS `stu_id` from (((`instructor` `i` join `student` `s`) join `course` `c`) join `takes` `t`) where ((`i`.`id` = `c`.`instructor_id`) and (`t`.`course_id` = `c`.`id`) and (`t`.`student_id` = `s`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_lab`
--

/*!50001 DROP VIEW IF EXISTS `view_lab`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_lab` AS select `l`.`course_id` AS `course_id`,`l`.`id` AS `lab_id`,`l`.`ta` AS `ta`,`s`.`id` AS `stu_id` from ((`lab` `l` join `stu_lab` `sl`) join `student` `s`) where ((`l`.`id` = `sl`.`lab_id`) and (`sl`.`student_id` = `s`.`id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tut`
--

/*!50001 DROP VIEW IF EXISTS `view_tut`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`myuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tut` AS select `t`.`course_id` AS `course_id`,`t`.`id` AS `tut_id`,`t`.`ta` AS `ta`,`s`.`id` AS `stu_id` from ((`tutorial` `t` join `stu_tut` `st`) join `student` `s`) where ((`s`.`id` = `st`.`student_id`) and (`t`.`id` = `st`.`tutorial_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-22 16:16:45
