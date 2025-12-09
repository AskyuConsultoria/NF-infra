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
(1,'2025-02-06 02:21:14.931000','Consultoria em Mercado de Capitais',5,84,'BRL','Contrato de Consultoria em Mercado de Capitais',0x01,'2 meses',8267.06),
(2,'2025-12-06 13:16:06.211000','Análise de Crédito e Risco',4,23,'BRL','Contrato de Análise de Crédito e Risco',0x00,'5 meses',5353.87),
(3,'2025-08-18 00:52:06.993000','Consultoria Financeira Personalizada',5,69,'BRL','Contrato de Consultoria Financeira Personalizada',0x01,'11 meses',31736.42),
(4,'2025-09-08 06:16:38.269000','Elaboração de Orçamentos Empresariais',3,95,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x00,'2 meses',12378.51),
(5,'2025-07-28 08:47:17.554000','Valuation de Empresas',5,88,'BRL','Contrato de Valuation de Empresas',0x01,'23 meses',29618.89),
(6,'2025-10-03 07:00:00.834000','Análise de Crédito e Risco',2,41,'BRL','Contrato de Análise de Crédito e Risco',0x01,'4 meses',2083.82),
(7,'2025-01-22 07:11:36.667000','Reestruturação de Dívidas',5,83,'BRL','Contrato de Reestruturação de Dívidas',0x01,'20 meses',10214.01),
(8,'2025-09-30 09:26:00.194000','Implantação de Governança Corporativa',3,21,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'8 meses',12685.4),
(9,'2025-06-14 23:16:10.882000','Seguros Empresariais e Previdência',4,90,'BRL','Contrato de Seguros Empresariais e Previdência',0x00,'23 meses',13608.71),
(10,'2025-02-14 02:31:50.016000','Consultoria Financeira Personalizada',4,8,'BRL','Contrato de Consultoria Financeira Personalizada',0x01,'3 meses',11383.66),
(11,'2025-04-16 09:56:44.836000','Elaboração de Orçamentos Empresariais',5,71,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'5 meses',6195.97),
(12,'2025-09-13 22:45:33.939000','Consultoria em Mercado de Capitais',3,65,'BRL','Contrato de Consultoria em Mercado de Capitais',0x01,'19 meses',24035.12),
(13,'2025-10-23 14:43:40.416000','Planejamento Tributário Estratégico',1,13,'BRL','Contrato de Planejamento Tributário Estratégico',0x00,'23 meses',16833.8),
(14,'2025-07-05 19:03:27.168000','Otimização de Fluxo de Caixa',1,40,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'18 meses',38255.67),
(15,'2025-02-22 22:00:41.559000','Consultoria Financeira Personalizada',5,47,'BRL','Contrato de Consultoria Financeira Personalizada',0x01,'1 meses',46471.91),
(16,'2025-05-19 17:13:48.191000','Implantação de Governança Corporativa',2,50,'BRL','Contrato de Implantação de Governança Corporativa',0x00,'13 meses',45585.26),
(17,'2025-05-15 12:55:23.465000','Consultoria em Mercado de Capitais',1,88,'BRL','Contrato de Consultoria em Mercado de Capitais',0x01,'3 meses',4921.13),
(18,'2025-08-27 23:14:54.527000','Gestão de Ativos e Passivos',4,67,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'11 meses',26531.2),
(19,'2025-10-11 21:20:11.867000','Valuation de Empresas',1,62,'BRL','Contrato de Valuation de Empresas',0x01,'14 meses',7336.14),
(20,'2024-12-18 11:08:20.928000','Recuperação Judicial e Extrajudicial',5,91,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x00,'23 meses',35899.72),
(21,'2025-08-31 21:10:58.352000','Serviços de Compliance Financeiro',5,72,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'1 meses',45894.09),
(22,'2025-07-14 02:20:55.781000','Gestão de Ativos e Passivos',5,38,'BRL','Contrato de Gestão de Ativos e Passivos',0x00,'18 meses',48011.01),
(23,'2025-06-20 22:13:20.895000','Recuperação Judicial e Extrajudicial',2,51,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'5 meses',15961.29),
(24,'2025-10-03 09:05:47.289000','Desenvolvimento de Modelos Financeiros',3,21,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x01,'2 meses',21916.28),
(25,'2025-02-01 23:56:53.766000','Gestão de Investimentos para Empresas',4,54,'BRL','Contrato de Gestão de Investimentos para Empresas',0x00,'1 meses',49235.98),
(26,'2025-01-27 09:33:18.632000','Consultoria em Câmbio e Comércio Exterior',5,68,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'11 meses',42678.2),
(27,'2025-03-19 07:34:28.134000','Seguros Empresariais e Previdência',5,35,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'15 meses',22590.96),
(28,'2025-12-04 19:40:31.390000','Serviços de Compliance Financeiro',4,36,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'19 meses',47381.03),
(29,'2025-08-14 03:44:07.495000','Gestão de Investimentos para Empresas',5,82,'BRL','Contrato de Gestão de Investimentos para Empresas',0x01,'5 meses',44629.08),
(30,'2025-05-03 01:49:34.305000','Due Diligence Financeira',3,87,'BRL','Contrato de Due Diligence Financeira',0x01,'8 meses',21950.24),
(31,'2025-10-11 01:36:13.850000','Due Diligence Financeira',5,47,'BRL','Contrato de Due Diligence Financeira',0x01,'20 meses',2175.69),
(32,'2025-10-23 19:06:33.976000','Auditoria Contábil Independente',2,11,'BRL','Contrato de Auditoria Contábil Independente',0x01,'22 meses',41486.44),
(33,'2025-01-22 09:50:53.916000','Otimização de Fluxo de Caixa',4,80,'BRL','Contrato de Otimização de Fluxo de Caixa',0x00,'4 meses',21456.7),
(34,'2025-08-03 20:46:18.575000','Análise de Crédito e Risco',4,16,'BRL','Contrato de Análise de Crédito e Risco',0x01,'6 meses',34490.55),
(35,'2025-06-29 22:30:23.078000','Elaboração de Orçamentos Empresariais',2,13,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x00,'3 meses',36390.21),
(36,'2025-11-06 13:26:49.676000','Implantação de Governança Corporativa',2,88,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'22 meses',48186.07),
(37,'2025-08-05 23:59:34.512000','Recuperação Judicial e Extrajudicial',2,69,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'15 meses',29343.5),
(38,'2025-11-14 13:42:03.222000','Consultoria em Câmbio e Comércio Exterior',1,91,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'16 meses',24852.91),
(39,'2025-01-21 21:51:00.803000','Consultoria em Câmbio e Comércio Exterior',2,4,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x00,'14 meses',6312.54),
(40,'2025-11-23 08:18:08.062000','Desenvolvimento de Modelos Financeiros',5,43,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x01,'17 meses',24041.01),
(41,'2024-12-10 00:29:32.028000','Implantação de Governança Corporativa',2,76,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'11 meses',28474.45),
(42,'2024-12-28 18:29:55.262000','Gestão de Ativos e Passivos',5,61,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'17 meses',15677.32),
(43,'2025-06-22 20:53:07.989000','Desenvolvimento de Modelos Financeiros',2,5,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x00,'13 meses',38423.91),
(44,'2025-10-27 23:03:57.127000','Consultoria Financeira Personalizada',4,78,'BRL','Contrato de Consultoria Financeira Personalizada',0x00,'23 meses',24481.69),
(45,'2025-02-01 10:07:38.467000','Planejamento Tributário Estratégico',5,83,'BRL','Contrato de Planejamento Tributário Estratégico',0x01,'11 meses',9264.19),
(46,'2025-09-22 14:50:41.465000','Consultoria Financeira Personalizada',4,34,'BRL','Contrato de Consultoria Financeira Personalizada',0x01,'7 meses',6082.98),
(47,'2025-08-19 23:55:48.907000','Serviços de Compliance Financeiro',5,56,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'4 meses',13507.51),
(48,'2025-08-28 04:14:43.360000','Recuperação Judicial e Extrajudicial',3,41,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'23 meses',21810.58),
(49,'2025-10-08 19:47:58.748000','Consultoria em Câmbio e Comércio Exterior',1,67,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'20 meses',15185.71),
(50,'2024-12-26 14:02:37.532000','Due Diligence Financeira',4,38,'BRL','Contrato de Due Diligence Financeira',0x01,'14 meses',29769.57),
(51,'2025-10-17 11:05:48.739000','Financiamento de Projetos',3,39,'BRL','Contrato de Financiamento de Projetos',0x00,'6 meses',35363.87),
(52,'2025-07-02 13:10:31.479000','Elaboração de Orçamentos Empresariais',1,56,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'24 meses',37445.79),
(53,'2025-03-19 23:22:11.914000','Due Diligence Financeira',4,26,'BRL','Contrato de Due Diligence Financeira',0x01,'21 meses',18139.12),
(54,'2025-05-10 18:29:07.707000','Consultoria em Mercado de Capitais',1,89,'BRL','Contrato de Consultoria em Mercado de Capitais',0x00,'20 meses',27770.75),
(55,'2025-11-19 16:36:11.313000','Serviços de Compliance Financeiro',5,61,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'21 meses',37393.26),
(56,'2025-07-19 20:57:31.778000','Reestruturação de Dívidas',1,49,'BRL','Contrato de Reestruturação de Dívidas',0x01,'8 meses',4786.08),
(57,'2025-05-25 11:39:45.572000','Elaboração de Orçamentos Empresariais',2,70,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'17 meses',19616.21),
(58,'2025-02-12 11:45:59.436000','Consultoria em Câmbio e Comércio Exterior',1,98,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'20 meses',41972.45),
(59,'2025-11-12 23:19:43.101000','Consultoria Financeira Personalizada',3,39,'BRL','Contrato de Consultoria Financeira Personalizada',0x01,'17 meses',8868.43),
(60,'2025-07-31 21:42:13.672000','Gestão de Ativos e Passivos',1,19,'BRL','Contrato de Gestão de Ativos e Passivos',0x01,'6 meses',9867.31),
(61,'2025-11-06 11:49:22.237000','Financiamento de Projetos',3,50,'BRL','Contrato de Financiamento de Projetos',0x01,'14 meses',35610.43),
(62,'2025-11-02 17:58:25.782000','Auditoria Contábil Independente',4,18,'BRL','Contrato de Auditoria Contábil Independente',0x01,'18 meses',31234.95),
(63,'2025-09-20 15:08:26.134000','Recuperação Judicial e Extrajudicial',4,65,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x01,'23 meses',15511.32),
(64,'2025-11-27 21:08:41.262000','Implantação de Governança Corporativa',4,65,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'5 meses',28578.71),
(65,'2025-08-05 23:52:36.999000','Valuation de Empresas',3,98,'BRL','Contrato de Valuation de Empresas',0x01,'18 meses',18850.03),
(66,'2025-03-06 23:20:06.175000','Seguros Empresariais e Previdência',1,82,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'10 meses',22427.53),
(67,'2025-11-03 13:42:37.865000','Seguros Empresariais e Previdência',2,63,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'10 meses',34360.59),
(68,'2025-05-20 05:23:38.984000','Assessoria em Fusões e Aquisições',1,37,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x00,'4 meses',23107.71),
(69,'2025-09-06 18:56:35.736000','Consultoria em Mercado de Capitais',5,23,'BRL','Contrato de Consultoria em Mercado de Capitais',0x01,'10 meses',34612.54),
(70,'2025-09-05 02:50:30.925000','Análise de Crédito e Risco',4,85,'BRL','Contrato de Análise de Crédito e Risco',0x01,'23 meses',27705.29),
(71,'2025-03-25 23:35:52.845000','Gestão de Ativos e Passivos',4,34,'BRL','Contrato de Gestão de Ativos e Passivos',0x00,'17 meses',23025.73),
(72,'2025-04-05 01:28:50.045000','Otimização de Fluxo de Caixa',4,60,'BRL','Contrato de Otimização de Fluxo de Caixa',0x00,'22 meses',28664.33),
(73,'2025-07-28 01:29:06.108000','Serviços de Compliance Financeiro',4,72,'BRL','Contrato de Serviços de Compliance Financeiro',0x01,'19 meses',28808.13),
(74,'2025-09-19 16:15:21.484000','Implantação de Governança Corporativa',1,16,'BRL','Contrato de Implantação de Governança Corporativa',0x00,'11 meses',5993.47),
(75,'2025-11-26 05:18:39.306000','Assessoria em Fusões e Aquisições',4,40,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'22 meses',19267.27),
(76,'2025-01-18 12:04:05.928000','Seguros Empresariais e Previdência',5,95,'BRL','Contrato de Seguros Empresariais e Previdência',0x00,'7 meses',26074.58),
(77,'2025-04-26 06:17:32.636000','Implantação de Governança Corporativa',3,11,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'6 meses',44927.38),
(78,'2025-05-19 12:08:43.355000','Assessoria em Fusões e Aquisições',2,98,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'23 meses',16006.04),
(79,'2025-01-04 17:48:16.739000','Consultoria em Câmbio e Comércio Exterior',4,81,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'3 meses',29071.17),
(80,'2025-01-14 19:59:28.873000','Desenvolvimento de Modelos Financeiros',4,56,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x00,'8 meses',12700.92),
(81,'2025-04-04 12:02:48.213000','Consultoria em Câmbio e Comércio Exterior',5,93,'BRL','Contrato de Consultoria em Câmbio e Comércio Exterior',0x01,'8 meses',24787.43),
(82,'2025-02-09 22:03:42.829000','Recuperação Judicial e Extrajudicial',2,57,'BRL','Contrato de Recuperação Judicial e Extrajudicial',0x00,'7 meses',49433.73),
(83,'2025-12-02 01:06:40.730000','Elaboração de Orçamentos Empresariais',5,47,'BRL','Contrato de Elaboração de Orçamentos Empresariais',0x01,'17 meses',12015.6),
(84,'2025-05-25 02:55:14.150000','Implantação de Governança Corporativa',1,81,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'15 meses',17166.97),
(85,'2025-08-07 15:39:15.175000','Auditoria Contábil Independente',2,25,'BRL','Contrato de Auditoria Contábil Independente',0x01,'8 meses',10559.92),
(86,'2025-06-12 15:02:55.765000','Implantação de Governança Corporativa',3,39,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'9 meses',33879.19),
(87,'2025-06-02 17:56:31.324000','Implantação de Governança Corporativa',5,85,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'3 meses',44751.42),
(88,'2025-02-20 07:46:54.808000','Financiamento de Projetos',4,40,'BRL','Contrato de Financiamento de Projetos',0x01,'14 meses',47530.03),
(89,'2025-05-15 10:51:08.120000','Assessoria em Fusões e Aquisições',4,2,'BRL','Contrato de Assessoria em Fusões e Aquisições',0x01,'17 meses',5455.56),
(90,'2025-01-08 06:50:13.927000','Otimização de Fluxo de Caixa',2,46,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'23 meses',7369.86),
(91,'2025-11-25 15:45:24.453000','Implantação de Governança Corporativa',1,23,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'14 meses',27768.35),
(92,'2025-01-03 00:40:02.859000','Desenvolvimento de Modelos Financeiros',2,94,'BRL','Contrato de Desenvolvimento de Modelos Financeiros',0x00,'5 meses',41429.07),
(93,'2025-03-23 11:48:01.280000','Implantação de Governança Corporativa',3,14,'BRL','Contrato de Implantação de Governança Corporativa',0x01,'8 meses',27637.49),
(94,'2024-12-30 08:50:59.119000','Seguros Empresariais e Previdência',1,1,'BRL','Contrato de Seguros Empresariais e Previdência',0x01,'1 meses',35545.88),
(95,'2025-03-27 14:13:18.954000','Gestão de Investimentos para Empresas',1,4,'BRL','Contrato de Gestão de Investimentos para Empresas',0x01,'19 meses',35167.67),
(96,'2025-11-08 04:00:42.885000','Otimização de Fluxo de Caixa',4,48,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'19 meses',43439.75),
(97,'2025-11-15 01:47:01.930000','Consultoria Financeira Personalizada',1,31,'BRL','Contrato de Consultoria Financeira Personalizada',0x00,'21 meses',10209.82),
(98,'2025-07-22 14:08:53.625000','Otimização de Fluxo de Caixa',5,11,'BRL','Contrato de Otimização de Fluxo de Caixa',0x01,'2 meses',38040.45),
(99,'2025-08-20 06:40:03.051000','Financiamento de Projetos',5,83,'BRL','Contrato de Financiamento de Projetos',0x01,'15 meses',5045.01),
(100,'2025-02-14 08:26:57.469000','Reestruturação de Dívidas',5,54,'BRL','Contrato de Reestruturação de Dívidas',0x01,'18 meses',28365.16);
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
(1,'Cobrador de pedágio',0x01,'83.910.625/0001-18','Serviços de A arte de ganhar com toda a tranquilidade','Ltda.',1,'Barros'),
(2,'Clap loader',0x01,'18.640.329/0001-82','Serviços de A arte de atingir seus objetivos com força total','- ME',1,'Moura Ltda.'),
(3,'Estampador de tecidos',0x00,'98.014.275/0001-89','Serviços de O direito de concretizar seus projetos simplesmente','- EI',1,'Pastor'),
(4,'Tecnólogo em Ciências das plantas medicinais',0x00,'26.504.379/0001-60','Serviços de A certeza de ganhar naturalmente','Ltda.',1,'Souza Souza Ltda.'),
(5,'Auxiliar de serviços gerais',0x01,'10.985.473/0001-49','Serviços de A certeza de avançar mais rapidamente','- ME',1,'Moraes'),
(6,'Fiscal',0x01,'79.836.214/0001-52','Serviços de O prazer de mudar antes de tudo','S.A.',1,'Silva'),
(7,'Defensor Público',0x01,'10.357.462/0001-14','Serviços de O prazer de atingir seus objetivos naturalmente','S.A.',1,'Câmara Ferreira e Filhos'),
(8,'Quiropraxista',0x00,'49.321.870/0001-51','Serviços de O poder de inovar com força total','- EI',1,'da Costa da Cunha Ltda.'),
(9,'Babá',0x01,'75.926.813/0001-06','Serviços de O conforto de conseguir direto da fonte','- ME',1,'Fonseca Ltda.'),
(10,'Comprador',0x01,'40.832.176/0001-24','Serviços de O conforto de evoluir de maneira eficaz','S/A',1,'Guerra'),
(11,'Dublador',0x01,'79.653.108/0001-33','Serviços de A possibilidade de avançar mais facilmente','Ltda.',1,'Silva'),
(12,'Técnico em óptica',0x00,'56.417.829/0001-49','Serviços de O poder de realizar seus sonhos simplesmente','Ltda.',1,'Mendonça Leão - EI'),
(13,'Cerimonialista',0x01,'57.193.648/0001-49','Serviços de A possibilidade de inovar com toda a tranquilidade','Ltda.',1,'Lima'),
(14,'Engenheiro de processos',0x01,'61.978.425/0001-64','Serviços de O prazer de concretizar seus projetos simplesmente','- ME',1,'Monteiro'),
(15,'Selecionador de pessoal',0x01,'69.234.508/0001-50','Serviços de A arte de ganhar direto da fonte','- EI',1,'Albuquerque - EI'),
(16,'Consultor de moda',0x01,'26.437.958/0001-38','Serviços de A vantagem de realizar seus sonhos em estado puro','Ltda.',1,'Mendonça S.A.'),
(17,'Cardiologista',0x00,'10.736.289/0001-65','Serviços de A simplicidade de avançar mais facilmente','S/A',1,'Pinto - ME'),
(18,'Cerimonialista',0x00,'74.961.203/0001-80','Serviços de A certeza de concretizar seus projetos sem preocupação','S.A.',1,'Sampaio - ME'),
(19,'Vistoriador de sinistros',0x00,'35.716.804/0001-76','Serviços de O conforto de inovar mais facilmente','S.A.',1,'Barros'),
(20,'Engraxate',0x01,'24.389.051/0001-15','Serviços de A liberdade de inovar com confiança','Ltda.',1,'Marques S.A.'),
(21,'Profissional de comércio exterior',0x00,'42.596.371/0001-28','Serviços de O prazer de atingir seus objetivos mais rapidamente','Ltda.',1,'Pires'),
(22,'Profissional de rádio e tv',0x00,'16.958.247/0001-55','Serviços de O direito de atingir seus objetivos direto da fonte','- ME',1,'Garcia'),
(23,'Mecânico',0x01,'56.931.427/0001-68','Serviços de A vantagem de avançar mais rapidamente','Ltda.',1,'Cavalcante Vieira - ME'),
(24,'Engenheiro aeronáutico',0x00,'46.319.720/0001-15','Serviços de O prazer de atingir seus objetivos com confiança','- EI',1,'Almeida'),
(25,'Jogador de golfe',0x00,'05.293.648/0001-17','Serviços de A vantagem de concretizar seus projetos simplesmente','S.A.',1,'Lopes - ME'),
(26,'Toxicologista',0x01,'83.795.460/0001-80','Serviços de A possibilidade de evoluir naturalmente','S.A.',1,'Macedo Cardoso - EI'),
(27,'Técnico em segurança do trabalho',0x01,'16.459.702/0001-78','Serviços de A arte de inovar de maneira eficaz','- EI',1,'Vargas'),
(28,'Florista',0x01,'27.608.193/0001-14','Serviços de O prazer de mudar sem preocupação','Ltda.',1,'Oliveira'),
(29,'Clap loader',0x00,'37.521.680/0001-07','Serviços de O direito de evoluir em estado puro','S.A.',1,'Marques Carvalho - EI'),
(30,'Lancheiro',0x01,'84.579.236/0001-14','Serviços de A certeza de realizar seus sonhos simplesmente','- ME',1,'Freitas'),
(31,'Paisagista',0x00,'63.781.290/0001-78','Serviços de O prazer de avançar de maneira eficaz','- EI',1,'Pereira'),
(32,'Acupunturista',0x01,'85.346.720/0001-66','Serviços de A possibilidade de mudar com força total','S/A',1,'Sales'),
(33,'Mestre cervejeiro',0x01,'30.148.276/0001-82','Serviços de O poder de evoluir sem preocupação','- EI',1,'Gonçalves'),
(34,'Meeiro',0x01,'94.853.127/0001-05','Serviços de O prazer de evoluir em estado puro','S/A',1,'Cavalcante'),
(35,'Violonista',0x01,'15.286.937/0001-42','Serviços de A certeza de ganhar direto da fonte','- EI',1,'Caldeira'),
(36,'Piloto automobilístico',0x00,'98.714.530/0001-04','Serviços de O prazer de evoluir com toda a tranquilidade','- EI',1,'Leão Ltda.'),
(37,'Tecnólogo em rochas ornamentais',0x01,'05.968.321/0001-06','Serviços de A vantagem de realizar seus sonhos direto da fonte','Ltda.',1,'Lopes'),
(38,'Protesista',0x01,'59.623.174/0001-53','Serviços de A vantagem de realizar seus sonhos mais rapidamente','S.A.',1,'Fogaça Correia e Filhos'),
(39,'Moldador',0x01,'01.427.839/0001-73','Serviços de A possibilidade de mudar simplesmente','- ME',1,'Albuquerque'),
(40,'Economista',0x00,'91.385.267/0001-08','Serviços de A certeza de realizar seus sonhos simplesmente','- EI',1,'das Neves Costela - ME'),
(41,'Administrador público',0x01,'71.802.536/0001-79','Serviços de A certeza de concretizar seus projetos mais rapidamente','e Filhos',1,'Sá'),
(42,'Almirante',0x01,'08.365.714/0001-05','Serviços de O prazer de inovar com força total','S.A.',1,'das Neves'),
(43,'Geradorista',0x00,'12.890.634/0001-46','Serviços de O poder de concretizar seus projetos com confiança','S.A.',1,'Montenegro Pastor - EI'),
(44,'Profissional de áudio',0x01,'83.749.612/0001-09','Serviços de O direito de atingir seus objetivos com confiança','Ltda.',1,'da Mota'),
(45,'Intérprete e tradutor de língua de sinais',0x00,'37.856.209/0001-61','Serviços de A vantagem de avançar sem preocupação','S/A',1,'Macedo'),
(46,'Webdesigner',0x01,'32.905.167/0001-98','Serviços de O prazer de conseguir simplesmente','S/A',1,'Campos'),
(47,'Guitarrista',0x00,'73.910.524/0001-93','Serviços de O poder de atingir seus objetivos de maneira eficaz','S/A',1,'Duarte S/A'),
(48,'Serralheiro',0x00,'56.712.809/0001-09','Serviços de A segurança de atingir seus objetivos mais rapidamente','e Filhos',1,'Monteiro'),
(49,'Tecnólogo em tecnologia da madeira',0x00,'80.735.296/0001-28','Serviços de A liberdade de conseguir com confiança','S.A.',1,'Gonçalves'),
(50,'Cambista',0x00,'67.289.315/0001-71','Serviços de O conforto de atingir seus objetivos de maneira eficaz','S/A',1,'Novais'),
(51,'Impressor',0x01,'03.241.967/0001-53','Serviços de A simplicidade de realizar seus sonhos naturalmente','Ltda.',1,'da Costa'),
(52,'Designer de produto ou desenhista industrial',0x00,'78.619.542/0001-34','Serviços de A segurança de atingir seus objetivos com força total','S/A',1,'Barros'),
(53,'Desenhista',0x00,'04.583.276/0001-09','Serviços de A arte de conseguir simplesmente','- ME',1,'Aparecida Sousa Ltda.'),
(54,'Jogador de tênis de mesa',0x01,'93.162.740/0001-05','Serviços de O conforto de ganhar direto da fonte','e Filhos',1,'Rocha Gonçalves S/A'),
(55,'Contábil',0x00,'78.639.204/0001-64','Serviços de A vantagem de realizar seus sonhos de maneira eficaz','S/A',1,'Barros da Cunha - ME'),
(56,'Afiador de ferramentas',0x01,'92.067.853/0001-69','Serviços de O conforto de mudar sem preocupação','- EI',1,'Silva Nascimento Ltda.'),
(57,'Profissional de reciclagem',0x00,'61.087.593/0001-60','Serviços de A certeza de avançar em estado puro','e Filhos',1,'Cardoso Freitas Ltda.'),
(58,'Transportador',0x01,'46.502.713/0001-54','Serviços de O conforto de realizar seus sonhos com força total','S.A.',1,'Siqueira'),
(59,'Arquiteto',0x00,'30.248.915/0001-81','Serviços de A simplicidade de atingir seus objetivos naturalmente','e Filhos',1,'da Cruz S/A'),
(60,'Oftalmologista',0x01,'65.314.298/0001-50','Serviços de O poder de inovar de maneira eficaz','S/A',1,'Aragão Sampaio S/A'),
(61,'Estivador',0x00,'01.978.423/0001-43','Serviços de A certeza de realizar seus sonhos com confiança','- ME',1,'Ramos'),
(62,'Cancerologista ou Oncologista',0x00,'68.354.702/0001-07','Serviços de O poder de conseguir mais rapidamente','S/A',1,'Sampaio'),
(63,'Camelô',0x01,'82.745.390/0001-93','Serviços de A arte de inovar de maneira eficaz','e Filhos',1,'Oliveira - EI'),
(64,'Conferente de expedição',0x00,'59.801.743/0001-03','Serviços de O conforto de concretizar seus projetos mais facilmente','S.A.',1,'Fernandes Cavalcante S/A'),
(65,'Comprador',0x01,'36.290.148/0001-55','Serviços de A liberdade de mudar direto da fonte','S/A',1,'Silva'),
(66,'Digitador',0x01,'39.548.016/0001-79','Serviços de A segurança de avançar antes de tudo','- EI',1,'Pires'),
(67,'Despachante',0x01,'17.352.960/0001-13','Serviços de A vantagem de atingir seus objetivos direto da fonte','S/A',1,'Rocha'),
(68,'Editor de mesa de corte',0x00,'69.874.510/0001-94','Serviços de A segurança de inovar sem preocupação','S/A',1,'Araújo - EI'),
(69,'Arqueólogo',0x01,'57.381.406/0001-89','Serviços de A vantagem de conseguir mais rapidamente','S/A',1,'Sampaio'),
(70,'Jogador de hóquei',0x00,'17.582.406/0001-22','Serviços de O direito de inovar sem preocupação','S/A',1,'Nascimento Cavalcante S/A'),
(71,'Técnico de som',0x00,'04.328.971/0001-16','Serviços de A liberdade de concretizar seus projetos mais rapidamente','S/A',1,'Ramos'),
(72,'Fisioterapeuta',0x01,'03.845.917/0001-85','Serviços de A vantagem de evoluir sem preocupação','- EI',1,'Sales'),
(73,'Kite-surfer',0x01,'80.691.243/0001-52','Serviços de O prazer de ganhar mais rapidamente','e Filhos',1,'Jesus'),
(74,'Síndico',0x01,'71.659.083/0001-73','Serviços de A vantagem de ganhar com toda a tranquilidade','S/A',1,'Barros'),
(75,'Gestor de recursos humanos',0x01,'46.510.823/0001-68','Serviços de A possibilidade de inovar naturalmente','S/A',1,'Gomes Ltda.'),
(76,'Dublador',0x01,'81.693.275/0001-50','Serviços de A possibilidade de evoluir antes de tudo','- EI',1,'Cavalcante'),
(77,'Radiologista',0x01,'60.839.274/0001-09','Serviços de A certeza de atingir seus objetivos naturalmente','- EI',1,'Pacheco'),
(78,'Cumim',0x00,'25.130.974/0001-10','Serviços de A segurança de ganhar com toda a tranquilidade','Ltda.',1,'da Cunha'),
(79,'Atleta de tiro com arco',0x01,'58.461.279/0001-90','Serviços de A segurança de conseguir mais rapidamente','Ltda.',1,'Peixoto Costa - ME'),
(80,'Xilógrafo',0x01,'10.453.782/0001-78','Serviços de O conforto de avançar sem preocupação','e Filhos',1,'Nogueira da Conceição S.A.'),
(81,'Figurante',0x00,'41.629.375/0001-00','Serviços de A simplicidade de realizar seus sonhos de maneira eficaz','S.A.',1,'Fogaça'),
(82,'Tapeceiro',0x00,'54.026.973/0001-29','Serviços de A liberdade de avançar antes de tudo','e Filhos',1,'Macedo Barros e Filhos'),
(83,'Arrumadeira',0x01,'78.426.193/0001-34','Serviços de A possibilidade de evoluir sem preocupação','Ltda.',1,'Cardoso'),
(84,'Caldeireiro',0x01,'01.268.435/0001-84','Serviços de A certeza de mudar mais facilmente','e Filhos',1,'Moreira Monteiro - ME'),
(85,'Engenheiro de aquicultura',0x01,'78.061.352/0001-44','Serviços de A certeza de ganhar naturalmente','- ME',1,'Martins'),
(86,'Assistente social',0x01,'04.816.539/0001-74','Serviços de O conforto de ganhar mais rapidamente','S/A',1,'Cavalcanti Camargo S/A'),
(87,'Lavador de veículos',0x00,'46.730.182/0001-57','Serviços de O direito de realizar seus sonhos naturalmente','Ltda.',1,'Silveira Caldeira e Filhos'),
(88,'Construtor',0x00,'10.248.679/0001-96','Serviços de A vantagem de mudar de maneira eficaz','- ME',1,'Moraes'),
(89,'Profissional de rádio e tv',0x01,'17.940.365/0001-07','Serviços de O direito de inovar com confiança','Ltda.',1,'Costela - EI'),
(90,'Lactarista hospitalar',0x00,'81.237.950/0001-36','Serviços de O conforto de conseguir com toda a tranquilidade','- EI',1,'Siqueira'),
(91,'Maitre',0x01,'43.821.697/0001-74','Serviços de A simplicidade de conseguir mais facilmente','- EI',1,'Cassiano'),
(92,'Percursionista',0x01,'27.483.690/0001-33','Serviços de O conforto de realizar seus sonhos naturalmente','S.A.',1,'Moreira Guerra Ltda.'),
(93,'Gari',0x00,'31.586.709/0001-44','Serviços de A segurança de avançar com força total','S.A.',1,'da Paz Ltda.'),
(94,'Amolador de ferramentas',0x00,'14.869.735/0001-60','Serviços de A certeza de mudar direto da fonte','e Filhos',1,'Carvalho da Luz S/A'),
(95,'Dermatologista',0x01,'76.495.281/0001-62','Serviços de O conforto de concretizar seus projetos simplesmente','- EI',1,'Garcia'),
(96,'Armeiro',0x00,'34.605.298/0001-85','Serviços de A certeza de conseguir em estado puro','e Filhos',1,'Ribeiro Borges S.A.'),
(97,'Consultor',0x00,'15.863.907/0001-51','Serviços de O direito de atingir seus objetivos em estado puro','Ltda.',1,'Albuquerque'),
(98,'Gerente de riscos em seguros',0x01,'07.326.981/0001-00','Serviços de A simplicidade de concretizar seus projetos antes de tudo','Ltda.',1,'Novaes'),
(99,'Dialoguista',0x01,'48.653.297/0001-10','Serviços de O poder de conseguir com força total','Ltda.',1,'Viana Moraes Ltda.'),
(100,'Profissional de informática',0x01,'30.981.752/0001-41','Serviços de O prazer de realizar seus sonhos antes de tudo','S.A.',1,'da Mata');
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
(1,NULL,NULL,NULL,NULL,'2026-02-04 17:12:30.107000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',3796.34,1,0.047,3416.706,'49.735.128/0001-92',0,'2025-12-17 17:12:30.107000',93,'Voluptates nobis ipsam.','2958479','BRL','bd854bea-2708-4f50-8468-aea1705a5f0f','Serviço',189.82,375.84,99,1,1),
(2,NULL,NULL,NULL,NULL,'2026-01-31 06:17:04.020000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',5843.98,1,0.063,5259.581999999999,'63.519.087/0001-28',0,'2025-12-26 06:17:04.020000',79,'Dolorem adipisci illum ex.','1043390','BRL','b36e4995-0afc-4f8c-9459-4d75d997c245','Serviço',292.2,578.55,30,1,2),
(3,NULL,NULL,NULL,NULL,'2026-01-28 14:12:13.930000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',6434,1,0.138,5790.6,'93.180.254/0001-10',0,'2025-12-24 14:12:13.930000',79,'Ipsam saepe eaque blanditiis officiis rem.','7809089','BRL','7cefb9ab-df21-4413-96a6-318bb6ada0fb','Serviço',321.7,636.97,94,1,3),
(4,NULL,NULL,NULL,NULL,'2025-12-27 01:10:25.443000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',777.72,1,0.139,699.9480000000001,'23.076.584/0001-84',0,'2025-12-02 01:10:25.443000',36,'Asperiores aperiam ab placeat similique.','2435613','BRL','b0c28c59-40dc-4a22-b46e-c26910d5fbde','Serviço',38.89,76.99,39,1,4),
(5,NULL,NULL,NULL,NULL,'2026-01-25 19:18:30.487000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',3773.8,1,0.088,3396.42,'32.164.798/0001-01',0,'2025-12-11 19:18:30.487000',16,'Suscipit sint saepe.','9705990','BRL','3545babd-6405-4ae6-9cc7-cabc37185d53','Serviço',188.69,373.61,86,2,1),
(6,NULL,NULL,NULL,NULL,'2025-12-20 12:53:02.544000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',7842.54,1,0.077,7058.286,'19.784.065/0001-01',0,'2025-12-05 12:53:02.544000',72,'Fuga fuga distinctio voluptas nesciunt deleniti similique.','6273836','BRL','d1e67158-5173-4b67-aace-c31dc192944a','Serviço',392.13,776.41,78,2,2),
(7,NULL,NULL,NULL,NULL,'2026-02-21 06:00:09.958000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',5716.06,1,0.097,5144.454000000001,'53.124.078/0001-84',0,'2025-12-30 06:00:09.958000',17,'Iusto dolorem asperiores laudantium.','8164322','BRL','9643d72a-a303-4ab8-8697-3473ba64c00d','Serviço',285.8,565.89,37,2,3),
(8,NULL,NULL,NULL,NULL,'2026-01-28 09:03:12.596000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',2604.41,1,0.046,2343.969,'51.368.947/0001-90',0,'2025-12-14 09:03:12.596000',36,'Voluptas praesentium ab nam voluptate.','9815777','BRL','c594c1c6-ae17-4d58-a380-1da8b2886ab6','Serviço',130.22,257.84,50,2,4),
(9,NULL,NULL,NULL,NULL,'2026-02-05 03:26:35.238000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',3279.08,1,0.142,2951.172,'32.197.586/0001-12',0,'2025-12-12 03:26:35.238000',71,'Porro eligendi cum laborum expedita.','5799719','BRL','b5388892-da39-4f9c-a481-1016f7c217b0','Serviço',163.95,324.63,38,3,1),
(10,NULL,NULL,NULL,NULL,'2026-02-16 15:42:00.297000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',326.47,1,0.15,293.82300000000004,'41.623.507/0001-89',0,'2025-12-25 15:42:00.297000',51,'Dolore nostrum ullam laudantium voluptate.','1747015','BRL','3691eb52-cf25-4d4f-abcc-146c3b2498b4','Serviço',16.32,32.32,11,3,2),
(11,NULL,NULL,NULL,NULL,'2026-01-22 03:31:33.140000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',4787.6,1,0.142,4308.84,'09.541.387/0001-68',0,'2025-12-21 03:31:33.140000',58,'Tenetur voluptatum delectus mollitia dicta.','1653113','BRL','7df9a26f-e27e-4285-b96d-77ec8eabde3e','Serviço',239.38,473.97,26,3,3),
(12,NULL,NULL,NULL,NULL,'2026-02-17 13:38:01.969000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',126.47,1,0.138,113.82300000000001,'49.301.768/0001-94',0,'2025-12-23 13:38:01.969000',22,'Vitae possimus cum perspiciatis voluptatem doloremque.','8712942','BRL','c28ea138-388a-4bf5-9576-9f03c1567a55','Serviço',6.32,12.52,96,3,4),
(13,NULL,NULL,NULL,NULL,'2026-01-12 07:14:25.084000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',3342.06,1,0.138,3007.854,'13.594.072/0001-56',0,'2025-12-20 07:14:25.084000',44,'Dicta laudantium natus quasi reprehenderit.','4164777','BRL','b837de01-b89f-4439-9007-e7868111f6ae','Serviço',167.1,330.86,85,4,1),
(14,NULL,NULL,NULL,NULL,'2026-02-04 00:10:06.411000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',8991.52,1,0.13,8092.368,'18.205.967/0001-75',0,'2025-12-23 00:10:06.411000',39,'Totam ipsa optio vitae nam dicta dignissimos.','7033609','BRL','e0693fee-0b13-427b-8ac1-2c50eeff3cf8','Serviço',449.58,890.16,91,4,2),
(15,NULL,NULL,NULL,NULL,'2025-12-27 08:17:46.581000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',524.87,1,0.105,472.38300000000004,'59.637.418/0001-57',0,'2025-12-11 08:17:46.581000',45,'Accusamus aspernatur occaecati amet itaque laborum.','6382287','BRL','7f3c234d-be03-42e0-b4c0-e3f9ef408fb6','Serviço',26.24,51.96,62,4,3),
(16,NULL,NULL,NULL,NULL,'2025-12-28 13:28:47.369000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',2926.99,1,0.05,2634.2909999999997,'74.932.685/0001-40',0,'2025-12-11 13:28:47.369000',64,'Dolore necessitatibus harum ut mollitia consectetur ut impedit.','7182617','BRL','4175b829-d570-431c-89b8-e23890aa4bbd','Serviço',146.35,289.77,69,4,4),
(17,NULL,NULL,NULL,NULL,'2026-01-05 13:19:02.214000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',7503.84,1,0.049,6753.456,'97.568.123/0001-65',0,'2025-12-19 13:19:02.214000',79,'Laboriosam aspernatur praesentium dolorum consequatur voluptates.','1378477','BRL','45fe7447-dbe1-4b69-8ce1-ea093ffdcc80','Serviço',375.19,742.88,54,5,1),
(18,NULL,NULL,NULL,NULL,'2026-02-19 04:18:39.771000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',8185.82,1,0.068,7367.238,'24.938.561/0001-02',0,'2025-12-21 04:18:39.771000',69,'Deserunt placeat ex perspiciatis.','9928440','BRL','bf9e3cb9-38ed-4595-bf0f-7224fdd6e9e9','Serviço',409.29,810.4,93,5,2),
(19,NULL,NULL,NULL,NULL,'2026-01-05 04:47:01.383000',NULL,'Nota fiscal referente ao Contrato de Análise de Crédito e Risco',8583.73,1,0.026,7725.357,'36.519.287/0001-08',0,'2025-12-16 04:47:01.383000',70,'Cum ullam nihil ab sed neque.','6129022','BRL','23416166-373a-472e-a9cd-d36f42add09d','Serviço',429.19,849.79,91,5,3),
(20,NULL,NULL,NULL,NULL,'2026-01-25 07:44:02.230000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',1873.5,1,0.08,1686.15,'50.641.987/0001-00',0,'2025-12-13 07:44:02.230000',21,'Officiis nesciunt corporis eveniet inventore aspernatur.','6678370','BRL','6ee4af25-5bac-4ced-bb37-c3fb88247617','Serviço',93.68,185.48,50,5,4),
(21,NULL,NULL,NULL,NULL,'2025-11-21 00:57:17.389000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',6955.98,1,0.046,6260.382,'65.341.082/0001-83',0,'2025-10-09 00:57:17.389000',67,'Doloribus nemo numquam perspiciatis totam occaecati.','7664026','BRL','ed5fb46b-52df-4456-8427-9203415ab6d5','Serviço',347.8,688.64,81,6,1),
(22,NULL,NULL,NULL,NULL,'2025-09-27 11:20:41.804000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',4896.59,1,0.027,4406.9310000000005,'19.850.267/0001-04',0,'2025-08-21 11:20:41.804000',86,'Blanditiis blanditiis laudantium repudiandae beatae in.','5632080','BRL','e0019733-a5cb-41b7-8373-9cd44803f0e3','Serviço',244.83,484.76,47,6,2),
(23,NULL,NULL,NULL,NULL,'2025-12-29 04:07:40.148000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',7371.9,1,0.093,6634.71,'74.352.198/0001-09',0,'2025-11-13 04:07:40.148000',10,'Quibusdam numquam totam nulla optio architecto sit.','3811024','BRL','39032d21-ecf7-48e4-8d3f-7cfa23f8d999','Serviço',368.6,729.82,69,6,3),
(24,NULL,NULL,NULL,NULL,'2025-11-28 16:47:13.967000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',5572.02,1,0.067,5014.818,'94.620.753/0001-43',0,'2025-10-11 16:47:13.967000',100,'Fuga placeat quam fugit quae quibusdam qui beatae.','4891941','BRL','50883656-c10a-4380-b154-2f33fbe412e8','Serviço',278.6,551.63,85,6,4),
(25,NULL,NULL,NULL,NULL,'2025-09-15 15:23:19.069000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',7295.68,1,0.091,6566.112,'84.619.725/0001-52',0,'2025-08-24 15:23:19.069000',49,'Repellat minima tempore quis quia quo perspiciatis.','7723062','BRL','3a4e262f-7943-42df-9ec9-341ca6be207d','Serviço',364.78,722.27,13,7,1),
(26,NULL,NULL,NULL,NULL,'2025-07-30 05:53:10.175000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',2058.27,1,0.08,1852.443,'96.782.543/0001-87',0,'2025-07-01 05:53:10.175000',17,'Tempore earum itaque ad vitae expedita cupiditate ipsum.','3074784','BRL','48c42bb8-1e9b-4b40-b8c3-8ccc044bc6eb','Serviço',102.91,203.77,37,7,2),
(27,NULL,NULL,NULL,NULL,'2026-01-15 14:16:07.993000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',1859.49,1,0.043,1673.541,'15.398.640/0001-79',0,'2025-12-01 14:16:07.993000',5,'Quod et voluptate soluta.','4144396','BRL','a30f2105-6383-421a-acf1-bab16e0f0b2d','Serviço',92.97,184.09,20,7,3),
(28,NULL,NULL,NULL,NULL,'2025-11-04 18:49:32.627000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',9039.53,1,0.021,8135.577000000001,'21.937.658/0001-02',0,'2025-10-08 18:49:32.627000',41,'Sit totam ullam ipsam iusto.','6521915','BRL','6b1798c4-c108-4da1-948e-3bddc31da954','Serviço',451.98,894.91,47,7,4),
(29,NULL,NULL,NULL,NULL,'2025-12-10 10:57:19.451000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',1659.4,1,0.07,1493.46,'98.135.607/0001-83',0,'2025-11-18 10:57:19.451000',83,'Voluptates repellendus nisi magnam quasi.','2523470','BRL','818b7a06-95bc-4e6b-a506-b55033aa057b','Serviço',82.97,164.28,38,8,1),
(30,NULL,NULL,NULL,NULL,'2025-06-29 17:05:55.854000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',7777.95,1,0.094,7000.155,'73.860.942/0001-13',0,'2025-06-13 17:05:55.854000',96,'Aliquam soluta facere animi.','3818915','BRL','0010b72e-625a-421b-8a52-f8e645f6db5b','Serviço',388.9,770.02,38,8,2),
(31,NULL,NULL,NULL,NULL,'2025-07-15 11:13:14.866000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',735.63,1,0.059,662.067,'07.419.628/0001-75',0,'2025-06-17 11:13:14.866000',36,'Laudantium odit necessitatibus iste necessitatibus nisi distinctio.','3450215','BRL','2d7c0a4d-f8c3-4540-955b-f8d1e0a592e4','Serviço',36.78,72.83,73,8,3),
(32,NULL,NULL,NULL,NULL,'2025-12-24 03:20:07.104000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',6140.34,1,0.137,5526.3060000000005,'50.739.814/0001-10',0,'2025-10-25 03:20:07.104000',89,'Laborum voluptatibus dolore animi ipsa.','5343898','BRL','e2e3855c-080d-4a84-9d76-dbdcdba8bbef','Serviço',307.02,607.89,48,8,4),
(33,NULL,NULL,NULL,NULL,'2025-07-21 05:03:13.619000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',551.81,1,0.14,496.62899999999996,'49.837.251/0001-14',0,'2025-06-25 05:03:13.619000',59,'Culpa excepturi a aliquam delectus vero.','7293597','BRL','5503ac09-9580-4651-895e-540a9132b3af','Serviço',27.59,54.63,36,9,1),
(34,NULL,NULL,NULL,NULL,'2025-09-26 17:16:14.167000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',1814.06,1,0.063,1632.654,'61.023.489/0001-01',0,'2025-08-16 17:16:14.167000',45,'Sit corporis veniam fugiat placeat odit.','8026602','BRL','606f5f6a-d8b8-4ddd-a14b-5c9e462065c2','Serviço',90.7,179.59,60,9,2),
(35,NULL,NULL,NULL,NULL,'2025-08-15 12:31:28.572000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',1294.05,1,0.081,1164.645,'51.768.249/0001-82',0,'2025-06-17 12:31:28.572000',30,'Officia praesentium aspernatur numquam eligendi necessitatibus perferendis illum.','8788742','BRL','061149c7-cb05-43c8-acf8-f1f39ea034d6','Serviço',64.7,128.11,35,9,3),
(36,NULL,NULL,NULL,NULL,'2025-10-31 10:17:02.183000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',1803,1,0.046,1622.7,'28.704.936/0001-12',0,'2025-09-30 10:17:02.183000',27,'Eveniet rem ex blanditiis ab placeat.','2677120','BRL','fd226384-4a54-4de1-8b3d-863fc4e1af18','Serviço',90.15,178.5,38,9,4),
(37,NULL,NULL,NULL,NULL,'2025-11-19 11:35:20.384000',NULL,'Nota fiscal referente ao Contrato de Desenvolvimento de Modelos Financeiros',4152.8,1,0.113,3737.5200000000004,'70.561.239/0001-16',0,'2025-10-07 11:35:20.384000',43,'Eligendi molestias alias magni itaque sint incidunt.','1894988','BRL','66655045-52ef-4570-984e-96f77a11e688','Serviço',207.64,411.13,12,10,1),
(38,NULL,NULL,NULL,NULL,'2025-11-25 17:49:07.217000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',8082.47,1,0.107,7274.223,'96.810.423/0001-46',0,'2025-10-29 17:49:07.217000',28,'Sint sit hic.','3497778','BRL','1522aa82-71a9-4516-bfd2-9e4ba07de2bc','Serviço',404.12,800.16,53,10,2),
(39,NULL,NULL,NULL,NULL,'2026-01-03 20:28:06.855000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',6922.44,1,0.108,6230.196,'90.756.384/0001-60',0,'2025-11-28 20:28:06.855000',60,'Optio mollitia magnam illum illum sint debitis.','8842093','BRL','71e63b64-d834-4ed7-a24d-7f3ff949ff68','Serviço',346.12,685.32,71,10,3),
(40,NULL,NULL,NULL,NULL,'2025-11-02 17:11:12.117000',NULL,'Nota fiscal referente ao Contrato de Desenvolvimento de Modelos Financeiros',3012.86,1,0.1,2711.574,'94.702.318/0001-68',0,'2025-10-11 17:11:12.117000',24,'Tempore ex quas hic suscipit.','7533122','BRL','27f0d938-af7b-4963-8a71-be2bf1017228','Serviço',150.64,298.27,73,10,4),
(41,NULL,NULL,NULL,NULL,'2025-11-06 20:03:45.627000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',7089.89,1,0.028,6380.901000000001,'19.784.023/0001-62',0,'2025-09-16 20:03:45.627000',28,'Soluta blanditiis iure accusamus.','2657717','BRL','7fdc94dd-9fa2-4c62-aa60-c5587a1dcb52','Serviço',354.49,701.9,96,5,3),
(42,NULL,NULL,NULL,NULL,'2025-10-30 01:18:07.210000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',9633.05,1,0.031,8669.744999999999,'74.952.013/0001-05',0,'2025-09-10 01:18:07.210000',78,'Vel et velit recusandae cum.','3917895','BRL','72faf8e2-c6f5-4208-8208-1b28c461b4fa','Serviço',481.65,953.67,55,5,2),
(43,NULL,NULL,NULL,NULL,'2025-08-28 21:09:14.399000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',5703.82,1,0.113,5133.438,'73.498.025/0001-30',0,'2025-07-04 21:09:14.399000',22,'Ullam cumque repudiandae eligendi asperiores non.','5452254','BRL','5d370843-f6f9-4e37-848b-65cc6196fd96','Serviço',285.19,564.68,64,6,3),
(44,NULL,NULL,NULL,NULL,'2025-09-10 09:04:42.655000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',822.08,1,0.12,739.8720000000001,'27.398.514/0001-01',0,'2025-07-29 09:04:42.655000',64,'Ad nulla facilis enim quasi voluptatum.','1534679','BRL','8776c6af-32eb-40ef-a1fa-f6dcea0f9728','Serviço',41.1,81.39,50,10,1),
(45,NULL,NULL,NULL,NULL,'2025-11-13 08:56:42.871000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',1593.2,1,0.104,1433.88,'50.718.463/0001-61',0,'2025-10-23 08:56:42.871000',56,'Animi aperiam hic ducimus eius laudantium temporibus consequatur.','7312304','BRL','d878d89b-380b-491f-bce0-e50bf37006d6','Serviço',79.66,157.73,51,4,1),
(46,NULL,NULL,NULL,NULL,'2025-12-08 10:38:58.158000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',9974.88,1,0.131,8977.392,'94.826.073/0001-80',0,'2025-11-06 10:38:58.158000',85,'Quibusdam odio aspernatur enim eaque laborum.','2864527','BRL','93740083-64eb-4165-acb5-0669d28ddec0','Serviço',498.74,987.51,60,5,4),
(47,NULL,NULL,NULL,NULL,'2025-09-11 06:07:16.202000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',8161.69,1,0.107,7345.521,'84.297.051/0001-17',0,'2025-08-13 06:07:16.202000',97,'Et sunt incidunt consectetur eum illo non voluptas.','8222575','BRL','6b84bf22-ad0a-4176-8181-e53777301d83','Serviço',408.08,808.01,32,8,1),
(48,NULL,NULL,NULL,NULL,'2025-09-14 09:17:25.943000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',2016.18,1,0.067,1814.5620000000001,'23.571.869/0001-91',0,'2025-08-09 09:17:25.943000',45,'Necessitatibus rem doloremque voluptatem dolor.','7357110','BRL','1677770d-cfca-4f04-a239-27a9551efcda','Serviço',100.81,199.6,82,9,1),
(49,NULL,NULL,NULL,NULL,'2025-11-13 17:49:51.013000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',1831.7,1,0.076,1648.53,'32.705.189/0001-04',0,'2025-09-24 17:49:51.013000',65,'Rem qui ex.','1153285','BRL','55d43518-ca3a-45f6-85ac-d399a6d00f5f','Serviço',91.59,181.34,55,5,4),
(50,NULL,NULL,NULL,NULL,'2025-11-22 15:19:51.279000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',9467.33,1,0.032,8520.597,'09.357.826/0001-87',0,'2025-09-29 15:19:51.279000',31,'Adipisci illum laudantium impedit illo necessitatibus optio.','5716221','BRL','48276fca-f003-4704-8308-955e53148997','Serviço',473.37,937.27,64,8,1),
(51,NULL,NULL,NULL,NULL,'2025-10-16 09:36:08.738000',NULL,'Nota fiscal referente ao Contrato de Análise de Crédito e Risco',4843.82,1,0.142,4359.438,'82.047.963/0001-05',0,'2025-09-21 09:36:08.738000',6,'Voluptates asperiores quibusdam facilis dicta provident eaque.','7821413','BRL','0631323d-1b37-4de7-9caa-ffe2dbe0ad48','Serviço',242.19,479.54,44,9,3),
(52,NULL,NULL,NULL,NULL,'2025-11-26 16:20:34.610000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',6654.49,1,0.046,5989.041,'74.816.952/0001-14',0,'2025-10-31 16:20:34.610000',67,'Officiis ipsam beatae temporibus tenetur dolore.','4866979','BRL','45aadf9c-ce59-418d-97b7-a8dc87775198','Serviço',332.72,658.79,40,3,3),
(53,NULL,NULL,NULL,NULL,'2025-10-12 16:57:04.501000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',9736.66,1,0.079,8762.994,'87.624.531/0001-33',0,'2025-09-06 16:57:04.501000',10,'Neque rem molestias.','2510223','BRL','1861709e-eeb7-46ec-89a5-5665ccbb386c','Serviço',486.83,963.93,49,4,1),
(54,NULL,NULL,NULL,NULL,'2025-10-05 18:30:11.152000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',1655.89,1,0.081,1490.3010000000002,'92.415.678/0001-53',0,'2025-09-02 18:30:11.152000',41,'Sit fuga illum expedita nobis ratione.','3662062','BRL','c124ebd1-8fe0-4db3-adec-24c311ef97b9','Serviço',82.79,163.93,95,5,2),
(55,NULL,NULL,NULL,NULL,'2025-08-10 13:42:20.051000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',8968.97,1,0.03,8072.072999999999,'76.214.985/0001-10',0,'2025-07-23 13:42:20.051000',61,'Placeat necessitatibus suscipit.','2185441','BRL','15ce98a8-4725-40f1-9869-4f91b9ecb5c2','Serviço',448.45,887.93,49,7,3),
(56,NULL,NULL,NULL,NULL,'2025-10-28 22:50:30.340000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',7479.16,1,0.133,6731.244,'09.417.356/0001-08',0,'2025-09-13 22:50:30.340000',100,'Neque nostrum eum aliquid tenetur voluptatem.','1891165','BRL','e72f6eb8-d2b5-4a71-9454-0c149ba882e5','Serviço',373.96,740.44,61,7,3),
(57,NULL,NULL,NULL,NULL,'2025-09-10 05:24:51.193000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',1665.79,1,0.098,1499.211,'93.462.718/0001-80',0,'2025-07-22 05:24:51.193000',64,'Temporibus dolorem laboriosam molestias esse minus.','1023762','BRL','14f3400a-7ea1-48da-820b-cb70fc34a603','Serviço',83.29,164.91,62,10,4),
(58,NULL,NULL,NULL,NULL,'2025-07-12 06:05:56.491000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',8187.33,1,0.069,7368.597,'36.971.285/0001-55',0,'2025-06-10 06:05:56.491000',20,'Quod neque iusto ipsum eaque fugiat.','1617459','BRL','e52d8392-caad-47ee-ace5-560fbc2d4ed9','Serviço',409.37,810.55,86,4,3),
(59,NULL,NULL,NULL,NULL,'2025-10-25 13:58:25.245000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',2754.66,1,0.106,2479.194,'26.491.538/0001-30',0,'2025-08-29 13:58:25.245000',1,'Molestiae tempore nulla saepe.','7080229','BRL','4270ab17-b656-4649-9bb0-f934e3d96323','Serviço',137.73,272.71,11,4,4),
(60,NULL,NULL,NULL,NULL,'2025-12-07 13:58:09.721000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',9394.84,1,0.079,8455.356,'80.692.347/0001-81',0,'2025-10-30 13:58:09.721000',88,'Unde consequatur temporibus quisquam quasi aperiam perspiciatis.','7506428','BRL','8ef89b78-3232-4b80-bd4b-9fc97c108b85','Serviço',469.74,930.09,90,8,1),
(61,NULL,NULL,NULL,NULL,'2025-11-11 03:21:37.848000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',5748.33,1,0.051,5173.497,'45.697.183/0001-84',0,'2025-10-12 03:21:37.848000',68,'Magni temporibus asperiores aut facilis illo.','4658938','BRL','71c77599-57b4-48bc-ada5-635e9b9a3e11','Serviço',287.42,569.08,45,1,3),
(62,NULL,NULL,NULL,NULL,'2025-08-28 00:30:30.386000',NULL,'Nota fiscal referente ao Contrato de Análise de Crédito e Risco',3291.87,1,0.111,2962.683,'84.302.169/0001-96',0,'2025-07-20 00:30:30.386000',2,'Praesentium ipsum voluptates eaque porro assumenda fugit.','6366844','BRL','7a705892-92d7-4144-8d0e-74d75b887bb2','Serviço',164.59,325.9,94,7,3),
(63,NULL,NULL,NULL,NULL,'2025-11-21 21:10:38.477000',NULL,'Nota fiscal referente ao Contrato de Planejamento Tributário Estratégico',119.04,1,0.066,107.13600000000001,'15.207.386/0001-84',0,'2025-10-11 21:10:38.477000',13,'Quam vel quis nisi.','8609679','BRL','f9af004b-8e41-4479-8874-e0fa833a13b6','Serviço',5.95,11.78,9,7,1),
(64,NULL,NULL,NULL,NULL,'2025-09-10 14:49:15.145000',NULL,'Nota fiscal referente ao Contrato de Gestão de Ativos e Passivos',9688.82,1,0.149,8719.938,'81.742.653/0001-48',0,'2025-08-18 14:49:15.145000',42,'Consectetur necessitatibus commodi.','7800740','BRL','91b863bc-adf5-495c-867f-168421aaf38e','Serviço',484.44,959.19,19,6,2),
(65,NULL,NULL,NULL,NULL,'2025-09-14 02:45:32.066000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',2751.23,1,0.097,2476.107,'84.579.063/0001-34',0,'2025-08-09 02:45:32.066000',85,'Provident tempore eius.','9869021','BRL','b35bd88b-a11b-4301-ad40-c4a229bee574','Serviço',137.56,272.37,24,9,3),
(66,NULL,NULL,NULL,NULL,'2025-12-01 15:33:47.498000',NULL,'Nota fiscal referente ao Contrato de Valuation de Empresas',7062.29,1,0.108,6356.061,'26.314.875/0001-51',0,'2025-10-15 15:33:47.498000',65,'Fugit molestiae doloremque minima fuga id.','4417724','BRL','36d40dc5-6e00-49bf-8f96-3d440a9ba216','Serviço',353.11,699.17,48,8,3),
(67,NULL,NULL,NULL,NULL,'2025-10-01 14:45:32.064000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',3181.02,1,0.061,2862.918,'57.894.321/0001-02',0,'2025-08-13 14:45:32.064000',87,'Expedita similique temporibus iste eius sequi.','9585235','BRL','a1748ed7-761d-431b-a3f5-61f2ecc90e8f','Serviço',159.05,314.92,51,5,1),
(68,NULL,NULL,NULL,NULL,'2025-10-15 03:39:01.538000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',7500.38,1,0.115,6750.342000000001,'38.691.074/0001-94',0,'2025-09-17 03:39:01.538000',9,'Aliquam quasi unde commodi.','2063869','BRL','abb8b365-79b0-4bd8-b51c-45f4f282c942','Serviço',375.02,742.54,90,9,1),
(69,NULL,NULL,NULL,NULL,'2025-11-21 22:50:16.823000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',8950.66,1,0.112,8055.594,'84.269.703/0001-00',0,'2025-09-22 22:50:16.823000',48,'Enim sit similique aspernatur laboriosam sapiente.','1444069','BRL','8c1867df-fa12-4df4-a0d1-2bca86fac2b9','Serviço',447.53,886.12,35,4,1),
(70,NULL,NULL,NULL,NULL,'2025-11-26 19:39:14.313000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',6484.64,1,0.024,5836.176,'63.749.058/0001-52',0,'2025-11-04 19:39:14.313000',15,'Atque facere iusto modi expedita illum deleniti.','9912041','BRL','e489a334-5f0d-4058-bf49-f8a1e72196b4','Serviço',324.23,641.98,77,9,3),
(71,NULL,NULL,NULL,NULL,'2026-01-26 15:36:29.106000',NULL,'Nota fiscal referente ao Contrato de Gestão de Investimentos para Empresas',2109.92,1,0.144,1898.928,'97.205.843/0001-66',0,'2025-12-02 15:36:29.106000',25,'Dolor a beatae repudiandae quam autem.','8862723','BRL','dc230a28-6d65-40e5-823c-0278f81fb6fe','Serviço',105.5,208.88,30,2,1),
(72,NULL,NULL,NULL,NULL,'2025-09-02 12:40:26.188000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',1606.06,1,0.129,1445.454,'30.425.197/0001-71',0,'2025-07-08 12:40:26.188000',11,'Quaerat perspiciatis quibusdam sunt occaecati eius quo.','6234339','BRL','c5eb6008-494e-4fd5-8ef6-5ab725ec8bda','Serviço',80.3,159,14,9,2),
(73,NULL,NULL,NULL,NULL,'2025-12-23 10:40:24.163000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',4017.71,1,0.028,3615.9390000000003,'64.957.238/0001-92',0,'2025-11-23 10:40:24.163000',16,'Vitae ipsa quidem adipisci.','5231537','BRL','160d7ad8-fa55-451b-9a6f-190ece6efac1','Serviço',200.89,397.75,85,5,2),
(74,NULL,NULL,NULL,NULL,'2025-09-02 11:44:24.221000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',3445.14,1,0.125,3100.6259999999997,'70.531.246/0001-75',0,'2025-07-22 11:44:24.221000',82,'Minima repellendus quos nam deserunt modi atque.','1896621','BRL','4463c293-77be-4219-b41a-8a7b974729d1','Serviço',172.26,341.07,88,1,3),
(75,NULL,NULL,NULL,NULL,'2025-12-14 02:18:50.761000',NULL,'Nota fiscal referente ao Contrato de Reestruturação de Dívidas',1639.41,1,0.079,1475.469,'90.817.623/0001-44',0,'2025-11-10 02:18:50.761000',7,'Sunt dolor quis recusandae accusantium harum.','9091748','BRL','7afd4741-a089-4e0f-bc99-bab062f5b8c8','Serviço',81.97,162.3,68,10,2),
(76,NULL,NULL,NULL,NULL,'2026-01-07 08:22:14.843000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',5754.79,1,0.114,5179.311,'54.378.106/0001-52',0,'2025-11-23 08:22:14.843000',31,'Praesentium inventore laudantium odio culpa doloremque quae in.','5217704','BRL','e06ca01f-257b-443f-80f5-f288b4accbeb','Serviço',287.74,569.72,10,1,3),
(77,NULL,NULL,NULL,NULL,'2025-11-19 20:50:26.442000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',2598.68,1,0.087,2338.812,'08.256.793/0001-16',0,'2025-10-18 20:50:26.442000',83,'Illum laudantium neque reprehenderit nemo quod.','7303658','BRL','ba106641-4ef8-41cd-bf86-cbb011938ac5','Serviço',129.93,257.27,9,7,4),
(78,NULL,NULL,NULL,NULL,'2025-10-23 22:31:02.601000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',5575.52,1,0.046,5017.968000000001,'10.279.835/0001-86',0,'2025-09-11 22:31:02.601000',52,'Rem recusandae soluta aut rerum.','2911763','BRL','077b81e2-6e3c-4558-ab4e-f89be8db61bd','Serviço',278.78,551.98,94,10,2),
(79,NULL,NULL,NULL,NULL,'2025-09-07 20:38:07.798000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',6255.53,1,0.103,5629.977,'59.324.081/0001-28',0,'2025-08-03 20:38:07.798000',64,'Quos deleniti dicta.','7596896','BRL','08f5fe90-6e32-4ac1-96c1-e2d5d94709cd','Serviço',312.78,619.3,75,6,2),
(80,NULL,NULL,NULL,NULL,'2025-07-16 08:02:48.615000',NULL,'Nota fiscal referente ao Contrato de Otimização de Fluxo de Caixa',1726.23,1,0.115,1553.607,'67.281.394/0001-74',0,'2025-06-15 08:02:48.615000',96,'Quia excepturi doloremque natus maiores sunt.','3946229','BRL','50d123cc-56f2-4eaa-a814-4b29319d41da','Serviço',86.31,170.9,93,3,3),
(81,NULL,NULL,NULL,NULL,'2025-09-06 01:34:35.917000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',7923.24,1,0.062,7130.916,'17.659.438/0001-89',0,'2025-07-12 01:34:35.917000',32,'Distinctio explicabo occaecati fuga magni exercitationem quas.','3052833','BRL','a20b4606-6481-4f12-8f32-304aa21e0dcf','Serviço',396.16,784.4,59,2,4),
(82,NULL,NULL,NULL,NULL,'2025-12-23 06:44:28.813000',NULL,'Nota fiscal referente ao Contrato de Seguros Empresariais e Previdência',5161.15,1,0.059,4645.035,'24.905.381/0001-16',0,'2025-11-30 06:44:28.813000',67,'Occaecati sed placeat dolor.','2418030','BRL','38f441e4-6bbd-4035-a230-eb5af4917f7e','Serviço',258.06,510.95,5,3,2),
(83,NULL,NULL,NULL,NULL,'2025-07-12 16:52:59.416000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',5711.25,1,0.092,5140.125,'21.408.657/0001-62',0,'2025-06-26 16:52:59.416000',31,'Placeat perspiciatis soluta voluptates fuga incidunt aut.','9786363','BRL','59980dcd-e42a-4c13-bc80-2b5f890dbeb4','Serviço',285.56,565.41,92,8,2),
(84,NULL,NULL,NULL,NULL,'2025-09-17 02:38:39.740000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Câmbio e Comércio Exterior',9211.69,1,0.072,8290.521,'84.015.379/0001-01',0,'2025-07-24 02:38:39.740000',79,'Est animi ea cumque impedit quasi.','5584807','BRL','3b4e32c6-7a39-45a5-b3cb-2408eb897da5','Serviço',460.58,911.96,33,2,2),
(85,NULL,NULL,NULL,NULL,'2025-08-07 18:22:41.152000',NULL,'Nota fiscal referente ao Contrato de Recuperação Judicial e Extrajudicial',9941.93,1,0.053,8947.737000000001,'69.281.470/0001-77',0,'2025-07-10 18:22:41.152000',23,'Eos repellendus fugiat dolorum ipsa sed quos hic.','3244359','BRL','926c4602-e9b7-415a-94ec-da14d4376962','Serviço',497.1,984.25,57,5,3),
(86,NULL,NULL,NULL,NULL,'2025-08-18 04:49:04.031000',NULL,'Nota fiscal referente ao Contrato de Consultoria em Mercado de Capitais',899.36,1,0.076,809.424,'51.724.908/0001-89',0,'2025-07-26 04:49:04.031000',69,'Ut omnis blanditiis vitae vero modi cumque.','9559477','BRL','d15025e4-2cee-4790-ac8b-36dceaa3a558','Serviço',44.97,89.04,21,3,1),
(87,NULL,NULL,NULL,NULL,'2026-01-06 19:07:44.090000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',3081.28,1,0.064,2773.152,'02.479.351/0001-52',0,'2025-11-27 19:07:44.090000',47,'Nihil accusantium repellat eos quisquam.','4086810','BRL','de04d99d-07ff-4280-8b57-30df07dcc84f','Serviço',154.06,305.05,13,6,3),
(88,NULL,NULL,NULL,NULL,'2025-12-26 19:31:01.920000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',862.92,1,0.143,776.6279999999999,'94.017.286/0001-61',0,'2025-11-29 19:31:01.920000',77,'Voluptatum omnis officia illo.','8768684','BRL','21f80cea-34a4-49e0-8fa8-62394d5c8466','Serviço',43.15,85.43,85,3,2),
(89,NULL,NULL,NULL,NULL,'2025-09-19 04:43:38.774000',NULL,'Nota fiscal referente ao Contrato de Auditoria Contábil Independente',9728.59,1,0.108,8755.731,'92.348.761/0001-57',0,'2025-08-09 04:43:38.774000',62,'Cumque laborum illo consequuntur a nam animi.','2790256','BRL','509076af-3648-4daf-80f3-fb1e45418289','Serviço',486.43,963.13,59,1,3),
(90,NULL,NULL,NULL,NULL,'2025-08-28 16:46:56.707000',NULL,'Nota fiscal referente ao Contrato de Consultoria Financeira Personalizada',9659.13,1,0.121,8693.216999999999,'74.015.629/0001-41',0,'2025-07-09 16:46:56.707000',59,'Saepe magnam quos itaque accusantium.','6637022','BRL','02f4b3fa-c4a4-4698-be13-56e8fff32573','Serviço',482.96,956.25,21,5,2),
(91,NULL,NULL,NULL,NULL,'2025-08-07 05:54:47.216000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',6017.71,1,0.028,5415.939,'32.851.976/0001-64',0,'2025-06-10 05:54:47.216000',64,'Laudantium iste harum quis debitis.','1557094','BRL','0add0695-3762-48c6-a1db-f94a10f30c4c','Serviço',300.89,595.75,50,7,3),
(92,NULL,NULL,NULL,NULL,'2025-11-26 04:24:11.684000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',3229.38,1,0.147,2906.442,'92.613.584/0001-99',0,'2025-11-06 04:24:11.684000',87,'Exercitationem quisquam excepturi quia magnam illo necessitatibus.','1525492','BRL','c4d87a1e-6c91-49ef-899a-d8b0971ccf3b','Serviço',161.47,319.71,55,6,4),
(93,NULL,NULL,NULL,NULL,'2025-07-14 19:29:42.589000',NULL,'Nota fiscal referente ao Contrato de Elaboração de Orçamentos Empresariais',6718.33,1,0.091,6046.497,'47.980.231/0001-72',0,'2025-06-23 19:29:42.589000',83,'Expedita distinctio voluptatem facere dolore harum sed.','4875423','BRL','ffec183c-294b-4621-88a9-1c5528e45b53','Serviço',335.92,665.11,53,6,4),
(94,NULL,NULL,NULL,NULL,'2025-12-13 08:06:48.073000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',3004.79,1,0.062,2704.311,'92.405.716/0001-97',0,'2025-10-16 08:06:48.073000',53,'Magni nulla ipsum quas.','9083258','BRL','b13edbeb-b86b-41a7-bede-e2385e0753e6','Serviço',150.24,297.47,9,4,2),
(95,NULL,NULL,NULL,NULL,'2025-07-29 10:59:59.079000',NULL,'Nota fiscal referente ao Contrato de Serviços de Compliance Financeiro',784.23,1,0.061,705.807,'62.798.135/0001-00',0,'2025-06-16 10:59:59.079000',73,'Illo architecto eveniet facilis vitae accusamus possimus aliquid.','3026967','BRL','fe188696-6353-44cb-899e-b58494d17926','Serviço',39.21,77.64,93,5,1),
(96,NULL,NULL,NULL,NULL,'2025-11-19 03:28:38.535000',NULL,'Nota fiscal referente ao Contrato de Due Diligence Financeira',7451.01,1,0.055,6705.909000000001,'19.702.654/0001-95',0,'2025-10-12 03:28:38.535000',31,'Aperiam recusandae distinctio totam blanditiis.','4561893','BRL','d2213eba-79b1-4e75-821d-5d15f1a83e1d','Serviço',372.55,737.65,68,5,3),
(97,NULL,NULL,NULL,NULL,'2026-01-10 19:57:10.309000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',5765.01,1,0.08,5188.509,'89.063.241/0001-93',0,'2025-12-03 19:57:10.309000',36,'Minus eos culpa modi itaque.','1547932','BRL','3f3a8b58-1f39-4436-9c1d-d54558a48040','Serviço',288.25,570.74,75,10,4),
(98,NULL,NULL,NULL,NULL,'2025-08-09 23:56:52.417000',NULL,'Nota fiscal referente ao Contrato de Financiamento de Projetos',5567.02,1,0.041,5010.318,'16.834.592/0001-87',0,'2025-07-13 23:56:52.417000',61,'Rerum nihil repudiandae necessitatibus error iusto.','6865656','BRL','0393bb0c-8209-4cd0-98f8-41ccfd20efc9','Serviço',278.35,551.13,83,5,3),
(99,NULL,NULL,NULL,NULL,'2025-11-20 02:51:25.512000',NULL,'Nota fiscal referente ao Contrato de Assessoria em Fusões e Aquisições',2304.67,1,0.149,2074.203,'90.762.384/0001-72',0,'2025-10-13 02:51:25.512000',78,'Suscipit dolor tempore voluptatum.','6470090','BRL','64f5da33-85ce-4f24-8fa0-6496b7cb6a1f','Serviço',115.23,228.16,71,5,1),
(100,NULL,NULL,NULL,NULL,'2025-09-23 16:00:54.943000',NULL,'Nota fiscal referente ao Contrato de Implantação de Governança Corporativa',9937.57,1,0.064,8943.813,'30.694.157/0001-25',0,'2025-08-19 16:00:54.943000',41,'Debitis nostrum laudantium nostrum.','8358375','BRL','e53d3819-f1fc-40bc-94a5-2fdb1acdbdb7','Serviço',496.88,983.82,68,3,2);
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
(1,'Analista Financeiro','laís.emissor@gmail.com',3,'Laís da Conceição','laís_emissor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$Oj1yyGanOTz+qW4zJCNDLRnIdV9Qx0a03qrHjSY6SZs$81HhkxE2/n7N7/io2s9V5q7fY+TyqS7HivQg8I1U96/t7jjyxHYFC44wvtvHcpGIEnVNh3zoHGF7pht0IrnUYQ',37,0x00,0x01,'Emissor'),
(2,'Analista Financeiro','yago.emissor@gmail.com',2,'Yago Pimenta','yago_emissor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$ZT2oq8Xv+31CDWXYW0rfDRjrpiZ6n7fX+bOd0n9CNUI$HyA2SFzQt/QrSCr7LWjsUNR45kXdrJwaci/vwfKWWuxaLtobnPHNL+ZHanSDDxS1zu3NqU/PaPLtGH8uvm3sIQ',58,0x00,0x01,'Emissor'),
(3,'Gerente de Projetos','ana.gestor@gmail.com',1,'Ana Carolina Peixoto','ana_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$lge6Ff1A+dcJ1f+um+RBN3OWRZWvj1Y5iBGuixL3k8w$VzAwy9hEnpK/9toN+DqKmbGotNHmccu+TOfddhcRpk7i+ZQS/XiRZ7BhRWtpquc1NIsezsGUkVROBvDp9y5oHA',63,0x01,0x00,'Gestor'),
(4,'Gerente de Projetos','yan.gestor@gmail.com',3,'Yan Viana','yan_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$kACcWvN5uIrt9dqGenlVy+zxfwDOsuXhHvP0z9zKe60$aYpc7g5aaqAkm97QwSYi+ckg8lrfYLq7Kv0PaUXKuw3ZlWtIh1xm5zlvng+Z9XatL471LM8K0rMAnaLvRFr3PQ',95,0x01,0x00,'Gestor'),
(5,'Gerente de Projetos','isabelly.gestor@gmail.com',1,'Isabelly Dias','isabelly_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$YYKyf4fkAnUiqRMUxMQCUODsN2iqom6EV9MmTeeRNj4$QVtBFYz7ZBZPX4FqbLiUVNzb/lEKOI+KdP7i0EI9G6XdzSpD1ZWliu2o7/X+RKaoZu53x5Hjci8Hw/fb7L7qLw',61,0x01,0x00,'Gestor'),
(6,'Analista Financeiro','sr..emissor@gmail.com',3,'Sr. João Gabriel Costa','sr._emissor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$oszy9vEAlhIuwFAnJUuI31HQ/if2QtiZalyVduAp4Z8$3LsipXMQhu88tkuW6XcCgHrwE+gDwkXRq1rdZ5GgtwqSDj9myOV6yzoooXlK0qgEUdxGeZubxPLikWCna3Ee1A',25,0x00,0x01,'Emissor'),
(7,'Administrador','eduarda.adm@gmail.com',2,'Eduarda Moreira','eduarda_admin',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$AzQTzvpMx/jljtPNdjP/XGlB6sMqbA8Lb/83NKMCShc$0aWRItwkV1C5XLBRk3hoGILeviVtoEY4lCikbCz3mhDQfbgbjNfrcHFqdrecE+hyyakG2VE7jlVynj9O7ZEVvQ',63,0x00,0x00,'Adm. Interno'),
(8,'Administrador','rebeca.adm@gmail.com',4,'Rebeca Vasconcelos','rebeca_admin',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$r/c+nkJTXOqLJKb5/BjKG96xu/Sqp65gUXXXqjmaOU8$mxMjvuMA2KoxA6vM68MHekcPLitpEa65Lze9RaF2bu8KSWQmWd9DrjmxlhLR45Gb1woCUe2lceAnbcKroq7nxA',17,0x00,0x00,'Adm. Interno'),
(9,'Gerente de Projetos','joana.gestor@gmail.com',4,'Joana Vieira','joana_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$AVuXato1OUxxD93lPTx8yfvIyN7LnLznJnzlAwu2i+s$JCm24ZSHQKwrA1aOiuCgYpl6wyNGm/qpyufu7ChCxYaeX0YA+zXIJ1AK4+kY7bom+sr6OlqApEUTpPmEAuDEgA',62,0x01,0x00,'Gestor'),
(10,'Gerente de Projetos','maya.gestor@gmail.com',2,'Maya da Luz','maya_gestor',NULL,NULL,'$argon2id$v=19$m=19456,t=3,p=1$HmdYhb2X4w1lZeFuAX/J7krOsEtg8mIg30DgAtkx1k8$SprUNzXqobVUFd9iM0w8Yv28MMkiPMuh3dqjzQ2Ytp2oEZpO9bLzQueWL9U9kI0xS4zv1ybp1HeblHvF9GBsPw',38,0x01,0x00,'Gestor');
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

-- Dump completed on 2025-12-09 14:30:26
