/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: 
-- ------------------------------------------------------
-- Server version	10.11.9-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `appwrite`
--

/*!40000 DROP DATABASE IF EXISTS `appwrite`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `appwrite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `appwrite`;

--
-- Table structure for table `_1__metadata`
--

DROP TABLE IF EXISTS `_1__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  `documentSecurity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata`
--

LOCK TABLES `_1__metadata` WRITE;
/*!40000 ALTER TABLE `_1__metadata` DISABLE KEYS */;
INSERT INTO `_1__metadata` VALUES
(1,'audit','2024-11-05 19:44:18.129','2024-11-05 19:44:18.129','[\"create(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]',1),
(2,'abuse','2024-11-05 19:44:18.140','2024-11-05 19:44:18.140','[\"create(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]',1),
(3,'databases','2024-11-05 19:44:18.153','2024-11-05 19:44:18.153','[\"create(\\\"any\\\")\"]','databases','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"enabled\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":false,\"default\":true,\"array\":false},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]}]',1),
(4,'attributes','2024-11-05 19:44:18.160','2024-11-05 19:44:18.160','[\"create(\\\"any\\\")\"]','attributes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"databaseId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":false,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"collectionId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"key\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":16,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"error\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"size\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"required\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"default\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"casting\"]},{\"$id\":\"signed\",\"type\":\"boolean\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"array\",\"type\":\"boolean\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"format\",\"type\":\"string\",\"size\":64,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"formatOptions\",\"type\":\"string\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":{},\"array\":false,\"filters\":[\"json\",\"range\",\"enum\"]},{\"$id\":\"filters\",\"type\":\"string\",\"size\":64,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"options\",\"type\":\"string\",\"size\":16384,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]',1),
(5,'indexes','2024-11-05 19:44:18.167','2024-11-05 19:44:18.167','[\"create(\\\"any\\\")\"]','indexes','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"databaseId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":false,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"collectionInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"collectionId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"key\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":16,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":16,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"error\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"attributes\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"lengths\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"orders\",\"type\":\"string\",\"format\":\"\",\"size\":4,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]}]','[{\"$id\":\"_key_db_collection\",\"type\":\"key\",\"attributes\":[\"databaseInternalId\",\"collectionInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]}]',1),
(6,'functions','2024-11-05 19:44:18.182','2024-11-05 19:44:18.182','[\"create(\\\"any\\\")\"]','functions','[{\"$id\":\"execute\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"enabled\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"live\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"installationId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"installationInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerRepositoryId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"repositoryId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"repositoryInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerBranch\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerRootDirectory\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerSilentMode\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":false,\"default\":false,\"array\":false},{\"$id\":\"logging\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"runtime\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deploymentInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deployment\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"vars\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryVariables\"]},{\"$id\":\"varsProject\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryProjectVariables\"]},{\"$id\":\"events\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"scheduleInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"scheduleId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"schedule\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"timeout\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"version\",\"type\":\"string\",\"format\":\"\",\"size\":8,\"signed\":true,\"required\":false,\"default\":\"v4\",\"array\":false,\"filters\":[]},{\"array\":false,\"$id\":\"entrypoint\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"array\":false,\"$id\":\"commands\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"array\":false,\"$id\":\"specification\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":false,\"required\":false,\"default\":\"s-0.5vcpu-512mb\",\"filters\":[]},{\"$id\":\"scopes\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[]}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_installationId\",\"type\":\"key\",\"attributes\":[\"installationId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_installationInternalId\",\"type\":\"key\",\"attributes\":[\"installationInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerRepositoryId\",\"type\":\"key\",\"attributes\":[\"providerRepositoryId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_repositoryId\",\"type\":\"key\",\"attributes\":[\"repositoryId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_repositoryInternalId\",\"type\":\"key\",\"attributes\":[\"repositoryInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_runtime\",\"type\":\"key\",\"attributes\":[\"runtime\"],\"lengths\":[64],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deployment\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(7,'deployments','2024-11-05 19:44:18.195','2024-11-05 19:44:18.195','[\"create(\\\"any\\\")\"]','deployments','[{\"$id\":\"resourceInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"resourceId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"resourceType\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"buildInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"buildId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"array\":false,\"$id\":\"entrypoint\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"array\":false,\"$id\":\"commands\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"$id\":\"path\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"installationId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"installationInternalId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerRepositoryId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"repositoryId\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"repositoryInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerRepositoryName\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerRepositoryOwner\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerRepositoryUrl\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommitHash\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommitAuthorUrl\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommitAuthor\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommitMessage\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommitUrl\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerBranch\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerBranchUrl\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerRootDirectory\",\"type\":\"string\",\"signed\":true,\"size\":255,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"providerCommentId\",\"type\":\"string\",\"signed\":true,\"size\":2048,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"size\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"metadata\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"activate\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resource_type\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_size\",\"type\":\"key\",\"attributes\":[\"size\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_buildId\",\"type\":\"key\",\"attributes\":[\"buildId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_activate\",\"type\":\"key\",\"attributes\":[\"activate\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(8,'builds','2024-11-05 19:44:18.203','2024-11-05 19:44:18.203','[\"create(\\\"any\\\")\"]','builds','[{\"$id\":\"startTime\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"endTime\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"duration\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"size\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deploymentInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deploymentId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"runtime\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":true,\"default\":\"\",\"array\":false,\"filters\":[]},{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":true,\"default\":\"processing\",\"array\":false,\"filters\":[]},{\"$id\":\"path\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":\"\",\"array\":false,\"filters\":[]},{\"$id\":\"logs\",\"type\":\"string\",\"format\":\"\",\"size\":1000000,\"signed\":true,\"required\":false,\"default\":\"\",\"array\":false,\"filters\":[]},{\"$id\":\"sourceType\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":true,\"default\":\"local\",\"array\":false,\"filters\":[]},{\"$id\":\"source\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":true,\"default\":\"\",\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(9,'executions','2024-11-05 19:44:18.218','2024-11-05 19:44:18.218','[\"create(\\\"any\\\")\"]','executions','[{\"$id\":\"functionInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"functionId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deploymentInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deploymentId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"array\":false,\"$id\":\"trigger\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"duration\",\"type\":\"double\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"errors\",\"type\":\"string\",\"format\":\"\",\"size\":1000000,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"logs\",\"type\":\"string\",\"format\":\"\",\"size\":1000000,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"array\":false,\"$id\":\"requestMethod\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"array\":false,\"$id\":\"requestPath\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"filters\":[]},{\"$id\":\"requestHeaders\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"responseStatusCode\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"responseHeaders\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"scheduledAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"scheduleInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"scheduleId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_function\",\"type\":\"key\",\"attributes\":[\"functionId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_trigger\",\"type\":\"key\",\"attributes\":[\"trigger\"],\"lengths\":[32],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[32],\"orders\":[\"ASC\"]},{\"$id\":\"_key_requestMethod\",\"type\":\"key\",\"attributes\":[\"requestMethod\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_requestPath\",\"type\":\"key\",\"attributes\":[\"requestPath\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_deployment\",\"type\":\"key\",\"attributes\":[\"deploymentId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_responseStatusCode\",\"type\":\"key\",\"attributes\":[\"responseStatusCode\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_duration\",\"type\":\"key\",\"attributes\":[\"duration\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(10,'variables','2024-11-05 19:44:18.230','2024-11-05 19:44:18.230','[\"create(\\\"any\\\")\"]','variables','[{\"$id\":\"resourceType\",\"type\":\"string\",\"format\":\"\",\"size\":100,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"resourceInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"resourceId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"key\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"value\",\"type\":\"string\",\"format\":\"\",\"size\":8192,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_resourceInternalId\",\"type\":\"key\",\"attributes\":[\"resourceInternalId\"],\"lengths\":[255],\"orders\":[]},{\"$id\":\"_key_resourceType\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceId_resourceType\",\"type\":\"key\",\"attributes\":[\"resourceId\",\"resourceType\"],\"lengths\":[255,100],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_uniqueKey\",\"type\":\"unique\",\"attributes\":[\"resourceId\",\"key\",\"resourceType\"],\"lengths\":[255,255,100],\"orders\":[\"ASC\",\"ASC\",\"ASC\"]},{\"$id\":\"_key_key\",\"type\":\"key\",\"attributes\":[\"key\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(11,'migrations','2024-11-05 19:44:18.242','2024-11-05 19:44:18.242','[\"create(\\\"any\\\")\"]','migrations','[{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"stage\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"source\",\"type\":\"string\",\"format\":\"\",\"size\":8192,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"credentials\",\"type\":\"string\",\"format\":\"\",\"size\":65536,\"signed\":true,\"required\":false,\"default\":[],\"array\":false,\"filters\":[\"json\",\"encrypt\"]},{\"$id\":\"resources\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":[],\"array\":true,\"filters\":[]},{\"$id\":\"statusCounters\",\"type\":\"string\",\"format\":\"\",\"size\":3000,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"resourceData\",\"type\":\"string\",\"format\":\"\",\"size\":131070,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"errors\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":true,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_stage\",\"type\":\"key\",\"attributes\":[\"stage\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_source\",\"type\":\"key\",\"attributes\":[\"source\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(12,'cache','2024-11-05 19:44:18.249','2024-11-05 19:44:18.249','[\"create(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"resourceType\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"mimeType\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"signature\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]',1),
(13,'users','2024-11-05 19:44:18.263','2024-11-05 19:44:18.263','[\"create(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"email\",\"type\":\"string\",\"format\":\"\",\"size\":320,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"phone\",\"type\":\"string\",\"format\":\"\",\"size\":16,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"status\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"labels\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"passwordHistory\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"password\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"hash\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":\"argon2\",\"array\":false,\"filters\":[]},{\"$id\":\"hashOptions\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"prefs\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":{},\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"registration\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"reset\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"mfa\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"mfaRecoveryCodes\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[\"encrypt\"]},{\"$id\":\"authenticators\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryAuthenticators\"]},{\"$id\":\"sessions\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQuerySessions\"]},{\"$id\":\"tokens\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryTokens\"]},{\"$id\":\"challenges\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryChallenges\"]},{\"$id\":\"memberships\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryMemberships\"]},{\"$id\":\"targets\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryTargets\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"userSearch\"]},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]',1),
(14,'tokens','2024-11-05 19:44:18.271','2024-11-05 19:44:18.271','[\"create(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"secret\",\"type\":\"string\",\"format\":\"\",\"size\":512,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"expire\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"userAgent\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"format\":\"\",\"size\":45,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(15,'authenticators','2024-11-05 19:44:18.277','2024-11-05 19:44:18.277','[\"create(\\\"any\\\")\"]','authenticators','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"verified\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":false,\"array\":false,\"filters\":[]},{\"$id\":\"data\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":[],\"array\":false,\"filters\":[\"json\",\"encrypt\"]}]','[{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(16,'challenges','2024-11-05 19:44:18.284','2024-11-05 19:44:18.284','[\"create(\\\"any\\\")\"]','challenges','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"token\",\"type\":\"string\",\"format\":\"\",\"size\":512,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"code\",\"type\":\"string\",\"format\":\"\",\"size\":512,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"expire\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(17,'sessions','2024-11-05 19:44:18.292','2024-11-05 19:44:18.292','[\"create(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"provider\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerUid\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"secret\",\"type\":\"string\",\"format\":\"\",\"size\":512,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"userAgent\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"format\":\"\",\"size\":45,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"countryCode\",\"type\":\"string\",\"format\":\"\",\"size\":2,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"osCode\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"osName\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"osVersion\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientType\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientCode\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientName\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientVersion\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientEngine\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deviceName\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deviceModel\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"factors\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[]},{\"$id\":\"expire\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"mfaUpdatedAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(18,'identities','2024-11-05 19:44:18.302','2024-11-05 19:44:18.302','[\"create(\\\"any\\\")\"]','identities','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"provider\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerUid\",\"type\":\"string\",\"format\":\"\",\"size\":2048,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerEmail\",\"type\":\"string\",\"format\":\"\",\"size\":320,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"secrets\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":[],\"array\":false,\"filters\":[\"json\",\"encrypt\"]}]','[{\"$id\":\"_key_userInternalId_provider_providerUid\",\"type\":\"unique\",\"attributes\":[\"userInternalId\",\"provider\",\"providerUid\"],\"lengths\":[11,128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_provider_providerUid\",\"type\":\"unique\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_provider\",\"type\":\"key\",\"attributes\":[\"provider\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerUid\",\"type\":\"key\",\"attributes\":[\"providerUid\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerEmail\",\"type\":\"key\",\"attributes\":[\"providerEmail\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerAccessTokenExpiry\",\"type\":\"key\",\"attributes\":[\"providerAccessTokenExpiry\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(19,'teams','2024-11-05 19:44:18.313','2024-11-05 19:44:18.313','[\"create(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"total\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"prefs\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":{},\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(20,'memberships','2024-11-05 19:44:18.328','2024-11-05 19:44:18.328','[\"create(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"teamId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"roles\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"invited\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"joined\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"confirm\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"secret\",\"type\":\"string\",\"format\":\"\",\"size\":256,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"encrypt\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(21,'buckets','2024-11-05 19:44:18.343','2024-11-05 19:44:18.343','[\"create(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"name\",\"type\":\"string\",\"signed\":true,\"size\":128,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"signed\":true,\"size\":1,\"format\":\"\",\"filters\":[],\"required\":false,\"array\":false},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"signed\":false,\"size\":8,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"signed\":true,\"size\":64,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":true},{\"$id\":\"compression\",\"type\":\"string\",\"signed\":true,\"size\":10,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"encryption\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"array\":false},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(22,'stats','2024-11-05 19:44:18.351','2024-11-05 19:44:18.351','[\"create(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"region\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"value\",\"type\":\"integer\",\"format\":\"\",\"size\":8,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"period\",\"type\":\"string\",\"format\":\"\",\"size\":4,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"unique\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]',1),
(23,'providers','2024-11-05 19:44:18.364','2024-11-05 19:44:18.364','[\"create(\\\"any\\\")\"]','providers','[{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"provider\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"type\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"enabled\",\"type\":\"boolean\",\"signed\":true,\"size\":0,\"format\":\"\",\"filters\":[],\"required\":true,\"default\":true,\"array\":false},{\"$id\":\"credentials\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"json\",\"encrypt\"]},{\"$id\":\"options\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":[],\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":\"\",\"array\":false,\"filters\":[\"providerSearch\"]}]','[{\"$id\":\"_key_provider\",\"type\":\"key\",\"attributes\":[\"provider\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_type\",\"type\":\"key\",\"attributes\":[\"type\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled_type\",\"type\":\"key\",\"attributes\":[\"enabled\",\"type\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(24,'messages','2024-11-05 19:44:18.374','2024-11-05 19:44:18.374','[\"create(\\\"any\\\")\"]','messages','[{\"$id\":\"providerType\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"status\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":\"processing\",\"array\":false,\"filters\":[]},{\"$id\":\"data\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[\"json\"]},{\"$id\":\"topics\",\"type\":\"string\",\"format\":\"\",\"size\":21845,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[]},{\"$id\":\"users\",\"type\":\"string\",\"format\":\"\",\"size\":21845,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[]},{\"$id\":\"targets\",\"type\":\"string\",\"format\":\"\",\"size\":21845,\"signed\":true,\"required\":false,\"default\":[],\"array\":true,\"filters\":[]},{\"$id\":\"scheduledAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"scheduleInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"scheduleId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"deliveredAt\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":false,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"deliveryErrors\",\"type\":\"string\",\"format\":\"\",\"size\":65535,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"deliveredTotal\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":0,\"array\":false,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":\"\",\"array\":false,\"filters\":[\"messageSearch\"]}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(25,'topics','2024-11-05 19:44:18.386','2024-11-05 19:44:18.386','[\"create(\\\"any\\\")\"]','topics','[{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"subscribe\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":false,\"default\":null,\"array\":true,\"filters\":[]},{\"$id\":\"emailTotal\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":0,\"array\":false,\"filters\":[]},{\"$id\":\"smsTotal\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":0,\"array\":false,\"filters\":[]},{\"$id\":\"pushTotal\",\"type\":\"integer\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":0,\"array\":false,\"filters\":[]},{\"$id\":\"targets\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[\"subQueryTopicTargets\"]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":\"\",\"array\":false,\"filters\":[\"topicSearch\"]}]','[{\"$id\":\"_key_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(26,'subscribers','2024-11-05 19:44:18.398','2024-11-05 19:44:18.398','[\"create(\\\"any\\\")\"]','subscribers','[{\"$id\":\"targetId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"targetInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"topicId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"topicInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerType\",\"type\":\"string\",\"format\":\"\",\"size\":128,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"search\",\"type\":\"string\",\"format\":\"\",\"size\":16384,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_targetId\",\"type\":\"key\",\"attributes\":[\"targetId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_targetInternalId\",\"type\":\"key\",\"attributes\":[\"targetInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_topicId\",\"type\":\"key\",\"attributes\":[\"topicId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_topicInternalId\",\"type\":\"key\",\"attributes\":[\"topicInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_unique_target_topic\",\"type\":\"unique\",\"attributes\":[\"targetInternalId\",\"topicInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(27,'targets','2024-11-05 19:44:18.407','2024-11-05 19:44:18.407','[\"create(\\\"any\\\")\"]','targets','[{\"$id\":\"userId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"userInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"sessionId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"sessionInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerType\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"providerInternalId\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"identifier\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":true,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"name\",\"type\":\"string\",\"format\":\"\",\"size\":255,\"signed\":true,\"required\":false,\"default\":null,\"array\":false,\"filters\":[]},{\"$id\":\"expired\",\"type\":\"boolean\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"default\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerId\",\"type\":\"key\",\"attributes\":[\"providerId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_providerInternalId\",\"type\":\"key\",\"attributes\":[\"providerInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_identifier\",\"type\":\"unique\",\"attributes\":[\"identifier\"],\"lengths\":[],\"orders\":[]}]',1),
(28,'bucket_1','2024-11-05 20:54:21.212','2024-11-05 20:54:21.212','[\"read(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"bucketInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":75000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',0),
(30,'database_2','2024-11-06 21:38:00.590','2024-11-06 21:38:00.590','[\"create(\\\"any\\\")\"]','database_2','[{\"$id\":\"databaseInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"databaseId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"documentSecurity\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"attributes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryAttributes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"indexes\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryIndexes\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_documentSecurity\",\"type\":\"key\",\"attributes\":[\"documentSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(31,'database_2_collection_1','2024-11-06 21:38:08.261','2024-11-06 21:38:08.261','[\"read(\\\"any\\\")\"]','database_2_collection_1','[{\"$id\":\"name\",\"key\":\"name\",\"type\":\"string\",\"size\":40,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"67351a8c002fe234e007\",\"key\":\"67351a8c002fe234e007\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_2\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"games\",\"onDelete\":\"restrict\",\"side\":\"child\"}},{\"$id\":\"67351aba003d6c348a7b\",\"key\":\"67351aba003d6c348a7b\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_6\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"games\",\"onDelete\":\"restrict\",\"side\":\"child\"}}]','[{\"$id\":\"game_id\",\"key\":\"game_id\",\"type\":\"unique\",\"attributes\":[\"$id\"],\"lengths\":[36],\"orders\":[\"ASC\"]}]',0),
(32,'database_2_collection_2','2024-11-13 20:44:19.812','2024-11-13 20:44:19.812','[]','database_2_collection_2','[{\"$id\":\"display_name\",\"key\":\"display_name\",\"type\":\"string\",\"size\":40,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"67351a52001187f877f7\",\"key\":\"67351a52001187f877f7\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_4\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"teams\",\"onDelete\":\"restrict\",\"side\":\"child\"}},{\"$id\":\"games\",\"key\":\"games\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_1\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a8c002fe234e007\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}]','[{\"$id\":\"team_id\",\"key\":\"team_id\",\"type\":\"unique\",\"attributes\":[\"$id\"],\"lengths\":[36],\"orders\":[\"ASC\"]},{\"$id\":\"_index_games\",\"key\":\"_index_games\",\"type\":\"unique\",\"attributes\":[\"games\"],\"lengths\":[],\"orders\":[]}]',0),
(34,'database_2_collection_4','2024-11-13 20:47:27.209','2024-11-13 20:47:27.209','[]','database_2_collection_4','[{\"$id\":\"content\",\"key\":\"content\",\"type\":\"string\",\"size\":255,\"required\":false,\"default\":\"\",\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"teams\",\"key\":\"teams\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_2\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a52001187f877f7\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}]','[{\"$id\":\"answer_id\",\"key\":\"answer_id\",\"type\":\"unique\",\"attributes\":[\"$id\"],\"lengths\":[36],\"orders\":[\"ASC\"]},{\"$id\":\"_index_teams\",\"key\":\"_index_teams\",\"type\":\"unique\",\"attributes\":[\"teams\"],\"lengths\":[],\"orders\":[]}]',0),
(35,'database_2_collection_5','2024-11-13 21:16:15.782','2024-11-13 21:16:15.782','[]','database_2_collection_5','[{\"$id\":\"name\",\"key\":\"name\",\"type\":\"string\",\"size\":40,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]}]','[{\"$id\":\"client_device_id\",\"key\":\"client_device_id\",\"type\":\"unique\",\"attributes\":[\"$id\"],\"lengths\":[36],\"orders\":[\"ASC\"]}]',0),
(36,'database_2_collection_6','2024-11-13 21:22:19.645','2024-11-13 21:22:19.645','[]','database_2_collection_6','[{\"$id\":\"games\",\"key\":\"games\",\"type\":\"relationship\",\"required\":false,\"default\":null,\"options\":{\"relatedCollection\":\"database_2_collection_1\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351aba003d6c348a7b\",\"onDelete\":\"restrict\",\"side\":\"parent\"}},{\"$id\":\"countdown_timer_active\",\"key\":\"countdown_timer_active\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"default\":false,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]},{\"$id\":\"question_index\",\"key\":\"question_index\",\"type\":\"integer\",\"size\":4,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"intRange\",\"formatOptions\":{\"min\":1,\"max\":9999},\"filters\":[]},{\"$id\":\"round_index\",\"key\":\"round_index\",\"type\":\"integer\",\"size\":4,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"intRange\",\"formatOptions\":{\"min\":1,\"max\":999},\"filters\":[]},{\"$id\":\"screen\",\"key\":\"screen\",\"type\":\"string\",\"size\":30,\"required\":true,\"default\":null,\"signed\":true,\"array\":false,\"format\":\"\",\"formatOptions\":[],\"filters\":[]}]','[{\"$id\":\"_index_games\",\"key\":\"_index_games\",\"type\":\"unique\",\"attributes\":[\"games\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"realtime_id\",\"key\":\"realtime_id\",\"type\":\"unique\",\"attributes\":[\"$id\"],\"lengths\":[36],\"orders\":[\"ASC\"]}]',0);
/*!40000 ALTER TABLE `_1__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1__metadata_perms`
--

DROP TABLE IF EXISTS `_1__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1__metadata_perms`
--

LOCK TABLES `_1__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_1__metadata_perms` DISABLE KEYS */;
INSERT INTO `_1__metadata_perms` VALUES
(2,'create','any','abuse'),
(4,'create','any','attributes'),
(1,'create','any','audit'),
(15,'create','any','authenticators'),
(21,'create','any','buckets'),
(28,'read','any','bucket_1'),
(8,'create','any','builds'),
(12,'create','any','cache'),
(16,'create','any','challenges'),
(3,'create','any','databases'),
(30,'create','any','database_2'),
(31,'read','any','database_2_collection_1'),
(7,'create','any','deployments'),
(9,'create','any','executions'),
(6,'create','any','functions'),
(18,'create','any','identities'),
(5,'create','any','indexes'),
(20,'create','any','memberships'),
(24,'create','any','messages'),
(11,'create','any','migrations'),
(23,'create','any','providers'),
(17,'create','any','sessions'),
(22,'create','any','stats'),
(26,'create','any','subscribers'),
(27,'create','any','targets'),
(19,'create','any','teams'),
(14,'create','any','tokens'),
(25,'create','any','topics'),
(13,'create','any','users'),
(10,'create','any','variables');
/*!40000 ALTER TABLE `_1__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse`
--

DROP TABLE IF EXISTS `_1_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse`
--

LOCK TABLES `_1_abuse` WRITE;
/*!40000 ALTER TABLE `_1_abuse` DISABLE KEYS */;
INSERT INTO `_1_abuse` VALUES
(85,'67350c649b9f0e7027f6','2024-11-13 20:30:28.637','2024-11-13 20:30:28.637','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 20:30:00.000',1),
(86,'67351531d69c4647e964','2024-11-13 21:08:01.879','2024-11-13 21:08:01.879','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 21:08:00.000',1),
(87,'673516eec6450961eaf9','2024-11-13 21:15:26.812','2024-11-13 21:15:26.812','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 21:15:00.000',1),
(88,'67351d06919672f304c6','2024-11-13 21:41:26.596','2024-11-13 21:41:26.596','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 21:41:00.000',1),
(89,'67351dba9a1f3508e4b5','2024-11-13 21:44:26.631','2024-11-13 21:44:26.631','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 21:44:00.000',1),
(90,'6735248f24cd96c8f5b0','2024-11-13 22:13:35.150','2024-11-13 22:13:41.179','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:13:00.000',2),
(91,'673524caec20c05bed61','2024-11-13 22:14:34.967','2024-11-13 22:14:41.351','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:14:00.000',5),
(92,'6735256046962032b3d9','2024-11-13 22:17:04.289','2024-11-13 22:17:11.768','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:17:00.000',2),
(93,'673525c5210847e76b10','2024-11-13 22:18:45.135','2024-11-13 22:18:53.244','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:18:00.000',4),
(94,'673525f5b4ab9ba81c40','2024-11-13 22:19:33.740','2024-11-13 22:19:33.740','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:19:00.000',1);
/*!40000 ALTER TABLE `_1_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_abuse_perms`
--

DROP TABLE IF EXISTS `_1_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_abuse_perms`
--

LOCK TABLES `_1_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_1_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes`
--

DROP TABLE IF EXISTS `_1_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `error` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `signed` tinyint(1) DEFAULT NULL,
  `array` tinyint(1) DEFAULT NULL,
  `format` varchar(64) DEFAULT NULL,
  `formatOptions` text DEFAULT NULL,
  `filters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`filters`)),
  `options` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes`
--

LOCK TABLES `_1_attributes` WRITE;
/*!40000 ALTER TABLE `_1_attributes` DISABLE KEYS */;
INSERT INTO `_1_attributes` VALUES
(3,'2_1_name','2024-11-13 20:36:48.862','2024-11-13 20:41:13.622','[]','2','pubquiz','1','games','name','string','available',NULL,40,1,NULL,1,0,'','[]','[]','[]'),
(6,'2_2_display_name','2024-11-13 21:04:06.521','2024-11-13 21:04:06.546','[]','2','pubquiz','2','teams','display_name','string','available',NULL,40,1,NULL,1,0,'','[]','[]','[]'),
(8,'2_5_name','2024-11-13 21:16:41.900','2024-11-13 21:16:41.928','[]','2','pubquiz','5','client_devices','name','string','available',NULL,40,1,NULL,1,0,'','[]','[]','[]'),
(12,'2_4_content','2024-11-13 21:25:30.561','2024-11-13 21:25:30.590','[]','2','pubquiz','4','answers','content','string','available',NULL,255,0,'{\"value\":\"\"}',1,0,'','[]','[]','[]'),
(13,'2_4_teams','2024-11-13 21:29:54.295','2024-11-13 21:29:54.329','[]','2','pubquiz','4','answers','teams','relationship','available',NULL,0,0,NULL,1,0,'','[]','[]','{\"relatedCollection\":\"teams\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a52001187f877f7\",\"onDelete\":\"restrict\",\"side\":\"parent\"}'),
(14,'2_2_games','2024-11-13 21:30:52.778','2024-11-13 21:30:52.814','[]','2','pubquiz','2','teams','games','relationship','available',NULL,0,0,NULL,1,0,'','[]','[]','{\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a8c002fe234e007\",\"onDelete\":\"restrict\",\"side\":\"parent\"}'),
(15,'2_6_games','2024-11-13 21:31:38.996','2024-11-13 21:31:39.033','[]','2','pubquiz','6','realtime_data','games','relationship','available',NULL,0,0,NULL,1,0,'','[]','[]','{\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351aba003d6c348a7b\",\"onDelete\":\"restrict\",\"side\":\"parent\"}'),
(16,'2_6_countdown_timer_active','2024-11-13 21:32:07.259','2024-11-13 21:32:07.290','[]','2','pubquiz','6','realtime_data','countdown_timer_active','boolean','available',NULL,0,0,'{\"value\":false}',1,0,'','[]','[]','[]'),
(17,'2_6_question_index','2024-11-13 21:32:29.045','2024-11-13 21:32:29.073','[]','2','pubquiz','6','realtime_data','question_index','integer','available',NULL,4,1,NULL,1,0,'intRange','{\"min\":1,\"max\":9999}','[]','[]'),
(18,'2_6_round_index','2024-11-13 21:32:52.842','2024-11-13 21:32:52.868','[]','2','pubquiz','6','realtime_data','round_index','integer','available',NULL,4,1,NULL,1,0,'intRange','{\"min\":1,\"max\":999}','[]','[]'),
(19,'2_6_screen','2024-11-13 21:33:09.524','2024-11-13 21:33:09.554','[]','2','pubquiz','6','realtime_data','screen','string','available',NULL,30,1,NULL,1,0,'','[]','[]','[]');
/*!40000 ALTER TABLE `_1_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_attributes_perms`
--

DROP TABLE IF EXISTS `_1_attributes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_attributes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_attributes_perms`
--

LOCK TABLES `_1_attributes_perms` WRITE;
/*!40000 ALTER TABLE `_1_attributes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_attributes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit`
--

DROP TABLE IF EXISTS `_1_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time` DESC),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit`
--

LOCK TABLES `_1_audit` WRITE;
/*!40000 ALTER TABLE `_1_audit` DISABLE KEYS */;
INSERT INTO `_1_audit` VALUES
(1,'672a85fd35eb15b459ad','2024-11-05 20:54:21.220','2024-11-05 20:54:21.220','[]','1','bucket.create','bucket/audio','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:54:21.219','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"audio\",\"$createdAt\":\"2024-11-05T20:54:21.179+00:00\",\"$updatedAt\":\"2024-11-05T20:54:21.179+00:00\",\"$permissions\":[],\"fileSecurity\":false,\"name\":\"Audio\",\"enabled\":true,\"maximumFileSize\":30000000,\"allowedFileExtensions\":[],\"compression\":\"none\",\"encryption\":true,\"antivirus\":true}}'),
(2,'672a863587e5f5b77c1c','2024-11-05 20:55:17.556','2024-11-05 20:55:17.556','[]','1','file.create','file/672a863500205199d4e6','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:55:17.556','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"672a863500205199d4e6\",\"bucketId\":\"audio\",\"$createdAt\":\"2024-11-05T20:55:17.551+00:00\",\"$updatedAt\":\"2024-11-05T20:55:17.551+00:00\",\"$permissions\":[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"],\"name\":\"waiting.mp3\",\"signature\":\"c4807f3f46d94da8ac0d5d7997f16d17\",\"mimeType\":\"audio\\/mpeg\",\"sizeOriginal\":447624,\"chunksTotal\":1,\"chunksUploaded\":1}}'),
(3,'672a864e57fa0f881086','2024-11-05 20:55:42.360','2024-11-05 20:55:42.360','[]','1','bucket.update','bucket/audio','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:55:42.360','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"audio\",\"$createdAt\":\"2024-11-05T20:54:21.179+00:00\",\"$updatedAt\":\"2024-11-05T20:55:42.346+00:00\",\"$permissions\":[\"read(\\\"any\\\")\"],\"fileSecurity\":false,\"name\":\"Audio\",\"enabled\":true,\"maximumFileSize\":30000000,\"allowedFileExtensions\":[],\"compression\":\"none\",\"encryption\":true,\"antivirus\":true}}'),
(6,'672be1b8918beb070b20','2024-11-06 21:38:00.596','2024-11-06 21:38:00.596','[]','1','database.create','database/pubquiz','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:38:00.595','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"pubquiz\",\"name\":\"pubquiz\",\"$createdAt\":\"2024-11-06T21:38:00.559+00:00\",\"$updatedAt\":\"2024-11-06T21:38:00.559+00:00\",\"enabled\":true}}'),
(7,'672be1c040f22a18c9c6','2024-11-06 21:38:08.266','2024-11-06 21:38:08.266','[]','1','collection.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:38:08.265','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"games\",\"$createdAt\":\"2024-11-06T21:38:08.243+00:00\",\"$updatedAt\":\"2024-11-06T21:38:08.243+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"games\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(8,'672be1e3d648979a0f22','2024-11-06 21:38:43.877','2024-11-06 21:38:43.877','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:38:43.876','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"key\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":true,\"size\":10,\"default\":null}}'),
(9,'672dedd6ca9dfd2c22a0','2024-11-08 10:54:14.829','2024-11-08 10:54:14.829','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:54:14.829','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"test\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"size\":2,\"default\":null}}'),
(10,'67350ce16d73a2ae093d','2024-11-13 20:32:33.448','2024-11-13 20:32:33.448','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:32:33.446','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"key\",\"type\":\"string\",\"status\":\"deleting\",\"error\":\"\",\"required\":false,\"array\":true,\"size\":10,\"default\":null}}'),
(11,'67350ce3ce93713587e2','2024-11-13 20:32:35.846','2024-11-13 20:32:35.846','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:32:35.845','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"test\",\"type\":\"string\",\"status\":\"deleting\",\"error\":\"\",\"required\":false,\"array\":false,\"size\":2,\"default\":null}}'),
(12,'67350de0d5e341bebcc8','2024-11-13 20:36:48.876','2024-11-13 20:36:48.876','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:36:48.875','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"name\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"size\":40,\"default\":null}}'),
(13,'67350e88302800725648','2024-11-13 20:39:36.197','2024-11-13 20:39:36.197','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:39:36.196','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null}}'),
(14,'67350ede018ec6fdbaf7','2024-11-13 20:41:02.006','2024-11-13 20:41:02.006','[]','1','index.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:41:02.006','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"index_1\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(15,'67350ee99a6291fc6442','2024-11-13 20:41:13.632','2024-11-13 20:41:13.632','[]','1','attribute.update','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:41:13.632','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"name\",\"type\":\"string\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null}}'),
(16,'67350f29a88cd51eca27','2024-11-13 20:42:17.690','2024-11-13 20:42:17.690','[]','1','index.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:42:17.690','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"index_1\",\"type\":\"unique\",\"status\":\"deleting\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(17,'67350f6ee03a8ac16594','2024-11-13 20:43:26.918','2024-11-13 20:43:26.918','[]','1','index.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:43:26.918','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"game_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(18,'67350fa3c833e04b264e','2024-11-13 20:44:19.820','2024-11-13 20:44:19.820','[]','1','collection.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:44:19.819','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"teams\",\"$createdAt\":\"2024-11-13T20:44:19.787+00:00\",\"$updatedAt\":\"2024-11-13T20:44:19.787+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"teams\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(21,'6735105f34744eed7a69','2024-11-13 20:47:27.214','2024-11-13 20:47:27.214','[]','1','collection.create','database/pubquiz/collection/answers','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:47:27.214','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"answers\",\"$createdAt\":\"2024-11-13T20:47:27.186+00:00\",\"$updatedAt\":\"2024-11-13T20:47:27.186+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"answers\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(22,'6735141848638287a43e','2024-11-13 21:03:20.296','2024-11-13 21:03:20.296','[]','1','attribute.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:03:20.296','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":9999,\"default\":null}}'),
(23,'673514468311790ea8f1','2024-11-13 21:04:06.536','2024-11-13 21:04:06.536','[]','1','attribute.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:04:06.536','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"display_name\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null}}'),
(24,'673514b0ec2c618a76ae','2024-11-13 21:05:52.967','2024-11-13 21:05:52.967','[]','1','user.create','user/673514b0003b67911a68','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:05:52.967','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"673514b0003b67911a68\",\"$createdAt\":\"2024-11-13T21:05:52.957+00:00\",\"$updatedAt\":\"2024-11-13T21:05:52.957+00:00\",\"name\":\"\",\"password\":null,\"hash\":\"argon2\",\"hashOptions\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2024-11-13T21:05:52.957+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"\",\"email\":\"\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":[],\"targets\":[],\"accessedAt\":\"\"}}'),
(25,'673514eb4f133aefcb2c','2024-11-13 21:06:51.323','2024-11-13 21:06:51.323','[]','1','user.delete','user/673514b0003b67911a68','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:06:51.323','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"673514b0003b67911a68\",\"$createdAt\":\"2024-11-13T21:05:52.957+00:00\",\"$updatedAt\":\"2024-11-13T21:05:52.957+00:00\",\"name\":\"\",\"password\":null,\"hash\":\"argon2\",\"hashOptions\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2024-11-13T21:05:52.957+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"\",\"email\":\"\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":[],\"targets\":[],\"accessedAt\":\"\"}}'),
(26,'673515728d7044e78920','2024-11-13 21:09:06.579','2024-11-13 21:09:06.579','[]','1','user.create','user/lenovo_tab_m9.1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:09:06.579','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"lenovo_tab_m9.1\",\"$createdAt\":\"2024-11-13T21:09:06.570+00:00\",\"$updatedAt\":\"2024-11-13T21:09:06.570+00:00\",\"name\":\"Lenovo Tab M9 #1\",\"password\":null,\"hash\":\"argon2\",\"hashOptions\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"registration\":\"2024-11-13T21:09:06.569+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"\",\"email\":\"\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":[],\"targets\":[],\"accessedAt\":\"\"}}'),
(27,'6735171fc0fb35f39d00','2024-11-13 21:16:15.790','2024-11-13 21:16:15.790','[]','1','collection.create','database/pubquiz/collection/client_devices','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:16:15.789','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"client_devices\",\"$createdAt\":\"2024-11-13T21:16:15.764+00:00\",\"$updatedAt\":\"2024-11-13T21:16:15.764+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"client_devices\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(28,'673517305366387d60b8','2024-11-13 21:16:32.341','2024-11-13 21:16:32.341','[]','1','attribute.create','database/pubquiz/collection/client_devices','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:16:32.341','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null}}'),
(29,'67351739df7a73540aba','2024-11-13 21:16:41.915','2024-11-13 21:16:41.915','[]','1','attribute.create','database/pubquiz/collection/client_devices','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:16:41.914','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"name\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null}}'),
(30,'67351756ce05011c0776','2024-11-13 21:17:10.843','2024-11-13 21:17:10.843','[]','1','index.create','database/pubquiz/collection/client_devices','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:10.843','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"client_device_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(31,'6735175c94ee353f5149','2024-11-13 21:17:16.610','2024-11-13 21:17:16.610','[]','1','attribute.delete','database/pubquiz/collection/client_devices','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:16.609','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"deleting\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null}}'),
(32,'67351764e1c3ce7b36c8','2024-11-13 21:17:24.924','2024-11-13 21:17:24.924','[]','1','attribute.delete','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:24.924','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"deleting\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":9999,\"default\":null}}'),
(33,'6735176e149a1a0558a5','2024-11-13 21:17:34.084','2024-11-13 21:17:34.084','[]','1','index.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:34.083','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"team_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(34,'6735177a3f0256791b54','2024-11-13 21:17:46.258','2024-11-13 21:17:46.258','[]','1','index.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:46.257','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"game_id\",\"type\":\"unique\",\"status\":\"deleting\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(35,'6735177eaed34e25697b','2024-11-13 21:17:50.716','2024-11-13 21:17:50.716','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:17:50.715','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"id\",\"type\":\"integer\",\"status\":\"deleting\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null}}'),
(36,'6735178c506b6f2f8d66','2024-11-13 21:18:04.329','2024-11-13 21:18:04.329','[]','1','index.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:18:04.329','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"game_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(37,'6735182635a296823df5','2024-11-13 21:20:38.219','2024-11-13 21:20:38.219','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:20:38.219','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"teams\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"teams\",\"relationType\":\"oneToMany\",\"twoWay\":false,\"twoWayKey\":\"67351826000beacfeed4\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(38,'67351859638ab9131818','2024-11-13 21:21:29.407','2024-11-13 21:21:29.407','[]','1','attribute.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:21:29.407','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"answers\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"answers\",\"relationType\":\"oneToMany\",\"twoWay\":false,\"twoWayKey\":\"6735185900182ac16e11\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(39,'6735188b9f89d9c0759b','2024-11-13 21:22:19.653','2024-11-13 21:22:19.653','[]','1','collection.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:22:19.652','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"realtime_data\",\"$createdAt\":\"2024-11-13T21:22:19.627+00:00\",\"$updatedAt\":\"2024-11-13T21:22:19.627+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"realtime_date\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[],\"indexes\":[]}}'),
(40,'673518b28df7f9fa59fd','2024-11-13 21:22:58.581','2024-11-13 21:22:58.581','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:22:58.581','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"realtimeDate\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"realtime_data\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"673518b20022c0ad9092\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(41,'6735194a8ccb3184ea17','2024-11-13 21:25:30.576','2024-11-13 21:25:30.576','[]','1','attribute.create','database/pubquiz/collection/answers','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:25:30.576','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"content\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"size\":255,\"default\":\"\"}}'),
(42,'6735195ad5d804aa5a66','2024-11-13 21:25:46.875','2024-11-13 21:25:46.875','[]','1','index.create','database/pubquiz/collection/answers','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:25:46.875','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"answer_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(43,'67351a3bee2335d2ad63','2024-11-13 21:29:31.975','2024-11-13 21:29:31.975','[]','1','attribute.delete','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:29:31.975','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"answers\",\"type\":\"relationship\",\"status\":\"deleting\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"answers\",\"relationType\":\"oneToMany\",\"twoWay\":false,\"twoWayKey\":\"6735185900182ac16e11\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(44,'67351a524ad3580cda14','2024-11-13 21:29:54.306','2024-11-13 21:29:54.306','[]','1','attribute.create','database/pubquiz/collection/answers','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:29:54.306','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"teams\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"teams\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a52001187f877f7\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(45,'67351a72d1d085111076','2024-11-13 21:30:26.859','2024-11-13 21:30:26.859','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:30:26.859','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"teams\",\"type\":\"relationship\",\"status\":\"deleting\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"teams\",\"relationType\":\"oneToMany\",\"twoWay\":false,\"twoWayKey\":\"67351826000beacfeed4\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(46,'67351a8cc0279135a1b9','2024-11-13 21:30:52.787','2024-11-13 21:30:52.787','[]','1','attribute.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:30:52.786','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"games\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a8c002fe234e007\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(47,'67351aa42f9bd0763779','2024-11-13 21:31:16.194','2024-11-13 21:31:16.194','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:31:16.194','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"realtimeDate\",\"type\":\"relationship\",\"status\":\"deleting\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"realtime_data\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"673518b20022c0ad9092\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(48,'67351abb0211030a5552','2024-11-13 21:31:39.008','2024-11-13 21:31:39.008','[]','1','attribute.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:31:39.008','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"games\",\"type\":\"relationship\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351aba003d6c348a7b\",\"onDelete\":\"restrict\",\"side\":\"parent\"}}'),
(49,'67351ad742e16b4bd2f0','2024-11-13 21:32:07.273','2024-11-13 21:32:07.273','[]','1','attribute.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:32:07.273','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"countdown_timer_active\",\"type\":\"boolean\",\"status\":\"processing\",\"error\":\"\",\"required\":false,\"array\":false,\"default\":false}}'),
(50,'67351aed0e543298b07e','2024-11-13 21:32:29.058','2024-11-13 21:32:29.058','[]','1','attribute.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:32:29.058','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"question_index\",\"type\":\"integer\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":9999,\"default\":null}}'),
(51,'67351b04d0ac2564fcb1','2024-11-13 21:32:52.854','2024-11-13 21:32:52.854','[]','1','attribute.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:32:52.854','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"round_index\",\"type\":\"integer\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null}}'),
(52,'67351b1584654426c2bd','2024-11-13 21:33:09.542','2024-11-13 21:33:09.542','[]','1','attribute.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:33:09.541','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"screen\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":30,\"default\":null}}'),
(53,'67351b54de96f0b741b0','2024-11-13 21:34:12.911','2024-11-13 21:34:12.911','[]','1','attribute.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:34:12.911','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"code\",\"type\":\"string\",\"status\":\"processing\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":20,\"default\":null}}'),
(54,'67351b62c36c27af2b3c','2024-11-13 21:34:26.800','2024-11-13 21:34:26.800','[]','1','index.create','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:34:26.800','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"realtime_id\",\"type\":\"unique\",\"status\":\"processing\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}}'),
(55,'67351b798cd31ac31862','2024-11-13 21:34:49.576','2024-11-13 21:34:49.576','[]','1','document.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:34:49.576','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"test\",\"code\":\"TEST\",\"$id\":\"67351b790022c41ec0e2\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T21:34:49.568+00:00\",\"$updatedAt\":\"2024-11-13T21:34:49.568+00:00\",\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(56,'67351b9954bfd4f95ff5','2024-11-13 21:35:21.347','2024-11-13 21:35:21.347','[]','1','document.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:35:21.346','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"display_name\":\"Test team \\ud83d\\udc7b\",\"$id\":\"67351b99001404c9f163\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T21:35:21.334+00:00\",\"$updatedAt\":\"2024-11-13T21:35:21.334+00:00\",\"games\":{\"name\":\"test\",\"code\":\"TEST\",\"$id\":\"67351b790022c41ec0e2\",\"$createdAt\":\"2024-11-13T21:34:49.568+00:00\",\"$updatedAt\":\"2024-11-13T21:34:49.568+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"},\"$databaseId\":\"pubquiz\",\"$collectionId\":\"teams\"}}'),
(57,'67351bad12076a28f5dd','2024-11-13 21:35:41.073','2024-11-13 21:35:41.073','[]','1','document.delete','database/pubquiz/collection/games/document/67351b790022c41ec0e2','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:35:41.073','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"test\",\"code\":\"TEST\",\"$id\":\"67351b790022c41ec0e2\",\"$createdAt\":\"2024-11-13T21:34:49.568+00:00\",\"$updatedAt\":\"2024-11-13T21:34:49.568+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(58,'67351bbc60a13f1d8d8e','2024-11-13 21:35:56.395','2024-11-13 21:35:56.395','[]','1','document.delete','database/pubquiz/collection/teams/document/67351b99001404c9f163','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:35:56.395','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"display_name\":\"Test team \\ud83d\\udc7b\",\"$id\":\"67351b99001404c9f163\",\"$createdAt\":\"2024-11-13T21:35:21.334+00:00\",\"$updatedAt\":\"2024-11-13T21:35:41.058+00:00\",\"$permissions\":[],\"games\":null,\"$databaseId\":\"pubquiz\",\"$collectionId\":\"teams\"}}'),
(59,'67351bd07b5137d62679','2024-11-13 21:36:16.505','2024-11-13 21:36:16.505','[]','1','attribute.delete','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:36:16.504','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"key\":\"code\",\"type\":\"string\",\"status\":\"deleting\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":20,\"default\":null}}'),
(60,'67351be052dd7b86527f','2024-11-13 21:36:32.339','2024-11-13 21:36:32.339','[]','1','document.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:36:32.338','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"Test game\",\"$id\":\"TEST_GAME\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T21:36:32.329+00:00\",\"$updatedAt\":\"2024-11-13T21:36:32.329+00:00\",\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(61,'67351bef08c11943ace9','2024-11-13 21:36:47.035','2024-11-13 21:36:47.035','[]','1','document.create','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:36:47.035','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"display_name\":\"Test team \",\"$id\":\"67351bef000092cc8c11\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T21:36:47.023+00:00\",\"$updatedAt\":\"2024-11-13T21:36:47.023+00:00\",\"games\":{\"name\":\"Test game\",\"$id\":\"TEST_GAME\",\"$createdAt\":\"2024-11-13T21:36:32.329+00:00\",\"$updatedAt\":\"2024-11-13T21:36:32.329+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"},\"$databaseId\":\"pubquiz\",\"$collectionId\":\"teams\"}}'),
(62,'67351c2842dfce1219cb','2024-11-13 21:37:44.273','2024-11-13 21:37:44.273','[]','1','collection.update','database/pubquiz/collection/realtime_data','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:37:44.273','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"realtime_data\",\"$createdAt\":\"2024-11-13T21:22:19.627+00:00\",\"$updatedAt\":\"2024-11-13T21:37:44.257+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"realtime_data\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[{\"key\":\"games\",\"type\":\"relationship\",\"status\":\"available\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351aba003d6c348a7b\",\"onDelete\":\"restrict\",\"side\":\"parent\"},{\"key\":\"countdown_timer_active\",\"type\":\"boolean\",\"status\":\"available\",\"error\":\"\",\"required\":false,\"array\":false,\"default\":false},{\"key\":\"question_index\",\"type\":\"integer\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":9999,\"default\":null},{\"key\":\"round_index\",\"type\":\"integer\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"min\":1,\"max\":999,\"default\":null},{\"key\":\"screen\",\"type\":\"string\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":30,\"default\":null}],\"indexes\":[{\"key\":\"realtime_id\",\"type\":\"unique\",\"status\":\"available\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}]}}'),
(63,'673521efc421ed431bf8','2024-11-13 22:02:23.803','2024-11-13 22:02:23.803','[]','1','collection.update','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:02:23.803','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"games\",\"$createdAt\":\"2024-11-06T21:38:08.243+00:00\",\"$updatedAt\":\"2024-11-13T22:02:23.786+00:00\",\"$permissions\":[\"read(\\\"any\\\")\"],\"databaseId\":\"pubquiz\",\"name\":\"games\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[{\"key\":\"name\",\"type\":\"string\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null}],\"indexes\":[{\"key\":\"game_id\",\"type\":\"unique\",\"status\":\"available\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}]}}'),
(64,'673523575b15a0b085ed','2024-11-13 22:08:23.373','2024-11-13 22:08:23.373','[]','1','collection.update','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:08:23.372','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"teams\",\"$createdAt\":\"2024-11-13T20:44:19.787+00:00\",\"$updatedAt\":\"2024-11-13T22:08:23.362+00:00\",\"$permissions\":[\"read(\\\"any\\\")\"],\"databaseId\":\"pubquiz\",\"name\":\"teams\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[{\"key\":\"display_name\",\"type\":\"string\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null},{\"key\":\"games\",\"type\":\"relationship\",\"status\":\"available\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a8c002fe234e007\",\"onDelete\":\"restrict\",\"side\":\"parent\"}],\"indexes\":[{\"key\":\"team_id\",\"type\":\"unique\",\"status\":\"available\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}]}}'),
(65,'673523741732180b5573','2024-11-13 22:08:52.094','2024-11-13 22:08:52.094','[]','1','collection.update','database/pubquiz/collection/teams','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:08:52.094','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"$id\":\"teams\",\"$createdAt\":\"2024-11-13T20:44:19.787+00:00\",\"$updatedAt\":\"2024-11-13T22:08:52.082+00:00\",\"$permissions\":[],\"databaseId\":\"pubquiz\",\"name\":\"teams\",\"enabled\":true,\"documentSecurity\":false,\"attributes\":[{\"key\":\"display_name\",\"type\":\"string\",\"status\":\"available\",\"error\":\"\",\"required\":true,\"array\":false,\"size\":40,\"default\":null},{\"key\":\"games\",\"type\":\"relationship\",\"status\":\"available\",\"error\":\"\",\"required\":false,\"array\":false,\"relatedCollection\":\"games\",\"relationType\":\"oneToOne\",\"twoWay\":false,\"twoWayKey\":\"67351a8c002fe234e007\",\"onDelete\":\"restrict\",\"side\":\"parent\"}],\"indexes\":[{\"key\":\"team_id\",\"type\":\"unique\",\"status\":\"available\",\"error\":\"\",\"attributes\":[\"$id\"],\"orders\":[\"ASC\"]}]}}'),
(66,'673523972f3486dada32','2024-11-13 22:09:27.193','2024-11-13 22:09:27.193','[]','1','document.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:09:27.193','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"ads\",\"$id\":\"67352397000a9706ea99\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T22:09:27.179+00:00\",\"$updatedAt\":\"2024-11-13T22:09:27.179+00:00\",\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(67,'6735247b10c9f928b7ad','2024-11-13 22:13:15.068','2024-11-13 22:13:15.068','[]','1','document.delete','database/pubquiz/collection/games/document/67352397000a9706ea99','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:13:15.068','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"ads\",\"$id\":\"67352397000a9706ea99\",\"$createdAt\":\"2024-11-13T22:09:27.179+00:00\",\"$updatedAt\":\"2024-11-13T22:09:27.179+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(68,'6735249ba33ea3223d16','2024-11-13 22:13:47.668','2024-11-13 22:13:47.668','[]','1','document.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:13:47.668','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"abc\",\"$id\":\"6735249b00289b7d65f0\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T22:13:47.659+00:00\",\"$updatedAt\":\"2024-11-13T22:13:47.659+00:00\",\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(69,'673524d8d34ee4e982da','2024-11-13 22:14:48.865','2024-11-13 22:14:48.865','[]','1','document.delete','database/pubquiz/collection/games/document/6735249b00289b7d65f0','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:14:48.865','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"abc\",\"$id\":\"6735249b00289b7d65f0\",\"$createdAt\":\"2024-11-13T22:13:47.659+00:00\",\"$updatedAt\":\"2024-11-13T22:13:47.659+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(70,'6735256c89ad792368c7','2024-11-13 22:17:16.563','2024-11-13 22:17:16.563','[]','1','document.create','database/pubquiz/collection/games','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:17:16.563','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"123\",\"$id\":\"6735256c0021937ab4a5\",\"$permissions\":[],\"$createdAt\":\"2024-11-13T22:17:16.550+00:00\",\"$updatedAt\":\"2024-11-13T22:17:16.550+00:00\",\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}'),
(71,'673525c8ce9b707c7ab1','2024-11-13 22:18:48.846','2024-11-13 22:18:48.846','[]','1','document.delete','database/pubquiz/collection/games/document/6735256c0021937ab4a5','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 22:18:48.845','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"admin\",\"data\":{\"name\":\"123\",\"$id\":\"6735256c0021937ab4a5\",\"$createdAt\":\"2024-11-13T22:17:16.550+00:00\",\"$updatedAt\":\"2024-11-13T22:17:16.550+00:00\",\"$permissions\":[],\"$databaseId\":\"pubquiz\",\"$collectionId\":\"games\"}}');
/*!40000 ALTER TABLE `_1_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_audit_perms`
--

DROP TABLE IF EXISTS `_1_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_audit_perms`
--

LOCK TABLES `_1_audit_perms` WRITE;
/*!40000 ALTER TABLE `_1_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_authenticators`
--

DROP TABLE IF EXISTS `_1_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_authenticators` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_authenticators`
--

LOCK TABLES `_1_authenticators` WRITE;
/*!40000 ALTER TABLE `_1_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_authenticators_perms`
--

DROP TABLE IF EXISTS `_1_authenticators_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_authenticators_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_authenticators_perms`
--

LOCK TABLES `_1_authenticators_perms` WRITE;
/*!40000 ALTER TABLE `_1_authenticators_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_authenticators_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_bucket_1`
--

DROP TABLE IF EXISTS `_1_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `bucketInternalId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(256)),
  KEY `_key_signature` (`signature`(256)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_bucket_1`
--

LOCK TABLES `_1_bucket_1` WRITE;
/*!40000 ALTER TABLE `_1_bucket_1` DISABLE KEYS */;
INSERT INTO `_1_bucket_1` VALUES
(1,'672a863500205199d4e6','2024-11-05 20:55:17.551','2024-11-05 20:55:17.551','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','audio','1','waiting.mp3','/storage/uploads/app-672a75920004dd1982c6/audio/672a863500205199d4e6.mp3','c4807f3f46d94da8ac0d5d7997f16d17','audio/mpeg','{\"content_type\":\"audio\\/mpeg\"}',447624,596832,'none','','1','aes-128-gcm','1bc9bb201205b670451ce5383052a362','71eab3ede70e63e5bdff80df',1,1,'672a863500205199d4e6 waiting.mp3');
/*!40000 ALTER TABLE `_1_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_bucket_1_perms`
--

DROP TABLE IF EXISTS `_1_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_bucket_1_perms`
--

LOCK TABLES `_1_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_bucket_1_perms` DISABLE KEYS */;
INSERT INTO `_1_bucket_1_perms` VALUES
(3,'delete','user:672a6e92002f340b79c3','672a863500205199d4e6'),
(1,'read','user:672a6e92002f340b79c3','672a863500205199d4e6'),
(2,'update','user:672a6e92002f340b79c3','672a863500205199d4e6');
/*!40000 ALTER TABLE `_1_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets`
--

DROP TABLE IF EXISTS `_1_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`allowedFileExtensions`)),
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets`
--

LOCK TABLES `_1_buckets` WRITE;
/*!40000 ALTER TABLE `_1_buckets` DISABLE KEYS */;
INSERT INTO `_1_buckets` VALUES
(1,'audio','2024-11-05 20:54:21.179','2024-11-05 20:55:42.346','[\"read(\\\"any\\\")\"]',1,'Audio',0,30000000,'[]','none',1,1,'audio Audio');
/*!40000 ALTER TABLE `_1_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_buckets_perms`
--

DROP TABLE IF EXISTS `_1_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_buckets_perms`
--

LOCK TABLES `_1_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_1_buckets_perms` DISABLE KEYS */;
INSERT INTO `_1_buckets_perms` VALUES
(1,'read','any','audio');
/*!40000 ALTER TABLE `_1_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds`
--

DROP TABLE IF EXISTS `_1_builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `startTime` datetime(3) DEFAULT NULL,
  `endTime` datetime(3) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `deploymentInternalId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `status` varchar(256) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `logs` mediumtext DEFAULT NULL,
  `sourceType` varchar(2048) DEFAULT NULL,
  `source` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds`
--

LOCK TABLES `_1_builds` WRITE;
/*!40000 ALTER TABLE `_1_builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_builds_perms`
--

DROP TABLE IF EXISTS `_1_builds_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_builds_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_builds_perms`
--

LOCK TABLES `_1_builds_perms` WRITE;
/*!40000 ALTER TABLE `_1_builds_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_builds_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache`
--

DROP TABLE IF EXISTS `_1_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache`
--

LOCK TABLES `_1_cache` WRITE;
/*!40000 ALTER TABLE `_1_cache` DISABLE KEYS */;
INSERT INTO `_1_cache` VALUES
(1,'5747904feb1d1a8631d9f1bd48473f44','2024-11-05 20:55:17.591','2024-11-05 20:55:17.591','[]','file/672a863500205199d4e6','bucket/audio','image/png','2024-11-05 20:55:17.591','e5ce9391e9452c7a0da2fcbe55d251f7'),
(2,'1a76595fd161d6890f252fb1dc028230','2024-11-05 20:55:17.604','2024-11-05 20:55:17.604','[]','file/672a863500205199d4e6','bucket/audio','image/png','2024-11-05 20:55:17.604','4c9f069422027050e27f64378b2ce737'),
(3,'41061587b8dd589ac245491b6cfe692b','2024-11-05 20:57:15.920','2024-11-05 20:57:15.920','[]','file/672a863500205199d4e6','bucket/audio','image/png','2024-11-05 20:57:15.920','44e007faa5473688a91095c477132a27');
/*!40000 ALTER TABLE `_1_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_cache_perms`
--

DROP TABLE IF EXISTS `_1_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_cache_perms`
--

LOCK TABLES `_1_cache_perms` WRITE;
/*!40000 ALTER TABLE `_1_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_challenges`
--

DROP TABLE IF EXISTS `_1_challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_challenges` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `token` varchar(512) DEFAULT NULL,
  `code` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_challenges`
--

LOCK TABLES `_1_challenges` WRITE;
/*!40000 ALTER TABLE `_1_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_challenges_perms`
--

DROP TABLE IF EXISTS `_1_challenges_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_challenges_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_challenges_perms`
--

LOCK TABLES `_1_challenges_perms` WRITE;
/*!40000 ALTER TABLE `_1_challenges_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_challenges_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2`
--

DROP TABLE IF EXISTS `_1_database_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `documentSecurity` tinyint(1) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_documentSecurity` (`documentSecurity`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2`
--

LOCK TABLES `_1_database_2` WRITE;
/*!40000 ALTER TABLE `_1_database_2` DISABLE KEYS */;
INSERT INTO `_1_database_2` VALUES
(1,'games','2024-11-06 21:38:08.243','2024-11-13 22:02:23.786','[\"read(\\\"any\\\")\"]','2','pubquiz','games',1,0,NULL,NULL,'games games'),
(2,'teams','2024-11-13 20:44:19.787','2024-11-13 22:08:52.082','[]','2','pubquiz','teams',1,0,NULL,NULL,'teams teams'),
(4,'answers','2024-11-13 20:47:27.186','2024-11-13 20:47:27.186','[]','2','pubquiz','answers',1,0,NULL,NULL,'answers answers'),
(5,'client_devices','2024-11-13 21:16:15.764','2024-11-13 21:16:15.764','[]','2','pubquiz','client_devices',1,0,NULL,NULL,'client_devices client_devices'),
(6,'realtime_data','2024-11-13 21:22:19.627','2024-11-13 21:37:44.257','[]','2','pubquiz','realtime_data',1,0,NULL,NULL,'realtime_data realtime_data');
/*!40000 ALTER TABLE `_1_database_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_1`
--

DROP TABLE IF EXISTS `_1_database_2_collection_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `game_id` (`_uid`(36)),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_1`
--

LOCK TABLES `_1_database_2_collection_1` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_1` DISABLE KEYS */;
INSERT INTO `_1_database_2_collection_1` VALUES
(2,'TEST_GAME','2024-11-13 21:36:32.329','2024-11-13 21:36:32.329','[]','Test game');
/*!40000 ALTER TABLE `_1_database_2_collection_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_1_perms`
--

DROP TABLE IF EXISTS `_1_database_2_collection_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_1_perms`
--

LOCK TABLES `_1_database_2_collection_1_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_2`
--

DROP TABLE IF EXISTS `_1_database_2_collection_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_2` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `display_name` varchar(40) DEFAULT NULL,
  `games` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `team_id` (`_uid`(36)),
  UNIQUE KEY `_index_games` (`games`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_2`
--

LOCK TABLES `_1_database_2_collection_2` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_2` DISABLE KEYS */;
INSERT INTO `_1_database_2_collection_2` VALUES
(2,'67351bef000092cc8c11','2024-11-13 21:36:47.023','2024-11-13 21:36:47.023','[]','Test team ','TEST_GAME');
/*!40000 ALTER TABLE `_1_database_2_collection_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_2_perms`
--

DROP TABLE IF EXISTS `_1_database_2_collection_2_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_2_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_2_perms`
--

LOCK TABLES `_1_database_2_collection_2_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_2_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_2_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_4`
--

DROP TABLE IF EXISTS `_1_database_2_collection_4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_4` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `teams` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `answer_id` (`_uid`(36)),
  UNIQUE KEY `_index_teams` (`teams`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_4`
--

LOCK TABLES `_1_database_2_collection_4` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_4` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_4_perms`
--

DROP TABLE IF EXISTS `_1_database_2_collection_4_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_4_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_4_perms`
--

LOCK TABLES `_1_database_2_collection_4_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_4_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_4_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_5`
--

DROP TABLE IF EXISTS `_1_database_2_collection_5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_5` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `client_device_id` (`_uid`(36)),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_5`
--

LOCK TABLES `_1_database_2_collection_5` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_5` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_5_perms`
--

DROP TABLE IF EXISTS `_1_database_2_collection_5_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_5_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_5_perms`
--

LOCK TABLES `_1_database_2_collection_5_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_5_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_5_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_6`
--

DROP TABLE IF EXISTS `_1_database_2_collection_6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_6` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `games` varchar(255) DEFAULT NULL,
  `countdown_timer_active` tinyint(1) DEFAULT NULL,
  `question_index` int(11) DEFAULT NULL,
  `round_index` int(11) DEFAULT NULL,
  `screen` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `realtime_id` (`_uid`(36)),
  UNIQUE KEY `_index_games` (`games`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_6`
--

LOCK TABLES `_1_database_2_collection_6` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_6` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_collection_6_perms`
--

DROP TABLE IF EXISTS `_1_database_2_collection_6_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_collection_6_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_collection_6_perms`
--

LOCK TABLES `_1_database_2_collection_6_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_collection_6_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_database_2_collection_6_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_database_2_perms`
--

DROP TABLE IF EXISTS `_1_database_2_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_database_2_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_database_2_perms`
--

LOCK TABLES `_1_database_2_perms` WRITE;
/*!40000 ALTER TABLE `_1_database_2_perms` DISABLE KEYS */;
INSERT INTO `_1_database_2_perms` VALUES
(1,'read','any','games');
/*!40000 ALTER TABLE `_1_database_2_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases`
--

DROP TABLE IF EXISTS `_1_databases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases`
--

LOCK TABLES `_1_databases` WRITE;
/*!40000 ALTER TABLE `_1_databases` DISABLE KEYS */;
INSERT INTO `_1_databases` VALUES
(2,'pubquiz','2024-11-06 21:38:00.559','2024-11-06 21:38:00.559','[]','pubquiz',1,'pubquiz pubquiz');
/*!40000 ALTER TABLE `_1_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_databases_perms`
--

DROP TABLE IF EXISTS `_1_databases_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_databases_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_databases_perms`
--

LOCK TABLES `_1_databases_perms` WRITE;
/*!40000 ALTER TABLE `_1_databases_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_databases_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments`
--

DROP TABLE IF EXISTS `_1_deployments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceInternalId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `buildInternalId` varchar(255) DEFAULT NULL,
  `buildId` varchar(255) DEFAULT NULL,
  `entrypoint` varchar(2048) DEFAULT NULL,
  `commands` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `type` varchar(2048) DEFAULT NULL,
  `installationId` varchar(255) DEFAULT NULL,
  `installationInternalId` varchar(255) DEFAULT NULL,
  `providerRepositoryId` varchar(255) DEFAULT NULL,
  `repositoryId` varchar(255) DEFAULT NULL,
  `repositoryInternalId` varchar(255) DEFAULT NULL,
  `providerRepositoryName` varchar(255) DEFAULT NULL,
  `providerRepositoryOwner` varchar(255) DEFAULT NULL,
  `providerRepositoryUrl` varchar(255) DEFAULT NULL,
  `providerCommitHash` varchar(255) DEFAULT NULL,
  `providerCommitAuthorUrl` varchar(255) DEFAULT NULL,
  `providerCommitAuthor` varchar(255) DEFAULT NULL,
  `providerCommitMessage` varchar(255) DEFAULT NULL,
  `providerCommitUrl` varchar(255) DEFAULT NULL,
  `providerBranch` varchar(255) DEFAULT NULL,
  `providerBranchUrl` varchar(255) DEFAULT NULL,
  `providerRootDirectory` varchar(255) DEFAULT NULL,
  `providerCommentId` varchar(2048) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` text DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  `activate` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_resource` (`resourceId`),
  KEY `_key_resource_type` (`resourceType`),
  KEY `_key_size` (`size`),
  KEY `_key_buildId` (`buildId`),
  KEY `_key_activate` (`activate`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments`
--

LOCK TABLES `_1_deployments` WRITE;
/*!40000 ALTER TABLE `_1_deployments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_deployments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_deployments_perms`
--

DROP TABLE IF EXISTS `_1_deployments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_deployments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_deployments_perms`
--

LOCK TABLES `_1_deployments_perms` WRITE;
/*!40000 ALTER TABLE `_1_deployments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_deployments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions`
--

DROP TABLE IF EXISTS `_1_executions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `functionInternalId` varchar(255) DEFAULT NULL,
  `functionId` varchar(255) DEFAULT NULL,
  `deploymentInternalId` varchar(255) DEFAULT NULL,
  `deploymentId` varchar(255) DEFAULT NULL,
  `trigger` varchar(128) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `duration` double DEFAULT NULL,
  `errors` mediumtext DEFAULT NULL,
  `logs` mediumtext DEFAULT NULL,
  `requestMethod` varchar(128) DEFAULT NULL,
  `requestPath` varchar(2048) DEFAULT NULL,
  `requestHeaders` text DEFAULT NULL,
  `responseStatusCode` int(11) DEFAULT NULL,
  `responseHeaders` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  `scheduledAt` datetime(3) DEFAULT NULL,
  `scheduleInternalId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_function` (`functionId`),
  KEY `_key_trigger` (`trigger`(32)),
  KEY `_key_status` (`status`(32)),
  KEY `_key_requestMethod` (`requestMethod`),
  KEY `_key_requestPath` (`requestPath`(255)),
  KEY `_key_deployment` (`deploymentId`),
  KEY `_key_responseStatusCode` (`responseStatusCode`),
  KEY `_key_duration` (`duration`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions`
--

LOCK TABLES `_1_executions` WRITE;
/*!40000 ALTER TABLE `_1_executions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_executions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_executions_perms`
--

DROP TABLE IF EXISTS `_1_executions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_executions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_executions_perms`
--

LOCK TABLES `_1_executions_perms` WRITE;
/*!40000 ALTER TABLE `_1_executions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_executions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions`
--

DROP TABLE IF EXISTS `_1_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `execute` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`execute`)),
  `name` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `live` tinyint(1) DEFAULT NULL,
  `installationId` varchar(255) DEFAULT NULL,
  `installationInternalId` varchar(255) DEFAULT NULL,
  `providerRepositoryId` varchar(255) DEFAULT NULL,
  `repositoryId` varchar(255) DEFAULT NULL,
  `repositoryInternalId` varchar(255) DEFAULT NULL,
  `providerBranch` varchar(255) DEFAULT NULL,
  `providerRootDirectory` varchar(255) DEFAULT NULL,
  `providerSilentMode` tinyint(1) DEFAULT NULL,
  `logging` tinyint(1) DEFAULT NULL,
  `runtime` varchar(2048) DEFAULT NULL,
  `deploymentInternalId` varchar(255) DEFAULT NULL,
  `deployment` varchar(255) DEFAULT NULL,
  `vars` text DEFAULT NULL,
  `varsProject` text DEFAULT NULL,
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `scheduleInternalId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `schedule` varchar(128) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  `version` varchar(8) DEFAULT NULL,
  `entrypoint` text DEFAULT NULL,
  `commands` text DEFAULT NULL,
  `specification` varchar(128) DEFAULT NULL,
  `scopes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`scopes`)),
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`(256)),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_installationId` (`installationId`),
  KEY `_key_installationInternalId` (`installationInternalId`),
  KEY `_key_providerRepositoryId` (`providerRepositoryId`),
  KEY `_key_repositoryId` (`repositoryId`),
  KEY `_key_repositoryInternalId` (`repositoryInternalId`),
  KEY `_key_runtime` (`runtime`(64)),
  KEY `_key_deployment` (`deployment`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions`
--

LOCK TABLES `_1_functions` WRITE;
/*!40000 ALTER TABLE `_1_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_functions_perms`
--

DROP TABLE IF EXISTS `_1_functions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_functions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_functions_perms`
--

LOCK TABLES `_1_functions_perms` WRITE;
/*!40000 ALTER TABLE `_1_functions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_functions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_identities`
--

DROP TABLE IF EXISTS `_1_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_identities` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerEmail` varchar(320) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secrets` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_userInternalId_provider_providerUid` (`userInternalId`(11),`provider`,`providerUid`(128)),
  UNIQUE KEY `_key_provider_providerUid` (`provider`,`providerUid`(128)),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_provider` (`provider`),
  KEY `_key_providerUid` (`providerUid`(255)),
  KEY `_key_providerEmail` (`providerEmail`(255)),
  KEY `_key_providerAccessTokenExpiry` (`providerAccessTokenExpiry`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_identities`
--

LOCK TABLES `_1_identities` WRITE;
/*!40000 ALTER TABLE `_1_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_identities_perms`
--

DROP TABLE IF EXISTS `_1_identities_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_identities_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_identities_perms`
--

LOCK TABLES `_1_identities_perms` WRITE;
/*!40000 ALTER TABLE `_1_identities_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_identities_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes`
--

DROP TABLE IF EXISTS `_1_indexes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `databaseInternalId` varchar(255) DEFAULT NULL,
  `databaseId` varchar(255) DEFAULT NULL,
  `collectionInternalId` varchar(255) DEFAULT NULL,
  `collectionId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `error` varchar(2048) DEFAULT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `lengths` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`lengths`)),
  `orders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`orders`)),
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_db_collection` (`databaseInternalId`,`collectionInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes`
--

LOCK TABLES `_1_indexes` WRITE;
/*!40000 ALTER TABLE `_1_indexes` DISABLE KEYS */;
INSERT INTO `_1_indexes` VALUES
(3,'2_5_client_device_id','2024-11-13 21:17:10.830','2024-11-13 21:17:10.858','[]','2','pubquiz','5','client_devices','client_device_id','unique','available',NULL,'[\"$id\"]','[36]','[\"ASC\"]'),
(4,'2_2_team_id','2024-11-13 21:17:34.073','2024-11-13 21:17:34.105','[]','2','pubquiz','2','teams','team_id','unique','available',NULL,'[\"$id\"]','[36]','[\"ASC\"]'),
(5,'2_1_game_id','2024-11-13 21:18:04.317','2024-11-13 21:18:04.344','[]','2','pubquiz','1','games','game_id','unique','available',NULL,'[\"$id\"]','[36]','[\"ASC\"]'),
(6,'2_4_answer_id','2024-11-13 21:25:46.864','2024-11-13 21:25:46.895','[]','2','pubquiz','4','answers','answer_id','unique','available',NULL,'[\"$id\"]','[36]','[\"ASC\"]'),
(7,'2_6_realtime_id','2024-11-13 21:34:26.789','2024-11-13 21:34:26.820','[]','2','pubquiz','6','realtime_data','realtime_id','unique','available',NULL,'[\"$id\"]','[36]','[\"ASC\"]');
/*!40000 ALTER TABLE `_1_indexes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_indexes_perms`
--

DROP TABLE IF EXISTS `_1_indexes_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_indexes_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_indexes_perms`
--

LOCK TABLES `_1_indexes_perms` WRITE;
/*!40000 ALTER TABLE `_1_indexes_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_indexes_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships`
--

DROP TABLE IF EXISTS `_1_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`roles`)),
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships`
--

LOCK TABLES `_1_memberships` WRITE;
/*!40000 ALTER TABLE `_1_memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_memberships_perms`
--

DROP TABLE IF EXISTS `_1_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_memberships_perms`
--

LOCK TABLES `_1_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_1_memberships_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_messages`
--

DROP TABLE IF EXISTS `_1_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_messages` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `providerType` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `topics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`topics`)),
  `users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`users`)),
  `targets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`targets`)),
  `scheduledAt` datetime(3) DEFAULT NULL,
  `scheduleInternalId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `deliveredAt` datetime(3) DEFAULT NULL,
  `deliveryErrors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`deliveryErrors`)),
  `deliveredTotal` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_messages`
--

LOCK TABLES `_1_messages` WRITE;
/*!40000 ALTER TABLE `_1_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_messages_perms`
--

DROP TABLE IF EXISTS `_1_messages_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_messages_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_messages_perms`
--

LOCK TABLES `_1_messages_perms` WRITE;
/*!40000 ALTER TABLE `_1_messages_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_messages_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_migrations`
--

DROP TABLE IF EXISTS `_1_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_migrations` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `stage` varchar(255) DEFAULT NULL,
  `source` varchar(8192) DEFAULT NULL,
  `credentials` mediumtext DEFAULT NULL,
  `resources` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`resources`)),
  `statusCounters` varchar(3000) DEFAULT NULL,
  `resourceData` mediumtext DEFAULT NULL,
  `errors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`errors`)),
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_status` (`status`),
  KEY `_key_stage` (`stage`),
  KEY `_key_source` (`source`(255)),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_migrations`
--

LOCK TABLES `_1_migrations` WRITE;
/*!40000 ALTER TABLE `_1_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_migrations_perms`
--

DROP TABLE IF EXISTS `_1_migrations_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_migrations_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_migrations_perms`
--

LOCK TABLES `_1_migrations_perms` WRITE;
/*!40000 ALTER TABLE `_1_migrations_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_migrations_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_providers`
--

DROP TABLE IF EXISTS `_1_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_providers` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `credentials` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider` (`provider`),
  KEY `_key_type` (`type`),
  KEY `_key_enabled_type` (`enabled`,`type`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_providers`
--

LOCK TABLES `_1_providers` WRITE;
/*!40000 ALTER TABLE `_1_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_providers_perms`
--

DROP TABLE IF EXISTS `_1_providers_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_providers_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_providers_perms`
--

LOCK TABLES `_1_providers_perms` WRITE;
/*!40000 ALTER TABLE `_1_providers_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_providers_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions`
--

DROP TABLE IF EXISTS `_1_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  `factors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`factors`)),
  `expire` datetime(3) DEFAULT NULL,
  `mfaUpdatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`,`providerUid`(128)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions`
--

LOCK TABLES `_1_sessions` WRITE;
/*!40000 ALTER TABLE `_1_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_sessions_perms`
--

DROP TABLE IF EXISTS `_1_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_sessions_perms`
--

LOCK TABLES `_1_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_1_sessions_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats`
--

DROP TABLE IF EXISTS `_1_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_metric_period_time` (`metric` DESC,`period`,`time`),
  KEY `_key_time` (`time` DESC),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats`
--

LOCK TABLES `_1_stats` WRITE;
/*!40000 ALTER TABLE `_1_stats` DISABLE KEYS */;
INSERT INTO `_1_stats` VALUES
(1,'d351fdfdc8f5d0dad6c2401a54a98359','2024-11-05 20:54:21.234','2024-11-05 20:54:21.234','[]','buckets','default',1,'2024-11-05 20:00:00.000','1h'),
(2,'d536ab66cdefb600c9d8163f919c0440','2024-11-05 20:54:21.236','2024-11-05 20:54:21.236','[]','buckets','default',1,'2024-11-05 00:00:00.000','1d'),
(3,'207f9e5f969d4e0fe18414edaff36936','2024-11-05 20:54:21.238','2024-11-05 20:54:21.238','[]','buckets','default',1,NULL,'inf'),
(4,'1af41f15608511b9d02c2c0d8f99113a','2024-11-05 20:55:17.557','2024-11-05 20:55:17.557','[]','files','default',1,'2024-11-05 20:00:00.000','1h'),
(5,'27282f6f2ba28ffee64841f8010315c6','2024-11-05 20:55:17.560','2024-11-05 20:55:17.560','[]','files','default',1,'2024-11-05 00:00:00.000','1d'),
(6,'2a79fd78beec85c9b0ccd185f61ae72a','2024-11-05 20:55:17.561','2024-11-05 20:55:17.561','[]','files','default',1,NULL,'inf'),
(7,'4c9f2740db587beadea5112a0e3965cf','2024-11-05 20:55:17.563','2024-11-05 20:55:17.563','[]','files.storage','default',447624,'2024-11-05 20:00:00.000','1h'),
(8,'dde88ba8ae29d3742833019943beb0ca','2024-11-05 20:55:17.564','2024-11-05 20:55:17.564','[]','files.storage','default',447624,'2024-11-05 00:00:00.000','1d'),
(9,'abb1b54ededd64ac933f20f4fce07bea','2024-11-05 20:55:17.564','2024-11-05 20:55:17.564','[]','files.storage','default',447624,NULL,'inf'),
(10,'5c95dbfd6755d5d0fb7aca86d69af758','2024-11-05 20:55:17.565','2024-11-05 20:55:17.565','[]','1.files','default',1,'2024-11-05 20:00:00.000','1h'),
(11,'938eba042bd01b45c92a04e67f7167e8','2024-11-05 20:55:17.565','2024-11-05 20:55:17.565','[]','1.files','default',1,'2024-11-05 00:00:00.000','1d'),
(12,'7e889ddfc6f7ac869bdfce3e89d05413','2024-11-05 20:55:17.566','2024-11-05 20:55:17.566','[]','1.files','default',1,NULL,'inf'),
(13,'e1de1b786d336cc938c6aa2fd5c03345','2024-11-05 20:55:17.567','2024-11-05 20:55:17.567','[]','1.files.storage','default',447624,'2024-11-05 20:00:00.000','1h'),
(14,'f322243738bdf50da5e971a2083bbbd7','2024-11-05 20:55:17.567','2024-11-05 20:55:17.567','[]','1.files.storage','default',447624,'2024-11-05 00:00:00.000','1d'),
(15,'3c302f635a99dcf352eeba5eb9b4379e','2024-11-05 20:55:17.568','2024-11-05 20:55:17.568','[]','1.files.storage','default',447624,NULL,'inf'),
(16,'5c9dfab303931b5c809557ea85b33c55','2024-11-05 20:57:24.982','2024-11-05 20:59:53.781','[]','network.requests','default',9,'2024-11-05 20:00:00.000','1h'),
(17,'e7124a4880af5af450f52ddb5195b506','2024-11-05 20:57:24.984','2024-11-05 22:19:04.643','[]','network.requests','default',14,'2024-11-05 00:00:00.000','1d'),
(18,'cb2e77ca591ce00391bdc519b19d1c9d','2024-11-05 20:57:24.986','2024-11-14 07:36:51.622','[]','network.requests','default',144,NULL,'inf'),
(19,'6f962621445d7d6e214b7a59e7676c2e','2024-11-05 20:57:24.989','2024-11-05 20:59:53.795','[]','network.inbound','default',3699,'2024-11-05 20:00:00.000','1h'),
(20,'c8fc21b0c19142a1d5433c1bb5d19c7e','2024-11-05 20:57:24.990','2024-11-05 22:19:04.651','[]','network.inbound','default',5684,'2024-11-05 00:00:00.000','1d'),
(21,'dd464c3f2219264b190e1ea87ceb2595','2024-11-05 20:57:24.991','2024-11-14 07:36:51.629','[]','network.inbound','default',67924,NULL,'inf'),
(22,'9bea9e7ef3b26489f9503956455db9d6','2024-11-05 20:57:24.992','2024-11-05 20:59:53.800','[]','network.outbound','default',4035334,'2024-11-05 20:00:00.000','1h'),
(23,'a6c424a243d0389b7beb5c79c084bb0b','2024-11-05 20:57:24.994','2024-11-05 22:19:04.662','[]','network.outbound','default',5883988,'2024-11-05 00:00:00.000','1d'),
(24,'bb484b186be18594b1610e11ef4d5929','2024-11-05 20:57:24.995','2024-11-14 07:36:51.636','[]','network.outbound','default',17931753,NULL,'inf'),
(43,'a84a09e87343a35007294d7839fb580a','2024-11-05 21:25:59.485','2024-11-05 21:25:59.485','[]','network.requests','default',4,'2024-11-05 21:00:00.000','1h'),
(46,'b048e190706655d42dfc6f24ebed36df','2024-11-05 21:25:59.491','2024-11-05 21:25:59.491','[]','network.inbound','default',1496,'2024-11-05 21:00:00.000','1h'),
(49,'20957dd0bfedf9eb480cf582c8ddd4bd','2024-11-05 21:25:59.495','2024-11-05 21:25:59.495','[]','network.outbound','default',1400313,'2024-11-05 21:00:00.000','1h'),
(52,'1f89aa7338a04f97a103b873f134b888','2024-11-05 22:19:04.635','2024-11-05 22:19:04.635','[]','network.requests','default',1,'2024-11-05 22:00:00.000','1h'),
(55,'e8911cc1c2365060983f40edbebe561f','2024-11-05 22:19:04.647','2024-11-05 22:19:04.647','[]','network.inbound','default',489,'2024-11-05 22:00:00.000','1h'),
(58,'cd2d248c67d88b35d82351ca5a9ad6e6','2024-11-05 22:19:04.657','2024-11-05 22:19:04.657','[]','network.outbound','default',448341,'2024-11-05 22:00:00.000','1h'),
(61,'937ecfad3822e55869567ee454dbf92e','2024-11-06 19:57:05.039','2024-11-06 19:58:04.896','[]','network.requests','default',4,'2024-11-06 19:00:00.000','1h'),
(62,'dab19cc0f108a2afcb53d6634f23bdc7','2024-11-06 19:57:05.042','2024-11-06 20:45:29.978','[]','network.requests','default',9,'2024-11-06 00:00:00.000','1d'),
(64,'928a90317bbcdbe8153aed0e1fd35ad2','2024-11-06 19:57:05.047','2024-11-06 19:58:04.906','[]','network.inbound','default',1847,'2024-11-06 19:00:00.000','1h'),
(65,'71f4d084fb55528470f6b11214e37153','2024-11-06 19:57:05.052','2024-11-06 20:45:29.985','[]','network.inbound','default',3767,'2024-11-06 00:00:00.000','1d'),
(67,'ba38457f1462ff01c37c13fc31a8c8ad','2024-11-06 19:57:05.057','2024-11-06 19:58:04.914','[]','network.outbound','default',1793479,'2024-11-06 19:00:00.000','1h'),
(68,'ea6768c2528a075667e32b0b29ef9228','2024-11-06 19:57:05.058','2024-11-06 20:45:29.990','[]','network.outbound','default',4035281,'2024-11-06 00:00:00.000','1d'),
(79,'c34021e0c71eabb9108f5b00634f3061','2024-11-06 20:22:29.143','2024-11-06 20:45:29.976','[]','network.requests','default',5,'2024-11-06 20:00:00.000','1h'),
(82,'01f955fa5645708203037136975f76c3','2024-11-06 20:22:29.157','2024-11-06 20:45:29.984','[]','network.inbound','default',1920,'2024-11-06 20:00:00.000','1h'),
(85,'c6fd8f8aca24d4f3262539a3ea6aa020','2024-11-06 20:22:29.165','2024-11-06 20:45:29.989','[]','network.outbound','default',2241802,'2024-11-06 20:00:00.000','1h'),
(115,'e24fd7bc9cc39a2cb3993fcc3434b379','2024-11-06 21:37:23.630','2024-11-06 21:37:23.630','[]','databases','default',1,'2024-11-06 21:00:00.000','1h'),
(116,'5165c7c0b973dee5098f7d908feb988a','2024-11-06 21:37:23.632','2024-11-06 21:37:23.632','[]','databases','default',1,'2024-11-06 00:00:00.000','1d'),
(117,'832d39b64fa34b0cf0aad82308f4d33b','2024-11-06 21:37:23.633','2024-11-06 21:37:23.633','[]','databases','default',1,NULL,'inf'),
(118,'e92a6febca7a256ec9bda241ce3cfb69','2024-11-06 21:38:43.879','2024-11-06 21:38:43.879','[]','collections','default',1,'2024-11-06 21:00:00.000','1h'),
(119,'064e14c9cd10f3079fb33ef5bc3ff27b','2024-11-06 21:38:43.882','2024-11-06 21:38:43.882','[]','collections','default',1,'2024-11-06 00:00:00.000','1d'),
(120,'830f9b7b9ac01c0a2ec1781e53ea1aaa','2024-11-06 21:38:43.884','2024-11-13 21:22:19.660','[]','collections','default',5,NULL,'inf'),
(121,'6a7a18e13be049a34b3a192bc22fd4e0','2024-11-06 21:38:43.888','2024-11-06 21:38:43.888','[]','2.collections','default',1,'2024-11-06 21:00:00.000','1h'),
(122,'655f30843827e1059d4db1c70ba348f6','2024-11-06 21:38:43.890','2024-11-06 21:38:43.890','[]','2.collections','default',1,'2024-11-06 00:00:00.000','1d'),
(123,'5e9e9466087420a661cce054a968c901','2024-11-06 21:38:43.892','2024-11-13 21:22:19.664','[]','2.collections','default',5,NULL,'inf'),
(124,'ab6c478261c83d66541b9a333b683a2c','2024-11-07 23:04:22.371','2024-11-07 23:39:54.116','[]','network.requests','default',9,'2024-11-07 23:00:00.000','1h'),
(125,'704ffa031ffdc8256dd4d0195cfba113','2024-11-07 23:04:22.373','2024-11-07 23:39:54.118','[]','network.requests','default',9,'2024-11-07 00:00:00.000','1d'),
(127,'6193f8357365bef1bde66fbd5363746b','2024-11-07 23:04:22.378','2024-11-07 23:39:54.120','[]','network.inbound','default',3852,'2024-11-07 23:00:00.000','1h'),
(128,'fd320fe86a181315538e9d296ab0da77','2024-11-07 23:04:22.379','2024-11-07 23:39:54.122','[]','network.inbound','default',3852,'2024-11-07 00:00:00.000','1d'),
(130,'12a770998ef843893b4c59054cddbe3e','2024-11-07 23:04:22.381','2024-11-07 23:39:54.125','[]','network.outbound','default',4035207,'2024-11-07 23:00:00.000','1h'),
(131,'1117227a7967d8f8753c5a6646ba15f8','2024-11-07 23:04:22.382','2024-11-07 23:39:54.126','[]','network.outbound','default',4035207,'2024-11-07 00:00:00.000','1d'),
(196,'54d671550242d3b0e459d72988715f2b','2024-11-08 15:31:17.928','2024-11-08 15:31:17.928','[]','network.requests','default',1,'2024-11-08 15:00:00.000','1h'),
(197,'088bb6c4f9aa4e9794a225bbc7e66ea8','2024-11-08 15:31:17.931','2024-11-08 15:31:17.931','[]','network.requests','default',1,'2024-11-08 00:00:00.000','1d'),
(199,'eb241cea7552814fa1e969a630c4fc79','2024-11-08 15:31:17.934','2024-11-08 15:31:17.934','[]','network.inbound','default',282,'2024-11-08 15:00:00.000','1h'),
(200,'451bd18a4ed6a9a9e53f6008035bd1b8','2024-11-08 15:31:17.935','2024-11-08 15:31:17.935','[]','network.inbound','default',282,'2024-11-08 00:00:00.000','1d'),
(202,'973d390965db2a55e063fa74d3a47b95','2024-11-08 15:31:17.937','2024-11-08 15:31:17.937','[]','network.outbound','default',448363,'2024-11-08 15:00:00.000','1h'),
(203,'71a5988fd6c72b3a113892790acba609','2024-11-08 15:31:17.938','2024-11-08 15:31:17.938','[]','network.outbound','default',448363,'2024-11-08 00:00:00.000','1d'),
(205,'ba85811553f8b83170891725b8cac481','2024-11-12 19:10:41.455','2024-11-12 19:10:41.727','[]','network.requests','default',9,'2024-11-12 19:00:00.000','1h'),
(206,'df122a73c141ed4fb89def55ebc0fb34','2024-11-12 19:10:41.479','2024-11-12 19:10:41.729','[]','network.requests','default',9,'2024-11-12 00:00:00.000','1d'),
(208,'01b3c085d16c71c95003914dbc1a9ab0','2024-11-12 19:10:41.509','2024-11-12 19:10:41.733','[]','network.inbound','default',3988,'2024-11-12 19:00:00.000','1h'),
(209,'e0bef16e86f773d60c4a7438fb6a88e0','2024-11-12 19:10:41.515','2024-11-12 19:10:41.735','[]','network.inbound','default',3988,'2024-11-12 00:00:00.000','1d'),
(211,'9a6ac798e7d59fb9eb7a1ac7d90a7c2f','2024-11-12 19:10:41.539','2024-11-12 19:10:41.739','[]','network.outbound','default',2986672,'2024-11-12 19:00:00.000','1h'),
(212,'b6bb2f03bbbcdcc7e312d51a902f4220','2024-11-12 19:10:41.547','2024-11-12 19:10:41.743','[]','network.outbound','default',2986672,'2024-11-12 00:00:00.000','1d'),
(268,'511cd327af248191e302e02a7bb544b0','2024-11-13 20:44:19.828','2024-11-13 20:47:51.225','[]','collections','default',2,'2024-11-13 20:00:00.000','1h'),
(269,'9643e03a80095ec850bea15d5d173071','2024-11-13 20:44:19.830','2024-11-13 21:22:19.658','[]','collections','default',4,'2024-11-13 00:00:00.000','1d'),
(271,'208bb52e91cc7a110d05226a88c742c4','2024-11-13 20:44:19.839','2024-11-13 20:47:51.229','[]','2.collections','default',2,'2024-11-13 20:00:00.000','1h'),
(272,'ba3b0546f8d023c1fe6062529c1fa146','2024-11-13 20:44:19.841','2024-11-13 21:22:19.663','[]','2.collections','default',4,'2024-11-13 00:00:00.000','1d'),
(292,'ed06989d0f3ba69e59681d3478a4db56','2024-11-13 21:05:52.967','2024-11-13 21:09:06.581','[]','users','default',1,'2024-11-13 21:00:00.000','1h'),
(293,'8c07e1f093dfbefe8164c1d7a8171139','2024-11-13 21:05:52.969','2024-11-13 21:09:06.582','[]','users','default',1,'2024-11-13 00:00:00.000','1d'),
(294,'bfa95da1ed6387963075bceead2e955d','2024-11-13 21:05:52.970','2024-11-13 21:09:06.583','[]','users','default',1,NULL,'inf'),
(298,'394bf5bbeff06216c75ac2ad5202b2bc','2024-11-13 21:08:01.887','2024-11-13 21:08:01.887','[]','network.requests','default',1,'2024-11-13 21:00:00.000','1h'),
(299,'1dae56bbd3a927f2dd6a48115ae7310c','2024-11-13 21:08:01.888','2024-11-13 22:19:33.685','[]','network.requests','default',101,'2024-11-13 00:00:00.000','1d'),
(301,'b621e4326333e8f5119e4483909fb019','2024-11-13 21:08:01.892','2024-11-13 21:08:01.892','[]','network.inbound','default',431,'2024-11-13 21:00:00.000','1h'),
(302,'cf256c432cc9eca1bfe8e24c680f220b','2024-11-13 21:08:01.895','2024-11-13 22:19:33.688','[]','network.inbound','default',49857,'2024-11-13 00:00:00.000','1d'),
(304,'5c960de4cc040f0fcbb05faadc4c1780','2024-11-13 21:08:01.898','2024-11-13 21:08:01.898','[]','network.outbound','default',448359,'2024-11-13 21:00:00.000','1h'),
(305,'3a6630a48b2a318029bf451851e080ba','2024-11-13 21:08:01.899','2024-11-13 22:19:33.691','[]','network.outbound','default',541385,'2024-11-13 00:00:00.000','1d'),
(310,'493852caaad736fa35e9d1236d88e817','2024-11-13 21:16:15.792','2024-11-13 21:22:19.656','[]','collections','default',2,'2024-11-13 21:00:00.000','1h'),
(313,'74cb5de23a7ded5882b9bde3988cfaab','2024-11-13 21:16:15.796','2024-11-13 21:22:19.661','[]','2.collections','default',2,'2024-11-13 21:00:00.000','1h'),
(322,'7064fc4544a767ef503d38a90c2dd329','2024-11-13 21:34:49.577','2024-11-13 21:37:16.839','[]','documents','default',2,'2024-11-13 21:00:00.000','1h'),
(323,'b609d8f98ca282497101d04d39a6d184','2024-11-13 21:34:49.582','2024-11-13 22:19:33.694','[]','documents','default',2,'2024-11-13 00:00:00.000','1d'),
(324,'569f0bc87e0ce030599495ca6fa15950','2024-11-13 21:34:49.584','2024-11-13 22:19:33.695','[]','documents','default',2,NULL,'inf'),
(325,'68472f16bd635450adb357bb0f218c2f','2024-11-13 21:34:49.585','2024-11-13 21:37:16.846','[]','2.documents','default',2,'2024-11-13 21:00:00.000','1h'),
(326,'b524c08745fe2edd2fc599ba0e60695d','2024-11-13 21:34:49.586','2024-11-13 22:19:33.697','[]','2.documents','default',2,'2024-11-13 00:00:00.000','1d'),
(327,'dbb02e176d98598137d5485fe9411c00','2024-11-13 21:34:49.587','2024-11-13 22:19:33.698','[]','2.documents','default',2,NULL,'inf'),
(328,'028f78daa40c1e44249b0e918fc7c2aa','2024-11-13 21:34:49.589','2024-11-13 21:36:32.366','[]','2.1.documents','default',1,'2024-11-13 21:00:00.000','1h'),
(329,'2229e3a98756f8e6797de0319fd84bb0','2024-11-13 21:34:49.591','2024-11-13 22:19:33.700','[]','2.1.documents','default',1,'2024-11-13 00:00:00.000','1d'),
(330,'c13d5fbd92b53f354496c4ff2eb8968f','2024-11-13 21:34:49.592','2024-11-13 22:19:33.700','[]','2.1.documents','default',1,NULL,'inf'),
(337,'28796092e5d84edd47fcc2341f89ed49','2024-11-13 21:35:21.367','2024-11-13 21:37:16.850','[]','2.2.documents','default',1,'2024-11-13 21:00:00.000','1h'),
(338,'258025b5c70500f2d68ebc9b1a1363c9','2024-11-13 21:35:21.368','2024-11-13 21:37:16.852','[]','2.2.documents','default',1,'2024-11-13 00:00:00.000','1d'),
(339,'67970741cdcba696a081a8324d682c08','2024-11-13 21:35:21.369','2024-11-13 21:37:16.854','[]','2.2.documents','default',1,NULL,'inf'),
(370,'5349240f1b7d51b8199d8007efca7edf','2024-11-13 22:02:28.179','2024-11-13 22:19:33.683','[]','network.requests','default',100,'2024-11-13 22:00:00.000','1h'),
(373,'57987fc22fd29b1e36107d71b48b9172','2024-11-13 22:02:28.185','2024-11-13 22:19:33.687','[]','network.inbound','default',49426,'2024-11-13 22:00:00.000','1h'),
(376,'6009aced97bce5c2c160835d705a4e06','2024-11-13 22:02:28.189','2024-11-13 22:19:33.690','[]','network.outbound','default',93026,'2024-11-13 22:00:00.000','1h'),
(442,'6013ecfe24cc4cfaa92de471854336d5','2024-11-13 22:09:27.194','2024-11-13 22:19:33.693','[]','documents','default',0,'2024-11-13 22:00:00.000','1h'),
(445,'35b4d3027167ae4fc29aa55418650d13','2024-11-13 22:09:27.203','2024-11-13 22:19:33.696','[]','2.documents','default',0,'2024-11-13 22:00:00.000','1h'),
(448,'dc9e30013ed182ae6471199593528a88','2024-11-13 22:09:27.210','2024-11-13 22:19:33.699','[]','2.1.documents','default',0,'2024-11-13 22:00:00.000','1h'),
(595,'3963030eb9c5394b4d1aad4af64c7ed3','2024-11-14 07:36:51.616','2024-11-14 07:36:51.616','[]','network.requests','default',1,'2024-11-14 07:00:00.000','1h'),
(596,'9a6148b3eb0dc7943dfea4d24baed8a4','2024-11-14 07:36:51.618','2024-11-14 07:36:51.618','[]','network.requests','default',1,'2024-11-14 00:00:00.000','1d'),
(598,'456e443a25677ed0b8563a2fcf36dd8a','2024-11-14 07:36:51.623','2024-11-14 07:36:51.623','[]','network.inbound','default',494,'2024-11-14 07:00:00.000','1h'),
(599,'04620f27ddb4f7174091cf3c7477d811','2024-11-14 07:36:51.624','2024-11-14 07:36:51.624','[]','network.inbound','default',494,'2024-11-14 00:00:00.000','1d'),
(601,'55fa7ff58e893b52305980a506d680ba','2024-11-14 07:36:51.631','2024-11-14 07:36:51.631','[]','network.outbound','default',857,'2024-11-14 07:00:00.000','1h'),
(602,'d963ebecb5d702e623cd8260e324353b','2024-11-14 07:36:51.632','2024-11-14 07:36:51.632','[]','network.outbound','default',857,'2024-11-14 00:00:00.000','1d');
/*!40000 ALTER TABLE `_1_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_stats_perms`
--

DROP TABLE IF EXISTS `_1_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_stats_perms`
--

LOCK TABLES `_1_stats_perms` WRITE;
/*!40000 ALTER TABLE `_1_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_subscribers`
--

DROP TABLE IF EXISTS `_1_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_subscribers` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `targetInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `topicId` varchar(255) DEFAULT NULL,
  `topicInternalId` varchar(255) DEFAULT NULL,
  `providerType` varchar(128) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_unique_target_topic` (`targetInternalId`,`topicInternalId`),
  KEY `_key_targetId` (`targetId`),
  KEY `_key_targetInternalId` (`targetInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_topicId` (`topicId`),
  KEY `_key_topicInternalId` (`topicInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_subscribers`
--

LOCK TABLES `_1_subscribers` WRITE;
/*!40000 ALTER TABLE `_1_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_subscribers_perms`
--

DROP TABLE IF EXISTS `_1_subscribers_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_subscribers_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_subscribers_perms`
--

LOCK TABLES `_1_subscribers_perms` WRITE;
/*!40000 ALTER TABLE `_1_subscribers_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_subscribers_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_targets`
--

DROP TABLE IF EXISTS `_1_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_targets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `sessionInternalId` varchar(255) DEFAULT NULL,
  `providerType` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `providerInternalId` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expired` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_identifier` (`identifier`),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_providerId` (`providerId`),
  KEY `_key_providerInternalId` (`providerInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_targets`
--

LOCK TABLES `_1_targets` WRITE;
/*!40000 ALTER TABLE `_1_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_targets_perms`
--

DROP TABLE IF EXISTS `_1_targets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_targets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_targets_perms`
--

LOCK TABLES `_1_targets_perms` WRITE;
/*!40000 ALTER TABLE `_1_targets_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_targets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams`
--

DROP TABLE IF EXISTS `_1_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams`
--

LOCK TABLES `_1_teams` WRITE;
/*!40000 ALTER TABLE `_1_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_teams_perms`
--

DROP TABLE IF EXISTS `_1_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_teams_perms`
--

LOCK TABLES `_1_teams_perms` WRITE;
/*!40000 ALTER TABLE `_1_teams_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens`
--

DROP TABLE IF EXISTS `_1_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens`
--

LOCK TABLES `_1_tokens` WRITE;
/*!40000 ALTER TABLE `_1_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_tokens_perms`
--

DROP TABLE IF EXISTS `_1_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_tokens_perms`
--

LOCK TABLES `_1_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_1_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_topics`
--

DROP TABLE IF EXISTS `_1_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_topics` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `subscribe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`subscribe`)),
  `emailTotal` int(11) DEFAULT NULL,
  `smsTotal` int(11) DEFAULT NULL,
  `pushTotal` int(11) DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_topics`
--

LOCK TABLES `_1_topics` WRITE;
/*!40000 ALTER TABLE `_1_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_topics_perms`
--

DROP TABLE IF EXISTS `_1_topics_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_topics_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_topics_perms`
--

LOCK TABLES `_1_topics_perms` WRITE;
/*!40000 ALTER TABLE `_1_topics_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_topics_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users`
--

DROP TABLE IF EXISTS `_1_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `labels` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`labels`)),
  `passwordHistory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`passwordHistory`)),
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `mfa` tinyint(1) DEFAULT NULL,
  `mfaRecoveryCodes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mfaRecoveryCodes`)),
  `authenticators` text DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `challenges` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_phone` (`phone`),
  UNIQUE KEY `_key_email` (`email`(256)),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users`
--

LOCK TABLES `_1_users` WRITE;
/*!40000 ALTER TABLE `_1_users` DISABLE KEYS */;
INSERT INTO `_1_users` VALUES
(2,'lenovo_tab_m9.1','2024-11-13 21:09:06.570','2024-11-13 21:09:06.570','[\"read(\\\"any\\\")\",\"update(\\\"user:lenovo_tab_m9.1\\\")\",\"delete(\\\"user:lenovo_tab_m9.1\\\")\"]','Lenovo Tab M9 #1',NULL,NULL,1,'[]','[]',NULL,'argon2','{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}',NULL,'{}','2024-11-13 21:09:06.569',0,0,0,NULL,'[]',NULL,NULL,NULL,NULL,NULL,NULL,'lenovo_tab_m9.1 Lenovo Tab M9 #1',NULL);
/*!40000 ALTER TABLE `_1_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_users_perms`
--

DROP TABLE IF EXISTS `_1_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_users_perms`
--

LOCK TABLES `_1_users_perms` WRITE;
/*!40000 ALTER TABLE `_1_users_perms` DISABLE KEYS */;
INSERT INTO `_1_users_perms` VALUES
(6,'delete','user:lenovo_tab_m9.1','lenovo_tab_m9.1'),
(4,'read','any','lenovo_tab_m9.1'),
(5,'update','user:lenovo_tab_m9.1','lenovo_tab_m9.1');
/*!40000 ALTER TABLE `_1_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables`
--

DROP TABLE IF EXISTS `_1_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceType` varchar(100) DEFAULT NULL,
  `resourceInternalId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(8192) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_uniqueKey` (`resourceId`,`key`,`resourceType`),
  KEY `_key_resourceInternalId` (`resourceInternalId`),
  KEY `_key_resourceType` (`resourceType`),
  KEY `_key_resourceId_resourceType` (`resourceId`,`resourceType`),
  KEY `_key_key` (`key`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables`
--

LOCK TABLES `_1_variables` WRITE;
/*!40000 ALTER TABLE `_1_variables` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_1_variables_perms`
--

DROP TABLE IF EXISTS `_1_variables_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_1_variables_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_1_variables_perms`
--

LOCK TABLES `_1_variables_perms` WRITE;
/*!40000 ALTER TABLE `_1_variables_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_1_variables_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata`
--

DROP TABLE IF EXISTS `_console__metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `attributes` mediumtext DEFAULT NULL,
  `indexes` mediumtext DEFAULT NULL,
  `documentSecurity` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata`
--

LOCK TABLES `_console__metadata` WRITE;
/*!40000 ALTER TABLE `_console__metadata` DISABLE KEYS */;
INSERT INTO `_console__metadata` VALUES
(1,'audit','2024-11-05 19:10:30.119','2024-11-05 19:10:30.119','[\"create(\\\"any\\\")\"]','audit','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"event\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":65534,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"location\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"format\":\"\",\"size\":0,\"signed\":true,\"required\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"data\",\"type\":\"string\",\"size\":16777216,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"]}]','[{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index4\",\"type\":\"key\",\"attributes\":[\"userId\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index5\",\"type\":\"key\",\"attributes\":[\"resource\",\"event\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index-time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]',1),
(2,'abuse','2024-11-05 19:10:30.141','2024-11-05 19:10:30.141','[\"create(\\\"any\\\")\"]','abuse','[{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[]},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"]},{\"$id\":\"count\",\"type\":\"integer\",\"size\":11,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[]}]','[{\"$id\":\"unique1\",\"type\":\"unique\",\"attributes\":[\"key\",\"time\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"index2\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[]}]',1),
(3,'projects','2024-11-05 19:10:30.175','2024-11-05 19:10:30.175','[\"create(\\\"any\\\")\"]','projects','[{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"description\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"database\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logo\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"version\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCountry\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalState\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalCity\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalAddress\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"legalTaxId\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"services\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"apis\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"smtp\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"templates\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"auths\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"oAuthProviders\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"platforms\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryPlatforms\"],\"default\":null,\"format\":\"\"},{\"$id\":\"webhooks\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryWebhooks\"],\"default\":null,\"format\":\"\"},{\"$id\":\"keys\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryKeys\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(4,'schedules','2024-11-05 19:10:30.191','2024-11-05 19:10:30.191','[\"create(\\\"any\\\")\"]','schedules','[{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":100,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"schedule\",\"type\":\"string\",\"size\":100,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"data\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":{},\"format\":\"\"},{\"$id\":\"active\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_region_resourceType_resourceUpdatedAt\",\"type\":\"key\",\"attributes\":[\"region\",\"resourceType\",\"resourceUpdatedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_region_resourceType_projectId_resourceId\",\"type\":\"key\",\"attributes\":[\"region\",\"resourceType\",\"projectId\",\"resourceId\"],\"lengths\":[],\"orders\":[]}]',1),
(5,'platforms','2024-11-05 19:10:30.202','2024-11-05 19:10:30.202','[\"create(\\\"any\\\")\"]','platforms','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"key\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"store\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"hostname\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(6,'keys','2024-11-05 19:10:30.216','2024-11-05 19:10:30.216','[\"create(\\\"any\\\")\"]','keys','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scopes\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sdks\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]',1),
(7,'webhooks','2024-11-05 19:10:30.231','2024-11-05 19:10:30.231','[\"create(\\\"any\\\")\"]','webhooks','[{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"url\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpUser\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"httpPass\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"security\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"events\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signatureKey\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":true,\"format\":\"\"},{\"$id\":\"logs\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"\",\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"}]','[{\"$id\":\"_key_project\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(8,'certificates','2024-11-05 19:10:30.242','2024-11-05 19:10:30.242','[\"create(\\\"any\\\")\"]','certificates','[{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"issueDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"renewDate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"attempts\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"logs\",\"type\":\"string\",\"size\":1000000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"updated\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"key\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(9,'realtime','2024-11-05 19:10:30.255','2024-11-05 19:10:30.255','[\"create(\\\"any\\\")\"]','realtime','[{\"$id\":\"container\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"timestamp\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_timestamp\",\"type\":\"key\",\"attributes\":[\"timestamp\"],\"lengths\":[],\"orders\":[\"DESC\"]}]',1),
(10,'rules','2024-11-05 19:10:30.272','2024-11-05 19:10:30.272','[\"create(\\\"any\\\")\"]','rules','[{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"domain\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":100,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"certificateId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_domain\",\"type\":\"unique\",\"attributes\":[\"domain\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectInternalId\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectId\",\"type\":\"key\",\"attributes\":[\"projectId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceInternalId\",\"type\":\"key\",\"attributes\":[\"resourceInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceId\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceType\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(11,'installations','2024-11-05 19:10:30.285','2024-11-05 19:10:30.285','[\"create(\\\"any\\\")\"]','installations','[{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerInstallationId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"organization\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"personal\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_projectInternalId\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectId\",\"type\":\"key\",\"attributes\":[\"projectId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerInstallationId\",\"type\":\"key\",\"attributes\":[\"providerInstallationId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(12,'repositories','2024-11-05 19:10:30.301','2024-11-05 19:10:30.301','[\"create(\\\"any\\\")\"]','repositories','[{\"$id\":\"installationId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"installationInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRepositoryId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerPullRequestIds\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_installationId\",\"type\":\"key\",\"attributes\":[\"installationId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_installationInternalId\",\"type\":\"key\",\"attributes\":[\"installationInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectInternalId\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectId\",\"type\":\"key\",\"attributes\":[\"projectId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerRepositoryId\",\"type\":\"key\",\"attributes\":[\"providerRepositoryId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceId\",\"type\":\"key\",\"attributes\":[\"resourceId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceInternalId\",\"type\":\"key\",\"attributes\":[\"resourceInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_resourceType\",\"type\":\"key\",\"attributes\":[\"resourceType\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(13,'vcsComments','2024-11-05 19:10:30.315','2024-11-05 19:10:30.315','[\"create(\\\"any\\\")\"]','vcsComments','[{\"$id\":\"installationId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"installationInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"projectInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRepositoryId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerCommentId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerPullRequestId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerBranch\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_installationId\",\"type\":\"key\",\"attributes\":[\"installationId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_installationInternalId\",\"type\":\"key\",\"attributes\":[\"installationInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectInternalId\",\"type\":\"key\",\"attributes\":[\"projectInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_projectId\",\"type\":\"key\",\"attributes\":[\"projectId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerRepositoryId\",\"type\":\"key\",\"attributes\":[\"providerRepositoryId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerPullRequestId\",\"type\":\"key\",\"attributes\":[\"providerPullRequestId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerBranch\",\"type\":\"key\",\"attributes\":[\"providerBranch\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(14,'vcsCommentLocks','2024-11-05 19:10:30.327','2024-11-05 19:10:30.327','[\"create(\\\"any\\\")\"]','vcsCommentLocks','[]','[]',1),
(15,'cache','2024-11-05 19:10:30.342','2024-11-05 19:10:30.342','[\"create(\\\"any\\\")\"]','cache','[{\"$id\":\"resource\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"resourceType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_resource\",\"type\":\"key\",\"attributes\":[\"resource\"],\"lengths\":[],\"orders\":[]}]',1),
(16,'users','2024-11-05 19:10:30.367','2024-11-05 19:10:30.367','[\"create(\\\"any\\\")\"]','users','[{\"$id\":\"name\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"email\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phone\",\"type\":\"string\",\"size\":16,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"labels\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"passwordHistory\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"password\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"hash\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"argon2\",\"format\":\"\"},{\"$id\":\"hashOptions\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3},\"format\":\"\"},{\"$id\":\"passwordUpdate\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"},{\"$id\":\"registration\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"emailVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"phoneVerification\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"reset\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mfa\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mfaRecoveryCodes\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[\"encrypt\"],\"default\":[],\"format\":\"\"},{\"$id\":\"authenticators\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryAuthenticators\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sessions\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQuerySessions\"],\"default\":null,\"format\":\"\"},{\"$id\":\"tokens\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTokens\"],\"default\":null,\"format\":\"\"},{\"$id\":\"challenges\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryChallenges\"],\"default\":null,\"format\":\"\"},{\"$id\":\"memberships\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryMemberships\"],\"default\":null,\"format\":\"\"},{\"$id\":\"targets\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTargets\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"userSearch\"],\"default\":null,\"format\":\"\"},{\"$id\":\"accessedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_email\",\"type\":\"unique\",\"attributes\":[\"email\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phone\",\"type\":\"unique\",\"attributes\":[\"phone\"],\"lengths\":[16],\"orders\":[\"ASC\"]},{\"$id\":\"_key_status\",\"type\":\"key\",\"attributes\":[\"status\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_passwordUpdate\",\"type\":\"key\",\"attributes\":[\"passwordUpdate\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_registration\",\"type\":\"key\",\"attributes\":[\"registration\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_emailVerification\",\"type\":\"key\",\"attributes\":[\"emailVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_phoneVerification\",\"type\":\"key\",\"attributes\":[\"phoneVerification\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_accessedAt\",\"type\":\"key\",\"attributes\":[\"accessedAt\"],\"lengths\":[],\"orders\":[]}]',1),
(17,'tokens','2024-11-05 19:10:30.385','2024-11-05 19:10:30.385','[\"create(\\\"any\\\")\"]','tokens','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"integer\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(18,'authenticators','2024-11-05 19:10:30.398','2024-11-05 19:10:30.398','[\"create(\\\"any\\\")\"]','authenticators','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"verified\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"},{\"$id\":\"data\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"}]','[{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(19,'challenges','2024-11-05 19:10:30.411','2024-11-05 19:10:30.411','[\"create(\\\"any\\\")\"]','challenges','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"token\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"code\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(20,'sessions','2024-11-05 19:10:30.429','2024-11-05 19:10:30.429','[\"create(\\\"any\\\")\"]','sessions','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":512,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"userAgent\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"ip\",\"type\":\"string\",\"size\":45,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"countryCode\",\"type\":\"string\",\"size\":2,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"osVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientType\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientCode\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngine\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"clientEngineVersion\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceName\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceBrand\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deviceModel\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"factors\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":[],\"format\":\"\"},{\"$id\":\"expire\",\"type\":\"datetime\",\"size\":0,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"mfaUpdatedAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_provider_providerUid\",\"type\":\"key\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]}]',1),
(21,'identities','2024-11-05 19:10:30.450','2024-11-05 19:10:30.450','[\"create(\\\"any\\\")\"]','identities','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerUid\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerEmail\",\"type\":\"string\",\"size\":320,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerAccessTokenExpiry\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"providerRefreshToken\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"secrets\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":[],\"format\":\"\"}]','[{\"$id\":\"_key_userInternalId_provider_providerUid\",\"type\":\"unique\",\"attributes\":[\"userInternalId\",\"provider\",\"providerUid\"],\"lengths\":[11,128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_provider_providerUid\",\"type\":\"unique\",\"attributes\":[\"provider\",\"providerUid\"],\"lengths\":[128,128],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_provider\",\"type\":\"key\",\"attributes\":[\"provider\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerUid\",\"type\":\"key\",\"attributes\":[\"providerUid\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerEmail\",\"type\":\"key\",\"attributes\":[\"providerEmail\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerAccessTokenExpiry\",\"type\":\"key\",\"attributes\":[\"providerAccessTokenExpiry\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(22,'teams','2024-11-05 19:10:30.468','2024-11-05 19:10:30.468','[\"create(\\\"any\\\")\"]','teams','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"total\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"prefs\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":{},\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[128],\"orders\":[\"ASC\"]},{\"$id\":\"_key_total\",\"type\":\"key\",\"attributes\":[\"total\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(23,'memberships','2024-11-05 19:10:30.494','2024-11-05 19:10:30.494','[\"create(\\\"any\\\")\"]','memberships','[{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"teamId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"roles\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"invited\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"joined\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"confirm\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"secret\",\"type\":\"string\",\"size\":256,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_unique\",\"type\":\"unique\",\"attributes\":[\"teamInternalId\",\"userInternalId\"],\"lengths\":[255,255],\"orders\":[\"ASC\",\"ASC\"]},{\"$id\":\"_key_user\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_team\",\"type\":\"key\",\"attributes\":[\"teamInternalId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_teamId\",\"type\":\"key\",\"attributes\":[\"teamId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_invited\",\"type\":\"key\",\"attributes\":[\"invited\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_joined\",\"type\":\"key\",\"attributes\":[\"joined\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_confirm\",\"type\":\"key\",\"attributes\":[\"confirm\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(24,'buckets','2024-11-05 19:10:30.712','2024-11-05 19:10:30.712','[\"create(\\\"any\\\")\"]','buckets','[{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"fileSecurity\",\"type\":\"boolean\",\"size\":1,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"maximumFileSize\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"allowedFileExtensions\",\"type\":\"string\",\"size\":64,\"required\":true,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"compression\",\"type\":\"string\",\"size\":10,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"encryption\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"antivirus\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_fulltext_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_enabled\",\"type\":\"key\",\"attributes\":[\"enabled\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_fileSecurity\",\"type\":\"key\",\"attributes\":[\"fileSecurity\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_maximumFileSize\",\"type\":\"key\",\"attributes\":[\"maximumFileSize\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_encryption\",\"type\":\"key\",\"attributes\":[\"encryption\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_antivirus\",\"type\":\"key\",\"attributes\":[\"antivirus\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(25,'stats','2024-11-05 19:10:30.727','2024-11-05 19:10:30.727','[\"create(\\\"any\\\")\"]','stats','[{\"$id\":\"metric\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"region\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"value\",\"type\":\"integer\",\"size\":8,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"time\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"period\",\"type\":\"string\",\"size\":4,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_time\",\"type\":\"key\",\"attributes\":[\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]},{\"$id\":\"_key_period_time\",\"type\":\"key\",\"attributes\":[\"period\",\"time\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_metric_period_time\",\"type\":\"unique\",\"attributes\":[\"metric\",\"period\",\"time\"],\"lengths\":[],\"orders\":[\"DESC\"]}]',1),
(26,'providers','2024-11-05 19:10:30.748','2024-11-05 19:10:30.748','[\"create(\\\"any\\\")\"]','providers','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"provider\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"type\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"enabled\",\"type\":\"boolean\",\"size\":0,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":true,\"format\":\"\"},{\"$id\":\"credentials\",\"type\":\"string\",\"size\":16384,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"json\",\"encrypt\"],\"default\":null,\"format\":\"\"},{\"$id\":\"options\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":[],\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"providerSearch\"],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_provider\",\"type\":\"key\",\"attributes\":[\"provider\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_type\",\"type\":\"key\",\"attributes\":[\"type\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_enabled_type\",\"type\":\"key\",\"attributes\":[\"enabled\",\"type\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(27,'messages','2024-11-05 19:10:30.771','2024-11-05 19:10:30.771','[\"create(\\\"any\\\")\"]','messages','[{\"$id\":\"providerType\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"status\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":\"processing\",\"format\":\"\"},{\"$id\":\"data\",\"type\":\"string\",\"size\":65535,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"topics\",\"type\":\"string\",\"size\":21845,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":[],\"format\":\"\"},{\"$id\":\"users\",\"type\":\"string\",\"size\":21845,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":[],\"format\":\"\"},{\"$id\":\"targets\",\"type\":\"string\",\"size\":21845,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":[],\"format\":\"\"},{\"$id\":\"scheduledAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"scheduleId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deliveredAt\",\"type\":\"datetime\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[\"datetime\"],\"default\":null,\"format\":\"\"},{\"$id\":\"deliveryErrors\",\"type\":\"string\",\"size\":65535,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"deliveredTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"messageSearch\"],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(28,'topics','2024-11-05 19:10:30.792','2024-11-05 19:10:30.792','[\"create(\\\"any\\\")\"]','topics','[{\"$id\":\"name\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"subscribe\",\"type\":\"string\",\"size\":128,\"required\":false,\"signed\":true,\"array\":true,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"emailTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"smsTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"pushTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":0,\"format\":\"\"},{\"$id\":\"targets\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"subQueryTopicTargets\"],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"topicSearch\"],\"default\":\"\",\"format\":\"\"}]','[{\"$id\":\"_key_name\",\"type\":\"fulltext\",\"attributes\":[\"name\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1),
(29,'subscribers','2024-11-05 19:10:30.813','2024-11-05 19:10:30.813','[\"create(\\\"any\\\")\"]','subscribers','[{\"$id\":\"targetId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"targetInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"topicId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"topicInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerType\",\"type\":\"string\",\"size\":128,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_targetId\",\"type\":\"key\",\"attributes\":[\"targetId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_targetInternalId\",\"type\":\"key\",\"attributes\":[\"targetInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_topicId\",\"type\":\"key\",\"attributes\":[\"topicId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_topicInternalId\",\"type\":\"key\",\"attributes\":[\"topicInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_unique_target_topic\",\"type\":\"unique\",\"attributes\":[\"targetInternalId\",\"topicInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_fulltext_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]}]',1),
(30,'targets','2024-11-05 19:10:30.835','2024-11-05 19:10:30.835','[\"create(\\\"any\\\")\"]','targets','[{\"$id\":\"userId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"userInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessionId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sessionInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerType\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"providerInternalId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"identifier\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"expired\",\"type\":\"boolean\",\"size\":0,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":false,\"format\":\"\"}]','[{\"$id\":\"_key_userId\",\"type\":\"key\",\"attributes\":[\"userId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_userInternalId\",\"type\":\"key\",\"attributes\":[\"userInternalId\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_providerId\",\"type\":\"key\",\"attributes\":[\"providerId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_providerInternalId\",\"type\":\"key\",\"attributes\":[\"providerInternalId\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_identifier\",\"type\":\"unique\",\"attributes\":[\"identifier\"],\"lengths\":[],\"orders\":[]}]',1),
(31,'bucket_1','2024-11-05 19:10:30.872','2024-11-05 19:10:30.872','[\"create(\\\"any\\\")\"]','bucket_1','[{\"$id\":\"bucketId\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"bucketInternalId\",\"type\":\"string\",\"size\":255,\"required\":true,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"name\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"path\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"signature\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"mimeType\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"metadata\",\"type\":\"string\",\"size\":75000,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[\"json\"],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeOriginal\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"sizeActual\",\"type\":\"integer\",\"size\":8,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"algorithm\",\"type\":\"string\",\"size\":255,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"comment\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLVersion\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLCipher\",\"type\":\"string\",\"size\":64,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLTag\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"openSSLIV\",\"type\":\"string\",\"size\":2048,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksTotal\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"chunksUploaded\",\"type\":\"integer\",\"size\":0,\"required\":false,\"signed\":false,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"},{\"$id\":\"search\",\"type\":\"string\",\"size\":16384,\"required\":false,\"signed\":true,\"array\":false,\"filters\":[],\"default\":null,\"format\":\"\"}]','[{\"$id\":\"_key_search\",\"type\":\"fulltext\",\"attributes\":[\"search\"],\"lengths\":[],\"orders\":[]},{\"$id\":\"_key_bucket\",\"type\":\"key\",\"attributes\":[\"bucketId\"],\"lengths\":[255],\"orders\":[\"ASC\"]},{\"$id\":\"_key_name\",\"type\":\"key\",\"attributes\":[\"name\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_signature\",\"type\":\"key\",\"attributes\":[\"signature\"],\"lengths\":[256],\"orders\":[\"ASC\"]},{\"$id\":\"_key_mimeType\",\"type\":\"key\",\"attributes\":[\"mimeType\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_sizeOriginal\",\"type\":\"key\",\"attributes\":[\"sizeOriginal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksTotal\",\"type\":\"key\",\"attributes\":[\"chunksTotal\"],\"lengths\":[],\"orders\":[\"ASC\"]},{\"$id\":\"_key_chunksUploaded\",\"type\":\"key\",\"attributes\":[\"chunksUploaded\"],\"lengths\":[],\"orders\":[\"ASC\"]}]',1);
/*!40000 ALTER TABLE `_console__metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console__metadata_perms`
--

DROP TABLE IF EXISTS `_console__metadata_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console__metadata_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console__metadata_perms`
--

LOCK TABLES `_console__metadata_perms` WRITE;
/*!40000 ALTER TABLE `_console__metadata_perms` DISABLE KEYS */;
INSERT INTO `_console__metadata_perms` VALUES
(2,'create','any','abuse'),
(1,'create','any','audit'),
(18,'create','any','authenticators'),
(24,'create','any','buckets'),
(31,'create','any','bucket_1'),
(15,'create','any','cache'),
(8,'create','any','certificates'),
(19,'create','any','challenges'),
(21,'create','any','identities'),
(11,'create','any','installations'),
(6,'create','any','keys'),
(23,'create','any','memberships'),
(27,'create','any','messages'),
(5,'create','any','platforms'),
(3,'create','any','projects'),
(26,'create','any','providers'),
(9,'create','any','realtime'),
(12,'create','any','repositories'),
(10,'create','any','rules'),
(4,'create','any','schedules'),
(20,'create','any','sessions'),
(25,'create','any','stats'),
(29,'create','any','subscribers'),
(30,'create','any','targets'),
(22,'create','any','teams'),
(17,'create','any','tokens'),
(28,'create','any','topics'),
(16,'create','any','users'),
(14,'create','any','vcsCommentLocks'),
(13,'create','any','vcsComments'),
(7,'create','any','webhooks');
/*!40000 ALTER TABLE `_console__metadata_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse`
--

DROP TABLE IF EXISTS `_console_abuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `unique1` (`key`,`time`),
  KEY `index2` (`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse`
--

LOCK TABLES `_console_abuse` WRITE;
/*!40000 ALTER TABLE `_console_abuse` DISABLE KEYS */;
INSERT INTO `_console_abuse` VALUES
(1,'672a6e92bd4be371cfc4','2024-11-05 19:14:26.775','2024-11-05 19:14:26.775','[]','url:localhost/v1/account,ip:192.168.65.1','2024-11-05 19:00:00.000',1),
(2,'672a6e92d7cc72133a7a','2024-11-05 19:14:26.883','2024-11-05 19:15:46.034','[]','url:localhost/v1/account/sessions/email,email:Leander@lyghtning.nl','2024-11-05 19:00:00.000',2),
(3,'672a6ed719593ff7d888','2024-11-05 19:15:35.103','2024-11-05 19:15:35.103','[]','url:localhost/v1/account/sessions/email,email:Leandermatse@msn.com','2024-11-05 19:00:00.000',1),
(4,'672a75928bacc02a388d','2024-11-05 19:44:18.572','2024-11-05 19:44:18.572','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 19:44:00.000',1),
(5,'672a81f59d9ca6e3c818','2024-11-05 20:37:09.645','2024-11-05 20:37:09.645','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 20:37:00.000',1),
(6,'672a829b03b96078e34c','2024-11-05 20:39:55.015','2024-11-05 20:39:57.434','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 20:39:00.000',2),
(7,'672a83232d92f2886cab','2024-11-05 20:42:11.186','2024-11-05 20:42:11.186','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 20:42:00.000',1),
(8,'672a83e488aa023e8297','2024-11-05 20:45:24.559','2024-11-05 20:45:40.293','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 20:45:00.000',2),
(9,'672a877e3dc62334df55','2024-11-05 21:00:46.253','2024-11-05 21:00:46.253','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 21:00:00.000',1),
(10,'672a996e71473676d015','2024-11-05 22:17:18.463','2024-11-05 22:17:49.867','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-05 22:17:00.000',2),
(11,'672bb83a50a2d805fe15','2024-11-06 18:40:58.330','2024-11-06 18:40:58.330','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 18:40:00.000',1),
(12,'672bd2b85d4a46a8993d','2024-11-06 20:34:00.382','2024-11-06 20:34:24.134','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 20:34:00.000',2),
(13,'672bd3ca383abe779040','2024-11-06 20:38:34.230','2024-11-06 20:38:34.230','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 20:38:00.000',1),
(14,'672bd8793074d8d41e7b','2024-11-06 20:58:33.198','2024-11-06 20:58:33.198','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 20:58:00.000',1),
(15,'672bd8d48f29a40c14e3','2024-11-06 21:00:04.586','2024-11-06 21:00:04.586','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 21:00:00.000',1),
(16,'672bd931a336b267b789','2024-11-06 21:01:37.668','2024-11-06 21:01:56.613','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 21:01:00.000',2),
(17,'672bd9495bbaebb65c5d','2024-11-06 21:02:01.375','2024-11-06 21:02:01.375','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 21:02:00.000',1),
(18,'672bd9ccc8aa72f442d1','2024-11-06 21:04:12.821','2024-11-06 21:04:12.821','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-06 21:04:00.000',1),
(19,'672d1f30b23a7928270f','2024-11-07 20:12:32.730','2024-11-07 20:12:32.730','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 20:12:00.000',1),
(20,'672d254aa2519872be7a','2024-11-07 20:38:34.664','2024-11-07 20:38:34.664','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 20:38:00.000',1),
(21,'672d259c1e9de33a0dc3','2024-11-07 20:39:56.125','2024-11-07 20:39:56.125','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 20:39:00.000',1),
(22,'672d275dbf3e0a2c9d5a','2024-11-07 20:47:25.783','2024-11-07 20:47:25.783','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 20:47:00.000',1),
(23,'672d37ab30bd03913116','2024-11-07 21:56:59.199','2024-11-07 21:56:59.199','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 21:56:00.000',1),
(24,'672d3f8b78b3c47c4740','2024-11-07 22:30:35.494','2024-11-07 22:30:35.494','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 22:30:00.000',1),
(25,'672d41e94c8a79c21f8e','2024-11-07 22:40:41.313','2024-11-07 22:40:41.313','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 22:40:00.000',1),
(26,'672d44c2ef11660ac644','2024-11-07 22:52:50.979','2024-11-07 22:52:50.979','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 22:52:00.000',1),
(27,'672d4cdce1fc57f6b85b','2024-11-07 23:27:24.925','2024-11-07 23:27:34.281','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 23:27:00.000',2),
(28,'672d4da697baab3788d7','2024-11-07 23:30:46.621','2024-11-07 23:30:46.621','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 23:30:00.000',1),
(29,'672d4edea82572bb8ac4','2024-11-07 23:35:58.688','2024-11-07 23:35:58.688','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-07 23:35:00.000',1),
(30,'672d54f47faad0a44bc7','2024-11-08 00:01:56.522','2024-11-08 00:01:56.522','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 00:01:00.000',1),
(31,'672d561ae3721cacfeba','2024-11-08 00:06:50.931','2024-11-08 00:06:51.781','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 00:06:00.000',2),
(32,'672d56241834fee92c09','2024-11-08 00:07:00.099','2024-11-08 00:07:00.654','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 00:07:00.000',3),
(33,'672d56f05a66ff1be952','2024-11-08 00:10:24.370','2024-11-08 00:10:24.370','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 00:10:00.000',1),
(34,'672de89e4a53aa88de09','2024-11-08 10:31:58.304','2024-11-08 10:31:58.304','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:31:00.000',1),
(35,'672decf449e28fca9b21','2024-11-08 10:50:28.302','2024-11-08 10:50:29.071','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:50:00.000',2),
(36,'672ded6c83255edda4ae','2024-11-08 10:52:28.537','2024-11-08 10:52:28.537','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:52:00.000',1),
(37,'672dedb31fbcebe039c0','2024-11-08 10:53:39.129','2024-11-08 10:53:39.129','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:53:00.000',1),
(38,'672dedd82d203a5f3b56','2024-11-08 10:54:16.184','2024-11-08 10:54:16.184','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:54:00.000',1),
(39,'672deeacee568061e225','2024-11-08 10:57:48.976','2024-11-08 10:57:48.976','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:57:00.000',1),
(40,'672deefa390928f6e0c4','2024-11-08 10:59:06.233','2024-11-08 10:59:06.233','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 10:59:00.000',1),
(41,'672def3e3d74d017879d','2024-11-08 11:00:14.251','2024-11-08 11:00:14.251','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 11:00:00.000',1),
(42,'672df1aae919fdcff4d0','2024-11-08 11:10:34.954','2024-11-08 11:10:34.954','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 11:10:00.000',1),
(43,'672df2c9cd361469b017','2024-11-08 11:15:21.840','2024-11-08 11:15:21.840','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 11:15:00.000',1),
(44,'672df2f85bae87977c26','2024-11-08 11:16:08.375','2024-11-08 11:16:08.375','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 11:16:00.000',1),
(45,'672e00313a8ca079ac9f','2024-11-08 12:12:33.239','2024-11-08 12:12:42.399','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 12:12:00.000',2),
(46,'672e070c7ff9741bcda0','2024-11-08 12:41:48.524','2024-11-08 12:41:48.524','[]','url:192.168.2.15/v1/account/sessions/email,email:leander@lyghtning.nl','2024-11-08 12:00:00.000',1),
(47,'672e070e87ae939e9c7b','2024-11-08 12:41:50.555','2024-11-08 12:41:50.555','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 12:41:00.000',1),
(48,'672e0cda56f9ee5d1d9c','2024-11-08 13:06:34.356','2024-11-08 13:06:34.356','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:06:00.000',1),
(49,'672e0f0622ac62294391','2024-11-08 13:15:50.142','2024-11-08 13:15:50.142','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:15:00.000',1),
(50,'672e0f705c31d7e9382d','2024-11-08 13:17:36.377','2024-11-08 13:17:56.719','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:17:00.000',2),
(51,'672e10c4301a43f6e563','2024-11-08 13:23:16.197','2024-11-08 13:23:30.587','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:23:00.000',2),
(52,'672e10fe6a7254a9f437','2024-11-08 13:24:14.436','2024-11-08 13:24:50.035','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:24:00.000',5),
(53,'672e11307cb14e8efa00','2024-11-08 13:25:04.510','2024-11-08 13:25:29.529','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:25:00.000',3),
(54,'672e124ee68c2baad4b1','2024-11-08 13:29:50.944','2024-11-08 13:29:50.944','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:29:00.000',1),
(55,'672e12f5e3f798f48f39','2024-11-08 13:32:37.933','2024-11-08 13:32:37.933','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:32:00.000',1),
(56,'672e1340b930369d1d38','2024-11-08 13:33:52.758','2024-11-08 13:33:55.920','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:33:00.000',4),
(57,'672e137b8b2f3949887f','2024-11-08 13:34:51.570','2024-11-08 13:34:51.570','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:34:00.000',1),
(58,'672e13a7a024a06a30ec','2024-11-08 13:35:35.655','2024-11-08 13:35:39.187','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:35:00.000',3),
(59,'672e14480cfd9d8eae96','2024-11-08 13:38:16.053','2024-11-08 13:38:35.184','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:38:00.000',2),
(60,'672e14b6a05e2573e8e0','2024-11-08 13:40:06.656','2024-11-08 13:40:42.612','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:40:00.000',7),
(61,'672e1583bb04026f7493','2024-11-08 13:43:31.766','2024-11-08 13:43:59.555','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:43:00.000',2),
(62,'672e15aca01a35c15078','2024-11-08 13:44:12.655','2024-11-08 13:44:21.396','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:44:00.000',3),
(63,'672e15f6b2f34862503f','2024-11-08 13:45:26.732','2024-11-08 13:45:46.135','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:45:00.000',6),
(64,'672e163d4e32e32e00d9','2024-11-08 13:46:37.320','2024-11-08 13:46:38.382','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:46:00.000',2),
(65,'672e16a20058d2706315','2024-11-08 13:48:18.001','2024-11-08 13:48:39.248','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:48:00.000',2),
(66,'672e1766706df484d05b','2024-11-08 13:51:34.460','2024-11-08 13:51:39.560','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 13:51:00.000',3),
(67,'672e20a34b94613612d7','2024-11-08 14:30:59.309','2024-11-08 14:30:59.309','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 14:30:00.000',1),
(68,'672e28b80ec5ec876f80','2024-11-08 15:05:28.060','2024-11-08 15:05:28.060','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 15:05:00.000',1),
(69,'672e292f1ad61f33c026','2024-11-08 15:07:27.109','2024-11-08 15:07:27.109','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 15:07:00.000',1),
(70,'672e2b944ab1ffd40f1e','2024-11-08 15:17:40.305','2024-11-08 15:17:40.305','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 15:17:00.000',1),
(71,'672e2f8aa3e7c6f55019','2024-11-08 15:34:34.671','2024-11-08 15:34:34.671','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 15:34:00.000',1),
(72,'672e31db42d8cec295ec','2024-11-08 15:44:27.273','2024-11-08 15:44:27.273','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 15:44:00.000',1),
(73,'672e377625802c285c4a','2024-11-08 16:08:22.153','2024-11-08 16:08:22.153','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 16:08:00.000',1),
(74,'672e389177c8c01c611c','2024-11-08 16:13:05.490','2024-11-08 16:13:05.490','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 16:13:00.000',1),
(75,'672e38cdaf9db2729cf0','2024-11-08 16:14:05.719','2024-11-08 16:14:05.719','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 16:14:00.000',1),
(76,'672e39804e7c2f563a52','2024-11-08 16:17:04.321','2024-11-08 16:17:04.321','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 16:17:00.000',1),
(77,'672e40d0543fb5eb0481','2024-11-08 16:48:16.345','2024-11-08 16:48:16.345','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 16:48:00.000',1),
(78,'672e973f3f3a256f4b6e','2024-11-08 22:57:03.258','2024-11-08 22:57:03.258','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 22:57:00.000',1),
(79,'672e983571e00dc3a18d','2024-11-08 23:01:09.466','2024-11-08 23:01:09.466','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 23:01:00.000',1),
(80,'672e9e3dcc22ca10800e','2024-11-08 23:26:53.836','2024-11-08 23:26:53.836','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 23:26:00.000',1),
(81,'672ea1a1a6dca8130caf','2024-11-08 23:41:21.683','2024-11-08 23:41:21.683','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-08 23:41:00.000',1),
(82,'672f16305557d81e8fbf','2024-11-09 07:58:40.349','2024-11-09 07:58:40.349','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-09 07:58:00.000',1),
(83,'672fda20da1a039e8bb8','2024-11-09 21:54:40.893','2024-11-09 21:54:40.893','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-09 21:54:00.000',1),
(84,'67308c6ebff22c546021','2024-11-10 10:35:26.786','2024-11-10 10:35:37.741','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-10 10:35:00.000',2),
(85,'673090ce10cefe09b253','2024-11-10 10:54:06.068','2024-11-10 10:54:06.068','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-10 10:54:00.000',1),
(86,'673119a48a1cac4a1a64','2024-11-10 20:37:56.565','2024-11-10 20:37:56.565','[]','url:192.168.2.15/v1/account/sessions/email,email:leander@lyghtning.nl','2024-11-10 20:00:00.000',1),
(87,'6731241f2ee0848641da','2024-11-10 21:22:39.191','2024-11-10 21:22:39.191','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-10 21:22:00.000',1),
(88,'6731261d879dc5419469','2024-11-10 21:31:09.555','2024-11-10 21:31:09.555','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-10 21:31:00.000',1),
(89,'673128ff2c5b31459be3','2024-11-10 21:43:27.181','2024-11-10 21:43:27.181','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-10 21:43:00.000',1),
(90,'673247ceca400ad4a190','2024-11-11 18:07:10.828','2024-11-11 18:07:10.828','[]','url:192.168.2.15/v1/account/sessions/email,email:Leander@lyghtning.nl','2024-11-11 18:00:00.000',1),
(91,'673247d105d3c4eb717c','2024-11-11 18:07:13.023','2024-11-11 18:07:13.023','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 18:07:00.000',1),
(92,'6732601d8d634ee5a4ea','2024-11-11 19:50:53.579','2024-11-11 19:50:53.579','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 19:50:00.000',1),
(93,'6732642a963ba82abac6','2024-11-11 20:08:10.615','2024-11-11 20:08:10.615','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:08:00.000',1),
(94,'673264700d70fb458cfc','2024-11-11 20:09:20.055','2024-11-11 20:09:58.838','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:09:00.000',8),
(95,'673264997f044da02d0e','2024-11-11 20:10:01.520','2024-11-11 20:10:01.520','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:10:00.000',1),
(96,'6732692c68c2832f9824','2024-11-11 20:29:32.429','2024-11-11 20:29:32.429','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:29:00.000',1),
(97,'67326ae5f11a3bb5f771','2024-11-11 20:36:53.987','2024-11-11 20:36:59.803','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:36:00.000',5),
(98,'67326aec22e5110fc607','2024-11-11 20:37:00.142','2024-11-11 20:37:08.986','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:37:00.000',14),
(99,'67326eb23de74ca8d33e','2024-11-11 20:53:06.253','2024-11-11 20:53:43.345','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 20:53:00.000',2),
(100,'67327122398d301c9c66','2024-11-11 21:03:30.235','2024-11-11 21:03:30.235','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:03:00.000',1),
(101,'673273ce22b589bdd319','2024-11-11 21:14:54.142','2024-11-11 21:14:54.142','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:14:00.000',1),
(102,'673274a80800b500b5c7','2024-11-11 21:18:32.032','2024-11-11 21:18:32.032','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:18:00.000',1),
(103,'673275ecaa3ce9ed48aa','2024-11-11 21:23:56.697','2024-11-11 21:23:56.697','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:23:00.000',1),
(104,'673275f2848da4b790be','2024-11-11 21:24:02.542','2024-11-11 21:24:02.542','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:24:00.000',1),
(105,'673277250a9ec25ffd1f','2024-11-11 21:29:09.043','2024-11-11 21:29:09.043','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:29:00.000',1),
(106,'673277ad1b8efa82e455','2024-11-11 21:31:25.112','2024-11-11 21:31:27.805','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:31:00.000',3),
(107,'6732780270d498e5ff9f','2024-11-11 21:32:50.462','2024-11-11 21:32:50.462','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:32:00.000',1),
(108,'673278e6487511a7cdde','2024-11-11 21:36:38.296','2024-11-11 21:36:38.296','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:36:00.000',1),
(109,'67327a14d1b23cfccb9a','2024-11-11 21:41:40.858','2024-11-11 21:41:40.858','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:41:00.000',1),
(110,'67327b7c6489d4c92c9a','2024-11-11 21:47:40.411','2024-11-11 21:47:40.411','[]','url:192.168.2.15/v1/account/sessions/email,email:Leander@lyghtning.nl','2024-11-11 21:00:00.000',1),
(111,'67327b7e67b40f7def14','2024-11-11 21:47:42.424','2024-11-11 21:47:55.893','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:47:00.000',2),
(112,'67327b94941acd09db3d','2024-11-11 21:48:04.606','2024-11-11 21:48:11.160','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:48:00.000',2),
(113,'67327c3ed01d227d02ea','2024-11-11 21:50:54.852','2024-11-11 21:50:54.852','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:50:00.000',1),
(114,'67327d35875abe6fd678','2024-11-11 21:55:01.554','2024-11-11 21:55:01.554','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-11 21:55:00.000',1),
(115,'67350c32a4a72b138528','2024-11-13 20:29:38.674','2024-11-13 20:29:38.674','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 20:29:00.000',1),
(116,'67350c66ad12ad891a45','2024-11-13 20:30:30.708','2024-11-13 20:30:30.708','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 20:30:00.000',1),
(117,'6735213764a92de543cd','2024-11-13 21:59:19.412','2024-11-13 21:59:19.412','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 21:59:00.000',1),
(118,'673525f6b51fa39ef767','2024-11-13 22:19:34.741','2024-11-13 22:19:34.741','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-13 22:19:00.000',1),
(119,'6735a893a94dcee7dbce','2024-11-14 07:36:51.693','2024-11-14 07:36:51.693','[]','url:/v1/realtime,ip:192.168.65.1','2024-11-14 07:36:00.000',1);
/*!40000 ALTER TABLE `_console_abuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_abuse_perms`
--

DROP TABLE IF EXISTS `_console_abuse_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_abuse_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_abuse_perms`
--

LOCK TABLES `_console_abuse_perms` WRITE;
/*!40000 ALTER TABLE `_console_abuse_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_abuse_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit`
--

DROP TABLE IF EXISTS `_console_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `index2` (`event`),
  KEY `index4` (`userId`,`event`),
  KEY `index5` (`resource`,`event`),
  KEY `index-time` (`time` DESC),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit`
--

LOCK TABLES `_console_audit` WRITE;
/*!40000 ALTER TABLE `_console_audit` DISABLE KEYS */;
INSERT INTO `_console_audit` VALUES
(1,'672a6e92d9ea08e93318','2024-11-05 19:14:26.892','2024-11-05 19:14:26.892','[]','1','user.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:14:26.891','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.868+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":[],\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(2,'672a6e93355d3869932b','2024-11-05 19:14:27.218','2024-11-05 19:14:27.218','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:14:27.218','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92e9e3b2db8933\",\"$createdAt\":\"2024-11-05T19:14:27.214+00:00\",\"$updatedAt\":\"2024-11-05T19:14:27.214+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-05T19:14:26.958+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(3,'672a6ec2c7a4df5a8758','2024-11-05 19:15:14.817','2024-11-05 19:15:14.817','[]','1','team.create','team/672a6ec20031b6bebffb','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:15:14.817','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6ec20031b6bebffb\",\"$createdAt\":\"2024-11-05T19:15:14.805+00:00\",\"$updatedAt\":\"2024-11-05T19:15:14.805+00:00\",\"name\":\"Lyghtning\",\"total\":1,\"prefs\":[]}}'),
(4,'672a6ec2d313bc434924','2024-11-05 19:15:14.864','2024-11-05 19:15:14.864','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:15:14.864','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:15:14.854+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(5,'672a6ee25de5dc17d52d','2024-11-05 19:15:46.384','2024-11-05 19:15:46.384','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:15:46.384','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6ee21dae6f383bee\",\"$createdAt\":\"2024-11-05T19:15:46.379+00:00\",\"$updatedAt\":\"2024-11-05T19:15:46.379+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-05T19:15:46.121+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(6,'672a75926e0be7500873','2024-11-05 19:44:18.450','2024-11-05 19:44:18.450','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:44:18.450','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:44:18.438+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(7,'672a75927337d66798e9','2024-11-05 19:44:18.471','2024-11-05 19:44:18.471','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:44:18.471','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:44:18.464+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(8,'672a7592776d64b229f2','2024-11-05 19:44:18.489','2024-11-05 19:44:18.489','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:44:18.488','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:44:18.480+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(9,'672a75f19e0ae00e3f20','2024-11-05 19:45:53.647','2024-11-05 19:45:53.647','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:45:53.647','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:45:53.638+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(10,'672a761d3b8cc098861a','2024-11-05 19:46:37.243','2024-11-05 19:46:37.243','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:37.243','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:37.237+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(11,'672a76217eeb3f2f55e1','2024-11-05 19:46:41.519','2024-11-05 19:46:41.519','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:41.519','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:41.512+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(12,'672a7621bd27b8c85995','2024-11-05 19:46:41.774','2024-11-05 19:46:41.774','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:41.774','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:41.761+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(13,'672a7621c2f470758e27','2024-11-05 19:46:41.798','2024-11-05 19:46:41.798','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:41.798','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:41.788+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(14,'672a7627cc95a0f158a0','2024-11-05 19:46:47.837','2024-11-05 19:46:47.837','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:47.837','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:47.830+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(15,'672a7628a89600d7952b','2024-11-05 19:46:48.690','2024-11-05 19:46:48.690','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 19:46:48.690','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T19:46:48.682+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(16,'672a805b0f4deb2c9d6c','2024-11-05 20:30:19.062','2024-11-05 20:30:19.062','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:30:19.062','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:30:19.051+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(17,'672a81f585d2c20afe31','2024-11-05 20:37:09.548','2024-11-05 20:37:09.548','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:37:09.547','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:37:09.539+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(18,'672a829ae0d4fc32962d','2024-11-05 20:39:54.920','2024-11-05 20:39:54.920','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:39:54.920','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:39:54.912+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(19,'672a829d577b46804588','2024-11-05 20:39:57.358','2024-11-05 20:39:57.358','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:39:57.358','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:39:57.349+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(20,'672a83231b3ee67c2db0','2024-11-05 20:42:11.111','2024-11-05 20:42:11.111','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:42:11.111','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:42:11.103+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(21,'672a83e474b832ef1d03','2024-11-05 20:45:24.478','2024-11-05 20:45:24.478','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:45:24.477','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:45:24.469+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(22,'672a83f4346f5fb46c25','2024-11-05 20:45:40.214','2024-11-05 20:45:40.214','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 20:45:40.214','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T20:45:40.206+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(23,'672a8d7437903a842617','2024-11-05 21:26:12.227','2024-11-05 21:26:12.227','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 21:26:12.227','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T21:26:12.220+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(24,'672a996407617f91b3e3','2024-11-05 22:17:08.030','2024-11-05 22:17:08.030','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 22:17:08.029','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T22:17:08.012+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(25,'672a99640d24cca7a133','2024-11-05 22:17:08.053','2024-11-05 22:17:08.053','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 22:17:08.053','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T22:17:08.045+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(26,'672a996e5e057d59a0c4','2024-11-05 22:17:18.385','2024-11-05 22:17:18.385','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 22:17:18.384','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T22:17:18.377+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(27,'672a998dc01b309364d6','2024-11-05 22:17:49.786','2024-11-05 22:17:49.786','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-05 22:17:49.786','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-05T22:17:49.778+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(28,'672bb816d721d7edaf14','2024-11-06 18:40:22.881','2024-11-06 18:40:22.881','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:40:22.880','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:40:22.861+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(29,'672bb8396069dac4e3d7','2024-11-06 18:40:57.394','2024-11-06 18:40:57.394','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:40:57.394','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:40:57.385+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(30,'672bb83a3834746cbc35','2024-11-06 18:40:58.230','2024-11-06 18:40:58.230','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:40:58.230','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:40:58.222+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(31,'672bb83a43a1c8ead74e','2024-11-06 18:40:58.277','2024-11-06 18:40:58.277','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:40:58.276','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:40:58.239+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(32,'672bb83dc34b5cd4460d','2024-11-06 18:41:01.799','2024-11-06 18:41:01.799','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:41:01.799','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:41:01.793+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(33,'672bb847b6ffcc09489c','2024-11-06 18:41:11.749','2024-11-06 18:41:11.749','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:41:11.749','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:41:11.741+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(34,'672bb8482a76d854aeab','2024-11-06 18:41:12.173','2024-11-06 18:41:12.173','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:41:12.173','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:41:12.159+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(35,'672bb8482f5bde9f52f7','2024-11-06 18:41:12.193','2024-11-06 18:41:12.193','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:41:12.193','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:41:12.184+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(36,'672bb94800acd1125d24','2024-11-06 18:45:28.002','2024-11-06 18:45:28.002','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 18:45:28.002','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T18:45:27.993+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-05T19:14:26.868+00:00\"}}'),
(37,'672bc4c55bc888bd2679','2024-11-06 19:34:29.375','2024-11-06 19:34:29.375','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 19:34:29.373','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T19:34:29.363+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(38,'672bd2b849b3876cdfe9','2024-11-06 20:34:00.301','2024-11-06 20:34:00.301','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 20:34:00.301','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T20:34:00.286+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(39,'672bd2d00f22defb6a11','2024-11-06 20:34:24.061','2024-11-06 20:34:24.061','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 20:34:24.061','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T20:34:24.049+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(40,'672bd3ca25dd3d386fa6','2024-11-06 20:38:34.155','2024-11-06 20:38:34.155','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 20:38:34.154','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T20:38:34.117+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(41,'672bd8791c1d4502fe02','2024-11-06 20:58:33.115','2024-11-06 20:58:33.115','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 20:58:33.114','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T20:58:33.105+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(42,'672bd8d47d0a420062d8','2024-11-06 21:00:04.512','2024-11-06 21:00:04.512','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:00:04.512','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T21:00:04.501+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(43,'672bd931909e656bc279','2024-11-06 21:01:37.592','2024-11-06 21:01:37.592','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:01:37.592','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T21:01:37.582+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(44,'672bd9448400a5c37610','2024-11-06 21:01:56.540','2024-11-06 21:01:56.540','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:01:56.540','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T21:01:56.529+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(45,'672bd9494a2ec895bf7a','2024-11-06 21:02:01.303','2024-11-06 21:02:01.303','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:02:01.303','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T21:02:01.293+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(46,'672bd9cca846f88de529','2024-11-06 21:04:12.689','2024-11-06 21:04:12.689','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-06 21:04:12.688','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-06T21:04:12.670+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-06T19:17:22.879+00:00\"}}'),
(47,'672d1f2c3ae76518bd83','2024-11-07 20:12:28.241','2024-11-07 20:12:28.241','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:12:28.240','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:12:28.229+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(48,'672d1f30346ab28a691d','2024-11-07 20:12:32.214','2024-11-07 20:12:32.214','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:12:32.214','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:12:32.208+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(49,'672d1f3094bdbd5dd0b6','2024-11-07 20:12:32.609','2024-11-07 20:12:32.609','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:12:32.608','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:12:32.601+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(50,'672d1f3099a38e14080a','2024-11-07 20:12:32.629','2024-11-07 20:12:32.629','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:12:32.629','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:12:32.621+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(51,'672d1fa55b9da6081592','2024-11-07 20:14:29.375','2024-11-07 20:14:29.375','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:14:29.375','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:14:29.367+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(52,'672d254a8f7422bcaa44','2024-11-07 20:38:34.587','2024-11-07 20:38:34.587','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:38:34.587','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:38:34.580+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(53,'672d259c0f39e1d6ea69','2024-11-07 20:39:56.062','2024-11-07 20:39:56.062','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 20:39:56.062','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T20:39:56.052+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(54,'672d354faf349318fff8','2024-11-07 21:46:55.717','2024-11-07 21:46:55.717','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 21:46:55.717','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T21:46:55.708+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(55,'672d36bf3fdaa80b3099','2024-11-07 21:53:03.261','2024-11-07 21:53:03.261','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 21:53:03.261','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T21:53:03.252+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(56,'672d37ab10e9bd94854f','2024-11-07 21:56:59.069','2024-11-07 21:56:59.069','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 21:56:59.069','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T21:56:59.058+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(57,'672d3be0d03e07df5800','2024-11-07 22:14:56.852','2024-11-07 22:14:56.852','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:14:56.852','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:14:56.841+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(58,'672d3f8b66e484277d5d','2024-11-07 22:30:35.421','2024-11-07 22:30:35.421','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:30:35.421','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:30:35.412+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(59,'672d41e93ad60b3b74e3','2024-11-07 22:40:41.240','2024-11-07 22:40:41.240','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:40:41.240','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:40:41.231+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(60,'672d427d77cd8d228d70','2024-11-07 22:43:09.490','2024-11-07 22:43:09.490','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:43:09.490','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:43:09.482+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(61,'672d4338ab15f709ede4','2024-11-07 22:46:16.700','2024-11-07 22:46:16.700','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:46:16.700','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:46:16.692+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(62,'672d4391badf9f674802','2024-11-07 22:47:45.765','2024-11-07 22:47:45.765','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:47:45.765','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:47:45.758+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(63,'672d4392261be809da14','2024-11-07 22:47:46.156','2024-11-07 22:47:46.156','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:47:46.155','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:47:46.141+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(64,'672d43922b63606206af','2024-11-07 22:47:46.177','2024-11-07 22:47:46.177','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:47:46.177','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:47:46.169+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(65,'672d43cba2c973d806c5','2024-11-07 22:48:43.666','2024-11-07 22:48:43.666','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:48:43.666','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:48:43.659+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(66,'672d43ccb3c080d0a22b','2024-11-07 22:48:44.736','2024-11-07 22:48:44.736','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:48:44.735','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:48:44.723+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(67,'672d43ccb7b5cd7e403b','2024-11-07 22:48:44.752','2024-11-07 22:48:44.752','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:48:44.752','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:48:44.744+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(68,'672d43e65cb5dc7fe8c2','2024-11-07 22:49:10.379','2024-11-07 22:49:10.379','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:49:10.379','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:49:10.373+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(69,'672d43e7acf6bfe47fe7','2024-11-07 22:49:11.708','2024-11-07 22:49:11.708','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:49:11.708','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:49:11.693+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(70,'672d43e7b20100c6c0b1','2024-11-07 22:49:11.729','2024-11-07 22:49:11.729','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:49:11.728','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:49:11.718+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(71,'672d44c2ddd05e4f2a98','2024-11-07 22:52:50.908','2024-11-07 22:52:50.908','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 22:52:50.908','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T22:52:50.900+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(72,'672d4cdb887133ca9368','2024-11-07 23:27:23.558','2024-11-07 23:27:23.558','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 23:27:23.558','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T23:27:23.540+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(73,'672d4cdcce43c6ecd594','2024-11-07 23:27:24.844','2024-11-07 23:27:24.844','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 23:27:24.844','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T23:27:24.835+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(74,'672d4cdcd3bd9bf6b74d','2024-11-07 23:27:24.867','2024-11-07 23:27:24.867','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 23:27:24.867','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T23:27:24.856+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(75,'672d4ce62c3d993e5ee5','2024-11-07 23:27:34.181','2024-11-07 23:27:34.181','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 23:27:34.181','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T23:27:34.171+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(76,'672d4da688b900fc044d','2024-11-07 23:30:46.560','2024-11-07 23:30:46.560','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-07 23:30:46.559','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-07T23:30:46.549+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(77,'672d561ace8f50f794f4','2024-11-08 00:06:50.846','2024-11-08 00:06:50.846','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:06:50.845','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:06:50.831+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(78,'672d561bb1403f945f8e','2024-11-08 00:06:51.726','2024-11-08 00:06:51.726','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:06:51.725','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:06:51.715+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(79,'672d562407c79e45acdb','2024-11-08 00:07:00.031','2024-11-08 00:07:00.031','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:07:00.031','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:07:00.021+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(80,'672d56245a9912481a6f','2024-11-08 00:07:00.371','2024-11-08 00:07:00.371','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:07:00.370','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:07:00.362+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(81,'672d5624918b8a61ace3','2024-11-08 00:07:00.596','2024-11-08 00:07:00.596','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:07:00.596','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:07:00.588+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(82,'672d56ef35c5e0dd6c44','2024-11-08 00:10:23.220','2024-11-08 00:10:23.220','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:10:23.220','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:10:23.210+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(83,'672d56efeefc50f90719','2024-11-08 00:10:23.978','2024-11-08 00:10:23.978','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:10:23.978','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:10:23.971+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(84,'672d56f044da09da7fd9','2024-11-08 00:10:24.282','2024-11-08 00:10:24.282','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:10:24.281','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:10:24.274+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(85,'672d56f049e4aaee9af8','2024-11-08 00:10:24.302','2024-11-08 00:10:24.302','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 00:10:24.302','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T00:10:24.292+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(86,'672de89dd36389295607','2024-11-08 10:31:57.865','2024-11-08 10:31:57.865','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:31:57.865','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:31:57.857+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(87,'672de89e388701438867','2024-11-08 10:31:58.231','2024-11-08 10:31:58.231','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:31:58.231','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:31:58.223+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(88,'672de89e3d9763d1437c','2024-11-08 10:31:58.252','2024-11-08 10:31:58.252','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:31:58.252','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:31:58.243+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(89,'672dec052f7f09effba7','2024-11-08 10:46:29.194','2024-11-08 10:46:29.194','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:29.194','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:29.185+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(90,'672dec067960d7b737a1','2024-11-08 10:46:30.497','2024-11-08 10:46:30.497','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:30.496','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:30.483+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(91,'672dec067f4b7a99bc9e','2024-11-08 10:46:30.521','2024-11-08 10:46:30.521','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:30.521','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:30.510+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(92,'672dec0e4bc1f7fcbbb5','2024-11-08 10:46:38.310','2024-11-08 10:46:38.310','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:38.310','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:38.303+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(93,'672dec0e8f3274f80b5f','2024-11-08 10:46:38.586','2024-11-08 10:46:38.586','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:38.586','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:38.572+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(94,'672dec0e94b0e30bb16c','2024-11-08 10:46:38.609','2024-11-08 10:46:38.609','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:46:38.608','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:46:38.599+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(95,'672decf41b7967ee6953','2024-11-08 10:50:28.112','2024-11-08 10:50:28.112','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:50:28.112','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:50:28.104+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(96,'672decf42d42effaa005','2024-11-08 10:50:28.185','2024-11-08 10:50:28.185','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:50:28.185','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:50:28.177+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(97,'672decf4325b029f564e','2024-11-08 10:50:28.206','2024-11-08 10:50:28.206','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:50:28.206','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:50:28.197+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(98,'672decf4f34063d0a17d','2024-11-08 10:50:28.996','2024-11-08 10:50:28.996','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:50:28.995','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:50:28.988+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(99,'672ded6c70a5476770c3','2024-11-08 10:52:28.461','2024-11-08 10:52:28.461','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:52:28.461','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:52:28.453+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(100,'672deda84f748c88edb0','2024-11-08 10:53:28.325','2024-11-08 10:53:28.325','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:53:28.325','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:53:28.312+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(101,'672dedb30f874d602593','2024-11-08 10:53:39.063','2024-11-08 10:53:39.063','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:53:39.063','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:53:39.055+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(102,'672dedd81c092b1d5a4c','2024-11-08 10:54:16.114','2024-11-08 10:54:16.114','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:54:16.114','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:54:16.105+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(103,'672deeaca311fc9291fd','2024-11-08 10:57:48.667','2024-11-08 10:57:48.667','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:57:48.667','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:57:48.660+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(104,'672deeacd5033062e7fa','2024-11-08 10:57:48.872','2024-11-08 10:57:48.872','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:57:48.872','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:57:48.863+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(105,'672deeacd99d260720c2','2024-11-08 10:57:48.891','2024-11-08 10:57:48.891','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:57:48.891','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:57:48.883+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(106,'672deefa29eef014dfdc','2024-11-08 10:59:06.171','2024-11-08 10:59:06.171','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 10:59:06.171','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T10:59:06.162+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(107,'672def3e2ea06e8a8249','2024-11-08 11:00:14.190','2024-11-08 11:00:14.190','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 11:00:14.190','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T11:00:14.182+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(108,'672df2c9be835b044052','2024-11-08 11:15:21.780','2024-11-08 11:15:21.780','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 11:15:21.779','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T11:15:21.763+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(109,'672df2f842da4aeecc8d','2024-11-08 11:16:08.273','2024-11-08 11:16:08.273','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 11:16:08.273','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T11:16:08.266+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(110,'672e00312500be8f2544','2024-11-08 12:12:33.151','2024-11-08 12:12:33.151','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:12:33.151','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:12:33.140+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(111,'672e003a521b92fab432','2024-11-08 12:12:42.336','2024-11-08 12:12:42.336','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:12:42.336','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:12:42.328+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(112,'672e017489ccd5f4fc0c','2024-11-08 12:17:56.564','2024-11-08 12:17:56.564','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:17:56.564','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:17:56.558+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(113,'672e070ccf9b9688d121','2024-11-08 12:41:48.850','2024-11-08 12:41:48.850','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:41:48.850','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672e070c93c89f531aa9\",\"$createdAt\":\"2024-11-08T12:41:48.844+00:00\",\"$updatedAt\":\"2024-11-08T12:41:48.844+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-08T12:41:48.605+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(114,'672e070dea0979c2a552','2024-11-08 12:41:49.958','2024-11-08 12:41:49.958','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:41:49.958','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:41:49.950+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(115,'672e070e729e71d33da5','2024-11-08 12:41:50.469','2024-11-08 12:41:50.469','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:41:50.469','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:41:50.461+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(116,'672e070e77b643a2b055','2024-11-08 12:41:50.490','2024-11-08 12:41:50.490','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 12:41:50.490','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T12:41:50.481+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(117,'672e0cd9bff60c40c5ca','2024-11-08 13:06:33.786','2024-11-08 13:06:33.786','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:06:33.786','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:06:33.778+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(118,'672e0cda45e6b6b09437','2024-11-08 13:06:34.286','2024-11-08 13:06:34.286','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:06:34.286','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:06:34.277+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(119,'672e0cda4b498b96b975','2024-11-08 13:06:34.308','2024-11-08 13:06:34.308','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:06:34.308','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:06:34.297+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(120,'672e0f06111523d5a6a3','2024-11-08 13:15:50.069','2024-11-08 13:15:50.069','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:15:50.068','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:15:50.057+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(121,'672e0f7047f75076f191','2024-11-08 13:17:36.294','2024-11-08 13:17:36.294','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:17:36.294','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:17:36.287+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(122,'672e0f849c3f9343237b','2024-11-08 13:17:56.639','2024-11-08 13:17:56.639','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:17:56.639','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:17:56.633+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(123,'672e10c41acc8564e66c','2024-11-08 13:23:16.109','2024-11-08 13:23:16.109','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:23:16.109','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:23:16.103+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(124,'672e10d27b43ba356ab0','2024-11-08 13:23:30.504','2024-11-08 13:23:30.504','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:23:30.504','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:23:30.497+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(125,'672e10fe1e2393f4f49a','2024-11-08 13:24:14.123','2024-11-08 13:24:14.123','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:14.123','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:14.114+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(126,'672e10fe4d1bce166e6d','2024-11-08 13:24:14.315','2024-11-08 13:24:14.315','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:14.315','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:14.308+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(127,'672e10fe5212af55bb31','2024-11-08 13:24:14.336','2024-11-08 13:24:14.336','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:14.335','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:14.326+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(128,'672e11209fec7481f5a9','2024-11-08 13:24:48.655','2024-11-08 13:24:48.655','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:48.654','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:48.646+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(129,'672e1121808a800e8df5','2024-11-08 13:24:49.526','2024-11-08 13:24:49.526','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:49.526','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:49.518+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(130,'672e1121b5e74c04a7f7','2024-11-08 13:24:49.745','2024-11-08 13:24:49.745','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:49.744','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:49.737+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(131,'672e1121edae9a96ac63','2024-11-08 13:24:49.973','2024-11-08 13:24:49.973','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:24:49.973','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:24:49.966+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(132,'672e11306cf1a9ba7593','2024-11-08 13:25:04.446','2024-11-08 13:25:04.446','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:25:04.446','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:25:04.437+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(133,'672e11480f96411c0feb','2024-11-08 13:25:28.063','2024-11-08 13:25:28.063','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:25:28.063','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:25:28.053+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(134,'672e1149722da4af4a59','2024-11-08 13:25:29.467','2024-11-08 13:25:29.467','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:25:29.467','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:25:29.457+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(135,'672e124ed6b400cc4469','2024-11-08 13:29:50.879','2024-11-08 13:29:50.879','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:29:50.879','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:29:50.867+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(136,'672e12f5d4c100fd4276','2024-11-08 13:32:37.871','2024-11-08 13:32:37.871','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:32:37.871','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:32:37.863+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(137,'672e1340aa319d7b5a84','2024-11-08 13:33:52.697','2024-11-08 13:33:52.697','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:33:52.696','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:33:52.688+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(138,'672e134188420b463aeb','2024-11-08 13:33:53.558','2024-11-08 13:33:53.558','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:33:53.557','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:33:53.550+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(139,'672e1342c804ffa659fc','2024-11-08 13:33:54.819','2024-11-08 13:33:54.819','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:33:54.819','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:33:54.810+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(140,'672e1343d14affe007d9','2024-11-08 13:33:55.857','2024-11-08 13:33:55.857','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:33:55.857','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:33:55.850+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(141,'672e137b7c4b6a9c0868','2024-11-08 13:34:51.509','2024-11-08 13:34:51.509','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:34:51.508','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:34:51.500+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(142,'672e13a791bf268b5ec6','2024-11-08 13:35:35.596','2024-11-08 13:35:35.596','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:35:35.596','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:35:35.583+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(143,'672e13a97607baf7f91c','2024-11-08 13:35:37.483','2024-11-08 13:35:37.483','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:35:37.483','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:35:37.474+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(144,'672e13ab1d5ad7ebdc6d','2024-11-08 13:35:39.120','2024-11-08 13:35:39.120','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:35:39.120','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:35:39.113+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(145,'672e1447f29b4050a922','2024-11-08 13:38:15.993','2024-11-08 13:38:15.993','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:38:15.993','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:38:15.985+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(146,'672e145b1df099010bdf','2024-11-08 13:38:35.122','2024-11-08 13:38:35.122','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:38:35.122','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:38:35.113+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(147,'672e14b68f5b9377f0fd','2024-11-08 13:40:06.587','2024-11-08 13:40:06.587','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:06.586','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:06.579+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(148,'672e14bed47dec6ed7e7','2024-11-08 13:40:14.870','2024-11-08 13:40:14.870','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:14.870','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:14.863+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(149,'672e14d4045b491a67fb','2024-11-08 13:40:36.017','2024-11-08 13:40:36.017','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:36.017','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:36.011+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(150,'672e14d4a39c891c8cff','2024-11-08 13:40:36.670','2024-11-08 13:40:36.670','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:36.670','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:36.662+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(151,'672e14d4a87d5e987703','2024-11-08 13:40:36.690','2024-11-08 13:40:36.690','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:36.689','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:36.682+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(152,'672e14d97950ceade106','2024-11-08 13:40:41.496','2024-11-08 13:40:41.496','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:41.496','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:41.488+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(153,'672e14da08039ae8f539','2024-11-08 13:40:42.032','2024-11-08 13:40:42.032','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:42.032','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:42.025+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(154,'672e14da4a732344a49d','2024-11-08 13:40:42.304','2024-11-08 13:40:42.304','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:42.304','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:42.297+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(155,'672e14da8344e1ea88ac','2024-11-08 13:40:42.537','2024-11-08 13:40:42.537','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:40:42.537','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:40:42.530+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(156,'672e1583a74147281b8e','2024-11-08 13:43:31.685','2024-11-08 13:43:31.685','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:43:31.684','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:43:31.677+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(157,'672e159f755f9d0db889','2024-11-08 13:43:59.480','2024-11-08 13:43:59.480','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:43:59.480','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:43:59.473+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(158,'672e15ac8e59f77c4d57','2024-11-08 13:44:12.583','2024-11-08 13:44:12.583','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:44:12.582','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:44:12.574+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(159,'672e15b4222360c1e5f6','2024-11-08 13:44:20.139','2024-11-08 13:44:20.139','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:44:20.139','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:44:20.131+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(160,'672e15b54e5d45c49716','2024-11-08 13:44:21.320','2024-11-08 13:44:21.320','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:44:21.320','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:44:21.313+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(161,'672e15f6a0331e41e942','2024-11-08 13:45:26.656','2024-11-08 13:45:26.656','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:26.656','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:26.648+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(162,'672e15fb4af8de1d8bd0','2024-11-08 13:45:31.307','2024-11-08 13:45:31.307','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:31.306','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:31.297+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(163,'672e15fc6f42f279ddcf','2024-11-08 13:45:32.455','2024-11-08 13:45:32.455','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:32.455','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:32.448+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(164,'672e1608e20315b8dbf8','2024-11-08 13:45:44.925','2024-11-08 13:45:44.925','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:44.925','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:44.918+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(165,'672e16099932306fcca2','2024-11-08 13:45:45.627','2024-11-08 13:45:45.627','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:45.627','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:45.620+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(166,'672e1609c583ca388954','2024-11-08 13:45:45.809','2024-11-08 13:45:45.809','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:45.808','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:45.801+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(167,'672e160a0e1355965718','2024-11-08 13:45:46.057','2024-11-08 13:45:46.057','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:45:46.057','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:45:46.049+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(168,'672e163d3a8e70f8e0c8','2024-11-08 13:46:37.239','2024-11-08 13:46:37.239','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:46:37.239','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:46:37.233+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(169,'672e163e4c7067de96c5','2024-11-08 13:46:38.313','2024-11-08 13:46:38.313','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:46:38.312','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:46:38.300+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(170,'672e16a1df191a0ca434','2024-11-08 13:48:17.913','2024-11-08 13:48:17.913','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:48:17.913','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:48:17.904+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(171,'672e16b7287645d18a29','2024-11-08 13:48:39.165','2024-11-08 13:48:39.165','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:48:39.165','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:48:39.157+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(172,'672e17665dec5699c459','2024-11-08 13:51:34.384','2024-11-08 13:51:34.384','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:51:34.384','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:51:34.377+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(173,'672e1769f3a3d93061aa','2024-11-08 13:51:37.997','2024-11-08 13:51:37.997','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:51:37.997','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:51:37.990+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(174,'672e176a7f187a8d93e8','2024-11-08 13:51:38.520','2024-11-08 13:51:38.520','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:51:38.520','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:51:38.511+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(175,'672e176a84823a46bd5e','2024-11-08 13:51:38.542','2024-11-08 13:51:38.542','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:51:38.542','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:51:38.533+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(176,'672e176b7a0506788c7b','2024-11-08 13:51:39.499','2024-11-08 13:51:39.499','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 13:51:39.499','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T13:51:39.489+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(177,'672e20a33a16b870eee6','2024-11-08 14:30:59.237','2024-11-08 14:30:59.237','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 14:30:59.237','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T14:30:59.227+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(178,'672e28b7f00cc96be5a4','2024-11-08 15:05:27.983','2024-11-08 15:05:27.983','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:05:27.983','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:05:27.973+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(179,'672e292f0b362bcd37ce','2024-11-08 15:07:27.045','2024-11-08 15:07:27.045','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:07:27.045','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:07:27.037+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(180,'672e294656b914aa4183','2024-11-08 15:07:50.355','2024-11-08 15:07:50.355','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:07:50.354','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:07:50.343+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(181,'672e2b939859b60f474f','2024-11-08 15:17:39.624','2024-11-08 15:17:39.624','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:17:39.623','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:17:39.615+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(182,'672e2b9435e4bbd8fab3','2024-11-08 15:17:40.220','2024-11-08 15:17:40.220','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:17:40.220','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:17:40.212+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(183,'672e2b943b0615b3ccc6','2024-11-08 15:17:40.241','2024-11-08 15:17:40.241','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:17:40.241','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:17:40.233+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(184,'672e2f8a8ce1095ab16a','2024-11-08 15:34:34.577','2024-11-08 15:34:34.577','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:34:34.576','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:34:34.567+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(185,'672e31db2fd908fb1a2d','2024-11-08 15:44:27.195','2024-11-08 15:44:27.195','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 15:44:27.195','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T15:44:27.187+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(186,'672e3891358c987cef79','2024-11-08 16:13:05.219','2024-11-08 16:13:05.219','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 16:13:05.217','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T16:13:05.018+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(187,'672e38cd969ebcbcf654','2024-11-08 16:14:05.616','2024-11-08 16:14:05.616','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 16:14:05.616','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T16:14:05.609+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(188,'672e39803c4283abbf5d','2024-11-08 16:17:04.246','2024-11-08 16:17:04.246','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 16:17:04.246','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T16:17:04.236+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-07T20:12:24.037+00:00\"}}'),
(189,'672e973f2c09f6d49a81','2024-11-08 22:57:03.180','2024-11-08 22:57:03.180','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 22:57:03.175','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T22:57:03.168+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-08T22:57:03.139+00:00\"}}'),
(190,'672e983507df74a3b518','2024-11-08 23:01:09.032','2024-11-08 23:01:09.032','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 23:01:09.031','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T23:01:09.023+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-08T22:57:03.139+00:00\"}}'),
(191,'672e98355391501d80b6','2024-11-08 23:01:09.342','2024-11-08 23:01:09.342','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 23:01:09.342','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T23:01:09.333+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-08T22:57:03.139+00:00\"}}'),
(192,'672e9835583fff94010e','2024-11-08 23:01:09.361','2024-11-08 23:01:09.361','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 23:01:09.361','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T23:01:09.353+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-08T22:57:03.139+00:00\"}}'),
(193,'672e9e3db77e2aee8bfa','2024-11-08 23:26:53.751','2024-11-08 23:26:53.751','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-08 23:26:53.751','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-08T23:26:53.743+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-08T22:57:03.139+00:00\"}}'),
(194,'673119a4d87cacdd2c43','2024-11-10 20:37:56.886','2024-11-10 20:37:56.886','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 20:37:56.885','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"673119a49c310fb79900\",\"$createdAt\":\"2024-11-10T20:37:56.876+00:00\",\"$updatedAt\":\"2024-11-10T20:37:56.876+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-10T20:37:56.639+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(195,'67311be257c54dc0ca52','2024-11-10 20:47:30.359','2024-11-10 20:47:30.359','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 20:47:30.358','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-10T20:47:30.345+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(196,'6731241f0f77793a84b3','2024-11-10 21:22:39.063','2024-11-10 21:22:39.063','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 21:22:39.061','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-10T21:22:39.033+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(197,'6731241f11819e3261aa','2024-11-10 21:22:39.071','2024-11-10 21:22:39.071','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 21:22:39.071','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-10T21:22:39.057+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(198,'6731261d6e7d649c23c1','2024-11-10 21:31:09.452','2024-11-10 21:31:09.452','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 21:31:09.452','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-10T21:31:09.445+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(199,'673128ff16987644b87c','2024-11-10 21:43:27.092','2024-11-10 21:43:27.092','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-10 21:43:27.092','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-10T21:43:27.085+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(200,'673247cf28af91be3d6c','2024-11-11 18:07:11.166','2024-11-11 18:07:11.166','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:11.165','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"673247cedfa41b797484\",\"$createdAt\":\"2024-11-11T18:07:11.154+00:00\",\"$updatedAt\":\"2024-11-11T18:07:11.154+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-11T18:07:10.916+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(201,'673247d06177844002dd','2024-11-11 18:07:12.399','2024-11-11 18:07:12.399','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:12.399','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:12.390+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(202,'673247d0e1bc42326fc5','2024-11-11 18:07:12.924','2024-11-11 18:07:12.924','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:12.924','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:12.916+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(203,'673247d0e7ec6f7156ee','2024-11-11 18:07:12.949','2024-11-11 18:07:12.949','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:12.949','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:12.937+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(204,'673247e331bd854bddf2','2024-11-11 18:07:31.203','2024-11-11 18:07:31.203','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:31.203','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:31.195+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(205,'673247e37fc3c8404bf0','2024-11-11 18:07:31.523','2024-11-11 18:07:31.523','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:31.523','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:31.511+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(206,'673247e3859d180a937d','2024-11-11 18:07:31.547','2024-11-11 18:07:31.547','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 18:07:31.547','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T18:07:31.536+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(207,'6732601d47c415360856','2024-11-11 19:50:53.293','2024-11-11 19:50:53.293','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 19:50:53.293','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T19:50:53.285+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(208,'6732601d6f763ba54e56','2024-11-11 19:50:53.456','2024-11-11 19:50:53.456','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 19:50:53.456','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T19:50:53.447+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(209,'6732601d7424b1964561','2024-11-11 19:50:53.475','2024-11-11 19:50:53.475','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 19:50:53.475','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T19:50:53.467+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(210,'6732642a7f944a9c5758','2024-11-11 20:08:10.522','2024-11-11 20:08:10.522','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:08:10.522','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:08:10.512+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(211,'6732646febe2f6da3435','2024-11-11 20:09:19.966','2024-11-11 20:09:19.966','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:19.966','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:19.957+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(212,'673264742b5b74c9dd95','2024-11-11 20:09:24.177','2024-11-11 20:09:24.177','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:24.177','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:24.168+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(213,'6732647504494404a766','2024-11-11 20:09:25.017','2024-11-11 20:09:25.017','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:25.017','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:25.009+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(214,'673264758f7e45fdf419','2024-11-11 20:09:25.587','2024-11-11 20:09:25.587','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:25.587','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:25.578+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(215,'67326475e0a7a3e75460','2024-11-11 20:09:25.920','2024-11-11 20:09:25.920','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:25.920','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:25.911+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(216,'67326476330889baa1e9','2024-11-11 20:09:26.209','2024-11-11 20:09:26.209','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:26.208','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:26.201+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(217,'6732649034af1b007e15','2024-11-11 20:09:52.215','2024-11-11 20:09:52.215','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:52.215','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:52.208+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(218,'67326496ba28ef8f8702','2024-11-11 20:09:58.762','2024-11-11 20:09:58.762','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:09:58.762','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:09:58.754+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(219,'673264996caf9023b31b','2024-11-11 20:10:01.445','2024-11-11 20:10:01.445','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:10:01.444','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:10:01.435+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-10T20:30:10.224+00:00\"}}'),
(220,'67326ae5dbf5e056238c','2024-11-11 20:36:53.900','2024-11-11 20:36:53.900','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:36:53.900','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:36:53.893+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(221,'67326ae77ab6d786d5a3','2024-11-11 20:36:55.502','2024-11-11 20:36:55.502','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:36:55.502','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:36:55.495+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(222,'67326aea821acab8b340','2024-11-11 20:36:58.532','2024-11-11 20:36:58.532','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:36:58.532','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:36:58.525+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(223,'67326aeb573ca7a5d3fd','2024-11-11 20:36:59.357','2024-11-11 20:36:59.357','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:36:59.357','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:36:59.350+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(224,'67326aebb1d17fabb351','2024-11-11 20:36:59.728','2024-11-11 20:36:59.728','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:36:59.727','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:36:59.720+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(225,'67326aec0fa9f30ccbef','2024-11-11 20:37:00.064','2024-11-11 20:37:00.064','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:00.064','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:00.054+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(226,'67326aec8007fa383737','2024-11-11 20:37:00.524','2024-11-11 20:37:00.524','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:00.524','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:00.516+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(227,'67326aed18201748db40','2024-11-11 20:37:01.098','2024-11-11 20:37:01.098','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:01.098','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:01.089+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(228,'67326aeda68884afbceb','2024-11-11 20:37:01.682','2024-11-11 20:37:01.682','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:01.681','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:01.673+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(229,'67326aee4bc199ed22d1','2024-11-11 20:37:02.310','2024-11-11 20:37:02.310','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:02.310','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:02.301+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(230,'67326aeee6f01e862ad9','2024-11-11 20:37:02.945','2024-11-11 20:37:02.945','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:02.945','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:02.936+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(231,'67326aef78150ca2e7b1','2024-11-11 20:37:03.491','2024-11-11 20:37:03.491','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:03.491','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:03.484+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(232,'67326af00bb13b83a800','2024-11-11 20:37:04.047','2024-11-11 20:37:04.047','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:04.047','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:04.041+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(233,'67326af0e3121f787553','2024-11-11 20:37:04.930','2024-11-11 20:37:04.930','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:04.929','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:04.922+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(234,'67326af2141454f51e83','2024-11-11 20:37:06.082','2024-11-11 20:37:06.082','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:06.081','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:06.074+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(235,'67326af2bb2692ea934b','2024-11-11 20:37:06.766','2024-11-11 20:37:06.766','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:06.766','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:06.759+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(236,'67326af36e527476ea9c','2024-11-11 20:37:07.451','2024-11-11 20:37:07.451','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:07.451','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:07.445+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(237,'67326af40278a3435578','2024-11-11 20:37:08.010','2024-11-11 20:37:08.010','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:08.009','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:07.999+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(238,'67326af4de01ff76edd3','2024-11-11 20:37:08.909','2024-11-11 20:37:08.909','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:37:08.909','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:37:08.902+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(239,'67326eb229cbc03f941f','2024-11-11 20:53:06.171','2024-11-11 20:53:06.171','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:53:06.171','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:53:06.164+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(240,'67326ed741b4b0055146','2024-11-11 20:53:43.269','2024-11-11 20:53:43.269','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 20:53:43.268','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T20:53:43.261+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(241,'6732712225fe33d82278','2024-11-11 21:03:30.155','2024-11-11 21:03:30.155','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:03:30.155','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:03:30.146+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(242,'673273ce002c28a94c03','2024-11-11 21:14:54.000','2024-11-11 21:14:54.000','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:14:54.000','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:14:53.992+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(243,'673274a7e6943a1731f8','2024-11-11 21:18:31.944','2024-11-11 21:18:31.944','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:18:31.944','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:18:31.934+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(244,'673275ec92da73b6d7b7','2024-11-11 21:23:56.601','2024-11-11 21:23:56.601','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:23:56.601','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:23:56.592+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(245,'673275f272737a419595','2024-11-11 21:24:02.468','2024-11-11 21:24:02.468','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:24:02.468','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:24:02.461+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(246,'67327724dc3a0eb99b7e','2024-11-11 21:29:08.902','2024-11-11 21:29:08.902','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:29:08.901','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:29:08.893+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(247,'673277ad0968e47ce70b','2024-11-11 21:31:25.038','2024-11-11 21:31:25.038','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:31:25.038','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:31:25.030+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(248,'673277af610097193227','2024-11-11 21:31:27.397','2024-11-11 21:31:27.397','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:31:27.397','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:31:27.387+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(249,'673277afb2c66ea39d10','2024-11-11 21:31:27.732','2024-11-11 21:31:27.732','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:31:27.732','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:31:27.723+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(250,'673278025ede445fb1a2','2024-11-11 21:32:50.388','2024-11-11 21:32:50.388','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:32:50.388','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:32:50.377+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(251,'673278e62dd44d2f0890','2024-11-11 21:36:38.187','2024-11-11 21:36:38.187','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:36:38.187','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:36:38.179+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(252,'67327a14bb9a96fa7918','2024-11-11 21:41:40.768','2024-11-11 21:41:40.768','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:41:40.768','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:41:40.757+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(253,'67327b7c7c8cbd39b8a3','2024-11-11 21:47:40.510','2024-11-11 21:47:40.510','[]','1','session.create','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:47:40.509','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"67327b7c78c0b4d1fca5\",\"$createdAt\":\"2024-11-11T21:47:40.504+00:00\",\"$updatedAt\":\"2024-11-11T21:47:40.504+00:00\",\"userId\":\"672a6e92002f340b79c3\",\"expire\":\"2025-11-11T21:47:40.494+00:00\",\"provider\":\"email\",\"providerUid\":\"leander@lyghtning.nl\",\"providerAccessToken\":\"\",\"providerAccessTokenExpiry\":\"\",\"providerRefreshToken\":\"\",\"ip\":\"192.168.65.1\",\"osCode\":\"MAC\",\"osName\":\"Mac\",\"osVersion\":\"10.15\",\"clientType\":\"browser\",\"clientCode\":\"CH\",\"clientName\":\"Chrome\",\"clientVersion\":\"130.0\",\"clientEngine\":\"Blink\",\"clientEngineVersion\":\"130.0.0.0\",\"deviceName\":\"desktop\",\"deviceBrand\":\"Apple\",\"deviceModel\":\"\",\"countryCode\":\"--\",\"countryName\":\"Unknown\",\"current\":true,\"factors\":[\"password\"],\"secret\":\"\",\"mfaUpdatedAt\":\"\"}}'),
(254,'67327b7df3a90c96f82f','2024-11-11 21:47:41.998','2024-11-11 21:47:41.998','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:47:41.997','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:47:41.989+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(255,'67327b7e485c37ed43fe','2024-11-11 21:47:42.296','2024-11-11 21:47:42.296','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:47:42.296','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:47:42.287+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(256,'67327b7e50b31e0d4747','2024-11-11 21:47:42.330','2024-11-11 21:47:42.330','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:47:42.330','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:47:42.321+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(257,'67327b8bc7bbea3234ad','2024-11-11 21:47:55.818','2024-11-11 21:47:55.818','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:47:55.817','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:47:55.809+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(258,'67327b948263a19a6efd','2024-11-11 21:48:04.534','2024-11-11 21:48:04.534','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:48:04.533','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:48:04.524+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(259,'67327b9b1584d1e9563f','2024-11-11 21:48:11.088','2024-11-11 21:48:11.088','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:48:11.087','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:48:11.076+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(260,'67327c3ebdc0a22c9d2f','2024-11-11 21:50:54.777','2024-11-11 21:50:54.777','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-11 21:50:54.776','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-11T21:50:54.763+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-11T20:36:52.493+00:00\"}}'),
(261,'67350c3248f6af6bfd69','2024-11-13 20:29:38.298','2024-11-13 20:29:38.298','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:29:38.298','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T20:29:38.258+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(262,'67350c3283e437adf4ac','2024-11-13 20:29:38.540','2024-11-13 20:29:38.540','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:29:38.540','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T20:29:38.520+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(263,'67350c328916d970fe69','2024-11-13 20:29:38.561','2024-11-13 20:29:38.561','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:29:38.561','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T20:29:38.547+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(264,'67350c6695a30200c678','2024-11-13 20:30:30.612','2024-11-13 20:30:30.612','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 20:30:30.612','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T20:30:30.602+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(265,'67351edf44b162305a31','2024-11-13 21:49:19.281','2024-11-13 21:49:19.281','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:49:19.281','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T21:49:19.272+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(266,'67351edfefcb11c3916d','2024-11-13 21:49:19.982','2024-11-13 21:49:19.982','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:49:19.981','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T21:49:19.966+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(267,'67351ee001276741c6d7','2024-11-13 21:49:20.004','2024-11-13 21:49:20.004','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:49:20.004','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T21:49:19.993+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(268,'6735213752657bcba93b','2024-11-13 21:59:19.337','2024-11-13 21:59:19.337','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-13 21:59:19.337','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-13T21:59:19.326+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(269,'6735a8934bed81bdf1d7','2024-11-14 07:36:51.310','2024-11-14 07:36:51.310','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-14 07:36:51.310','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-14T07:36:51.302+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(270,'6735a8938d0d936de519','2024-11-14 07:36:51.577','2024-11-14 07:36:51.577','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-14 07:36:51.577','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-14T07:36:51.568+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}'),
(271,'6735a893923f50cd81df','2024-11-14 07:36:51.599','2024-11-14 07:36:51.599','[]','1','user.update','user/672a6e92002f340b79c3','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','','2024-11-14 07:36:51.598','{\"userId\":\"672a6e92002f340b79c3\",\"userName\":\"Leander Matse\",\"userEmail\":\"leander@lyghtning.nl\",\"mode\":\"default\",\"data\":{\"$id\":\"672a6e92002f340b79c3\",\"$createdAt\":\"2024-11-05T19:14:26.868+00:00\",\"$updatedAt\":\"2024-11-14T07:36:51.588+00:00\",\"name\":\"Leander Matse\",\"registration\":\"2024-11-05T19:14:26.868+00:00\",\"status\":true,\"labels\":[],\"passwordUpdate\":\"2024-11-05T19:14:26.868+00:00\",\"email\":\"leander@lyghtning.nl\",\"phone\":\"\",\"emailVerification\":false,\"phoneVerification\":false,\"mfa\":false,\"prefs\":{\"organization\":\"672a6ec20031b6bebffb\"},\"targets\":[{\"$id\":\"672a6e92d64f2b5d2a12\",\"$createdAt\":\"2024-11-05T19:14:26.877+00:00\",\"$updatedAt\":\"2024-11-05T19:14:26.877+00:00\",\"name\":\"\",\"userId\":\"672a6e92002f340b79c3\",\"providerId\":null,\"providerType\":\"email\",\"identifier\":\"leander@lyghtning.nl\"}],\"accessedAt\":\"2024-11-13T20:29:37.200+00:00\"}}');
/*!40000 ALTER TABLE `_console_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_audit_perms`
--

DROP TABLE IF EXISTS `_console_audit_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_audit_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_audit_perms`
--

LOCK TABLES `_console_audit_perms` WRITE;
/*!40000 ALTER TABLE `_console_audit_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_audit_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_authenticators`
--

DROP TABLE IF EXISTS `_console_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_authenticators` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_authenticators`
--

LOCK TABLES `_console_authenticators` WRITE;
/*!40000 ALTER TABLE `_console_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_authenticators_perms`
--

DROP TABLE IF EXISTS `_console_authenticators_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_authenticators_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_authenticators_perms`
--

LOCK TABLES `_console_authenticators_perms` WRITE;
/*!40000 ALTER TABLE `_console_authenticators_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_authenticators_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1`
--

DROP TABLE IF EXISTS `_console_bucket_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `bucketId` varchar(255) DEFAULT NULL,
  `bucketInternalId` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `path` varchar(2048) DEFAULT NULL,
  `signature` varchar(2048) DEFAULT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `sizeOriginal` bigint(20) unsigned DEFAULT NULL,
  `sizeActual` bigint(20) unsigned DEFAULT NULL,
  `algorithm` varchar(255) DEFAULT NULL,
  `comment` varchar(2048) DEFAULT NULL,
  `openSSLVersion` varchar(64) DEFAULT NULL,
  `openSSLCipher` varchar(64) DEFAULT NULL,
  `openSSLTag` varchar(2048) DEFAULT NULL,
  `openSSLIV` varchar(2048) DEFAULT NULL,
  `chunksTotal` int(10) unsigned DEFAULT NULL,
  `chunksUploaded` int(10) unsigned DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_bucket` (`bucketId`),
  KEY `_key_name` (`name`(256)),
  KEY `_key_signature` (`signature`(256)),
  KEY `_key_mimeType` (`mimeType`),
  KEY `_key_sizeOriginal` (`sizeOriginal`),
  KEY `_key_chunksTotal` (`chunksTotal`),
  KEY `_key_chunksUploaded` (`chunksUploaded`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1`
--

LOCK TABLES `_console_bucket_1` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_bucket_1_perms`
--

DROP TABLE IF EXISTS `_console_bucket_1_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_bucket_1_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_bucket_1_perms`
--

LOCK TABLES `_console_bucket_1_perms` WRITE;
/*!40000 ALTER TABLE `_console_bucket_1_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_bucket_1_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets`
--

DROP TABLE IF EXISTS `_console_buckets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `fileSecurity` tinyint(1) DEFAULT NULL,
  `maximumFileSize` bigint(20) unsigned DEFAULT NULL,
  `allowedFileExtensions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`allowedFileExtensions`)),
  `compression` varchar(10) DEFAULT NULL,
  `encryption` tinyint(1) DEFAULT NULL,
  `antivirus` tinyint(1) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_enabled` (`enabled`),
  KEY `_key_name` (`name`),
  KEY `_key_fileSecurity` (`fileSecurity`),
  KEY `_key_maximumFileSize` (`maximumFileSize`),
  KEY `_key_encryption` (`encryption`),
  KEY `_key_antivirus` (`antivirus`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets`
--

LOCK TABLES `_console_buckets` WRITE;
/*!40000 ALTER TABLE `_console_buckets` DISABLE KEYS */;
INSERT INTO `_console_buckets` VALUES
(1,'default','2024-11-05 19:10:30.838','2024-11-05 19:10:30.838','[\"create(\\\"any\\\")\",\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]',1,'Default',1,30000000,'[]','gzip',1,1,'buckets Default');
/*!40000 ALTER TABLE `_console_buckets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_buckets_perms`
--

DROP TABLE IF EXISTS `_console_buckets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_buckets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_buckets_perms`
--

LOCK TABLES `_console_buckets_perms` WRITE;
/*!40000 ALTER TABLE `_console_buckets_perms` DISABLE KEYS */;
INSERT INTO `_console_buckets_perms` VALUES
(1,'create','any','default'),
(4,'delete','any','default'),
(2,'read','any','default'),
(3,'update','any','default');
/*!40000 ALTER TABLE `_console_buckets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache`
--

DROP TABLE IF EXISTS `_console_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resource` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `mimeType` varchar(255) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_key_resource` (`resource`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache`
--

LOCK TABLES `_console_cache` WRITE;
/*!40000 ALTER TABLE `_console_cache` DISABLE KEYS */;
INSERT INTO `_console_cache` VALUES
(1,'5be3e724b347b7d5c08d9863a2a7d6ac','2024-11-05 19:16:32.655','2024-11-05 19:16:32.655','[]','avatar/browser',NULL,'image/png','2024-11-05 19:16:32.655','b50677ef02fefd0ea2d19b979554b34b');
/*!40000 ALTER TABLE `_console_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_cache_perms`
--

DROP TABLE IF EXISTS `_console_cache_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_cache_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_cache_perms`
--

LOCK TABLES `_console_cache_perms` WRITE;
/*!40000 ALTER TABLE `_console_cache_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_cache_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates`
--

DROP TABLE IF EXISTS `_console_certificates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `issueDate` datetime(3) DEFAULT NULL,
  `renewDate` datetime(3) DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  `logs` mediumtext DEFAULT NULL,
  `updated` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_domain` (`domain`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates`
--

LOCK TABLES `_console_certificates` WRITE;
/*!40000 ALTER TABLE `_console_certificates` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_certificates_perms`
--

DROP TABLE IF EXISTS `_console_certificates_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_certificates_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_certificates_perms`
--

LOCK TABLES `_console_certificates_perms` WRITE;
/*!40000 ALTER TABLE `_console_certificates_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_certificates_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_challenges`
--

DROP TABLE IF EXISTS `_console_challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_challenges` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `token` varchar(512) DEFAULT NULL,
  `code` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_challenges`
--

LOCK TABLES `_console_challenges` WRITE;
/*!40000 ALTER TABLE `_console_challenges` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_challenges_perms`
--

DROP TABLE IF EXISTS `_console_challenges_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_challenges_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_challenges_perms`
--

LOCK TABLES `_console_challenges_perms` WRITE;
/*!40000 ALTER TABLE `_console_challenges_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_challenges_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_identities`
--

DROP TABLE IF EXISTS `_console_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_identities` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerEmail` varchar(320) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secrets` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_userInternalId_provider_providerUid` (`userInternalId`(11),`provider`,`providerUid`(128)),
  UNIQUE KEY `_key_provider_providerUid` (`provider`,`providerUid`(128)),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_provider` (`provider`),
  KEY `_key_providerUid` (`providerUid`(255)),
  KEY `_key_providerEmail` (`providerEmail`(255)),
  KEY `_key_providerAccessTokenExpiry` (`providerAccessTokenExpiry`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_identities`
--

LOCK TABLES `_console_identities` WRITE;
/*!40000 ALTER TABLE `_console_identities` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_identities_perms`
--

DROP TABLE IF EXISTS `_console_identities_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_identities_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_identities_perms`
--

LOCK TABLES `_console_identities_perms` WRITE;
/*!40000 ALTER TABLE `_console_identities_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_identities_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_installations`
--

DROP TABLE IF EXISTS `_console_installations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_installations` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `providerInstallationId` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `personal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_projectInternalId` (`projectInternalId`),
  KEY `_key_projectId` (`projectId`),
  KEY `_key_providerInstallationId` (`providerInstallationId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_installations`
--

LOCK TABLES `_console_installations` WRITE;
/*!40000 ALTER TABLE `_console_installations` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_installations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_installations_perms`
--

DROP TABLE IF EXISTS `_console_installations_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_installations_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_installations_perms`
--

LOCK TABLES `_console_installations_perms` WRITE;
/*!40000 ALTER TABLE `_console_installations_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_installations_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys`
--

DROP TABLE IF EXISTS `_console_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`scopes`)),
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `sdks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`sdks`)),
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys`
--

LOCK TABLES `_console_keys` WRITE;
/*!40000 ALTER TABLE `_console_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_keys_perms`
--

DROP TABLE IF EXISTS `_console_keys_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_keys_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_keys_perms`
--

LOCK TABLES `_console_keys_perms` WRITE;
/*!40000 ALTER TABLE `_console_keys_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_keys_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships`
--

DROP TABLE IF EXISTS `_console_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`roles`)),
  `invited` datetime(3) DEFAULT NULL,
  `joined` datetime(3) DEFAULT NULL,
  `confirm` tinyint(1) DEFAULT NULL,
  `secret` varchar(256) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_unique` (`teamInternalId`,`userInternalId`),
  KEY `_key_user` (`userInternalId`),
  KEY `_key_team` (`teamInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_teamId` (`teamId`),
  KEY `_key_invited` (`invited`),
  KEY `_key_joined` (`joined`),
  KEY `_key_confirm` (`confirm`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships`
--

LOCK TABLES `_console_memberships` WRITE;
/*!40000 ALTER TABLE `_console_memberships` DISABLE KEYS */;
INSERT INTO `_console_memberships` VALUES
(1,'672a6ec2c5ce0da63d24','2024-11-05 19:15:14.810','2024-11-05 19:15:14.810','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"read(\\\"team:672a6ec20031b6bebffb\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\"]','1','672a6e92002f340b79c3','1','672a6ec20031b6bebffb','[\"owner\"]','2024-11-05 19:15:14.810','2024-11-05 19:15:14.810',1,'{\"data\":\"\",\"method\":\"aes-128-gcm\",\"iv\":\"90ef817f0011c1b038e0338e\",\"tag\":\"58d407f45cb74c9c7fabccabce39555f\",\"version\":\"1\"}','672a6ec2c5ce0da63d24 672a6e92002f340b79c3');
/*!40000 ALTER TABLE `_console_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_memberships_perms`
--

DROP TABLE IF EXISTS `_console_memberships_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_memberships_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_memberships_perms`
--

LOCK TABLES `_console_memberships_perms` WRITE;
/*!40000 ALTER TABLE `_console_memberships_perms` DISABLE KEYS */;
INSERT INTO `_console_memberships_perms` VALUES
(6,'delete','team:672a6ec20031b6bebffb/owner','672a6ec2c5ce0da63d24'),
(5,'delete','user:672a6e92002f340b79c3','672a6ec2c5ce0da63d24'),
(2,'read','team:672a6ec20031b6bebffb','672a6ec2c5ce0da63d24'),
(1,'read','user:672a6e92002f340b79c3','672a6ec2c5ce0da63d24'),
(4,'update','team:672a6ec20031b6bebffb/owner','672a6ec2c5ce0da63d24'),
(3,'update','user:672a6e92002f340b79c3','672a6ec2c5ce0da63d24');
/*!40000 ALTER TABLE `_console_memberships_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_messages`
--

DROP TABLE IF EXISTS `_console_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_messages` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `providerType` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `topics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`topics`)),
  `users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`users`)),
  `targets` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`targets`)),
  `scheduledAt` datetime(3) DEFAULT NULL,
  `scheduleInternalId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `deliveredAt` datetime(3) DEFAULT NULL,
  `deliveryErrors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`deliveryErrors`)),
  `deliveredTotal` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_messages`
--

LOCK TABLES `_console_messages` WRITE;
/*!40000 ALTER TABLE `_console_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_messages_perms`
--

DROP TABLE IF EXISTS `_console_messages_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_messages_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_messages_perms`
--

LOCK TABLES `_console_messages_perms` WRITE;
/*!40000 ALTER TABLE `_console_messages_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_messages_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms`
--

DROP TABLE IF EXISTS `_console_platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store` varchar(256) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms`
--

LOCK TABLES `_console_platforms` WRITE;
/*!40000 ALTER TABLE `_console_platforms` DISABLE KEYS */;
INSERT INTO `_console_platforms` VALUES
(12,'672e29413fc6844df1e2','2024-11-08 15:07:45.263','2024-11-08 15:07:45.263','[\"read(\\\"any\\\")\",\"update(\\\"any\\\")\",\"delete(\\\"any\\\")\"]','1','672a75920004dd1982c6','web','Ionic client','','','*');
/*!40000 ALTER TABLE `_console_platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_platforms_perms`
--

DROP TABLE IF EXISTS `_console_platforms_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_platforms_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_platforms_perms`
--

LOCK TABLES `_console_platforms_perms` WRITE;
/*!40000 ALTER TABLE `_console_platforms_perms` DISABLE KEYS */;
INSERT INTO `_console_platforms_perms` VALUES
(36,'delete','any','672e29413fc6844df1e2'),
(34,'read','any','672e29413fc6844df1e2'),
(35,'update','any','672e29413fc6844df1e2');
/*!40000 ALTER TABLE `_console_platforms_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects`
--

DROP TABLE IF EXISTS `_console_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `teamInternalId` varchar(255) DEFAULT NULL,
  `teamId` varchar(255) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `region` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `database` varchar(256) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `version` varchar(16) DEFAULT NULL,
  `legalName` varchar(256) DEFAULT NULL,
  `legalCountry` varchar(256) DEFAULT NULL,
  `legalState` varchar(256) DEFAULT NULL,
  `legalCity` varchar(256) DEFAULT NULL,
  `legalAddress` varchar(256) DEFAULT NULL,
  `legalTaxId` varchar(256) DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `apis` text DEFAULT NULL,
  `smtp` text DEFAULT NULL,
  `templates` mediumtext DEFAULT NULL,
  `auths` text DEFAULT NULL,
  `oAuthProviders` text DEFAULT NULL,
  `platforms` text DEFAULT NULL,
  `webhooks` text DEFAULT NULL,
  `keys` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_team` (`teamId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects`
--

LOCK TABLES `_console_projects` WRITE;
/*!40000 ALTER TABLE `_console_projects` DISABLE KEYS */;
INSERT INTO `_console_projects` VALUES
(1,'672a75920004dd1982c6','2024-11-05 19:44:18.085','2024-11-13 20:29:38.584','[\"read(\\\"team:672a6ec20031b6bebffb\\\")\",\"update(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\",\"update(\\\"team:672a6ec20031b6bebffb\\/developer\\\")\",\"delete(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\",\"delete(\\\"team:672a6ec20031b6bebffb\\/developer\\\")\"]','1','672a6ec20031b6bebffb','PubQuiz 2.0','default','','database_db_main','','','1.6.0','','','','','','','2024-11-13 20:29:38.584','[]','[]','{\"data\":\"T88=\",\"method\":\"aes-128-gcm\",\"iv\":\"ccdf0d766b03b671b405cbc8\",\"tag\":\"9291cef4302b251874fa02a0676f218a\",\"version\":\"1\"}','[]','{\"limit\":0,\"maxSessions\":10,\"passwordHistory\":0,\"passwordDictionary\":false,\"duration\":31536000,\"personalDataCheck\":false,\"mockNumbers\":[],\"sessionAlerts\":false,\"emailPassword\":true,\"usersAuthMagicURL\":true,\"emailOtp\":true,\"anonymous\":true,\"invites\":true,\"JWT\":true,\"phone\":true}','{\"data\":\"gxA=\",\"method\":\"aes-128-gcm\",\"iv\":\"5d43de36a041c641843612d7\",\"tag\":\"9010f9671d5e90cc0ccebffb82c53315\",\"version\":\"1\"}',NULL,NULL,NULL,'672a75920004dd1982c6 PubQuiz 2.0');
/*!40000 ALTER TABLE `_console_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_projects_perms`
--

DROP TABLE IF EXISTS `_console_projects_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_projects_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_projects_perms`
--

LOCK TABLES `_console_projects_perms` WRITE;
/*!40000 ALTER TABLE `_console_projects_perms` DISABLE KEYS */;
INSERT INTO `_console_projects_perms` VALUES
(5,'delete','team:672a6ec20031b6bebffb/developer','672a75920004dd1982c6'),
(4,'delete','team:672a6ec20031b6bebffb/owner','672a75920004dd1982c6'),
(1,'read','team:672a6ec20031b6bebffb','672a75920004dd1982c6'),
(3,'update','team:672a6ec20031b6bebffb/developer','672a75920004dd1982c6'),
(2,'update','team:672a6ec20031b6bebffb/owner','672a75920004dd1982c6');
/*!40000 ALTER TABLE `_console_projects_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_providers`
--

DROP TABLE IF EXISTS `_console_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_providers` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `type` varchar(128) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `credentials` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider` (`provider`),
  KEY `_key_type` (`type`),
  KEY `_key_enabled_type` (`enabled`,`type`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_providers`
--

LOCK TABLES `_console_providers` WRITE;
/*!40000 ALTER TABLE `_console_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_providers_perms`
--

DROP TABLE IF EXISTS `_console_providers_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_providers_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_providers_perms`
--

LOCK TABLES `_console_providers_perms` WRITE;
/*!40000 ALTER TABLE `_console_providers_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_providers_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime`
--

DROP TABLE IF EXISTS `_console_realtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `container` varchar(255) DEFAULT NULL,
  `timestamp` datetime(3) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_timestamp` (`timestamp` DESC),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime`
--

LOCK TABLES `_console_realtime` WRITE;
/*!40000 ALTER TABLE `_console_realtime` DISABLE KEYS */;
INSERT INTO `_console_realtime` VALUES
(15,'67350c31098199425330','2024-11-13 20:29:37.042','2024-11-14 07:39:16.389','[]','67350c2c03c7b','2024-11-14 07:39:16.387','{\"672a75920004dd1982c6\":0,\"console\":1}');
/*!40000 ALTER TABLE `_console_realtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_realtime_perms`
--

DROP TABLE IF EXISTS `_console_realtime_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_realtime_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_realtime_perms`
--

LOCK TABLES `_console_realtime_perms` WRITE;
/*!40000 ALTER TABLE `_console_realtime_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_realtime_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_repositories`
--

DROP TABLE IF EXISTS `_console_repositories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_repositories` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `installationId` varchar(255) DEFAULT NULL,
  `installationInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `providerRepositoryId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceInternalId` varchar(255) DEFAULT NULL,
  `resourceType` varchar(255) DEFAULT NULL,
  `providerPullRequestIds` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`providerPullRequestIds`)),
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_installationId` (`installationId`),
  KEY `_key_installationInternalId` (`installationInternalId`),
  KEY `_key_projectInternalId` (`projectInternalId`),
  KEY `_key_projectId` (`projectId`),
  KEY `_key_providerRepositoryId` (`providerRepositoryId`),
  KEY `_key_resourceId` (`resourceId`),
  KEY `_key_resourceInternalId` (`resourceInternalId`),
  KEY `_key_resourceType` (`resourceType`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_repositories`
--

LOCK TABLES `_console_repositories` WRITE;
/*!40000 ALTER TABLE `_console_repositories` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_repositories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_repositories_perms`
--

DROP TABLE IF EXISTS `_console_repositories_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_repositories_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_repositories_perms`
--

LOCK TABLES `_console_repositories_perms` WRITE;
/*!40000 ALTER TABLE `_console_repositories_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_repositories_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_rules`
--

DROP TABLE IF EXISTS `_console_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_rules` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `resourceType` varchar(100) DEFAULT NULL,
  `resourceInternalId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `certificateId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_domain` (`domain`),
  KEY `_key_projectInternalId` (`projectInternalId`),
  KEY `_key_projectId` (`projectId`),
  KEY `_key_resourceInternalId` (`resourceInternalId`),
  KEY `_key_resourceId` (`resourceId`),
  KEY `_key_resourceType` (`resourceType`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_rules`
--

LOCK TABLES `_console_rules` WRITE;
/*!40000 ALTER TABLE `_console_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_rules_perms`
--

DROP TABLE IF EXISTS `_console_rules_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_rules_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_rules_perms`
--

LOCK TABLES `_console_rules_perms` WRITE;
/*!40000 ALTER TABLE `_console_rules_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_rules_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_schedules`
--

DROP TABLE IF EXISTS `_console_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_schedules` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `resourceType` varchar(100) DEFAULT NULL,
  `resourceInternalId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(255) DEFAULT NULL,
  `resourceUpdatedAt` datetime(3) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `schedule` varchar(100) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_region_resourceType_resourceUpdatedAt` (`region`,`resourceType`,`resourceUpdatedAt`),
  KEY `_key_region_resourceType_projectId_resourceId` (`region`,`resourceType`,`projectId`,`resourceId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_schedules`
--

LOCK TABLES `_console_schedules` WRITE;
/*!40000 ALTER TABLE `_console_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_schedules_perms`
--

DROP TABLE IF EXISTS `_console_schedules_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_schedules_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_schedules_perms`
--

LOCK TABLES `_console_schedules_perms` WRITE;
/*!40000 ALTER TABLE `_console_schedules_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_schedules_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions`
--

DROP TABLE IF EXISTS `_console_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `provider` varchar(128) DEFAULT NULL,
  `providerUid` varchar(2048) DEFAULT NULL,
  `providerAccessToken` text DEFAULT NULL,
  `providerAccessTokenExpiry` datetime(3) DEFAULT NULL,
  `providerRefreshToken` text DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `countryCode` varchar(2) DEFAULT NULL,
  `osCode` varchar(256) DEFAULT NULL,
  `osName` varchar(256) DEFAULT NULL,
  `osVersion` varchar(256) DEFAULT NULL,
  `clientType` varchar(256) DEFAULT NULL,
  `clientCode` varchar(256) DEFAULT NULL,
  `clientName` varchar(256) DEFAULT NULL,
  `clientVersion` varchar(256) DEFAULT NULL,
  `clientEngine` varchar(256) DEFAULT NULL,
  `clientEngineVersion` varchar(256) DEFAULT NULL,
  `deviceName` varchar(256) DEFAULT NULL,
  `deviceBrand` varchar(256) DEFAULT NULL,
  `deviceModel` varchar(256) DEFAULT NULL,
  `factors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`factors`)),
  `expire` datetime(3) DEFAULT NULL,
  `mfaUpdatedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_provider_providerUid` (`provider`,`providerUid`(128)),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions`
--

LOCK TABLES `_console_sessions` WRITE;
/*!40000 ALTER TABLE `_console_sessions` DISABLE KEYS */;
INSERT INTO `_console_sessions` VALUES
(1,'672a6e92e9e3b2db8933','2024-11-05 19:14:27.214','2024-11-05 19:14:27.214','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"e16hNs1g\\/Ps3RICIZ8Q5LipEkodtdYxTnnUqZ8cQ\\/vcqpSzDWdzn6dKC9dLi6ve\\/inKPBX1yQElHaO5iS\\/ggTQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"5a9a9294854aad22b1fb0a88\",\"tag\":\"a8bca937b6e3b85a5e0d8185ac93c65a\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-05 19:14:26.958',NULL),
(2,'672a6ee21dae6f383bee','2024-11-05 19:15:46.379','2024-11-05 19:15:46.379','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"xp4gJBLiiu4NBPEdpeEutHiuIIvycDzcah06vD289nzpDWaGYDf8RWW0MJu5MJU38bDFasLzAiGGvLnKT7NAxQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"f4749f7b4dc0e2701bbb650a\",\"tag\":\"b926963ad3a8915863cfff47918d63d1\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-05 19:15:46.121',NULL),
(3,'672e070c93c89f531aa9','2024-11-08 12:41:48.844','2024-11-08 12:41:48.844','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"ViCh7t1a3+R0b3nLp8WgRZVvBJ5\\/hp7xiorPj8MlyphWEy1WK3kqqmuznPHI0EtZTMqJyqJ4h1TW4AD+nSE5HA==\",\"method\":\"aes-128-gcm\",\"iv\":\"887e9fe5a3b587ce1d9e0c29\",\"tag\":\"4d2dc4bfec50f4d96987cd6620c17d6c\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-08 12:41:48.605',NULL),
(4,'673119a49c310fb79900','2024-11-10 20:37:56.876','2024-11-10 20:37:56.876','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"YtaqUmmMDZxwEekfwxxuTAg\\/GTwelYeGr4hw7gnXy9MHCXUimGOiZy6d2S\\/lYCW\\/rXXk6SNMh90XzoNAjlNDcQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"b862869e8f94106483c64ba9\",\"tag\":\"2accfa1cf0704896e80f9ecabc937d43\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-10 20:37:56.639',NULL),
(5,'673247cedfa41b797484','2024-11-11 18:07:11.154','2024-11-11 18:07:11.154','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"ZHhYQ\\/c2K6RbkH3nnRTjHQI4ENmRxRAR9cIjyUEXpsS48TGtlyNdZ1PuIVJtPvZ93vbzvSX4N2ftt\\/1zsgZ4LQ==\",\"method\":\"aes-128-gcm\",\"iv\":\"65298cb30913bb19dfa0382b\",\"tag\":\"b47b0b7e3235c8b03c868359db234ca9\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-11 18:07:10.916',NULL),
(6,'67327b7c78c0b4d1fca5','2024-11-11 21:47:40.504','2024-11-11 21:47:40.504','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','1','672a6e92002f340b79c3','email','leander@lyghtning.nl',NULL,NULL,NULL,'{\"data\":\"6nMWoEq7pSnsIwv27JnEcJ2IjD9IS1nGa\\/fbl7888RAXg8n3om04gH7+8DdMSXN5G9GXz\\/9plyqlPqUaHGu04Q==\",\"method\":\"aes-128-gcm\",\"iv\":\"0b2cf83c70ed76f0266e507a\",\"tag\":\"bef129e9136939868279b03bbda08a6d\",\"version\":\"1\"}','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36','192.168.65.1','--','MAC','Mac','10.15','browser','CH','Chrome','130.0','Blink','130.0.0.0','desktop','Apple',NULL,'[\"password\"]','2025-11-11 21:47:40.494',NULL);
/*!40000 ALTER TABLE `_console_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_sessions_perms`
--

DROP TABLE IF EXISTS `_console_sessions_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_sessions_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_sessions_perms`
--

LOCK TABLES `_console_sessions_perms` WRITE;
/*!40000 ALTER TABLE `_console_sessions_perms` DISABLE KEYS */;
INSERT INTO `_console_sessions_perms` VALUES
(3,'delete','user:672a6e92002f340b79c3','672a6e92e9e3b2db8933'),
(1,'read','user:672a6e92002f340b79c3','672a6e92e9e3b2db8933'),
(2,'update','user:672a6e92002f340b79c3','672a6e92e9e3b2db8933'),
(6,'delete','user:672a6e92002f340b79c3','672a6ee21dae6f383bee'),
(4,'read','user:672a6e92002f340b79c3','672a6ee21dae6f383bee'),
(5,'update','user:672a6e92002f340b79c3','672a6ee21dae6f383bee'),
(9,'delete','user:672a6e92002f340b79c3','672e070c93c89f531aa9'),
(7,'read','user:672a6e92002f340b79c3','672e070c93c89f531aa9'),
(8,'update','user:672a6e92002f340b79c3','672e070c93c89f531aa9'),
(12,'delete','user:672a6e92002f340b79c3','673119a49c310fb79900'),
(10,'read','user:672a6e92002f340b79c3','673119a49c310fb79900'),
(11,'update','user:672a6e92002f340b79c3','673119a49c310fb79900'),
(15,'delete','user:672a6e92002f340b79c3','673247cedfa41b797484'),
(13,'read','user:672a6e92002f340b79c3','673247cedfa41b797484'),
(14,'update','user:672a6e92002f340b79c3','673247cedfa41b797484'),
(18,'delete','user:672a6e92002f340b79c3','67327b7c78c0b4d1fca5'),
(16,'read','user:672a6e92002f340b79c3','67327b7c78c0b4d1fca5'),
(17,'update','user:672a6e92002f340b79c3','67327b7c78c0b4d1fca5');
/*!40000 ALTER TABLE `_console_sessions_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats`
--

DROP TABLE IF EXISTS `_console_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  `time` datetime(3) DEFAULT NULL,
  `period` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_metric_period_time` (`metric` DESC,`period`,`time`),
  KEY `_key_time` (`time` DESC),
  KEY `_key_period_time` (`period`,`time`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats`
--

LOCK TABLES `_console_stats` WRITE;
/*!40000 ALTER TABLE `_console_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_stats_perms`
--

DROP TABLE IF EXISTS `_console_stats_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_stats_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_stats_perms`
--

LOCK TABLES `_console_stats_perms` WRITE;
/*!40000 ALTER TABLE `_console_stats_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_stats_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_subscribers`
--

DROP TABLE IF EXISTS `_console_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_subscribers` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `targetId` varchar(255) DEFAULT NULL,
  `targetInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `topicId` varchar(255) DEFAULT NULL,
  `topicInternalId` varchar(255) DEFAULT NULL,
  `providerType` varchar(128) DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_unique_target_topic` (`targetInternalId`,`topicInternalId`),
  KEY `_key_targetId` (`targetId`),
  KEY `_key_targetInternalId` (`targetInternalId`),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_topicId` (`topicId`),
  KEY `_key_topicInternalId` (`topicInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_fulltext_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_subscribers`
--

LOCK TABLES `_console_subscribers` WRITE;
/*!40000 ALTER TABLE `_console_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_subscribers_perms`
--

DROP TABLE IF EXISTS `_console_subscribers_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_subscribers_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_subscribers_perms`
--

LOCK TABLES `_console_subscribers_perms` WRITE;
/*!40000 ALTER TABLE `_console_subscribers_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_subscribers_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_targets`
--

DROP TABLE IF EXISTS `_console_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_targets` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `sessionInternalId` varchar(255) DEFAULT NULL,
  `providerType` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `providerInternalId` varchar(255) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `expired` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_identifier` (`identifier`),
  KEY `_key_userId` (`userId`),
  KEY `_key_userInternalId` (`userInternalId`),
  KEY `_key_providerId` (`providerId`),
  KEY `_key_providerInternalId` (`providerInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_targets`
--

LOCK TABLES `_console_targets` WRITE;
/*!40000 ALTER TABLE `_console_targets` DISABLE KEYS */;
INSERT INTO `_console_targets` VALUES
(1,'672a6e92d64f2b5d2a12','2024-11-05 19:14:26.877','2024-11-05 19:14:26.877','[\"read(\\\"user:672a6e92002f340b79c3\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','672a6e92002f340b79c3','1',NULL,NULL,'email',NULL,NULL,'leander@lyghtning.nl',NULL,0);
/*!40000 ALTER TABLE `_console_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_targets_perms`
--

DROP TABLE IF EXISTS `_console_targets_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_targets_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_targets_perms`
--

LOCK TABLES `_console_targets_perms` WRITE;
/*!40000 ALTER TABLE `_console_targets_perms` DISABLE KEYS */;
INSERT INTO `_console_targets_perms` VALUES
(3,'delete','user:672a6e92002f340b79c3','672a6e92d64f2b5d2a12'),
(1,'read','user:672a6e92002f340b79c3','672a6e92d64f2b5d2a12'),
(2,'update','user:672a6e92002f340b79c3','672a6e92d64f2b5d2a12');
/*!40000 ALTER TABLE `_console_targets_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams`
--

DROP TABLE IF EXISTS `_console_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `search` text DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_name` (`name`),
  KEY `_key_total` (`total`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams`
--

LOCK TABLES `_console_teams` WRITE;
/*!40000 ALTER TABLE `_console_teams` DISABLE KEYS */;
INSERT INTO `_console_teams` VALUES
(1,'672a6ec20031b6bebffb','2024-11-05 19:15:14.805','2024-11-05 19:15:14.805','[\"read(\\\"team:672a6ec20031b6bebffb\\\")\",\"update(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\",\"delete(\\\"team:672a6ec20031b6bebffb\\/owner\\\")\"]','Lyghtning',1,'672a6ec20031b6bebffb Lyghtning','{}');
/*!40000 ALTER TABLE `_console_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_teams_perms`
--

DROP TABLE IF EXISTS `_console_teams_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_teams_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_teams_perms`
--

LOCK TABLES `_console_teams_perms` WRITE;
/*!40000 ALTER TABLE `_console_teams_perms` DISABLE KEYS */;
INSERT INTO `_console_teams_perms` VALUES
(3,'delete','team:672a6ec20031b6bebffb/owner','672a6ec20031b6bebffb'),
(1,'read','team:672a6ec20031b6bebffb','672a6ec20031b6bebffb'),
(2,'update','team:672a6ec20031b6bebffb/owner','672a6ec20031b6bebffb');
/*!40000 ALTER TABLE `_console_teams_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens`
--

DROP TABLE IF EXISTS `_console_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `userInternalId` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `secret` varchar(512) DEFAULT NULL,
  `expire` datetime(3) DEFAULT NULL,
  `userAgent` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_user` (`userInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens`
--

LOCK TABLES `_console_tokens` WRITE;
/*!40000 ALTER TABLE `_console_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_tokens_perms`
--

DROP TABLE IF EXISTS `_console_tokens_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_tokens_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_tokens_perms`
--

LOCK TABLES `_console_tokens_perms` WRITE;
/*!40000 ALTER TABLE `_console_tokens_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_tokens_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_topics`
--

DROP TABLE IF EXISTS `_console_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_topics` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `subscribe` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`subscribe`)),
  `emailTotal` int(11) DEFAULT NULL,
  `smsTotal` int(11) DEFAULT NULL,
  `pushTotal` int(11) DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_name` (`name`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_topics`
--

LOCK TABLES `_console_topics` WRITE;
/*!40000 ALTER TABLE `_console_topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_topics_perms`
--

DROP TABLE IF EXISTS `_console_topics_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_topics_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_topics_perms`
--

LOCK TABLES `_console_topics_perms` WRITE;
/*!40000 ALTER TABLE `_console_topics_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_topics_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users`
--

DROP TABLE IF EXISTS `_console_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `labels` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`labels`)),
  `passwordHistory` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`passwordHistory`)),
  `password` text DEFAULT NULL,
  `hash` varchar(256) DEFAULT NULL,
  `hashOptions` text DEFAULT NULL,
  `passwordUpdate` datetime(3) DEFAULT NULL,
  `prefs` text DEFAULT NULL,
  `registration` datetime(3) DEFAULT NULL,
  `emailVerification` tinyint(1) DEFAULT NULL,
  `phoneVerification` tinyint(1) DEFAULT NULL,
  `reset` tinyint(1) DEFAULT NULL,
  `mfa` tinyint(1) DEFAULT NULL,
  `mfaRecoveryCodes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mfaRecoveryCodes`)),
  `authenticators` text DEFAULT NULL,
  `sessions` text DEFAULT NULL,
  `tokens` text DEFAULT NULL,
  `challenges` text DEFAULT NULL,
  `memberships` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `search` text DEFAULT NULL,
  `accessedAt` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  UNIQUE KEY `_key_phone` (`phone`),
  UNIQUE KEY `_key_email` (`email`(256)),
  KEY `_key_name` (`name`),
  KEY `_key_status` (`status`),
  KEY `_key_passwordUpdate` (`passwordUpdate`),
  KEY `_key_registration` (`registration`),
  KEY `_key_emailVerification` (`emailVerification`),
  KEY `_key_phoneVerification` (`phoneVerification`),
  KEY `_key_accessedAt` (`accessedAt`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`),
  FULLTEXT KEY `_key_search` (`search`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users`
--

LOCK TABLES `_console_users` WRITE;
/*!40000 ALTER TABLE `_console_users` DISABLE KEYS */;
INSERT INTO `_console_users` VALUES
(1,'672a6e92002f340b79c3','2024-11-05 19:14:26.868','2024-11-14 07:36:51.588','[\"read(\\\"any\\\")\",\"update(\\\"user:672a6e92002f340b79c3\\\")\",\"delete(\\\"user:672a6e92002f340b79c3\\\")\"]','Leander Matse','leander@lyghtning.nl',NULL,1,'[]','[]','{\"data\":\"G49rcrBzv0fD1RuJs3SjjH4s2azg6OWjCVybBQUQkQYGEm03Q388y2KhKlLxcyDD6xynX599GNbwz9718DK2FBobcy+aUVrWBKygLjSP9onIk9BMOLyRa4tYznPIJdXHLA==\",\"method\":\"aes-128-gcm\",\"iv\":\"324b6aed65818b8581d3fcca\",\"tag\":\"ddfc14a4a1ba77d0a8ea3f10e18d1946\",\"version\":\"1\"}','argon2','{\"type\":\"argon2\",\"memoryCost\":2048,\"timeCost\":4,\"threads\":3}','2024-11-05 19:14:26.868','{\"organization\":\"672a6ec20031b6bebffb\"}','2024-11-05 19:14:26.868',0,NULL,0,0,'[]',NULL,NULL,NULL,NULL,NULL,NULL,'672a6e92002f340b79c3 leander@lyghtning.nl Leander Matse','2024-11-13 20:29:37.200');
/*!40000 ALTER TABLE `_console_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_users_perms`
--

DROP TABLE IF EXISTS `_console_users_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_users_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_users_perms`
--

LOCK TABLES `_console_users_perms` WRITE;
/*!40000 ALTER TABLE `_console_users_perms` DISABLE KEYS */;
INSERT INTO `_console_users_perms` VALUES
(3,'delete','user:672a6e92002f340b79c3','672a6e92002f340b79c3'),
(1,'read','any','672a6e92002f340b79c3'),
(2,'update','user:672a6e92002f340b79c3','672a6e92002f340b79c3');
/*!40000 ALTER TABLE `_console_users_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_vcsCommentLocks`
--

DROP TABLE IF EXISTS `_console_vcsCommentLocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_vcsCommentLocks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_vcsCommentLocks`
--

LOCK TABLES `_console_vcsCommentLocks` WRITE;
/*!40000 ALTER TABLE `_console_vcsCommentLocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_vcsCommentLocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_vcsCommentLocks_perms`
--

DROP TABLE IF EXISTS `_console_vcsCommentLocks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_vcsCommentLocks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_vcsCommentLocks_perms`
--

LOCK TABLES `_console_vcsCommentLocks_perms` WRITE;
/*!40000 ALTER TABLE `_console_vcsCommentLocks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_vcsCommentLocks_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_vcsComments`
--

DROP TABLE IF EXISTS `_console_vcsComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_vcsComments` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `installationId` varchar(255) DEFAULT NULL,
  `installationInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `providerRepositoryId` varchar(255) DEFAULT NULL,
  `providerCommentId` varchar(255) DEFAULT NULL,
  `providerPullRequestId` varchar(255) DEFAULT NULL,
  `providerBranch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_installationId` (`installationId`),
  KEY `_key_installationInternalId` (`installationInternalId`),
  KEY `_key_projectInternalId` (`projectInternalId`),
  KEY `_key_projectId` (`projectId`),
  KEY `_key_providerRepositoryId` (`providerRepositoryId`),
  KEY `_key_providerPullRequestId` (`providerPullRequestId`),
  KEY `_key_providerBranch` (`providerBranch`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_vcsComments`
--

LOCK TABLES `_console_vcsComments` WRITE;
/*!40000 ALTER TABLE `_console_vcsComments` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_vcsComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_vcsComments_perms`
--

DROP TABLE IF EXISTS `_console_vcsComments_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_vcsComments_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_vcsComments_perms`
--

LOCK TABLES `_console_vcsComments_perms` WRITE;
/*!40000 ALTER TABLE `_console_vcsComments_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_vcsComments_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks`
--

DROP TABLE IF EXISTS `_console_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_uid` varchar(255) NOT NULL,
  `_createdAt` datetime(3) DEFAULT NULL,
  `_updatedAt` datetime(3) DEFAULT NULL,
  `_permissions` mediumtext DEFAULT NULL,
  `projectInternalId` varchar(255) DEFAULT NULL,
  `projectId` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `httpUser` varchar(255) DEFAULT NULL,
  `httpPass` varchar(255) DEFAULT NULL,
  `security` tinyint(1) DEFAULT NULL,
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `signatureKey` varchar(2048) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `logs` mediumtext DEFAULT NULL,
  `attempts` int(11) DEFAULT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_uid` (`_uid`),
  KEY `_key_project` (`projectInternalId`),
  KEY `_created_at` (`_createdAt`),
  KEY `_updated_at` (`_updatedAt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks`
--

LOCK TABLES `_console_webhooks` WRITE;
/*!40000 ALTER TABLE `_console_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_console_webhooks_perms`
--

DROP TABLE IF EXISTS `_console_webhooks_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_console_webhooks_perms` (
  `_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `_type` varchar(12) NOT NULL,
  `_permission` varchar(255) NOT NULL,
  `_document` varchar(255) NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_index1` (`_document`,`_type`,`_permission`),
  KEY `_permission` (`_permission`,`_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_console_webhooks_perms`
--

LOCK TABLES `_console_webhooks_perms` WRITE;
/*!40000 ALTER TABLE `_console_webhooks_perms` DISABLE KEYS */;
/*!40000 ALTER TABLE `_console_webhooks_perms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-14  7:39:18
