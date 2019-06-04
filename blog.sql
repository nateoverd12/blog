-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (115,'qui et quo qui consequatur voluptatem modi','Quasi hic maiores fugit voluptatem est natus quia eaque tempore quia beatae.',52,'qui-et-quo-qui-consequatur-voluptatem-modi',0),(116,'libero aut ut et sint laboriosam nobis','Aut blanditiis nulla molestiae nostrum non mollitia blanditiis soluta sed ea amet illum beatae.',51,'libero-aut-ut-et-sint-laboriosam-nobis',0),(117,'vitae eum occaecati reprehenderit est illo praesentium','Neque cum est voluptatem est a quis quidem ut.',50,'vitae-eum-occaecati-reprehenderit-est-illo-praesentium',0),(118,'rerum eum nesciunt eum illo vitae voluptatem','Officiis nisi dolor repudiandae velit non at beatae assumenda.',52,'rerum-eum-nesciunt-eum-illo-vitae-voluptatem',0),(119,'velit suscipit porro fugiat recusandae','Delectus molestiae ut eaque veritatis quam praesentium omnis dolorum.',51,'velit-suscipit-porro-fugiat-recusandae',0),(120,'dolor laborum voluptatem officiis dolorum','Reiciendis dicta nulla rerum mollitia animi eaque incidunt minima iusto placeat quis enim ut rem.',50,'dolor-laborum-voluptatem-officiis-dolorum',0),(121,'incidunt totam autem quisquam tempora sunt quaerat velit','Minus quisquam unde perspiciatis sit nihil maiores saepe ratione labore harum.',51,'incidunt-totam-autem-quisquam-tempora-sunt-quaerat-velit',0),(122,'et laborum odio qui sint aut rerum vero','Incidunt vitae voluptatum et aut omnis cupiditate officia doloremque molestiae enim explicabo architecto similique.',52,'et-laborum-odio-qui-sint-aut-rerum-vero',0),(123,'quo minus velit sunt autem quis','Consequuntur dolorem atque voluptatem ex voluptatum quae qui.',52,'quo-minus-velit-sunt-autem-quis',0),(124,'dolore ipsam sit sed ut pariatur','Quia dolor laborum et repellat ut quia dolores rerum ratione dolorum voluptatem.',53,'dolore-ipsam-sit-sed-ut-pariatur',0),(125,'ut molestiae aut earum ut aut','Adipisci non neque doloribus aut quis et ipsum.',50,'ut-molestiae-aut-earum-ut-aut',0),(126,'veniam non et harum officia quis voluptatum id','Tempore blanditiis iste sint harum quia minus tempora mollitia aut quos velit modi repellendus.',50,'veniam-non-et-harum-officia-quis-voluptatum-id',0),(127,'quisquam tenetur labore modi minus quasi ab','Odio distinctio facere numquam eos est consequatur sunt voluptatem sit omnis.',50,'quisquam-tenetur-labore-modi-minus-quasi-ab',0),(128,'deserunt officia voluptatum est et','Beatae quisquam animi rem iure ullam placeat eum.',51,'deserunt-officia-voluptatum-est-et',0),(129,'voluptatem aut dignissimos quibusdam qui sunt aperiam','Quasi odio dolores nulla sunt est assumenda repellendus tempora.',51,'voluptatem-aut-dignissimos-quibusdam-qui-sunt-aperiam',0),(130,'in quaerat aut quaerat eligendi et neque aperiam','Aut iste quod quidem eveniet sapiente et.',51,'in-quaerat-aut-quaerat-eligendi-et-neque-aperiam',0),(131,'sequi saepe placeat animi praesentium corrupti','Reprehenderit consequatur atque vero quia aut excepturi autem repellat odio totam quam cumque.',52,'sequi-saepe-placeat-animi-praesentium-corrupti',0),(132,'quis ullam culpa impedit et ad','Consequatur voluptatem voluptatem vitae autem natus distinctio commodi doloribus maiores blanditiis omnis.',50,'quis-ullam-culpa-impedit-et-ad',0),(133,'laudantium placeat explicabo voluptatibus illo est doloribus tempore','Ex ea assumenda deserunt quis asperiores rerum atque dolor eum officia voluptatem aut delectus.',52,'laudantium-placeat-explicabo-voluptatibus-illo-est-doloribus-tempore',0),(134,'nam veritatis iusto eum in quas id ab aut','Reprehenderit qui blanditiis sequi et omnis id dolores eum reiciendis.',51,'nam-veritatis-iusto-eum-in-quas-id-ab-aut',0),(135,'impedit magnam dolorum dolorum ipsa aut autem est','Blanditiis voluptas enim ullam laboriosam omnis dignissimos nisi praesentium.',53,'impedit-magnam-dolorum-dolorum-ipsa-aut-autem-est',0),(136,'debitis voluptas non ut libero inventore','Minus enim sed rerum molestiae nam qui est.',50,'debitis-voluptas-non-ut-libero-inventore',0),(137,'et velit veritatis beatae non dolores ab','Nemo quos est consequuntur nobis ut nulla.',51,'et-velit-veritatis-beatae-non-dolores-ab',0),(138,'accusamus perferendis consequatur libero ut omnis perspiciatis','Et quo consequuntur distinctio ut ut fuga veniam autem rerum.',51,'accusamus-perferendis-consequatur-libero-ut-omnis-perspiciatis',0),(139,'asperiores sapiente aut ea itaque quis officiis in','In voluptas eveniet neque incidunt a culpa iure temporibus aliquam fugit consectetur ut recusandae.',52,'asperiores-sapiente-aut-ea-itaque-quis-officiis-in',0),(140,'reiciendis rerum amet numquam eos labore et asperiores','Perspiciatis vel et et nisi laborum natus odit non ut ut molestias.',53,'reiciendis-rerum-amet-numquam-eos-labore-et-asperiores',0),(141,'ipsum sit animi pariatur et rem tenetur','Iste dicta est molestiae ratione qui voluptatem magnam accusamus totam.',51,'ipsum-sit-animi-pariatur-et-rem-tenetur',0),(142,'ut quidem qui nihil nam et nesciunt','Ratione mollitia ullam accusamus eum est totam ducimus odio odit fugiat maxime sint.',50,'ut-quidem-qui-nihil-nam-et-nesciunt',0),(143,'aut dolore in repudiandae dolorem','Aut omnis numquam dolore quis explicabo id tenetur.',50,'aut-dolore-in-repudiandae-dolorem',0),(144,'nihil impedit et laborum sed consequatur','Modi similique corporis debitis harum recusandae sit et.',51,'nihil-impedit-et-laborum-sed-consequatur',0),(145,'quo illum quia doloribus labore dolor nobis','Ratione est omnis quis iusto odio qui ut non velit et odio dignissimos perferendis.',50,'quo-illum-quia-doloribus-labore-dolor-nobis',0),(146,'reprehenderit unde ut deleniti exercitationem veritatis','Perspiciatis excepturi incidunt modi neque laboriosam sapiente repudiandae reprehenderit non ipsam dolores.',50,'reprehenderit-unde-ut-deleniti-exercitationem-veritatis',0),(147,'quisquam nam in quia ab error quam natus','Quas et est quis ut dolor magnam modi et eum.',51,'quisquam-nam-in-quia-ab-error-quam-natus',0),(148,'quae qui earum veritatis qui','Culpa voluptatem eos iure nobis harum consequatur perspiciatis temporibus reiciendis harum enim et.',53,'quae-qui-earum-veritatis-qui',0),(149,'rerum est et dolore','Sit inventore soluta at sed labore sint eos blanditiis est.',52,'rerum-est-et-dolore',0),(150,'rerum esse commodi voluptatibus repudiandae','Dolores qui impedit dignissimos corporis repudiandae veniam cupiditate esse veritatis.',50,'rerum-esse-commodi-voluptatibus-repudiandae',0),(151,'maxime magni dolor nihil accusantium quis expedita','Atque sint magnam exercitationem in provident ab architecto quia nihil.',50,'maxime-magni-dolor-nihil-accusantium-quis-expedita',0),(152,'et non et consequuntur maiores','Et fuga nemo eum suscipit modi distinctio excepturi fuga minima enim.',51,'et-non-et-consequuntur-maiores',0),(153,'maxime modi vel provident quis','Veritatis ut voluptate reiciendis dolore numquam ut corrupti dolor aspernatur voluptate aut.',52,'maxime-modi-vel-provident-quis',0),(154,'illum a et repellat harum saepe','Dignissimos tempore quis ipsa praesentium aut et voluptas consequatur aliquam eveniet.',51,'illum-a-et-repellat-harum-saepe',0),(155,'unde beatae alias laboriosam voluptas','Quo nisi vero fugit cupiditate commodi vitae quod.',53,'unde-beatae-alias-laboriosam-voluptas',0),(156,'nulla unde et sit ut','Sed voluptatem commodi corrupti quod ut provident inventore quo delectus atque rerum quae.',53,'nulla-unde-et-sit-ut',0),(157,'nesciunt est vitae quis exercitationem voluptatem accusamus velit asperiores','Eos id ut sed asperiores quisquam cupiditate nobis unde.',52,'nesciunt-est-vitae-quis-exercitationem-voluptatem-accusamus-velit-asperiores',0),(158,'corrupti recusandae corrupti ullam et voluptates','Molestiae commodi sit atque sit dolore doloribus consectetur enim ut.',50,'corrupti-recusandae-corrupti-ullam-et-voluptates',0),(159,'natus voluptatum sunt molestiae iure et laboriosam in','Neque eum et ut maiores sit blanditiis voluptatibus.',53,'natus-voluptatum-sunt-molestiae-iure-et-laboriosam-in',0),(160,'eum praesentium eum id','Quo laudantium et veritatis quae magnam voluptate eaque et.',53,'eum-praesentium-eum-id',0),(161,'rerum dolores ut distinctio iure iusto facilis','Exercitationem perspiciatis mollitia molestiae qui dolorem doloribus quia qui necessitatibus voluptatem.',52,'rerum-dolores-ut-distinctio-iure-iusto-facilis',0),(162,'deleniti sed nostrum sint aut nobis amet','Voluptatem odit quo aut harum molestiae qui.',53,'deleniti-sed-nostrum-sint-aut-nobis-amet',0),(163,'laudantium amet molestiae dolor','Adipisci nihil voluptatem cum dolorem aspernatur consequatur ab ipsum dolores enim rerum.',52,'laudantium-amet-molestiae-dolor',0),(164,'rem fugiat aperiam cumque praesentium','Enim iure ut accusantium similique modi sed sed.',53,'rem-fugiat-aperiam-cumque-praesentium',0),(169,'Swift Mailer Quest','Pour symfony => PHP',50,'swift-mailer-quest',0),(173,'2nd test w/ photo ?','blzalbla',50,'2nd-test-w-photo',0),(175,'test 2 challenge','w/photo ?',50,'test-2-challenge',0),(176,'test frcanois','blal',50,'test-frcanois',0),(177,'test w/ extends base.html.twig','greg',50,'test-w-extends-base.html.twig',0),(178,'test w/ extends base.html.twig','greg',50,'test-w-extends-base.html.twig',0),(179,'test w/ extends base.html.twig','greg',50,'test-w-extends-base.html.twig',0),(180,'no-reply','zge',50,'no-reply',0),(181,'no reply et debug html in mail','tretres',50,'no-reply-et-debug-html-in-mail',0),(182,'html in mail','test',50,'html-in-mail',0),(183,'link in mail','test',50,'link-in-mail',0),(184,'test css in style','tetret',50,'test-css-in-style',0),(185,'test css in style','tetret',50,'test-css-in-style',0),(186,'test css in style V2','test',50,'test-css-in-style-v2',0),(187,'test V3 css in style attr','bntr',50,'test-v3-css-in-style-attr',0),(188,'V4 css in style attr','prblem, setFrom, doesn\'t run if different from address in .env',50,'v4-css-in-style-attr',0),(189,'V5 css in style attr','test w/ gmail address',50,'v5-css-in-style-attr',0),(190,'V5 css in style attr','test w/ gmail address',50,'v5-css-in-style-attr',0),(191,'V6 css in style attr LAST attempted','ytets',50,'v6-css-in-style-attr-last-attempted',0),(192,'Via Service for mailing','test',50,'via-service-for-mailing',0),(193,'Via Service for mailing','test',50,'via-service-for-mailing',0),(194,'Via Service for mailing','test',50,'via-service-for-mailing',0),(195,'Via Service for mailing','test',50,'via-service-for-mailing',0),(196,'Via Service for mailing','test',50,'via-service-for-mailing',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (50,'PHP'),(51,'Java'),(52,'C'),(53,'Javascript');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20190514073634','2019-05-14 07:37:11'),('20190514091721','2019-05-14 09:17:46'),('20190516074009','2019-05-16 07:40:26'),('20190527084754','2019-05-27 08:48:39'),('20190604073239','2019-06-04 07:32:52');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag_article`
--

DROP TABLE IF EXISTS `tag_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag_article` (
  `tag_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`,`article_id`),
  KEY `IDX_300B23CCBAD26311` (`tag_id`),
  KEY `IDX_300B23CC7294869C` (`article_id`),
  CONSTRAINT `FK_300B23CC7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_300B23CCBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag_article`
--

LOCK TABLES `tag_article` WRITE;
/*!40000 ALTER TABLE `tag_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'author@monsite.com','[\"ROLE_AUTHOR\"]','$argon2i$v=19$m=1024,t=2,p=2$aEJtS3B2MFNTeGd1aC5Tcg$pZLgylvcZt3/wkYKTQ9tx+IOfqlSgI6TMiZIc7rq/h4'),(2,'admin@monsite.com','[\"ROLE_ADMIN\"]','$argon2i$v=19$m=1024,t=2,p=2$R0NTZElNSjZXLjRJTnZtMQ$j/x3pvydSQKQnplABVF5DfdUVMnbmJ9Zqe1jCDW4HSk');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 11:09:04
