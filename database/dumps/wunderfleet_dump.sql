-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: wunderfleet_db
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IBAN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `payment_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_telephone_unique` (`telephone`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'liman','Labaran','262836997','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsd','233','Berlin','Liman Adamu Labaran','dsds','SUCCESS','3b27ffac41cfdc3fdacb351b2abfae90f6ebb83534ce8b0719834d05fef6f05388ecb70a5ea0b0552efcedc09057ef81','2018-10-14 19:35:16','2018-10-14 19:35:21'),(2,'Dr. Floyd Mann MD','Deondre Jacobson','1-780-688-1782 x644','Kristin Manors','46876 Altenwerth Junctions','Fugit.','Gerhardbury','Dr. Grover Padberg II','DE41333253098098662951','PENDING',NULL,'2018-10-14 20:35:35','2018-10-14 20:35:35'),(3,'Dr. Burley Grimes Sr.','Rickie Cruickshank','(283) 492-8617 x57019','Kshlerin Square','17946 Lakin Light Apt. 612','Id omnis.','Reillymouth','Kolby Koepp','DE71700531951858627094','PENDING',NULL,'2018-10-14 20:43:53','2018-10-14 20:43:53'),(4,'Kyle Russel','Zachariah Dooley DVM','986-879-9443','Batz Haven','3945 Maggio Walk Apt. 873','Tempore.','Lake Rosarioview','Nedra Hilpert','DE09538711427089152337','PENDING',NULL,'2018-10-14 20:48:30','2018-10-14 20:48:30'),(5,'Marty Reynolds','Miss Earlene Effertz II','458-977-7622 x160','Roberts Spurs','1120 Dangelo Fords','Eos non.','West Leif','Roberto Kiehn DDS','DE43916449072458029642','PENDING',NULL,'2018-10-14 20:57:38','2018-10-14 20:57:38'),(6,'Luella Kilback','Victor Beer','1-440-747-9456 x8980','Jordan Haven','9546 Parisian Mount','Illo.','East Elenorastad','Dr. Nathan O\'Reilly IV','DE58552516843645010363','PENDING',NULL,'2018-10-14 20:58:38','2018-10-14 20:58:38'),(7,'Riley Ryan','Garrick Buckridge','+1-598-427-5529','Nichole Pass','41233 Claire Squares','Qui dicta.','Lake Javier','Electa Gottlieb III','DE02970829532293573363','PENDING',NULL,'2018-10-14 21:00:25','2018-10-14 21:00:25'),(8,'Daisha Lubowitz V','Sigmund Rowe','1-586-639-5332','Maymie Ways','7109 Hammes Parks','Quia.','Ullrichchester','Branson Kohler','DE08180885529044335119','PENDING',NULL,'2018-10-14 21:01:19','2018-10-14 21:01:19'),(9,'Glen Gaylord','Guido Pollich','909.843.6443','Daniella Trail','54958 Eulalia Stravenue','Dicta.','North Ethelton','Golda Bergstrom','DE08892012175471438513','PENDING',NULL,'2018-10-14 21:02:31','2018-10-14 21:02:31'),(10,'Tianna Zulauf MD','Alexandrea Christiansen V','1-259-514-9514','Schroeder Island','3742 Nicola Flats','Magni.','Lake Antwan','Leif Gulgowski','DE16045218540009021600','PENDING',NULL,'2018-10-14 21:04:31','2018-10-14 21:04:31'),(11,'Miss Sarina Murray','Sammy Kuhlman','+1.307.528.3034','Geoffrey Stravenue','7750 Orlando Stream','Qui.','Port Idellachester','Dr. Gladys Lockman','DE62534620971651428381','PENDING',NULL,'2018-10-14 21:05:14','2018-10-14 21:05:14'),(12,'Mr. Ibrahim Bergstrom IV','Miss Pat Fadel V','+1.883.608.4975','Ritchie Burg','7198 Ova Avenue Suite 430','Ut harum.','Johnsside','Rudy Mayert','DE80809436863067879755','PENDING',NULL,'2018-10-14 21:06:10','2018-10-14 21:06:10'),(13,'Ellie Ryan','Furman Bednar','849-704-5657','Ignatius Rue','9055 Crona Way Apt. 346','Incidunt.','New Nash','Rhoda Sporer III','DE80878378735789915333','PENDING',NULL,'2018-10-14 21:06:38','2018-10-14 21:06:38'),(14,'Mrs. Allene Walsh Jr.','Gisselle Lynch IV','(869) 286-9183 x4774','Corbin Ramp','1869 Zulauf Ridge','Ut rerum.','Blicktown','Prof. Cade Robel','DE54847768610850601345','PENDING',NULL,'2018-10-14 21:15:11','2018-10-14 21:15:11'),(15,'Mr. Johnathan Schumm III','Kayli Zieme','919.272.5991 x715','Barton Mill','26896 Boehm Via Apt. 366','Non odio.','Roelmouth','Prof. Reid Cruickshank DVM','DE61264085833342792286','PENDING',NULL,'2018-10-14 21:16:27','2018-10-14 21:16:27'),(16,'Savannah Kulas III','Marcella Gibson','842.370.3244','Matteo Gateway','5475 Arlene Ford','Neque.','West Mariamstad','Fabiola Kulas','DE97788150530603232429','PENDING',NULL,'2018-10-14 21:16:33','2018-10-14 21:16:33'),(17,'Dr. Branson Feeney','Mark Okuneva','1-764-899-5660','Adams Shoal','902 Lexi Spurs','Dolorem.','Mayerttown','Filomena O\'Reilly I','DE55868255857208032792','PENDING',NULL,'2018-10-14 21:17:48','2018-10-14 21:17:48'),(18,'Warren Collier','Dorothea Mosciski','897-238-8866 x64222','Anthony Forge','68575 Strosin Greens Suite 053','Aliquid.','Margarettestad','Vincenzo Daniel','DE91472412675299378361','PENDING',NULL,'2018-10-14 21:17:55','2018-10-14 21:17:55'),(19,'Erin Feest','Jackeline Abbott','(992) 400-2484','Taya Villages','6225 Grayce Causeway Apt. 848','Aliquam.','Wizabury','Michel Paucek','DE51338470863206235255','PENDING',NULL,'2018-10-14 21:22:35','2018-10-14 21:22:35'),(20,'Joana Lehner','Aric Wunsch Sr.','916.867.2829 x518','Abshire Dam','98942 Ratke Wells','Similique.','Natashamouth','Orin Douglas','DE70742751542243983069','PENDING',NULL,'2018-10-14 21:22:37','2018-10-14 21:22:37'),(21,'Leora Legros II','Chauncey Schneider','+1 (790) 788-9095','Mylene Lock','6860 Cynthia Ford Suite 750','Dolores.','Josephport','Nia Ritchie PhD','DE36288663469803628340','PENDING',NULL,'2018-10-14 21:23:00','2018-10-14 21:23:00'),(22,'Moses Wehner DDS','Elmira Dicki II','928.993.4008 x679','Thelma Roads','32863 Stoltenberg Groves Apt. 073','Velit.','Medhurstville','Danyka Raynor V','DE46959649894218678289','PENDING',NULL,'2018-10-14 21:23:02','2018-10-14 21:23:02'),(23,'Amber Terry','Savanna Marquardt MD','(921) 684-5792','Rogelio Crossing','5418 Kevon Island','Rerum.','Amymouth','Mr. Dean Fisher','DE57783918385047941737','PENDING',NULL,'2018-10-14 21:24:08','2018-10-14 21:24:08'),(24,'Ashly Kohler','Zena Goodwin','1-965-413-7754 x7387','Shany Crossing','4817 Letha Crossroad','Modi cum.','Millsbury','Karen O\'Hara Sr.','DE24253971145688949146','PENDING',NULL,'2018-10-14 21:24:11','2018-10-14 21:24:11'),(25,'Dr. Verna Yundt','Aletha Legros','(985) 255-8368','Orn Haven','842 Kayli Circles','Et.','Lake Frederikshire','Lea Casper','DE85509165922669719287','PENDING',NULL,'2018-10-14 21:45:30','2018-10-14 21:45:30'),(26,'Osvaldo Will','Jaiden Braun','964-473-7967','Cordie Oval','73135 Layla Parks Suite 113','Molestiae.','Port Alexandria','Broderick Weimann','DE52083820436740699471','PENDING',NULL,'2018-10-14 21:45:32','2018-10-14 21:45:32'),(27,'Nelda Legros','Kasandra King V','+1.734.705.2540','Camron Lane','9471 Gorczany Locks Apt. 853','Aliquid.','Lake Erika','Delilah Simonis','DE21502044028093428887','PENDING',NULL,'2018-10-14 21:47:57','2018-10-14 21:47:57'),(28,'Mr. Norberto Cruickshank I','Roscoe Dach','+1-894-200-1691','Dickinson Course','221 Andreanne Way','Tempora.','Nolanside','Alexandrea Gaylord','DE06575968242003901536','PENDING',NULL,'2018-10-14 21:48:01','2018-10-14 21:48:01'),(29,'Prof. Shirley Wuckert DDS','Alvera Ankunding','1-759-595-8562','Kuvalis Island','416 Wiza Highway','Sed.','Orvalmouth','Colleen Weber','DE11618690493048306724','PENDING',NULL,'2018-10-14 21:49:33','2018-10-14 21:49:33'),(30,'Fae Simonis','Alice Senger','(769) 972-7098 x7213','Hudson Village','138 Ernser Park','Odio.','West Jazmyne','Laury Baumbach','DE57080913452646271806','PENDING',NULL,'2018-10-14 21:49:36','2018-10-14 21:49:36'),(31,'Natasha Wolff','Cheyenne Aufderhar','784.373.0417 x75278','Ellie Crossroad','64350 Ludie Parkways Suite 673','Et.','Lake Lindsayshire','Prof. Keenan Thiel','DE71519114494905854270','PENDING',NULL,'2018-10-14 21:50:06','2018-10-14 21:50:06'),(32,'Davin Erdman Jr.','Mrs. Mellie Brown','1-787-309-4467 x04793','Torphy Orchard','23552 Stokes Point','Ad.','South Kittybury','Katarina Bogan DDS','DE73994932191535374296','PENDING',NULL,'2018-10-14 21:50:08','2018-10-14 21:50:08'),(33,'liman','Labaran','2628369972','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsd','233','Berlin','Liman Adamu Labaran','dsds','SUCCESS','615ea75e713c7ca456627d3d0320e4cd7bd63c8c3fd7cdc5dfb2dd617a8ea985a9525daf7f7e0e36652975ed35882919','2018-10-14 21:51:48','2018-10-14 21:51:51'),(34,'Gladys Douglas','Jude Stracke','(384) 560-4650','Nikolaus Plain','53834 Bergstrom Forges Suite 157','Debitis.','North Katherine','Dr. Willis Turcotte DVM','DE97285343404072675509','PENDING',NULL,'2018-10-14 21:55:17','2018-10-14 21:55:17'),(35,'Mr. Anibal Howe','Selina Howell','(403) 842-9396 x860','Theresa Creek','93311 Kathryne Corner','Eos at.','Port Libbyberg','Christopher Lebsack','DE88238934078607115934','PENDING',NULL,'2018-10-14 21:56:19','2018-10-14 21:56:19'),(36,'Angelita Durgan','Miss Jacinthe Hintz I','931.412.6442 x42303','Gorczany Way','9164 Laverne Path Suite 897','Dolores.','Micaelaview','Charlie Herman','DE23585217942760269508','PENDING',NULL,'2018-10-14 21:56:58','2018-10-14 21:56:58'),(37,'Lora Ankunding DDS','Mercedes Purdy','1-801-864-4280 x0837','Lesch Track','815 Pagac Throughway Suite 638','Odit.','Wymanside','Prof. Angel Mueller','DE27938207475306380933','PENDING',NULL,'2018-10-14 21:57:09','2018-10-14 21:57:09'),(38,'Jevon Satterfield','Marianne Crist I','1-997-230-3026','Hauck Pine','9713 Retha Center Apt. 725','Neque sit.','New Shannonchester','Carolyne Parisian','DE05430138426602694641','PENDING',NULL,'2018-10-14 21:57:47','2018-10-14 21:57:47'),(39,'Dr. Molly Labadie','Gail Towne','1-446-287-0329','Marquardt Forge','20050 Hudson Brooks','Nobis.','Jamarcusport','Vivianne Kihn','DE15305869625242792008','PENDING',NULL,'2018-10-14 21:57:49','2018-10-14 21:57:49'),(40,'Carmel Denesik','Leora Larkin','854.744.2224','Prohaska Via','21250 Vada Overpass','Repellat.','Daneton','Velva Nicolas','DE79980459634526862441','PENDING',NULL,'2018-10-14 21:59:54','2018-10-14 21:59:54'),(41,'Reagan O\'Kon','Prof. Martine Smitham V','+1.548.561.7146','Ratke Mount','9244 Dereck Squares Suite 513','Eum ut.','Kossville','Amani Lueilwitz','DE88515108599125404976','PENDING',NULL,'2018-10-14 21:59:57','2018-10-14 21:59:57'),(42,'Jovany Murphy','Alex Ernser II','1-473-521-1880','Heaney Fords','14203 Kuhn View Suite 273','Maxime.','Lindafort','Deanna Sawayn','DE95495947472139797547','PENDING',NULL,'2018-10-14 22:00:04','2018-10-14 22:00:04'),(43,'Baylee Murphy','Aiyana Kemmer','+16088553370','Cruickshank Row','83100 McKenzie Mountain','Tempore.','East Ayana','Mr. Quentin Gutmann V','DE79297758889659931634','PENDING',NULL,'2018-10-14 22:00:06','2018-10-14 22:00:06'),(44,'Ilene Zulauf','Miguel Lindgren','882.453.1493','Murphy Causeway','245 Wiegand Summit','Doloribus.','Lake Rachaelborough','Lina Jaskolski V','DE22991618345228564628','PENDING',NULL,'2018-10-14 22:03:09','2018-10-14 22:03:09'),(45,'Prof. Emelie Abbott MD','Prof. Reba Runte','1-985-579-3268 x23105','Loma Green','4537 Funk Plaza','Libero.','Pollichport','Mossie Stiedemann','DE49529091314462788766','PENDING',NULL,'2018-10-14 22:03:12','2018-10-14 22:03:12'),(46,'Coby Spinka','Wiley Nienow IV','1-658-519-0971 x4738','Kling Flats','11163 Antoinette Mission','Labore.','North Collin','Charlotte Bernhard Sr.','DE80556864810541849141','PENDING',NULL,'2018-10-14 22:06:15','2018-10-14 22:06:15'),(47,'Ashly Boehm Sr.','Dr. Charles Sipes','1-407-968-4727 x844','Brad Forks','7650 Zieme Coves','Quis.','Kossstad','Cassandra Kuhlman','DE63826360356024599146','PENDING',NULL,'2018-10-14 22:08:06','2018-10-14 22:08:06'),(48,'Dr. Keith Jones Sr.','Margaretta Adams','(769) 861-6574 x153','Kutch Prairie','5716 Hagenes Manor','Nesciunt.','New D\'angelo','Elyssa Kovacek','DE31007120077144471978','PENDING',NULL,'2018-10-14 22:08:06','2018-10-14 22:08:06'),(49,'Alexander Bartell','Adonis Boyer Jr.','576-273-2846 x6007','Tre Drive','97526 Fadel River','Quo optio.','Noeberg','Eugene Schowalter V','DE05470969663331338501','PENDING',NULL,'2018-10-14 22:08:08','2018-10-14 22:08:08'),(50,'liman','Labaran','262836997211122111','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsd','233','Berlin','Liman Adamu Labaran','dsds','SUCCESS','80c1eedd8bf5729726ae4b020db795597a9774b45bb80d00f663b1270f51048ea1a1963eee405d38b8ca0acca68ea2f0','2018-10-14 22:18:29','2018-10-14 22:18:34'),(51,'liman','Labaran','1262836997211122111','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsd','233','Berlin','Liman Adamu Labaran','dsds','SUCCESS','373ec31a302b803032c8c03a174c56cc159b282f952929918de76dc8abf301dd0d02f0af355692cad3165d91283007a6','2018-10-14 22:19:23','2018-10-14 22:19:26'),(53,'Liman','Labaran','12262836997','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsds','233','Dortmund','Liman Adamu Labaran','DE123','SUCCESS','49d309099917bb42310bc615fdd5f909b9196b79be03cf157268de40920e7a30c7cc4557ce2e61add8e8d04612190850','2018-10-14 22:33:21','2018-10-14 22:33:25'),(55,'Liman','Labaran','1226283699755','Japan Motors,Botwe, P.O.Box GP 4148,Accra','dsds','233','Dortmund','Liman Adamu Labaran','DE123','SUCCESS','cbf23b23e997911a9d46b55d32d3d7c7af1f3273d95c171c075d731a8f28461d4ae98eb5b6d1ce59c110aca1f2b24afa','2018-10-14 22:34:21','2018-10-14 22:34:23');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_10_10_112434_create_customers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wunderfleet_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-14 22:44:01
