-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projeto_ru_django
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (2,'Atendente'),(3,'Gerente'),(1,'Nutricionista');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (10,1,25),(11,1,26),(12,1,27),(13,1,28),(6,1,37),(7,1,38),(8,1,39),(9,1,40),(2,2,28),(3,2,29),(4,2,30),(5,2,31),(1,2,32),(14,3,5),(15,3,6),(16,3,7),(17,3,8),(18,3,9),(19,3,10),(20,3,11),(21,3,12),(22,3,13),(23,3,14),(24,3,15),(25,3,16),(26,3,25),(27,3,26),(28,3,27),(29,3,28),(30,3,29),(31,3,30),(32,3,31),(33,3,32),(34,3,33),(35,3,34),(36,3,35),(37,3,36),(38,3,37),(39,3,38),(40,3,39),(41,3,40),(42,3,41),(43,3,42),(44,3,43),(45,3,44);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add cardapio',7,'add_cardapio'),(26,'Can change cardapio',7,'change_cardapio'),(27,'Can delete cardapio',7,'delete_cardapio'),(28,'Can view cardapio',7,'view_cardapio'),(29,'Can add estudante',8,'add_estudante'),(30,'Can change estudante',8,'change_estudante'),(31,'Can delete estudante',8,'delete_estudante'),(32,'Can view estudante',8,'view_estudante'),(33,'Can add funcionario',9,'add_funcionario'),(34,'Can change funcionario',9,'change_funcionario'),(35,'Can delete funcionario',9,'delete_funcionario'),(36,'Can view funcionario',9,'view_funcionario'),(37,'Can add item estoque',10,'add_itemestoque'),(38,'Can change item estoque',10,'change_itemestoque'),(39,'Can delete item estoque',10,'delete_itemestoque'),(40,'Can view item estoque',10,'view_itemestoque'),(41,'Can add refeicao',11,'add_refeicao'),(42,'Can change refeicao',11,'change_refeicao'),(43,'Can delete refeicao',11,'delete_refeicao'),(44,'Can view refeicao',11,'view_refeicao');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$PIUXv0bqgwc9MYoJQ6Dfj2$0O812JSQSTDpulKOU/8LlImPWRqI2C9XbBknAmAXDIA=','2023-06-18 14:04:28.155592',1,'root','','','',1,1,'2023-06-19 05:34:35.769518'),(2,'pbkdf2_sha256$390000$tPU9MFb3CvFWaH8fSCgNDV$U4TDvb3Xc3ff3r446ed8ogsa+NZD7/0iCH6ZXAAXAZI=',NULL,0,'Gerson','','','',0,1,'2023-06-19 14:41:40.000000'),(3,'pbkdf2_sha256$390000$YsgKAoSJllnELOPoFEjMDU$5ZeYyTLnE0fgSx7tMLxZcrSQXoXSv8iF+8SAf0IcQ4w=',NULL,0,'Rosana','','','',0,1,'2023-06-19 14:41:56.000000'),(4,'pbkdf2_sha256$390000$VKAbEFrrRoDY1TyNLLaaFV$32aiLgLFnuqk1vR2adm0tSOyR5fO8PXt8SuoYhJtcU4=',NULL,0,'Roberto','','','',0,1,'2023-06-19 14:42:28.000000'),(5,'pbkdf2_sha256$390000$aZDu3DEqTQGWfOEffEuvNx$hhIQ45SoumKtsObbAvcCJrUXPJVb5eWwDy+i80lYYfk=',NULL,0,'Mariana','','','',0,1,'2023-06-19 14:42:45.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,2,3),(2,3,1),(3,4,2),(4,5,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-06-18 13:56:21.516878','1','Arroz Integral [985666 g]',1,'[{\"added\": {}}]',10,1),(2,'2023-06-18 13:56:31.304844','2','Peito de Frango [98652333 g]',1,'[{\"added\": {}}]',10,1),(3,'2023-06-18 13:56:42.499988','3','Batata Doce [85479999 g]',1,'[{\"added\": {}}]',10,1),(4,'2023-06-18 13:57:14.894705','4','Gelatina [968541222 g]',1,'[{\"added\": {}}]',10,1),(5,'2023-06-18 13:58:21.540235','1','Rosana [NT]',1,'[{\"added\": {}}]',9,1),(6,'2023-06-18 13:58:37.760755','1','Peito de Frango [98652333 g]-Arroz Integral [985666 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',7,1),(7,'2023-06-18 13:58:56.157947','1','Refeição [2023-06-19] > Peito de Frango [98652333 g]-Arroz Integral [985666 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',11,1),(8,'2023-06-18 14:36:19.852094','5','Laranja [12344412 g]',1,'[{\"added\": {}}]',10,1),(9,'2023-06-18 14:36:34.488708','6','Peixe crocante [89562356 g]',1,'[{\"added\": {}}]',10,1),(10,'2023-06-18 14:36:48.480906','7','Feijão Preto [12455698 g]',1,'[{\"added\": {}}]',10,1),(11,'2023-06-18 14:38:27.892458','8','Caldo de Mandioca [45129878 g]',1,'[{\"added\": {}}]',10,1),(12,'2023-06-18 14:38:46.813837','9','Cubos bovinos [655122389 g]',1,'[{\"added\": {}}]',10,1),(13,'2023-06-18 14:39:04.372005','10','Arroz Branco [322457898 g]',1,'[{\"added\": {}}]',10,1),(14,'2023-06-18 14:40:48.670945','2','Peixe crocante [89562356 g]-Feijão Preto [12455698 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',7,1),(15,'2023-06-18 14:41:02.390976','3','Cubos bovinos [655122389 g]-Caldo de Mandioca [45129878 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',7,1),(16,'2023-06-18 14:41:25.081871','11','Bisteca suína [12356423 g]',1,'[{\"added\": {}}]',10,1),(17,'2023-06-18 14:41:47.024806','4','Bisteca suína [12356423 g]-Arroz Integral [985666 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',7,1),(18,'2023-06-18 14:42:02.333124','5','Peito de Frango [98652333 g]-Batata Doce [85479999 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',7,1),(19,'2023-06-18 14:42:16.484839','6','Cubos bovinos [655122389 g]-Caldo de Mandioca [45129878 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',7,1),(20,'2023-06-19 14:22:03.683137','7','Cubos bovinos [655122389 g]-Feijão Preto [12455698 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',7,1),(21,'2023-06-19 14:22:18.773937','2','Refeição [2023-06-20] > Bisteca suína [12356423 g]-Arroz Integral [985666 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(22,'2023-06-19 14:22:29.422620','3','Refeição [2023-06-19] > Cubos bovinos [655122389 g]-Feijão Preto [12455698 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(23,'2023-06-19 14:22:41.950179','4','Refeição [2023-06-20] > Peixe crocante [89562356 g]-Feijão Preto [12455698 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(24,'2023-06-19 14:23:02.747205','5','Refeição [2023-06-21] > Peixe crocante [89562356 g]-Feijão Preto [12455698 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(25,'2023-06-19 14:23:12.861244','6','Refeição [2023-06-21] > Cubos bovinos [655122389 g]-Caldo de Mandioca [45129878 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(26,'2023-06-19 14:23:26.712913','7','Refeição [2023-06-22] > Cubos bovinos [655122389 g]-Caldo de Mandioca [45129878 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',11,1),(27,'2023-06-19 14:23:40.211272','8','Refeição [2023-06-22] > Bisteca suína [12356423 g]-Arroz Integral [985666 g]-Laranja [12344412 g]',1,'[{\"added\": {}}]',11,1),(28,'2023-06-19 14:25:35.862958','9','Refeição [2023-06-23] > Peito de Frango [98652333 g]-Batata Doce [85479999 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',11,1),(29,'2023-06-19 14:25:45.971935','10','Refeição [2023-06-23] > Peito de Frango [98652333 g]-Batata Doce [85479999 g]-Gelatina [968541222 g]',1,'[{\"added\": {}}]',11,1),(30,'2023-06-19 14:25:55.105212','10','Refeição [2023-06-23] > Peito de Frango [98652333 g]-Arroz Integral [985666 g]-Gelatina [968541222 g]',2,'[{\"changed\": {\"fields\": [\"Cardapio\"]}}]',11,1),(31,'2023-06-19 14:41:41.057137','2','Gerson',1,'[{\"added\": {}}]',4,1),(32,'2023-06-19 14:41:46.397762','2','Gerson',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(33,'2023-06-19 14:41:57.269932','3','Rosana',1,'[{\"added\": {}}]',4,1),(34,'2023-06-19 14:42:06.953253','3','Rosana',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(35,'2023-06-19 14:42:29.234062','4','Roberto',1,'[{\"added\": {}}]',4,1),(36,'2023-06-19 14:42:33.978579','4','Roberto',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(37,'2023-06-19 14:42:46.152268','5','Mariana',1,'[{\"added\": {}}]',4,1),(38,'2023-06-19 14:42:52.571673','5','Mariana',2,'[{\"changed\": {\"fields\": [\"Groups\"]}}]',4,1),(39,'2023-06-19 14:43:10.867681','1','Carla [RA: 79752] [MA]',1,'[{\"added\": {}}]',8,1),(40,'2023-06-19 14:43:20.506223','2','Júlia [RA: 84328] [EE]',1,'[{\"added\": {}}]',8,1),(41,'2023-06-19 14:43:33.047247','3','Pedro [RA: 15954] [ES]',1,'[{\"added\": {}}]',8,1),(42,'2023-06-19 14:43:45.106083','4','Márcio [RA: 76245] [EC]',1,'[{\"added\": {}}]',8,1),(43,'2023-06-19 14:43:55.822949','2','Júlia [RA: 84328] [EL]',2,'[{\"changed\": {\"fields\": [\"Curso\"]}}]',8,1),(44,'2023-06-19 14:44:00.321330','2','Júlia [RA: 84328] [EE]',2,'[{\"changed\": {\"fields\": [\"Curso\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'meals','cardapio'),(8,'meals','estudante'),(9,'meals','funcionario'),(10,'meals','itemestoque'),(11,'meals','refeicao'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-06-19 05:13:34.956582'),(2,'auth','0001_initial','2023-06-19 05:13:36.026016'),(3,'admin','0001_initial','2023-06-19 05:13:36.274667'),(4,'admin','0002_logentry_remove_auto_add','2023-06-19 05:13:36.291504'),(5,'admin','0003_logentry_add_action_flag_choices','2023-06-19 05:13:36.311542'),(6,'contenttypes','0002_remove_content_type_name','2023-06-19 05:13:36.447886'),(7,'auth','0002_alter_permission_name_max_length','2023-06-19 05:13:36.548496'),(8,'auth','0003_alter_user_email_max_length','2023-06-19 05:13:36.590127'),(9,'auth','0004_alter_user_username_opts','2023-06-19 05:13:36.612648'),(10,'auth','0005_alter_user_last_login_null','2023-06-19 05:13:36.736069'),(11,'auth','0006_require_contenttypes_0002','2023-06-19 05:13:36.746203'),(12,'auth','0007_alter_validators_add_error_messages','2023-06-19 05:13:36.768948'),(13,'auth','0008_alter_user_username_max_length','2023-06-19 05:13:36.895216'),(14,'auth','0009_alter_user_last_name_max_length','2023-06-19 05:13:37.016528'),(15,'auth','0010_alter_group_name_max_length','2023-06-19 05:13:37.063882'),(16,'auth','0011_update_proxy_permissions','2023-06-19 05:13:37.083198'),(17,'auth','0012_alter_user_first_name_max_length','2023-06-19 05:13:37.203073'),(18,'meals','0001_initial','2023-06-19 05:13:38.430270'),(19,'meals','0002_refeicao_dia_da_semana','2023-06-19 05:13:38.506037'),(20,'meals','0003_alter_refeicao_estudante','2023-06-19 05:13:38.523220'),(21,'meals','0004_remove_refeicao_dia_da_semana_and_more','2023-06-19 05:13:38.591606'),(22,'meals','0005_alter_cardapio_options_alter_estudante_options_and_more','2023-06-19 05:13:38.629504'),(23,'sessions','0001_initial','2023-06-19 05:13:38.729439');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('14gxj6zpfyi8l6i3w0p8q8hnz918lttu','.eJxVjDsOwjAQBe_iGllefxKbkp4zROv1Lg4gR8qnQtwdIqWA9s3Me6kBt7UO28LzMBZ1VqBOv1tGenDbQblju02aprbOY9a7og-66OtU-Hk53L-Dikv91sn1pmMvQbKVYBKUGISJQ7TOeBQSLsWgASeOso0E5L0FgR4SYEfq_QHuCzgi:1qB7XE:7opEJQyiJhsQz1EptQZrKP7rOGB-Em51g0v32EirLlA','2023-07-03 05:34:40.591869'),('7a5m536716bh13td49z3iz6br6p0ru3s','.eJxVjDsOwjAQBe_iGllefxKbkp4zROv1Lg4gR8qnQtwdIqWA9s3Me6kBt7UO28LzMBZ1VqBOv1tGenDbQblju02aprbOY9a7og-66OtU-Hk53L-Dikv91sn1pmMvQbKVYBKUGISJQ7TOeBQSLsWgASeOso0E5L0FgR4SYEfq_QHuCzgi:1qAt12:ZY9BWC_ewIGLL43Cr6tyA415M19xG1n_AyeprCBRNw8','2023-07-02 14:04:28.164660');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_cardapio`
--

DROP TABLE IF EXISTS `meals_cardapio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_cardapio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acompanhamento_id` bigint NOT NULL,
  `nutricionista_id` bigint NOT NULL,
  `prato_principal_id` bigint NOT NULL,
  `sobremesa_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meals_cardapio_acompanhamento_id_0ef70ef7_fk_meals_ite` (`acompanhamento_id`),
  KEY `meals_cardapio_nutricionista_id_0c936636_fk_meals_funcionario_id` (`nutricionista_id`),
  KEY `meals_cardapio_prato_principal_id_87d6959e_fk_meals_ite` (`prato_principal_id`),
  KEY `meals_cardapio_sobremesa_id_d8c01b08_fk_meals_itemestoque_id` (`sobremesa_id`),
  CONSTRAINT `meals_cardapio_acompanhamento_id_0ef70ef7_fk_meals_ite` FOREIGN KEY (`acompanhamento_id`) REFERENCES `meals_itemestoque` (`id`),
  CONSTRAINT `meals_cardapio_nutricionista_id_0c936636_fk_meals_funcionario_id` FOREIGN KEY (`nutricionista_id`) REFERENCES `meals_funcionario` (`id`),
  CONSTRAINT `meals_cardapio_prato_principal_id_87d6959e_fk_meals_ite` FOREIGN KEY (`prato_principal_id`) REFERENCES `meals_itemestoque` (`id`),
  CONSTRAINT `meals_cardapio_sobremesa_id_d8c01b08_fk_meals_itemestoque_id` FOREIGN KEY (`sobremesa_id`) REFERENCES `meals_itemestoque` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_cardapio`
--

LOCK TABLES `meals_cardapio` WRITE;
/*!40000 ALTER TABLE `meals_cardapio` DISABLE KEYS */;
INSERT INTO `meals_cardapio` VALUES (1,1,1,2,4),(2,7,1,6,5),(3,8,1,9,5),(4,1,1,11,5),(5,3,1,2,4),(6,8,1,9,4),(7,7,1,9,5);
/*!40000 ALTER TABLE `meals_cardapio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_estudante`
--

DROP TABLE IF EXISTS `meals_estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_estudante` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `cpf` int NOT NULL,
  `ra` int NOT NULL,
  `curso` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_estudante`
--

LOCK TABLES `meals_estudante` WRITE;
/*!40000 ALTER TABLE `meals_estudante` DISABLE KEYS */;
INSERT INTO `meals_estudante` VALUES (1,'Carla',79752,79752,'MA'),(2,'Júlia',84328,84328,'EE'),(3,'Pedro',15954,15954,'ES'),(4,'Márcio',76245,76245,'EC');
/*!40000 ALTER TABLE `meals_estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_funcionario`
--

DROP TABLE IF EXISTS `meals_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_funcionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) NOT NULL,
  `cpf` int NOT NULL,
  `funcao` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_funcionario`
--

LOCK TABLES `meals_funcionario` WRITE;
/*!40000 ALTER TABLE `meals_funcionario` DISABLE KEYS */;
INSERT INTO `meals_funcionario` VALUES (1,'Rosana',123132,'NT');
/*!40000 ALTER TABLE `meals_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_itemestoque`
--

DROP TABLE IF EXISTS `meals_itemestoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_itemestoque` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `peso_gramas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_itemestoque`
--

LOCK TABLES `meals_itemestoque` WRITE;
/*!40000 ALTER TABLE `meals_itemestoque` DISABLE KEYS */;
INSERT INTO `meals_itemestoque` VALUES (1,'Arroz Integral',985666),(2,'Peito de Frango',98652333),(3,'Batata Doce',85479999),(4,'Gelatina',968541222),(5,'Laranja',12344412),(6,'Peixe crocante',89562356),(7,'Feijão Preto',12455698),(8,'Caldo de Mandioca',45129878),(9,'Cubos bovinos',655122389),(10,'Arroz Branco',322457898),(11,'Bisteca suína',12356423);
/*!40000 ALTER TABLE `meals_itemestoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_refeicao`
--

DROP TABLE IF EXISTS `meals_refeicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_refeicao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `periodo` varchar(1) NOT NULL,
  `cardapio_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `meals_refeicao_cardapio_id_635325df_fk_meals_cardapio_id` (`cardapio_id`),
  CONSTRAINT `meals_refeicao_cardapio_id_635325df_fk_meals_cardapio_id` FOREIGN KEY (`cardapio_id`) REFERENCES `meals_cardapio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_refeicao`
--

LOCK TABLES `meals_refeicao` WRITE;
/*!40000 ALTER TABLE `meals_refeicao` DISABLE KEYS */;
INSERT INTO `meals_refeicao` VALUES (1,'2023-06-19','A',1),(2,'2023-06-20','A',4),(3,'2023-06-19','J',7),(4,'2023-06-20','J',2),(5,'2023-06-21','A',2),(6,'2023-06-21','J',3),(7,'2023-06-22','A',6),(8,'2023-06-22','J',4),(9,'2023-06-23','A',5),(10,'2023-06-23','J',1);
/*!40000 ALTER TABLE `meals_refeicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meals_refeicao_estudante`
--

DROP TABLE IF EXISTS `meals_refeicao_estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meals_refeicao_estudante` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `refeicao_id` bigint NOT NULL,
  `estudante_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meals_refeicao_estudante_refeicao_id_estudante_id_c402bb8c_uniq` (`refeicao_id`,`estudante_id`),
  KEY `meals_refeicao_estud_estudante_id_7344d211_fk_meals_est` (`estudante_id`),
  CONSTRAINT `meals_refeicao_estud_estudante_id_7344d211_fk_meals_est` FOREIGN KEY (`estudante_id`) REFERENCES `meals_estudante` (`id`),
  CONSTRAINT `meals_refeicao_estud_refeicao_id_40956553_fk_meals_ref` FOREIGN KEY (`refeicao_id`) REFERENCES `meals_refeicao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meals_refeicao_estudante`
--

LOCK TABLES `meals_refeicao_estudante` WRITE;
/*!40000 ALTER TABLE `meals_refeicao_estudante` DISABLE KEYS */;
/*!40000 ALTER TABLE `meals_refeicao_estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'projeto_ru_django'
--

--
-- Dumping routines for database 'projeto_ru_django'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-19 11:53:37
