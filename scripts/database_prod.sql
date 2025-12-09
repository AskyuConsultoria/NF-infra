/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: syntro
-- ------------------------------------------------------
-- Server version	11.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_realizacao` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nome_moeda` varchar(255) DEFAULT NULL,
  `nome_servico` varchar(255) DEFAULT NULL,
  `status_contrato` bit(1) DEFAULT NULL,
  `tempo_contrato` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `contrato` VALUES
(1,'2025-01-25 05:17:16.290000','Seguros Empresariais e Previdência',1,6,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'24 meses',5770.76),
(2,'2025-01-21 14:16:50.354000','Recuperação Judicial e Extrajudicial',3,56,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'21 meses',33237.29),
(3,'2025-04-13 14:38:14.841000','Valuation de Empresas',2,56,'BRL','Contrato de Valuation de Empresas',0x01,'8 meses',25203.62),
(4,'2025-06-04 14:47:02.026000','Elaboração de Orçamentos Empresariais',2,56,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'12 meses',38798.09),
(5,'2025-05-04 01:35:09.489000','Planejamento Tributário Estratégico',2,36,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'2 meses',1594.14),
(6,'2025-01-15 22:14:10.997000','Due Diligence Financeira',2,87,'BRL','Contrato de Due Diligence Financeira',0x00,'16 meses',46314.15),
(7,'2025-08-10 18:51:52.782000','Planejamento Tributário Estratégico',3,100,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'5 meses',18376.63),
(8,'2025-02-22 14:05:56.663000','Recuperação Judicial e Extrajudicial',3,93,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'2 meses',6606.9),
(9,'2025-10-10 20:56:16.852000','Otimização de Fluxo de Caixa',1,79,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'3 meses',40135.1),
(10,'2025-05-06 00:06:57.085000','Elaboração de Orçamentos Empresariais',4,81,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x00,'3 meses',40871.18),
(11,'2025-09-20 08:02:51.585000','Auditoria Contábil Independente',5,25,'BRL','Contrato de Auditoria Contábil Independente',0x00,'5 meses',31827.32),
(12,'2025-03-02 01:40:08.714000','Consultoria em Câmbio e Comércio Exterior',4,12,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'15 meses',9748.65),
(13,'2025-05-01 09:50:27.619000','Valuation de Empresas',2,54,'BRL','Contrato de Valuation de Empresas',0x01,'4 meses',1981.22),
(14,'2025-07-17 17:59:45.703000','Otimização de Fluxo de Caixa',5,42,'BRL','Contrato de Otimização de Fluxo de Caixa',0x00,'12 meses',14764.59),
(15,'2025-02-10 23:15:35.842000','Valuation de Empresas',3,57,'BRL','Contrato de Valuation de Empresas',0x01,'13 meses',4869.24),
(16,'2025-07-26 22:19:50.680000','Serviços de Compliance Financeiro',3,12,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'11 meses',19148.76),
(17,'2025-09-05 05:56:38.612000','Recuperação Judicial e Extrajudicial',1,30,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'1 meses',30972.64),
(18,'2025-04-18 13:56:16.291000','Valuation de Empresas',1,34,'BRL','Contrato de Valuation de Empresas',0x01,'2 meses',3698.45),
(19,'2025-10-25 19:21:54.565000','Seguros Empresariais e Previdência',4,87,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'11 meses',31607.57),
(20,'2025-11-18 22:58:24.409000','Desenvolvimento de Modelos Financeiros',4,80,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x01,'5 meses',14145.63),
(21,'2025-09-19 22:08:28.611000','Implantação de Governança Corporativa',2,22,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'2 meses',31524.83),
(22,'2025-10-16 13:25:28.407000','Seguros Empresariais e Previdência',4,48,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'11 meses',33509.4),
(23,'2025-08-29 13:35:50.870000','Assessoria em Fusões e Aquisições',2,11,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'15 meses',3566.27),
(24,'2025-12-03 15:04:42.238000','Seguros Empresariais e Previdência',2,32,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'12 meses',26772.36),
(25,'2025-09-15 21:18:16.695000','Recuperação Judicial e Extrajudicial',3,24,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'8 meses',9225.54),
(26,'2025-11-02 17:19:29.767000','Gestão de Ativos e Passivos',4,66,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'10 meses',14744.92),
(27,'2025-09-01 15:25:02.132000','Auditoria Contábil Independente',5,32,'BRL','Contrato de Auditoria Contábil Independente',0x00,'1 meses',20602.96),
(28,'2025-11-20 18:04:28.021000','Due Diligence Financeira',5,78,'BRL','Contrato de Due Diligence Financeira',0x01,'9 meses',1214.41),
(29,'2025-04-11 11:51:43.007000','Seguros Empresariais e Previdência',2,84,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'11 meses',17974.94),
(30,'2025-03-10 22:08:27.415000','Implantação de Governança Corporativa',4,51,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'13 meses',28448.23),
(31,'2025-09-09 02:27:45.217000','Auditoria Contábil Independente',5,88,'BRL','Contrato de Auditoria Contábil Independente',0x01,'23 meses',33496.24),
(32,'2025-10-22 06:23:16.503000','Otimização de Fluxo de Caixa',4,71,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'24 meses',26823.37),
(33,'2025-08-29 12:56:32.406000','Auditoria Contábil Independente',1,32,'BRL','Contrato de Auditoria Contábil Independente',0x00,'1 meses',4380.59),
(34,'2025-03-29 15:38:08.835000','Financiamento de Projetos',2,79,'BRL','Contrato de Financiamento de Projetos',0x00,'17 meses',24496.24),
(35,'2025-07-16 01:18:24.345000','Valuation de Empresas',2,60,'BRL','Contrato de Valuation de Empresas',0x01,'18 meses',29995.92),
(36,'2025-02-26 06:56:59.625000','Serviços de Compliance Financeiro',2,62,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'20 meses',8164.6),
(37,'2025-10-12 09:29:39.168000','Gestão de Investimentos para Empresas',3,39,'BRL','Contrato de Gestão de Investimentos para Empresas',0x01,'3 meses',30168.84),
(38,'2025-05-29 07:21:02.954000','Planejamento Tributário Estratégico',1,96,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'21 meses',37831.17),
(39,'2025-08-23 06:56:50.703000','Due Diligence Financeira',5,6,'BRL','Contrato de Due Diligence Financeira',0x00,'1 meses',36242),
(40,'2025-10-26 14:04:22.597000','Assessoria em Fusões e Aquisições',1,95,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'21 meses',36797.73),
(41,'2025-07-04 05:12:00.566000','Seguros Empresariais e Previdência',4,45,'BRL','Contrato de Seguros Empresariais e Previdência',0x00,'15 meses',41975.98),
(42,'2025-06-18 23:41:35.655000','Auditoria Contábil Independente',5,80,'BRL','Contrato de Auditoria Contábil Independente',0x01,'6 meses',24833.7),
(43,'2025-07-01 06:24:44.286000','Implantação de Governança Corporativa',5,82,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'4 meses',36298.86),
(44,'2025-01-29 12:35:58.449000','Gestão de Ativos e Passivos',5,90,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'10 meses',21411.7),
(45,'2024-12-11 14:16:08.369000','Recuperação Judicial e Extrajudicial',3,51,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'21 meses',46463.98),
(46,'2025-04-05 05:58:48.973000','Financiamento de Projetos',3,98,'BRL','Contrato de Financiamento de Projetos',0x01,'20 meses',8351.1),
(47,'2025-06-09 10:47:47.570000','Análise de Crédito e Risco',2,5,'BRL','Contrato de Análise de Crédito e Risco',0x00,'5 meses',35286.12),
(48,'2025-07-10 15:29:10.462000','Consultoria em Mercado de Capitais',2,34,'BRL','Contrato de Consultoria em Mercado de Capitais',0x00,'24 meses',48990.71),
(49,'2025-03-30 12:43:03.660000','Otimização de Fluxo de Caixa',3,34,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'6 meses',23218.8),
(50,'2025-11-15 12:39:56.247000','Auditoria Contábil Independente',1,84,'BRL','Contrato de Auditoria Contábil Independente',0x01,'17 meses',37163.43),
(51,'2025-03-25 13:11:31.449000','Reestruturação de Dívidas',3,96,'BRL','Contrato de Reestruturação de Dívidas',0x01,'12 meses',12477.82),
(52,'2025-06-10 12:30:10.974000','Recuperação Judicial e Extrajudicial',3,74,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'16 meses',25761.65),
(53,'2025-11-06 12:40:16.436000','Seguros Empresariais e Previdência',2,42,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'5 meses',22753.17),
(54,'2025-08-15 18:35:19.604000','Gestão de Ativos e Passivos',3,1,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'16 meses',1279.52),
(55,'2025-09-03 08:34:16.978000','Implantação de Governança Corporativa',2,49,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'1 meses',33011.53),
(56,'2025-08-12 09:18:44.818000','Assessoria em Fusões e Aquisições',3,11,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'7 meses',9203.62),
(57,'2025-04-27 03:20:02.037000','Implantação de Governança Corporativa',5,34,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'17 meses',35735.81),
(58,'2025-01-22 07:52:54.967000','Seguros Empresariais e Previdência',2,17,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'3 meses',13485.12),
(59,'2025-04-26 07:49:37.908000','Due Diligence Financeira',5,75,'BRL','Contrato de Due Diligence Financeira',0x01,'5 meses',28521.98),
(60,'2025-08-20 22:18:23.095000','Consultoria em Câmbio e Comércio Exterior',2,85,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x00,'12 meses',45835.59),
(61,'2025-04-02 04:02:44.281000','Seguros Empresariais e Previdência',5,12,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'16 meses',14797.64),
(62,'2025-02-18 22:51:08.505000','Serviços de Compliance Financeiro',1,81,'BRL','Contrato de Serviços de Compliance Financeiro',0x00,'18 meses',39814.46),
(63,'2025-01-08 08:48:00.897000','Seguros Empresariais e Previdência',2,40,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'21 meses',15984.72),
(64,'2025-02-01 12:51:17.790000','Valuation de Empresas',5,27,'BRL','Contrato de Valuation de Empresas',0x01,'10 meses',49370.22),
(65,'2025-11-29 13:30:54.053000','Valuation de Empresas',1,55,'BRL','Contrato de Valuation de Empresas',0x01,'2 meses',33069.2),
(66,'2025-01-23 22:48:03.898000','Due Diligence Financeira',5,80,'BRL','Contrato de Due Diligence Financeira',0x01,'3 meses',24151.83),
(67,'2025-05-18 16:53:30.270000','Implantação de Governança Corporativa',3,37,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'12 meses',29708.19),
(68,'2025-08-03 00:30:10.160000','Financiamento de Projetos',4,23,'BRL','Contrato de Financiamento de Projetos',0x01,'16 meses',6498.43),
(69,'2025-04-25 20:06:00.769000','Análise de Crédito e Risco',4,61,'BRL','Contrato de Análise de Crédito e Risco',0x01,'3 meses',48921.68),
(70,'2025-06-18 17:58:29.546000','Due Diligence Financeira',2,68,'BRL','Contrato de Due Diligence Financeira',0x01,'4 meses',40949.37),
(71,'2025-07-31 23:31:59.318000','Planejamento Tributário Estratégico',2,25,'BRL','Contrato de Planejamento Tributário Estratégico',0x00,'22 meses',15271.99),
(72,'2025-08-17 09:03:21.248000','Planejamento Tributário Estratégico',1,59,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'19 meses',34460.55),
(73,'2025-07-02 21:38:36.969000','Reestruturação de Dívidas',3,60,'BRL','Contrato de Reestruturação de Dívidas',0x01,'10 meses',21648.09),
(74,'2025-07-12 20:30:35.886000','Gestão de Ativos e Passivos',2,37,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'14 meses',18674.11),
(75,'2025-02-06 04:34:31.973000','Implantação de Governança Corporativa',1,65,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'2 meses',4405.57),
(76,'2025-11-24 05:55:32.108000','Desenvolvimento de Modelos Financeiros',2,20,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x01,'17 meses',4852.35),
(77,'2025-07-06 18:29:10.469000','Valuation de Empresas',1,27,'BRL','Contrato de Valuation de Empresas',0x01,'20 meses',16427.2),
(78,'2025-04-20 09:54:44.743000','Reestruturação de Dívidas',1,56,'BRL','Contrato de Reestruturação de Dívidas',0x01,'1 meses',22319.97),
(79,'2025-04-14 10:02:29.895000','Gestão de Investimentos para Empresas',4,69,'BRL','Contrato de Gestão de Investimentos para Empresas',0x01,'11 meses',13642.21),
(80,'2025-02-12 14:46:40.790000','Auditoria Contábil Independente',3,29,'BRL','Contrato de Auditoria Contábil Independente',0x00,'6 meses',31074.39),
(81,'2025-07-09 13:27:52.784000','Planejamento Tributário Estratégico',1,81,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'6 meses',21142.79),
(82,'2025-03-09 20:26:52.726000','Planejamento Tributário Estratégico',5,87,'BRL','Contrato de Planejamento Tributário Estratégico',0x00,'24 meses',49494.58),
(83,'2025-07-01 00:42:48.077000','Due Diligence Financeira',3,64,'BRL','Contrato de Due Diligence Financeira',0x00,'10 meses',13895.48),
(84,'2025-07-03 19:43:36.711000','Valuation de Empresas',2,30,'BRL','Contrato de Valuation de Empresas',0x01,'6 meses',25458.04),
(85,'2025-02-21 04:59:49.552000','Recuperação Judicial e Extrajudicial',2,99,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'17 meses',31515.54),
(86,'2025-03-29 19:17:14.660000','Serviços de Compliance Financeiro',4,61,'BRL','Contrato de Serviços de Compliance Financeiro',0x00,'5 meses',30285.73),
(87,'2025-02-11 08:59:49.237000','Assessoria em Fusões e Aquisições',2,85,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'23 meses',14298.54),
(88,'2025-01-18 17:04:46.321000','Consultoria em Câmbio e Comércio Exterior',5,92,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'4 meses',18028.74),
(89,'2025-01-12 10:04:41.460000','Auditoria Contábil Independente',1,37,'BRL','Contrato de Auditoria Contábil Independente',0x00,'22 meses',13590.17),
(90,'2025-09-02 00:14:49.070000','Auditoria Contábil Independente',1,65,'BRL','Contrato de Auditoria Contábil Independente',0x01,'14 meses',38814.74),
(91,'2025-03-20 02:18:57.658000','Recuperação Judicial e Extrajudicial',2,80,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'19 meses',5774.76),
(92,'2025-08-29 00:21:58.245000','Reestruturação de Dívidas',1,87,'BRL','Contrato de Reestruturação de Dívidas',0x01,'6 meses',20264.51),
(93,'2025-08-24 00:27:57.161000','Consultoria em Mercado de Capitais',1,44,'BRL','Contrato de Consultoria em Mercado de Capitais',0x01,'22 meses',5016.04),
(94,'2025-11-02 08:19:39.985000','Elaboração de Orçamentos Empresariais',2,16,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'14 meses',25056.06),
(95,'2025-06-26 14:46:32.984000','Desenvolvimento de Modelos Financeiros',1,37,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x00,'14 meses',31802.88),
(96,'2025-05-06 20:28:48.954000','Implantação de Governança Corporativa',2,17,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'13 meses',19050.42),
(97,'2025-01-28 13:32:54.506000','Elaboração de Orçamentos Empresariais',4,14,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'11 meses',6657.32),
(98,'2025-04-14 14:04:03.733000','Otimização de Fluxo de Caixa',5,74,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'22 meses',39930.49),
(99,'2025-06-15 14:22:41.842000','Análise de Crédito e Risco',4,81,'BRL','Contrato de Análise de Crédito e Risco',0x00,'6 meses',48986.85),
(100,'2025-02-06 15:24:17.697000','Assessoria em Fusões e Aquisições',1,21,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x00,'17 meses',18740.65);
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_departamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `departamento` VALUES
(1,'Financeiro'),
(2,'Recursos Humanos'),
(3,'TI'),
(4,'Marketing'),
(5,'Vendas');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_atuacao` varchar(255) DEFAULT NULL,
  `fornecedor` bit(1) DEFAULT NULL,
  `identificacao_fiscal` varchar(255) DEFAULT NULL,
  `nome_servico` varchar(255) DEFAULT NULL,
  `subsidiaria` varchar(255) DEFAULT NULL,
  `tipo_identificacao_fiscal` int(11) DEFAULT NULL,
  `nome_fantasia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `empresa` VALUES
(1,'Pecuarista',0x01,'95.820.316/0001-36','Serviços de A simplicidade de mudar simplesmente','e Filhos',1,'Monteiro'),
(2,'Alergologista',0x01,'02.518.936/0001-34','Serviços de A liberdade de avançar mais rapidamente','e Filhos',1,'Pereira - ME'),
(3,'Cobrador de pedágio',0x00,'17.856.403/0001-30','Serviços de O conforto de realizar seus sonhos com força total','- ME',1,'Ribeiro'),
(4,'Técnico em segurança do trabalho',0x00,'87.423.915/0001-98','Serviços de O prazer de atingir seus objetivos mais facilmente','- ME',1,'Siqueira'),
(5,'Representante comercial',0x00,'13.546.807/0001-76','Serviços de A arte de evoluir de maneira eficaz','S/A',1,'Dias'),
(6,'Escritor',0x01,'61.095.723/0001-06','Serviços de O poder de ganhar com toda a tranquilidade','- ME',1,'Brito - EI'),
(7,'Artista/Técnico em espetáculos de diversões',0x01,'53.218.679/0001-56','Serviços de O prazer de realizar seus sonhos naturalmente','S/A',1,'Freitas Cardoso S/A'),
(8,'Gravurista',0x01,'67.093.482/0001-42','Serviços de O poder de inovar direto da fonte','Ltda.',1,'Viana - EI'),
(9,'Líder comunitário',0x01,'67.408.932/0001-49','Serviços de O direito de mudar mais rapidamente','S/A',1,'Pastor'),
(10,'Astrólogo',0x01,'71.940.853/0001-51','Serviços de O direito de conseguir sem preocupação','e Filhos',1,'Silva Câmara - ME'),
(11,'Promotor de eventos',0x00,'60.924.381/0001-27','Serviços de O prazer de realizar seus sonhos direto da fonte','S.A.',1,'Câmara'),
(12,'Radialista',0x01,'13.648.957/0001-90','Serviços de A vantagem de evoluir com confiança','S.A.',1,'da Costa Ltda.'),
(13,'Neonatologista',0x01,'57.106.983/0001-62','Serviços de A possibilidade de evoluir com força total','Ltda.',1,'Nunes e Filhos'),
(14,'Marceneiro',0x01,'30.951.426/0001-91','Serviços de A simplicidade de ganhar mais rapidamente','e Filhos',1,'Jesus'),
(15,'Técnico em óptica',0x00,'51.430.276/0001-40','Serviços de A liberdade de mudar antes de tudo','S/A',1,'Aragão Ferreira S/A'),
(16,'Tesoureiro',0x01,'95.068.327/0001-01','Serviços de O poder de ganhar mais rapidamente','- EI',1,'da Conceição'),
(17,'Geofísico',0x01,'38.402.179/0001-86','Serviços de A possibilidade de avançar antes de tudo','- ME',1,'Fonseca Caldeira - EI'),
(18,'Prático',0x01,'76.982.541/0001-24','Serviços de A arte de conseguir em estado puro','- ME',1,'Gomes'),
(19,'Lactarista hospitalar',0x00,'45.176.803/0001-30','Serviços de O conforto de concretizar seus projetos com força total','- ME',1,'Macedo'),
(20,'Pianista',0x00,'62.905.718/0001-84','Serviços de A certeza de ganhar de maneira eficaz','Ltda.',1,'Teixeira Ltda.'),
(21,'Tecnólogo em produção de bebidas',0x01,'21.389.705/0001-12','Serviços de O direito de realizar seus sonhos com confiança','S.A.',1,'Fogaça'),
(22,'Berçarista',0x00,'38.719.645/0001-51','Serviços de O direito de avançar antes de tudo','S.A.',1,'Barbosa Ltda.'),
(23,'Hostess',0x01,'10.253.789/0001-46','Serviços de O conforto de evoluir mais facilmente','Ltda.',1,'Azevedo'),
(24,'Surfista',0x00,'48.105.329/0001-43','Serviços de O direito de inovar simplesmente','e Filhos',1,'Freitas - EI'),
(25,'Office-boy',0x01,'86.294.075/0001-48','Serviços de A certeza de realizar seus sonhos com confiança','- EI',1,'Gonçalves Ribeiro Ltda.'),
(26,'Flanelinha',0x00,'96.587.024/0001-68','Serviços de A simplicidade de realizar seus sonhos de maneira eficaz','- EI',1,'Casa Grande e Filhos'),
(27,'Guardador de veículos',0x01,'61.375.842/0001-12','Serviços de A simplicidade de ganhar naturalmente','- EI',1,'Sousa - EI'),
(28,'Subprefeito',0x00,'63.849.150/0001-94','Serviços de A liberdade de inovar sem preocupação','- ME',1,'Sales Costa - EI'),
(29,'Engenheiro de controle e automação',0x00,'84.270.593/0001-04','Serviços de A vantagem de evoluir em estado puro','S/A',1,'Casa Grande - EI'),
(30,'Técnico em segurança do trabalho',0x00,'61.047.539/0001-90','Serviços de A segurança de evoluir com confiança','e Filhos',1,'Vasconcelos e Filhos'),
(31,'Jogador de handebol',0x00,'82.067.345/0001-27','Serviços de A simplicidade de avançar naturalmente','- EI',1,'Cavalcante'),
(32,'Acompanhante',0x01,'76.013.859/0001-05','Serviços de O poder de atingir seus objetivos com toda a tranquilidade','Ltda.',1,'Cardoso Barros S/A'),
(33,'Promotor de eventos',0x01,'06.532.987/0001-71','Serviços de A possibilidade de concretizar seus projetos mais facilmente','Ltda.',1,'Nunes'),
(34,'Cadista',0x01,'97.263.051/0001-48','Serviços de A certeza de ganhar mais rapidamente','- EI',1,'da Luz Leão S.A.'),
(35,'Numerólogo',0x00,'04.578.329/0001-95','Serviços de A liberdade de concretizar seus projetos naturalmente','S/A',1,'Cunha S/A'),
(36,'Técnico em desporto',0x01,'02.546.178/0001-68','Serviços de A simplicidade de inovar simplesmente','S.A.',1,'Freitas'),
(37,'Triatleta',0x01,'40.893.725/0001-70','Serviços de A simplicidade de conseguir de maneira eficaz','- ME',1,'da Mata'),
(38,'Designer de moda',0x00,'42.789.501/0001-49','Serviços de A vantagem de mudar sem preocupação','- EI',1,'Marques - EI'),
(39,'Broker/Corretor da bolsa de valores',0x01,'07.361.549/0001-50','Serviços de O conforto de ganhar mais facilmente','S/A',1,'Azevedo'),
(40,'Salgadeira',0x01,'84.395.167/0001-99','Serviços de O direito de ganhar mais facilmente','S.A.',1,'Ramos'),
(41,'Confeiteiro',0x00,'21.874.350/0001-57','Serviços de O prazer de mudar com toda a tranquilidade','e Filhos',1,'Oliveira da Luz S/A'),
(42,'Controlador de vôo',0x01,'04.357.198/0001-16','Serviços de O prazer de atingir seus objetivos com confiança','- ME',1,'Freitas S/A'),
(43,'Ministro',0x01,'15.924.367/0001-79','Serviços de A simplicidade de realizar seus sonhos em estado puro','S.A.',1,'Brito Mendonça S/A'),
(44,'Gerente de banco',0x00,'75.290.468/0001-67','Serviços de A vantagem de ganhar direto da fonte','S.A.',1,'Costa Ltda.'),
(45,'Veterinário',0x01,'95.268.047/0001-47','Serviços de A possibilidade de mudar direto da fonte','e Filhos',1,'Rodrigues'),
(46,'Gastroenterologista',0x00,'68.071.352/0001-71','Serviços de A certeza de realizar seus sonhos com força total','- ME',1,'Albuquerque S/A'),
(47,'Conferente de expedição',0x01,'70.589.162/0001-92','Serviços de A possibilidade de concretizar seus projetos antes de tudo','- EI',1,'Cardoso'),
(48,'Relações públicas',0x01,'39.140.857/0001-42','Serviços de A possibilidade de evoluir em estado puro','- EI',1,'Silva'),
(49,'Produtor editorial',0x00,'23.947.568/0001-10','Serviços de A simplicidade de ganhar simplesmente','- EI',1,'Carvalho Ferreira Ltda.'),
(50,'Ufólogo',0x00,'49.307.126/0001-00','Serviços de A simplicidade de atingir seus objetivos simplesmente','Ltda.',1,'Rodrigues e Filhos'),
(51,'Alfaiate',0x01,'35.106.987/0001-08','Serviços de A possibilidade de evoluir com força total','S.A.',1,'Sampaio Mendes - ME'),
(52,'Designer de moda',0x01,'17.830.964/0001-60','Serviços de A segurança de concretizar seus projetos com toda a tranquilidade','- EI',1,'Rezende'),
(53,'Prensista',0x00,'83.910.642/0001-55','Serviços de O poder de evoluir com toda a tranquilidade','Ltda.',1,'Mendes'),
(54,'Fonoaudiólogo',0x01,'53.792.180/0001-58','Serviços de A vantagem de avançar mais facilmente','- EI',1,'Montenegro da Rosa S.A.'),
(55,'Defensor Público',0x01,'96.150.782/0001-14','Serviços de A certeza de mudar mais rapidamente','Ltda.',1,'Cardoso'),
(56,'Juiz de futebol',0x00,'82.017.543/0001-86','Serviços de A certeza de conseguir com força total','S.A.',1,'Castro'),
(57,'Profissional de recursos humanos',0x01,'35.904.872/0001-69','Serviços de O conforto de conseguir sem preocupação','- EI',1,'Lopes S/A'),
(58,'Engenheiro de produto ou produção',0x00,'07.254.391/0001-10','Serviços de A liberdade de ganhar de maneira eficaz','e Filhos',1,'Pacheco Nunes - EI'),
(59,'Barbeiro',0x01,'72.354.061/0001-68','Serviços de A arte de concretizar seus projetos sem preocupação','- ME',1,'Costa'),
(60,'Jogador de hóquei',0x00,'86.490.537/0001-00','Serviços de A vantagem de realizar seus sonhos em estado puro','S/A',1,'Lopes da Rocha e Filhos'),
(61,'Bombeiro',0x00,'07.629.315/0001-41','Serviços de O poder de concretizar seus projetos antes de tudo','S/A',1,'Cirino Ltda.'),
(62,'Operador de telemarketing',0x01,'29.456.381/0001-08','Serviços de A certeza de inovar naturalmente','- EI',1,'Marques S.A.'),
(63,'Recreador',0x01,'04.971.536/0001-05','Serviços de A arte de atingir seus objetivos com toda a tranquilidade','S.A.',1,'da Cruz'),
(64,'Comandante',0x00,'30.182.567/0001-97','Serviços de A simplicidade de ganhar em estado puro','- ME',1,'Pastor e Filhos'),
(65,'Matemático',0x00,'02.698.451/0001-70','Serviços de O direito de avançar simplesmente','Ltda.',1,'da Mata'),
(66,'Conferente de carga e descarga',0x01,'29.301.687/0001-87','Serviços de A vantagem de avançar de maneira eficaz','- EI',1,'Carvalho Pimenta - ME'),
(67,'Relações públicas',0x01,'79.845.126/0001-17','Serviços de A simplicidade de atingir seus objetivos com força total','S/A',1,'Carvalho Novais S.A.'),
(68,'Arquiteto',0x01,'86.529.371/0001-80','Serviços de O poder de evoluir sem preocupação','- EI',1,'Araújo'),
(69,'Artista/Técnico em espetáculos de diversões',0x01,'86.519.702/0001-00','Serviços de A vantagem de evoluir sem preocupação','S/A',1,'Gomes'),
(70,'Oftalmologista',0x00,'62.173.894/0001-79','Serviços de O poder de ganhar sem preocupação','e Filhos',1,'Lopes Araújo - ME'),
(71,'Administrador',0x01,'18.204.763/0001-10','Serviços de A liberdade de inovar sem preocupação','S.A.',1,'Câmara e Filhos'),
(72,'Cameraman',0x01,'71.230.986/0001-34','Serviços de O poder de inovar naturalmente','e Filhos',1,'Pinto S.A.'),
(73,'Taxista',0x00,'23.605.749/0001-68','Serviços de A possibilidade de realizar seus sonhos com toda a tranquilidade','Ltda.',1,'Araújo'),
(74,'Contra regra',0x01,'02.974.638/0001-59','Serviços de A arte de inovar direto da fonte','- EI',1,'Câmara Novaes Ltda.'),
(75,'Engenheiro de transportes',0x00,'37.960.815/0001-22','Serviços de A arte de atingir seus objetivos antes de tudo','Ltda.',1,'Martins'),
(76,'Panfleteiro',0x01,'47.302.195/0001-98','Serviços de A arte de mudar simplesmente','S.A.',1,'Sá'),
(77,'Afiador de ferramentas',0x00,'73.860.591/0001-40','Serviços de A simplicidade de ganhar mais rapidamente','- ME',1,'Pires'),
(78,'Camelô',0x00,'45.219.836/0001-10','Serviços de A possibilidade de ganhar mais facilmente','Ltda.',1,'da Luz'),
(79,'Boxeador',0x00,'82.435.601/0001-91','Serviços de A vantagem de evoluir mais facilmente','- EI',1,'Correia'),
(80,'Tecnólogo em processos químicos',0x01,'19.205.487/0001-77','Serviços de A liberdade de realizar seus sonhos mais rapidamente','S/A',1,'Abreu'),
(81,'Confeiteiro',0x00,'95.372.084/0001-09','Serviços de A segurança de mudar simplesmente','- EI',1,'Leão'),
(82,'Lanterneiro',0x00,'72.190.358/0001-35','Serviços de A certeza de avançar com confiança','e Filhos',1,'da Mata'),
(83,'Terapeuta floral',0x00,'09.542.167/0001-59','Serviços de O direito de ganhar com confiança','S.A.',1,'Gomes Lopes - ME'),
(84,'Físico',0x00,'31.620.754/0001-78','Serviços de A possibilidade de realizar seus sonhos mais rapidamente','- ME',1,'Souza - EI'),
(85,'Eletricista',0x00,'08.734.612/0001-10','Serviços de A segurança de realizar seus sonhos mais rapidamente','Ltda.',1,'Pinto Viana e Filhos'),
(86,'Filósofo',0x01,'60.831.425/0001-74','Serviços de A liberdade de inovar de maneira eficaz','S.A.',1,'Cavalcante'),
(87,'Personal stylist',0x00,'04.398.215/0001-63','Serviços de A vantagem de mudar com toda a tranquilidade','Ltda.',1,'Sales'),
(88,'Cartógrafo',0x01,'60.419.537/0001-12','Serviços de O prazer de conseguir com toda a tranquilidade','- EI',1,'Vieira'),
(89,'Escrivão',0x00,'03.147.956/0001-09','Serviços de O poder de atingir seus objetivos direto da fonte','Ltda.',1,'Peixoto'),
(90,'Harpista',0x00,'09.148.765/0001-48','Serviços de O conforto de concretizar seus projetos antes de tudo','- EI',1,'Lima S/A'),
(91,'Cantor',0x01,'26.507.938/0001-96','Serviços de A arte de conseguir sem preocupação','S/A',1,'Gonçalves S/A'),
(92,'Investigador particular',0x00,'65.129.348/0001-29','Serviços de O prazer de atingir seus objetivos mais facilmente','S.A.',1,'Montenegro'),
(93,'Faturista',0x01,'05.742.863/0001-58','Serviços de O poder de atingir seus objetivos de maneira eficaz','- EI',1,'Aparecida'),
(94,'Guincheiro',0x01,'83.249.510/0001-24','Serviços de A segurança de concretizar seus projetos em estado puro','S/A',1,'Mendes Ltda.'),
(95,'Cientista da informação e documentação',0x00,'47.895.120/0001-68','Serviços de O conforto de avançar antes de tudo','Ltda.',1,'Ferreira S.A.'),
(96,'Retificador',0x01,'46.095.231/0001-27','Serviços de A simplicidade de avançar simplesmente','S/A',1,'Albuquerque'),
(97,'Engenheiro de transportes',0x01,'12.576.480/0001-12','Serviços de A simplicidade de ganhar com toda a tranquilidade','- ME',1,'Garcia Albuquerque - EI'),
(98,'Geradorista',0x01,'97.683.501/0001-51','Serviços de O prazer de realizar seus sonhos em estado puro','e Filhos',1,'Macedo Ltda.'),
(99,'Gagsman',0x00,'10.657.893/0001-04','Serviços de A liberdade de mudar antes de tudo','- ME',1,'Sousa e Filhos'),
(100,'Fisiculturista',0x01,'54.139.087/0001-01','Serviços de O prazer de conseguir mais facilmente','S/A',1,'Garcia');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `grupo_permissao`
--

DROP TABLE IF EXISTS `grupo_permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_permissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_permissao` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_permissao`
--

LOCK TABLES `grupo_permissao` WRITE;
/*!40000 ALTER TABLE `grupo_permissao` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `grupo_permissao` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `log_atividade`
--

DROP TABLE IF EXISTS `log_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_atividade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int(11) DEFAULT NULL,
  `tipo_acao` varchar(255) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_atividade`
--

LOCK TABLES `log_atividade` WRITE;
/*!40000 ALTER TABLE `log_atividade` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `log_atividade` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `log_validacao`
--

DROP TABLE IF EXISTS `log_validacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_validacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `detalhe` varchar(255) DEFAULT NULL,
  `etapa` int(11) DEFAULT NULL,
  `modulo` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_validacao`
--

LOCK TABLES `log_validacao` WRITE;
/*!40000 ALTER TABLE `log_validacao` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `log_validacao` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_fiscal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj_contratante` varchar(255) DEFAULT NULL,
  `nome_empresa` varchar(255) DEFAULT NULL,
  `cnpj_fornecedor` varchar(255) DEFAULT NULL,
  `endereco_fornecedor` varchar(255) DEFAULT NULL,
  `data_vencimento` datetime(6) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  `aliquota` double DEFAULT NULL,
  `base_calculo` double DEFAULT NULL,
  `cnpj_emitente` varchar(255) DEFAULT NULL,
  `credito_iptu` double DEFAULT NULL,
  `data_emissao` datetime(6) DEFAULT NULL,
  `id_contrato` int(11) DEFAULT NULL,
  `informacao_adicional` varchar(255) DEFAULT NULL,
  `inscricao_municipal` varchar(255) DEFAULT NULL,
  `nome_moeda` varchar(255) DEFAULT NULL,
  `numero_identificador` varchar(255) DEFAULT NULL,
  `tipo_nota` varchar(255) DEFAULT NULL,
  `valor_deducoes` double DEFAULT NULL,
  `valor_inss` double DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_fiscal`
--

LOCK TABLES `nota_fiscal` WRITE;
/*!40000 ALTER TABLE `nota_fiscal` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `nota_fiscal` VALUES
(1,NULL,NULL,NULL,NULL,'2025-12-22 02:31:41.196000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',8822.54,1,0.037,7940.286000000001,'97.416.835/0001-69',0,'2025-11-22 02:31:41.196000',60,'Ab temporibus impedit doloribus hic.','9211472','BRL','f9052ed5-37dc-4d56-afe8-db62d69112b5','Serviço',441.13,873.43,26,1,1),
(2,NULL,NULL,NULL,NULL,'2025-10-08 06:35:47.115000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',8925.7,1,0.052,8033.130000000001,'39.204.567/0001-15',0,'2025-09-08 06:35:47.115000',70,'Reiciendis nam quae harum soluta ut.','1124388','BRL','c5118cd8-9f5f-41e9-a587-585f7f5e598e','Serviço',446.29,883.64,33,10,1),
(3,NULL,NULL,NULL,NULL,'2025-09-01 22:53:38.641000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',8133.01,1,0.136,7319.709000000001,'71.653.098/0001-24',0,'2025-08-02 22:53:38.641000',77,'Esse blanditiis laudantium ab recusandae dignissimos.','3729161','BRL','b530329f-2bb8-4240-bfbd-55be3c5bf595','Serviço',406.65,805.17,81,10,1),
(4,NULL,NULL,NULL,NULL,'2025-12-18 06:00:21.418000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',5405.14,1,0.125,4864.626,'86.345.290/0001-20',0,'2025-11-18 06:00:21.418000',33,'Reprehenderit aperiam expedita corrupti repellat assumenda.','2666588','BRL','8e7fabb5-e7f0-42c1-a821-40c2bf91ed39','Serviço',270.26,535.11,13,5,1),
(5,NULL,NULL,NULL,NULL,'2025-08-30 09:34:12.548000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',2999.95,1,0.103,2699.955,'72.680.315/0001-38',0,'2025-07-31 09:34:12.548000',21,'Ex beatae hic odit iure.','8794279','BRL','43ff73ed-78bd-4f40-8ac3-b308def5fae3','Serviço',150,297,92,9,4),
(6,NULL,NULL,NULL,NULL,'2025-12-19 22:06:51.722000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',1635.83,1,0.089,1472.247,'54.796.803/0001-23',0,'2025-11-19 22:06:51.722000',26,'Magni illo autem molestiae recusandae ex officiis impedit.','2265882','BRL','c127086f-509c-488a-bb66-735ef2c6e421','Serviço',81.79,161.95,71,6,2),
(7,NULL,NULL,NULL,NULL,'2025-12-16 11:57:52.296000',NULL,'Nota fiscal referente ao Contrato de Análise de Crédito e Risco',6306.95,1,0.074,5676.255,'62.014.953/0001-66',0,'2025-11-16 11:57:52.296000',69,'Occaecati exercitationem neque aut impedit repudiandae harum.','3048324','BRL','b403745f-6b39-4ea8-9a3a-77a481259b89','Serviço',315.35,624.39,49,2,4),
(8,NULL,NULL,NULL,NULL,'2026-01-05 16:32:26.001000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',1253.99,1,0.029,1128.5910000000001,'19.235.864/0001-10',0,'2025-12-06 16:32:26.001000',80,'Sed ea veritatis alias harum possimus veritatis.','4633482','BRL','9d2f07c7-6880-45bd-a024-e7643feed992','Serviço',62.7,124.15,5,2,1),
(9,NULL,NULL,NULL,NULL,'2025-08-27 23:30:38.567000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',8267.48,1,0.034,7440.732,'47.068.923/0001-49',0,'2025-07-28 23:30:38.567000',100,'Voluptates suscipit omnis hic minima.','6838311','BRL','2db0d5c8-c6cd-48ab-8682-78da7efdb2ac','Serviço',413.37,818.48,3,7,4),
(10,NULL,NULL,NULL,NULL,'2025-10-01 09:12:45.748000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',440.1,1,0.073,396.09000000000003,'52.478.906/0001-10',0,'2025-09-01 09:12:45.748000',40,'Optio cumque sed nostrum possimus.','2238982','BRL','cd941a00-7925-4f32-85b8-a132b397cf9b','Serviço',22.01,43.57,59,2,4),
(11,NULL,NULL,NULL,NULL,'2025-09-28 16:53:58.051000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',3005.35,1,0.129,2704.815,'48.536.172/0001-00',0,'2025-08-29 16:53:58.051000',38,'Est culpa architecto omnis.','8486282','BRL','ca96441f-1b9e-492d-b978-b9328e43f20e','Serviço',150.27,297.53,33,2,4),
(12,NULL,NULL,NULL,NULL,'2025-07-11 16:12:48.946000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',2539.68,1,0.126,2285.712,'17.538.692/0001-29',0,'2025-06-11 16:12:48.946000',14,'Quam quas laudantium.','3196379','BRL','ba7ccfed-2b3c-420b-897a-e18ae89ccf70','Serviço',126.98,251.43,8,6,4),
(13,NULL,NULL,NULL,NULL,'2025-08-03 13:39:48.902000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',9785.24,1,0.121,8806.716,'51.864.932/0001-13',0,'2025-07-04 13:39:48.902000',64,'Aspernatur totam alias non vitae.','1630953','BRL','913b5c92-bd9f-47d9-8c8b-06324b1bdca1','Serviço',489.26,968.74,80,9,3),
(14,NULL,NULL,NULL,NULL,'2025-08-06 09:50:41.232000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',1199.84,1,0.143,1079.856,'68.047.513/0001-91',0,'2025-07-07 09:50:41.232000',61,'Eos culpa voluptatibus earum.','9960672','BRL','535a112d-fc42-4f6e-a236-7ad511044bbe','Serviço',59.99,118.78,72,1,2),
(15,NULL,NULL,NULL,NULL,'2025-07-22 06:34:56.463000',NULL,'Nota fiscal referente ao Contrato de Análise de Crédito e Risco',7106.82,1,0.148,6396.138,'08.912.435/0001-14',0,'2025-06-22 06:34:56.463000',99,'Doloribus omnis consectetur.','4560612','BRL','cede2abb-1e06-4cdd-b67a-3b31696981e8','Serviço',355.34,703.58,40,4,2),
(16,NULL,NULL,NULL,NULL,'2025-10-20 04:55:19.759000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',1011.39,1,0.06,910.251,'31.204.867/0001-92',0,'2025-09-20 04:55:19.759000',8,'Voluptatum eveniet porro libero.','6932075','BRL','d5f92dc5-5550-4aa7-b436-bd1f6edc37e6','Serviço',50.57,100.13,1,8,2),
(17,NULL,NULL,NULL,NULL,'2025-07-30 11:17:05.749000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',9775.55,1,0.141,8797.994999999999,'93.610.527/0001-19',0,'2025-06-30 11:17:05.749000',73,'Similique cumque cumque cumque.','7497211','BRL','7991785b-1954-48f5-a0c0-3ed108740876','Serviço',488.78,967.78,88,3,1),
(18,NULL,NULL,NULL,NULL,'2025-08-24 20:30:15.799000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',5315.19,1,0.022,4783.670999999999,'09.435.187/0001-20',0,'2025-07-25 20:30:15.799000',58,'Nesciunt officia corrupti ullam quidem placeat.','4652016','BRL','46280183-4d3d-47b3-8acd-a2f56715cb04','Serviço',265.76,526.2,75,7,2),
(19,NULL,NULL,NULL,NULL,'2025-12-04 12:30:52.527000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',220.68,1,0.089,198.61200000000002,'85.367.924/0001-83',0,'2025-11-04 12:30:52.527000',52,'Iste eaque nesciunt earum.','1200054','BRL','cb9aafab-b586-46cc-bff3-0edb60abfe4b','Serviço',11.03,21.85,81,6,2),
(20,NULL,NULL,NULL,NULL,'2025-09-03 16:29:25.954000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',2342.6,1,0.035,2108.34,'42.738.056/0001-98',0,'2025-08-04 16:29:25.954000',4,'Quam debitis dignissimos.','7124900','BRL','0b61b9ca-ffba-41a1-a282-f4ef584d271e','Serviço',117.13,231.92,37,2,4),
(21,NULL,NULL,NULL,NULL,'2025-12-10 04:33:16.802000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',820.33,1,0.132,738.297,'89.467.025/0001-03',0,'2025-11-10 04:33:16.802000',12,'Molestiae nesciunt odio ducimus placeat minima.','8797032','BRL','65c6de5c-bcf2-4b53-b1ba-c499c5a0b144','Serviço',41.02,81.21,84,2,4),
(22,NULL,NULL,NULL,NULL,'2025-07-23 16:34:22.329000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',261.64,1,0.038,235.476,'17.963.524/0001-80',0,'2025-06-23 16:34:22.329000',100,'Odit qui optio ut totam.','7626271','BRL','ec62a713-80a3-4169-add0-1c650030d05e','Serviço',13.08,25.9,4,10,4),
(23,NULL,NULL,NULL,NULL,'2025-12-10 13:21:11.764000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',8009.87,1,0.097,7208.883,'34.781.259/0001-39',0,'2025-11-10 13:21:11.764000',54,'Dignissimos quod vitae expedita qui veniam.','5461923','BRL','2d4741e6-579d-43ef-a6c7-2ce969089c20','Serviço',400.49,792.98,8,7,4),
(24,NULL,NULL,NULL,NULL,'2025-08-24 08:17:50.142000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',255.81,1,0.029,230.229,'47.862.035/0001-01',0,'2025-07-25 08:17:50.142000',42,'Dolor architecto labore fugiat illum itaque iure omnis.','9898609','BRL','08a986d9-8c4d-452a-8359-7b392cc32035','Serviço',12.79,25.33,88,3,1),
(25,NULL,NULL,NULL,NULL,'2025-09-14 22:32:33.430000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',245.66,1,0.083,221.094,'61.237.509/0001-47',0,'2025-08-15 22:32:33.430000',63,'Ducimus alias reiciendis eius commodi odio debitis.','8582895','BRL','5bf30158-8d5e-49db-a5c9-7c29c7a8a2d6','Serviço',12.28,24.32,42,3,1),
(26,NULL,NULL,NULL,NULL,'2025-09-14 22:01:09.745000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',5258.3,1,0.028,4732.47,'08.164.957/0001-85',0,'2025-08-15 22:01:09.745000',90,'Excepturi culpa odio.','7819473','BRL','1421a47f-9853-471f-9df9-6d54796a6a7d','Serviço',262.92,520.57,22,3,4),
(27,NULL,NULL,NULL,NULL,'2025-12-04 19:19:56.852000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',7771.53,1,0.051,6994.3769999999995,'01.926.843/0001-86',0,'2025-11-04 19:19:56.852000',25,'Ipsa cumque atque illo iure aut corporis nisi.','1468467','BRL','9fde1ef6-0975-4344-9d2c-acac7f81be7b','Serviço',388.58,769.38,45,4,1),
(28,NULL,NULL,NULL,NULL,'2025-07-29 23:23:34.763000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',4147.6,1,0.104,3732.8400000000006,'37.402.189/0001-59',0,'2025-06-29 23:23:34.763000',63,'Magni ut deserunt asperiores aliquid.','1963193','BRL','6ee3a93b-0429-42b7-931d-73c182df76db','Serviço',207.38,410.61,75,4,3),
(29,NULL,NULL,NULL,NULL,'2025-08-23 01:35:47.930000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',3057.99,1,0.088,2752.191,'84.630.597/0001-48',0,'2025-07-24 01:35:47.930000',94,'Quod consequuntur perspiciatis veniam expedita aliquid harum.','8118295','BRL','085d4c8e-2cbc-4eaf-a815-8fdcf61dff73','Serviço',152.9,302.74,79,10,3),
(30,NULL,NULL,NULL,NULL,'2025-11-11 17:44:41.257000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',2470.31,1,0.03,2223.279,'94.867.305/0001-49',0,'2025-10-12 17:44:41.257000',17,'Dolor rem nemo voluptate dolor.','7645516','BRL','0e41f336-5e97-4969-b913-bc5a747344e3','Serviço',123.52,244.56,69,10,2),
(31,NULL,NULL,NULL,NULL,'2026-01-05 13:47:57.430000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',485.15,1,0.052,436.635,'46.301.589/0001-69',0,'2025-12-06 13:47:57.430000',94,'Nihil magni temporibus quisquam quos omnis dicta esse.','3753549','BRL','d665bc90-6d3a-44c9-8592-753b6f2be601','Serviço',24.26,48.03,71,7,4),
(32,NULL,NULL,NULL,NULL,'2025-07-20 12:44:56.118000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',3613.46,1,0.113,3252.114,'47.358.619/0001-36',0,'2025-06-20 12:44:56.118000',17,'Quos dignissimos rerum eius sit maxime.','9344458','BRL','014702e6-3235-4080-a108-aa95f4598923','Serviço',180.67,357.73,24,7,1),
(33,NULL,NULL,NULL,NULL,'2025-12-10 10:26:06.306000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',4912.27,1,0.12,4421.043000000001,'83.502.971/0001-67',0,'2025-11-10 10:26:06.306000',55,'Excepturi officia inventore omnis architecto.','6321921','BRL','7583fbac-f577-4c0d-be68-01086736700b','Serviço',245.61,486.31,69,1,1),
(34,NULL,NULL,NULL,NULL,'2025-07-21 09:18:14.084000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',591.62,1,0.071,532.458,'29.750.481/0001-34',0,'2025-06-21 09:18:14.084000',8,'Recusandae cumque saepe porro exercitationem perferendis.','7445387','BRL','5adba45b-2df0-449b-a1fa-28edb4ca2c5f','Serviço',29.58,58.57,40,10,1),
(35,NULL,NULL,NULL,NULL,'2025-11-07 22:22:11.593000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',8553.55,1,0.045,7698.195,'47.605.923/0001-30',0,'2025-10-08 22:22:11.593000',65,'Cum quaerat iure dicta quidem et.','3697508','BRL','80a52155-29f7-400e-bd4d-8316bf448d31','Serviço',427.68,846.8,56,8,1),
(36,NULL,NULL,NULL,NULL,'2025-09-14 16:56:09.501000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',1438.76,1,0.131,1294.884,'56.130.782/0001-38',0,'2025-08-15 16:56:09.501000',19,'Omnis culpa quia.','9490038','BRL','fba67755-9691-4014-831c-9d1114173c27','Serviço',71.94,142.44,35,5,2),
(37,NULL,NULL,NULL,NULL,'2025-12-15 00:21:07.959000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',9891.11,1,0.118,8901.999000000002,'71.953.046/0001-73',0,'2025-11-15 00:21:07.959000',67,'Dolore dolorem ipsum ducimus.','6297649','BRL','bb72fc42-ef2f-43bd-84bb-ec9e0884bd6d','Serviço',494.56,979.22,79,9,4),
(38,NULL,NULL,NULL,NULL,'2025-11-12 14:57:41.955000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',422.77,1,0.058,380.493,'29.708.416/0001-40',0,'2025-10-13 14:57:41.955000',35,'Cupiditate nulla magnam facilis aut.','9596296','BRL','fc03b835-3762-4b5f-b72f-afd725d785b7','Serviço',21.14,41.85,59,2,3),
(39,NULL,NULL,NULL,NULL,'2025-07-17 15:44:15.478000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',5205.97,1,0.118,4685.3730000000005,'39.618.207/0001-60',0,'2025-06-17 15:44:15.478000',55,'Minima quis ipsa impedit similique placeat soluta.','5878955','BRL','f7ce40d9-7d59-4afc-ac61-64dc73f879b7','Serviço',260.3,515.39,45,7,3),
(40,NULL,NULL,NULL,NULL,'2025-09-05 05:16:22.218000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',3621.42,1,0.137,3259.2780000000002,'76.319.284/0001-45',0,'2025-08-06 05:16:22.218000',1,'Ducimus ullam eveniet consequatur assumenda neque.','3503973','BRL','ba14e833-af92-4641-b8bf-3b70d50e46dc','Serviço',181.07,358.52,47,6,1),
(41,NULL,NULL,NULL,NULL,'2025-07-29 22:20:15.397000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',3347.09,1,0.043,3012.3810000000003,'14.570.298/0001-80',0,'2025-06-29 22:20:15.397000',66,'Sequi explicabo quo iure sit explicabo.','2996654','BRL','d62c1697-8fb2-4ceb-98c6-8836a1b3d771','Serviço',167.35,331.36,41,2,1),
(42,NULL,NULL,NULL,NULL,'2025-10-02 05:01:16.020000',NULL,'Nota fiscal referente ao Contrato de Gestão de Investimentos para Empresas',3498.81,1,0.062,3148.929,'62.185.394/0001-57',0,'2025-09-02 05:01:16.020000',79,'Tenetur alias consequatur tempora.','4540240','BRL','6047d394-6ccb-4d53-a9db-141e199c1061','Serviço',174.94,346.38,47,9,4),
(43,NULL,NULL,NULL,NULL,'2025-08-10 03:31:08.290000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',9187.69,1,0.026,8268.921,'35.892.461/0001-09',0,'2025-07-11 03:31:08.290000',23,'Tenetur numquam consequatur aspernatur enim.','4510923','BRL','9fdcbfb0-faad-47df-b289-02d8fc3c46ce','Serviço',459.38,909.58,28,8,1),
(44,NULL,NULL,NULL,NULL,'2025-09-20 16:18:38.319000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',5707.98,1,0.049,5137.182,'76.310.892/0001-99',0,'2025-08-21 16:18:38.319000',9,'Ducimus qui praesentium laboriosam.','8667732','BRL','c75f0d85-b78a-4197-b859-968f336fb40c','Serviço',285.4,565.09,85,10,2),
(45,NULL,NULL,NULL,NULL,'2025-10-27 06:25:11.702000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',4671.88,1,0.08,4204.692,'52.940.638/0001-06',0,'2025-09-27 06:25:11.702000',14,'Tempora eaque quas iure hic eveniet doloribus.','4443532','BRL','098350fc-1d45-43d1-8199-6100021ec638','Serviço',233.59,462.52,92,9,2),
(46,NULL,NULL,NULL,NULL,'2025-12-24 16:13:04.345000',NULL,'Nota fiscal referente ao Contrato de Desenvolvimento de Modelos Financeiros',8197.93,1,0.11,7378.137000000001,'50.312.687/0001-79',0,'2025-11-24 16:13:04.345000',95,'Ad earum quisquam ipsam cupiditate delectus ullam.','2489341','BRL','d35393be-1702-4271-bcf5-681e60ec5d49','Serviço',409.9,811.6,27,8,1),
(47,NULL,NULL,NULL,NULL,'2025-11-06 10:39:46.768000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',4434.62,1,0.029,3991.158,'76.502.318/0001-32',0,'2025-10-07 10:39:46.768000',89,'Earum quo accusantium est excepturi quos neque.','6129765','BRL','85f5d3ec-328b-437c-95e8-2235eca355ef','Serviço',221.73,439.03,94,2,3),
(48,NULL,NULL,NULL,NULL,'2025-10-27 01:23:55.452000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',3541.42,1,0.117,3187.2780000000002,'45.089.627/0001-07',0,'2025-09-27 01:23:55.452000',28,'Debitis quae fugit.','2465287','BRL','c69c6867-4061-4bf6-8893-e058d6b9a037','Serviço',177.07,350.6,37,3,4),
(49,NULL,NULL,NULL,NULL,'2025-11-19 03:19:28.130000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',4978.36,1,0.132,4480.523999999999,'74.591.802/0001-50',0,'2025-10-20 03:19:28.130000',32,'Fuga saepe accusamus et culpa voluptatem.','3647713','BRL','62d5e5de-355a-4f3c-8be9-27536e9e0c42','Serviço',248.92,492.86,66,8,1),
(50,NULL,NULL,NULL,NULL,'2025-09-08 18:27:41.813000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',7957.39,1,0.143,7161.651000000001,'59.827.403/0001-51',0,'2025-08-09 18:27:41.813000',23,'Ipsa reiciendis nulla laudantium ad similique ad.','3351831','BRL','c91e8a90-13e9-4db9-b8cb-d1ff9dafdfed','Serviço',397.87,787.78,86,3,1),
(51,NULL,NULL,NULL,NULL,'2025-08-17 04:13:41.176000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',979.18,1,0.042,881.262,'84.195.230/0001-43',0,'2025-07-18 04:13:41.176000',38,'Eveniet reiciendis maiores repellat.','7644421','BRL','e1a1a02e-6b5a-4bbb-88ea-b5b34d80de5b','Serviço',48.96,96.94,52,10,2),
(52,NULL,NULL,NULL,NULL,'2025-10-25 22:29:20.114000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',9111.38,1,0.074,8200.242,'27.136.508/0001-78',0,'2025-09-25 22:29:20.114000',3,'Non voluptatum laborum quis numquam perferendis.','6579128','BRL','4d9f9372-b4df-4e1e-ab64-5a50e15162c7','Serviço',455.57,902.03,30,2,2),
(53,NULL,NULL,NULL,NULL,'2025-09-02 03:52:45.747000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',7363.66,1,0.135,6627.294,'49.038.276/0001-58',0,'2025-08-03 03:52:45.747000',33,'Sapiente ipsam fugiat repellendus.','6578712','BRL','cb0fc6a6-a42c-4a04-80a4-244fe48d520a','Serviço',368.18,729,12,4,2),
(54,NULL,NULL,NULL,NULL,'2025-11-16 22:21:55.483000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',3267.36,1,0.037,2940.6240000000003,'28.639.415/0001-29',0,'2025-10-17 22:21:55.483000',74,'Ad odit voluptates.','7013389','BRL','fe42d7ee-f7e1-4b57-b54e-4ac30da7e8bd','Serviço',163.37,323.47,59,7,2),
(55,NULL,NULL,NULL,NULL,'2025-12-08 09:28:36.620000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',8214.56,1,0.073,7393.103999999999,'24.601.597/0001-98',0,'2025-11-08 09:28:36.620000',25,'Quibusdam ratione dignissimos inventore doloribus ducimus ad.','3915581','BRL','9e43432b-e481-4978-9b35-a19898530ff1','Serviço',410.73,813.24,76,3,3),
(56,NULL,NULL,NULL,NULL,'2025-09-08 19:52:54.169000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',6475.45,1,0.136,5827.905,'52.160.384/0001-03',0,'2025-08-09 19:52:54.169000',1,'Consequatur veniam at magni magni.','4622245','BRL','7fd6ea6e-9f61-4fcf-bb4e-29f0297ef056','Serviço',323.77,641.07,94,10,2),
(57,NULL,NULL,NULL,NULL,'2025-11-26 12:35:57.318000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',3868.7,1,0.089,3481.83,'52.987.361/0001-77',0,'2025-10-27 12:35:57.318000',94,'Incidunt molestiae nobis dolore.','3985754','BRL','e87d3113-bbbd-4ac9-9b3a-946e4b11226d','Serviço',193.44,383,49,10,2),
(58,NULL,NULL,NULL,NULL,'2025-12-06 00:40:48.390000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',1185.9,1,0.033,1067.3100000000002,'95.123.807/0001-28',0,'2025-11-06 00:40:48.390000',34,'Optio illo ab.','3707205','BRL','f59f6e7d-6d08-4a3c-9619-eabc8e5948e8','Serviço',59.3,117.4,29,5,1),
(59,NULL,NULL,NULL,NULL,'2025-09-28 06:10:56.372000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',1279.72,1,0.032,1151.748,'95.876.314/0001-69',0,'2025-08-29 06:10:56.372000',53,'Corrupti quidem excepturi architecto dolores temporibus recusandae ab.','5610872','BRL','61276625-f673-452c-95d7-14014c93c825','Serviço',63.99,126.69,54,5,1),
(60,NULL,NULL,NULL,NULL,'2025-12-21 15:55:31.313000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',3444.43,1,0.026,3099.987,'90.215.763/0001-42',0,'2025-11-21 15:55:31.313000',22,'Accusantium facere vitae laboriosam molestias ad perspiciatis molestiae.','8642579','BRL','ead3d6fa-f3c0-4b91-b3fa-eab0f7de8149','Serviço',172.22,341,68,2,3),
(61,NULL,NULL,NULL,NULL,'2025-12-10 07:39:13.102000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',8597.59,1,0.074,7737.831,'52.149.763/0001-00',0,'2025-11-10 07:39:13.102000',42,'Eaque occaecati veritatis dolore.','7760877','BRL','4b895086-3af5-4cec-b795-051b741ea14b','Serviço',429.88,851.16,87,4,2),
(62,NULL,NULL,NULL,NULL,'2025-11-23 17:44:15.684000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',4765.91,1,0.085,4289.319,'08.916.742/0001-73',0,'2025-10-24 17:44:15.684000',83,'Harum voluptatem ratione totam eius architecto.','7893215','BRL','1a612f82-9afb-4687-8e54-98bd99522635','Serviço',238.3,471.83,99,3,2),
(63,NULL,NULL,NULL,NULL,'2025-08-06 00:51:38.088000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',2995.57,1,0.141,2696.0130000000004,'94.578.026/0001-65',0,'2025-07-07 00:51:38.088000',86,'Vel deleniti a autem vero beatae.','8019345','BRL','f0892ddd-3f47-49c4-b66e-73718b89a599','Serviço',149.78,296.56,28,8,3),
(64,NULL,NULL,NULL,NULL,'2025-10-13 05:33:45.558000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',6534.55,1,0.069,5881.095,'92.604.173/0001-37',0,'2025-09-13 05:33:45.558000',1,'Facere tenetur corporis.','5013055','BRL','5201ce56-bbe5-46db-87bd-0b2337dbed5d','Serviço',326.73,646.92,37,7,2),
(65,NULL,NULL,NULL,NULL,'2025-08-30 08:59:54.202000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',8834.36,1,0.095,7950.924000000001,'38.156.490/0001-92',0,'2025-07-31 08:59:54.202000',92,'Quae numquam perferendis nostrum.','5631249','BRL','ffbed018-fead-49b1-bacc-5f0a60d405bd','Serviço',441.72,874.6,28,7,3),
(66,NULL,NULL,NULL,NULL,'2025-10-17 12:00:36.119000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',518.04,1,0.078,466.236,'10.485.692/0001-69',0,'2025-09-17 12:00:36.119000',78,'Accusamus voluptatum quae.','6171004','BRL','54ccb2c4-c033-4356-8103-56b1400eb8dc','Serviço',25.9,51.29,72,6,1),
(67,NULL,NULL,NULL,NULL,'2025-09-08 06:04:31.962000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',6906.68,1,0.024,6216.012000000001,'35.817.409/0001-80',0,'2025-08-09 06:04:31.962000',55,'Explicabo corrupti consequuntur ullam.','6317999','BRL','e2a07655-f4a5-4420-8cd6-6671d0a1e686','Serviço',345.33,683.76,55,2,4),
(68,NULL,NULL,NULL,NULL,'2025-09-09 14:11:30.081000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',8277.77,1,0.024,7449.993,'87.153.294/0001-70',0,'2025-08-10 14:11:30.081000',94,'Quibusdam praesentium repellat neque.','5219868','BRL','7c618afa-0ae1-41a2-8e9c-4fd4175056e3','Serviço',413.89,819.5,73,7,2),
(69,NULL,NULL,NULL,NULL,'2025-12-22 16:15:47.090000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',8770.57,1,0.101,7893.513,'19.052.347/0001-06',0,'2025-11-22 16:15:47.090000',90,'Sit voluptatem totam doloremque assumenda quis recusandae.','9218323','BRL','7645ff21-6e55-4ffe-9f67-535001c1a148','Serviço',438.53,868.29,91,8,4),
(70,NULL,NULL,NULL,NULL,'2025-12-08 03:03:26.291000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',4188.5,1,0.146,3769.65,'14.268.039/0001-07',0,'2025-11-08 03:03:26.291000',64,'Nam accusamus fugiat quis.','8317793','BRL','fab1d5aa-8d64-481f-87eb-3d59e90d33d0','Serviço',209.43,414.66,53,9,1),
(71,NULL,NULL,NULL,NULL,'2025-09-05 15:38:24.214000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',9915.84,1,0.058,8924.256000000001,'02.369.574/0001-67',0,'2025-08-06 15:38:24.214000',90,'Perferendis eius provident id.','8080386','BRL','ba7fb1c2-717d-4e6e-8f85-2df3e6210079','Serviço',495.79,981.67,59,7,3),
(72,NULL,NULL,NULL,NULL,'2025-09-03 11:50:09.801000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',1764.17,1,0.145,1587.7530000000002,'26.159.807/0001-65',0,'2025-08-04 11:50:09.801000',91,'Atque est repellendus.','5223730','BRL','c699ddf1-9e17-4a80-baba-ca31fa138756','Serviço',88.21,174.65,26,7,4),
(73,NULL,NULL,NULL,NULL,'2025-09-13 18:27:33.935000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',376.92,1,0.083,339.228,'10.863.275/0001-02',0,'2025-08-14 18:27:33.935000',10,'Odit enim sunt alias in quibusdam nostrum.','6444764','BRL','25d582b4-d75e-4411-aaff-9fc5ea1ecb6f','Serviço',18.85,37.32,84,6,1),
(74,NULL,NULL,NULL,NULL,'2025-11-30 08:02:52.451000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',2973.54,1,0.041,2676.186,'89.542.713/0001-90',0,'2025-10-31 08:02:52.451000',70,'Nihil explicabo reiciendis odio minus vitae sint.','6352779','BRL','03fc018c-0fe8-402f-ac67-4b1f53be6c73','Serviço',148.68,294.38,55,7,2),
(75,NULL,NULL,NULL,NULL,'2025-09-29 15:15:34.988000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',6754.15,1,0.116,6078.735,'09.735.128/0001-78',0,'2025-08-30 15:15:34.988000',67,'Ipsum cum quas ullam ut exercitationem.','1018917','BRL','445c589a-0de9-4907-b929-3bd5111cebc0','Serviço',337.71,668.66,6,6,3),
(76,NULL,NULL,NULL,NULL,'2025-07-21 07:33:34.301000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',8409.06,1,0.028,7568.1539999999995,'67.405.928/0001-27',0,'2025-06-21 07:33:34.301000',19,'Aspernatur sequi dignissimos.','3047499','BRL','a02a3f30-3ce5-43bd-b8a7-86d897b69f13','Serviço',420.45,832.5,9,3,1),
(77,NULL,NULL,NULL,NULL,'2025-10-05 04:54:29.827000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',2103.07,1,0.036,1892.7630000000001,'93.754.108/0001-50',0,'2025-09-05 04:54:29.827000',85,'Doloribus consequatur ullam enim quibusdam ipsum consequuntur architecto.','6335395','BRL','d55c765c-abb9-44af-94f4-035eb9e993bf','Serviço',105.15,208.2,69,7,1),
(78,NULL,NULL,NULL,NULL,'2025-10-23 08:47:26.968000',NULL,'Nota fiscal referente ao Contrato de Desenvolvimento de Modelos Financeiros',6660.25,1,0.026,5994.225,'68.014.239/0001-54',0,'2025-09-23 08:47:26.968000',76,'Expedita optio pariatur.','3810404','BRL','57af22b0-4904-4f25-bc04-519c8396f3fa','Serviço',333.01,659.36,39,6,1),
(79,NULL,NULL,NULL,NULL,'2025-08-06 08:14:09.564000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',2999.6,1,0.025,2699.64,'89.172.534/0001-09',0,'2025-07-07 08:14:09.564000',70,'Eum error tempore quia ipsam.','4404650','BRL','9e279b34-390b-4cf8-96c3-6551177a6449','Serviço',149.98,296.96,65,1,1),
(80,NULL,NULL,NULL,NULL,'2025-10-29 03:39:03.428000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',9281.43,1,0.087,8353.287,'06.589.714/0001-63',0,'2025-09-29 03:39:03.428000',16,'Nobis deleniti amet ipsum exercitationem nulla.','8143234','BRL','6e9a1d76-c339-4378-814b-a71cd0d5236f','Serviço',464.07,918.86,83,3,1),
(81,NULL,NULL,NULL,NULL,'2025-08-01 07:38:39.611000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',5990.53,1,0.05,5391.477,'95.681.402/0001-05',0,'2025-07-02 07:38:39.611000',45,'Ullam praesentium qui voluptatibus facilis atque provident.','7876051','BRL','acbcdca7-58fa-4526-a366-2948a2715e18','Serviço',299.53,593.06,1,1,3),
(82,NULL,NULL,NULL,NULL,'2025-10-22 04:58:29.293000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',6716.86,1,0.077,6045.174,'84.350.721/0001-11',0,'2025-09-22 04:58:29.293000',55,'Saepe praesentium saepe atque.','4641735','BRL','86a92222-8b1f-4bcc-bf32-e16296a5bcef','Serviço',335.84,664.97,76,9,3),
(83,NULL,NULL,NULL,NULL,'2025-08-09 21:28:59.557000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',119.44,1,0.038,107.496,'94.726.850/0001-15',0,'2025-07-10 21:28:59.557000',50,'Fuga necessitatibus autem iure expedita quidem dolore.','6837330','BRL','ed8c3655-8fc0-478f-8585-f191d5dca5cb','Serviço',5.97,11.82,86,9,2),
(84,NULL,NULL,NULL,NULL,'2025-11-26 16:58:33.446000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',5164.43,1,0.038,4647.987,'09.724.156/0001-90',0,'2025-10-27 16:58:33.446000',94,'Deleniti saepe ipsa.','6070809','BRL','4a4611e6-7cd2-4295-86aa-09f5117557cc','Serviço',258.22,511.28,87,10,1),
(85,NULL,NULL,NULL,NULL,'2025-10-19 17:43:48.227000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',3866.18,1,0.105,3479.562,'91.702.364/0001-79',0,'2025-09-19 17:43:48.227000',68,'Ratione ea esse.','3778361','BRL','a7f6bf9e-83f3-4fe3-8959-b8599217c53d','Serviço',193.31,382.75,14,4,1),
(86,NULL,NULL,NULL,NULL,'2025-09-18 20:46:16.408000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',7888.33,1,0.05,7099.497,'69.352.870/0001-26',0,'2025-08-19 20:46:16.408000',53,'Ratione velit molestias vel.','2477759','BRL','d30e8905-78e0-4c8f-b4fe-2facff821e21','Serviço',394.42,780.94,24,6,2),
(87,NULL,NULL,NULL,NULL,'2025-12-22 03:37:29.337000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',4112.19,1,0.133,3700.9709999999995,'20.963.547/0001-08',0,'2025-11-22 03:37:29.337000',90,'Ullam unde fugiat vitae autem.','3239962','BRL','14bc6395-2be5-47ec-9a81-bc510f9ce457','Serviço',205.61,407.11,85,10,1),
(88,NULL,NULL,NULL,NULL,'2025-08-02 04:04:55.205000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',2509.68,1,0.126,2258.712,'23.569.784/0001-79',0,'2025-07-03 04:04:55.205000',80,'Tempora atque veritatis.','6347603','BRL','82adbfd1-b848-481b-bad5-d8f7fc196890','Serviço',125.48,248.46,30,10,1),
(89,NULL,NULL,NULL,NULL,'2025-08-20 21:29:24.665000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',2788.98,1,0.052,2510.082,'67.392.814/0001-90',0,'2025-07-21 21:29:24.665000',15,'Odio laborum aliquam nulla deleniti sit minus eaque.','7752509','BRL','96b0f9ce-1fea-4408-ac0a-69eeab4c4a1f','Serviço',139.45,276.11,74,2,1),
(90,NULL,NULL,NULL,NULL,'2025-07-23 10:32:47.079000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',5062.76,1,0.131,4556.484,'03.687.195/0001-88',0,'2025-06-23 10:32:47.079000',9,'Esse ad iure pariatur accusantium.','2101704','BRL','8185e107-ee2e-444f-b52f-99ea1c852656','Serviço',253.14,501.21,69,9,2),
(91,NULL,NULL,NULL,NULL,'2025-12-13 11:40:22.776000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',7274.44,1,0.052,6546.996,'56.234.908/0001-14',0,'2025-11-13 11:40:22.776000',85,'Deserunt ex sint porro non.','5913135','BRL','4011ebc2-7e88-4bcc-b4cf-db15518cbbbb','Serviço',363.72,720.17,22,7,1),
(92,NULL,NULL,NULL,NULL,'2025-08-18 15:25:46.513000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',6022.49,1,0.05,5420.241,'69.021.354/0001-19',0,'2025-07-19 15:25:46.513000',93,'Voluptas eius explicabo ipsum possimus.','2827003','BRL','9957f842-29b6-4817-ace3-cf5c097d7c70','Serviço',301.12,596.23,7,5,2),
(93,NULL,NULL,NULL,NULL,'2025-08-12 10:55:39.346000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',4859.03,1,0.033,4373.1269999999995,'89.173.504/0001-17',0,'2025-07-13 10:55:39.346000',28,'Labore possimus distinctio ab mollitia non eligendi rem.','4924262','BRL','1b3d877a-96ec-4db7-822b-58578714ec99','Serviço',242.95,481.04,38,10,4),
(94,NULL,NULL,NULL,NULL,'2025-11-07 23:14:42.142000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',5782.7,1,0.033,5204.43,'92.571.483/0001-00',0,'2025-10-08 23:14:42.142000',48,'At tenetur voluptatibus.','5161759','BRL','5c024991-078a-4298-9c8f-e66a413a4e11','Serviço',289.13,572.49,50,2,3),
(95,NULL,NULL,NULL,NULL,'2025-09-08 17:14:23.505000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',7050.17,1,0.131,6345.153,'76.259.341/0001-48',0,'2025-08-09 17:14:23.505000',73,'Doloribus hic repellat voluptate sunt.','7631692','BRL','b0cdcbe6-2e56-4b6e-8262-66c99f63d04a','Serviço',352.51,697.97,47,7,2),
(96,NULL,NULL,NULL,NULL,'2025-09-11 12:16:33.873000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',9220.28,1,0.112,8298.252,'96.321.507/0001-16',0,'2025-08-12 12:16:33.873000',83,'Velit fuga esse omnis earum magnam ut.','6450332','BRL','19d78716-6a01-40df-b740-38643a9950f2','Serviço',461.01,912.81,95,3,2),
(97,NULL,NULL,NULL,NULL,'2025-09-12 17:25:47.894000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',7639.5,1,0.125,6875.55,'68.725.409/0001-09',0,'2025-08-13 17:25:47.894000',83,'Laudantium ratione dignissimos numquam consequuntur.','1345951','BRL','ba44d201-f8ec-4ce5-a48c-8151939630b1','Serviço',381.98,756.31,33,4,1),
(98,NULL,NULL,NULL,NULL,'2025-11-27 14:18:32.220000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',3241.27,1,0.086,2917.143,'75.832.649/0001-78',0,'2025-10-28 14:18:32.220000',89,'Sint tempora temporibus labore non quis voluptates.','4137282','BRL','0ad5e915-6535-4cc5-9daf-8738b9106b5f','Serviço',162.06,320.89,82,6,2),
(99,NULL,NULL,NULL,NULL,'2025-09-15 03:12:28.578000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',272.05,1,0.124,244.84500000000003,'48.520.167/0001-00',0,'2025-08-16 03:12:28.578000',74,'Sunt fugiat debitis recusandae eum.','2588901','BRL','79e0655f-230f-43b0-ad67-8f1e62db8871','Serviço',13.6,26.93,4,2,4),
(100,NULL,NULL,NULL,NULL,'2025-11-17 09:29:59.580000',NULL,'Nota fiscal referente ao Contrato de Gestão de Investimentos para Empresas',3512.77,1,0.03,3161.493,'15.238.469/0001-30',0,'2025-10-18 09:29:59.580000',79,'Consectetur sint nesciunt unde corrupti.','1031320','BRL','421802c0-4ba5-4577-8bfd-72d883b64075','Serviço',175.64,347.76,37,5,2);
/*!40000 ALTER TABLE `nota_fiscal` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_roles` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

LOCK TABLES `permissao` WRITE;
/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `solicitacao_servico`
--

DROP TABLE IF EXISTS `solicitacao_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao_servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operacao` varchar(255) DEFAULT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int(11) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `fk_nota_fiscal` (`nota_fiscal_id`),
  CONSTRAINT `fk_nota_fiscal` FOREIGN KEY (`nota_fiscal_id`) REFERENCES `nota_fiscal` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao_servico`
--

LOCK TABLES `solicitacao_servico` WRITE;
/*!40000 ALTER TABLE `solicitacao_servico` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `solicitacao_servico` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chave` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `token_reset_senha`
--

DROP TABLE IF EXISTS `token_reset_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_reset_senha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `tempo_expiracao` timestamp NOT NULL,
  `ip_requisicao` varchar(255) DEFAULT NULL,
  `usuario_de_criacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `fk_token_usuario` (`usuario_id`),
  CONSTRAINT `fk_token_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_reset_senha`
--

LOCK TABLES `token_reset_senha` WRITE;
/*!40000 ALTER TABLE `token_reset_senha` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `token_reset_senha` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `tokens_reset_senha`
--

DROP TABLE IF EXISTS `tokens_reset_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens_reset_senha` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `ip_requisicao` varchar(255) DEFAULT NULL,
  `tempo_expiracao` datetime(6) NOT NULL,
  `token_hash` varchar(255) NOT NULL,
  `usado` bit(1) NOT NULL,
  `usuario_de_criacao` varchar(255) DEFAULT NULL,
  `id_usuario_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa63i9mleovq01659n50nr3irl` (`id_usuario_id`),
  KEY `FKpcir7k259ds180btflw5d5wj2` (`id_usuario`),
  CONSTRAINT `FKa63i9mleovq01659n50nr3irl` FOREIGN KEY (`id_usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKpcir7k259ds180btflw5d5wj2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens_reset_senha`
--

LOCK TABLES `tokens_reset_senha` WRITE;
/*!40000 ALTER TABLE `tokens_reset_senha` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `tokens_reset_senha` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `representante_externo` bit(1) DEFAULT NULL,
  `representante_interno` bit(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `auditor` bit(1) DEFAULT NULL,
  `emissor` bit(1) DEFAULT NULL,
  `permissao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `usuario` VALUES
(1,'Analista Financeiro','otto.emissor@gmail.com',2,'Otto da Rosa','otto_emissor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$TzUGLKWHZw9+jI61PyAkDBSfzoSw3EsO5QGpXcCVl9M$8Q/WKiuH71Le6zdeOryLHy2So0BfCYAhazTMajHS1ywSiuL2RlWelKO7eylzuPgVU94ZD/AgTJvQkrSOQUCUiA',29,0x00,0x01,'Emissor'),
(2,'Gerente de Projetos','sr..gestor@gmail.com',3,'Sr. Thiago Aragão','sr._gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$igqCnCHiO+gKjFzvpSSUciUYQuTW0gEd4sXiU4dnH/Y$y1r4gsmke90K3G2qy63a7xjBIqkzwEJSYJL9PXLgpMRxR9CdDAvqMllhJzPbx8idJniLW7CJNW6VUHNKomP6Qw',76,0x01,0x00,'Gestor'),
(3,'Gerente de Projetos','dr..gestor@gmail.com',3,'Dr. João Lucas Macedo','dr._gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$TEY5+MUvNuy7y14cU1sD4xlXkCYIsbyVNwZmvIMZUSM$qLff7SWdFhD9X9pC4tF7V67H6F9+JlMzWcrsIn91hNrcK5PWAfa1BA8bwycyuEmxqdgkZDx2tdyj6JBpYTdSXw',33,0x01,0x00,'Gestor'),
(4,'Gerente de Projetos','sra..gestor@gmail.com',1,'Sra. Cecília Moura','sra._gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$xgdPomqxOyA979Hz31yY+nKT+cCNYA2DY0NazTy8CU4$6/1DDZHbnjif9RD1WBJ0/OcghEXSgISE9xcrkcz+XPxZP2FuOj0YllFiDR8DMe3SaES82qaj2NvW2CwAizGJXQ',89,0x01,0x00,'Gestor'),
(5,'Administrador','dr..adm@gmail.com',1,'Dr. Léo Aparecida','dr._admin',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$WbWyCMq15pvMnnf+LBAGpFPW+skObNtUWcoWfqsnnMQ$aKJxNhpj2pR123rNlZKDlcnE07EPnWADUnGJ0+0SvN8gfkKhRZ549O4tM5SRSFwH1VVo7BEepsfG5ZGxPzfBNA',89,0x00,0x00,'Adm. Interno'),
(6,'Administrador','sofia.adm@gmail.com',4,'Sofia Machado','sofia_admin',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$6GFRtdlcxjrjBX32Fo1E1Lo0Kl725AdCaWLJpet7vEo$2ACCtgjBhI88UAv4vYK6SD+jL1Ibl96w0UWJ4zGhrq3tyyKMVo99clc0yUJYVF+pbEGhJkOpc7EJyNYfiQu98g',15,0x00,0x00,'Adm. Interno'),
(7,'Analista Financeiro','sr..emissor@gmail.com',5,'Sr. Pedro Lucas Lopes','sr._emissor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$jFQiN/jt1xz3az1Z3o19IpI0NX0hLZnF4YxyAfhbFvY$ESbXGzl6CJ79uCvRULyDJi0wzJSeRxz7+wuj4dHLADKHmup1BEnFgPQo0bzEwRIYdjSYxJz2u89S+koTpQrAiA',32,0x00,0x01,'Emissor'),
(8,'Gerente de Projetos','mariane.gestor@gmail.com',1,'Mariane Andrade','mariane_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$2yZztEISJDKxceiW1u1LFow1yiFQwyvjRC3LY1fukU4$9D6kFb6pi+TsVwsxlh27yFaOf7Q4z+o28NIXKy+lQSdFBjtQQZ7qjT6at+2Eyffqdq96p9QeckiddanA/XToCg',29,0x01,0x00,'Gestor'),
(9,'Gerente de Projetos','sra..gestor@gmail.com',5,'Sra. Amanda Dias','sra._gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$0N6+umNi0uHyt07aNZ6dUvWtYqQ0Z3eIqviw1dFVXhc$pYfUB6oAOQ3Xjj/NHhTTQlo/dDU8v5S7zrXqyGoD72FdonaymJQ+GbshvWqtgPScNO5u5bbUckcIIByiBKvaJg',15,0x01,0x00,'Gestor'),
(10,'Administrador','vitor.adm@gmail.com',5,'Vitor Hugo Cassiano','vitor_admin',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$9xjOcVAugnNUIQuRi0U0+AsUcdHr2YK7SL8cv3d2UF0$T5hQwn1ppa4YD0CwT1h9iB6XJp24qbbw7AT0oJgtnbnNP5Fst5BoOiNaxosOwef/AN5qgO8GLkcNBf1pG8lXOw',19,0x00,0x00,'Adm. Interno');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-12-09 14:16:45
