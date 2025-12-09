-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: syntro
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `contrato`
--

GRANT ALL PRIVILEGES ON *.* TO 'syntro'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

create database IF NOT EXISTS syntro;
use syntro;

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_realizacao` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_departamento` int DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `nome_moeda` varchar(255) DEFAULT NULL,
  `nome_servico` varchar(255) DEFAULT NULL,
  `status_contrato` bit(1) DEFAULT NULL,
  `tempo_contrato` varchar(255) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_departamento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `area_atuacao` varchar(255) DEFAULT NULL,
  `fornecedor` bit(1) DEFAULT NULL,
  `identificacao_fiscal` varchar(255) DEFAULT NULL,
  `nome_servico` varchar(255) DEFAULT NULL,
  `subsidiaria` varchar(255) DEFAULT NULL,
  `tipo_identificacao_fiscal` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bairro` varchar(255) DEFAULT NULL,
  `cep` int DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `id_fornecedor` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `logradouro` varchar(255) DEFAULT NULL,
  `uf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;

--
-- Table structure for table `grupo_permissao`
--

DROP TABLE IF EXISTS `grupo_permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo_permissao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_permissao` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_permissao`
--

/*!40000 ALTER TABLE `grupo_permissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo_permissao` ENABLE KEYS */;

--
-- Table structure for table `log_atividade`
--

DROP TABLE IF EXISTS `log_atividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_atividade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int DEFAULT NULL,
  `tipo_acao` varchar(255) DEFAULT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_atividade`
--

/*!40000 ALTER TABLE `log_atividade` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_atividade` ENABLE KEYS */;

--
-- Table structure for table `log_validacao`
--

DROP TABLE IF EXISTS `log_validacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_validacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_hora` datetime(6) DEFAULT NULL,
  `detalhe` varchar(255) DEFAULT NULL,
  `etapa` int DEFAULT NULL,
  `modulo` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_validacao`
--

/*!40000 ALTER TABLE `log_validacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_validacao` ENABLE KEYS */;

--
-- Table structure for table `nota_fiscal`
--

DROP TABLE IF EXISTS `nota_fiscal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nota_fiscal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cnpj_contratante` varchar(255) DEFAULT NULL,
  `nome_empresa` varchar(255) DEFAULT NULL,
  `cnpj_fornecedor` varchar(255) DEFAULT NULL,
  `endereco_fornecedor` varchar(255) DEFAULT NULL,
  `data_vencimento` datetime(6) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor_total` double DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  `aliquota` double DEFAULT NULL,
  `base_calculo` double DEFAULT NULL,
  `cnpj_emitente` varchar(255) DEFAULT NULL,
  `credito_iptu` double DEFAULT NULL,
  `data_emissao` datetime(6) DEFAULT NULL,
  `id_contrato` int DEFAULT NULL,
  `informacao_adicional` varchar(255) DEFAULT NULL,
  `inscricao_municipal` varchar(255) DEFAULT NULL,
  `nome_moeda` varchar(255) DEFAULT NULL,
  `numero_identificador` varchar(255) DEFAULT NULL,
  `tipo_nota` varchar(255) DEFAULT NULL,
  `valor_deducoes` double DEFAULT NULL,
  `valor_inss` double DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota_fiscal`
--

/*!40000 ALTER TABLE `nota_fiscal` DISABLE KEYS */;
INSERT INTO `nota_fiscal` VALUES (1,'12.345.678/0001-00','Empresa Alpha Ltda','98.765.432/0001-99','Rua das Flores, 123 - São Paulo/SP','2025-07-01 00:00:00.000000',1001,'Serviço de consultoria',12500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'23.456.789/0001-11','Empresa Beta SA','87.654.321/0001-88','Av. Brasil, 456 - Rio de Janeiro/RJ','2025-07-02 00:00:00.000000',1002,'Manutenção de servidores',8500.75,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'34.567.890/0001-22','Empresa Gama ME','76.543.210/0001-77','Rua Central, 789 - Curitiba/PR','2025-07-03 00:00:00.000000',1003,'Desenvolvimento de software',21500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'45.678.901/0001-33','Empresa Delta EPP','65.432.109/0001-66','Alameda Santos, 100 - São Paulo/SP','2025-07-04 00:00:00.000000',1004,'Consultoria tributária',9800.4,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'56.789.012/0001-44','Empresa Epsilon Ltda','54.321.098/0001-55','Av. Paulista, 200 - São Paulo/SP','2025-07-05 00:00:00.000000',1005,'Serviços de marketing',15900.99,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'67.890.123/0001-55','Empresa Zeta SA','43.210.987/0001-44','Rua Augusta, 300 - São Paulo/SP','2025-07-06 00:00:00.000000',1006,'Análise de dados',12200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'78.901.234/0001-66','Empresa Eta Ltda','32.109.876/0001-33','Av. Ipiranga, 400 - Porto Alegre/RS','2025-07-07 00:00:00.000000',1007,'Infraestrutura de rede',17200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'89.012.345/0001-77','Empresa Teta SA','21.098.765/0001-22','Rua XV de Novembro, 500 - Curitiba/PR','2025-07-08 00:00:00.000000',1008,'Serviço de segurança',9200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'90.123.456/0001-88','Empresa Iota Ltda','10.987.654/0001-11','Rua das Palmeiras, 600 - Florianópolis/SC','2025-07-09 00:00:00.000000',1009,'Consultoria ambiental',11000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'01.234.567/0001-99','Empresa Kappa ME','09.876.543/0001-00','Av. Beira Mar, 700 - Recife/PE','2025-07-10 00:00:00.000000',1010,'Instalação de software',13450,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'11.111.111/0001-11','Empresa Lambda','22.222.222/0001-22','Rua X, 123 - Cidade Y','2025-07-11 00:00:00.000000',1011,'Serviço de TI',12345.67,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'33.333.333/0001-33','Empresa Mu','44.444.444/0001-44','Rua Y, 321 - Cidade Z','2025-07-12 00:00:00.000000',1012,'Suporte técnico',9876.54,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'55.555.555/0001-55','Empresa Nu','66.666.666/0001-66','Rua Z, 456 - Cidade W','2025-07-13 00:00:00.000000',1013,'Design gráfico',11200.1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'12.112.112/0001-12','Empresa Sigma','21.221.221/0001-21','Rua das Acácias, 800 - Belém/PA','2025-07-11 00:00:00.000000',1011,'Treinamento corporativo',10250.75,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'13.113.113/0001-13','Empresa Tau','31.331.331/0001-31','Rua Amazonas, 810 - Manaus/AM','2025-07-12 00:00:00.000000',1012,'Consultoria em RH',11700,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'14.114.114/0001-14','Empresa Upsilon','41.441.441/0001-41','Rua Rio Branco, 820 - Salvador/BA','2025-07-13 00:00:00.000000',1013,'Auditoria interna',13300,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'15.115.115/0001-15','Empresa Phi','51.551.551/0001-51','Av. das Nações, 830 - Brasília/DF','2025-07-14 00:00:00.000000',1014,'Serviço jurídico',8900,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'16.116.116/0001-16','Empresa Chi','61.661.661/0001-61','Rua da Aurora, 840 - Recife/PE','2025-07-15 00:00:00.000000',1015,'Licenciamento de software',9500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'17.117.117/0001-17','Empresa Psi','71.771.771/0001-71','Av. Independência, 850 - Porto Alegre/RS','2025-07-16 00:00:00.000000',1016,'Hospedagem de sistemas',10400.25,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'18.118.118/0001-18','Empresa Omega','81.881.881/0001-81','Rua Boa Vista, 860 - São Paulo/SP','2025-07-17 00:00:00.000000',1017,'Consultoria financeira',11200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'19.119.119/0001-19','Empresa Nova Era','91.991.991/0001-91','Rua Azul, 870 - Belo Horizonte/MG','2025-07-18 00:00:00.000000',1018,'Projetos ágeis',12650.9,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'20.120.120/0001-20','Empresa Horizonte','02.202.202/0001-02','Av. do Contorno, 880 - Vitória/ES','2025-07-19 00:00:00.000000',1019,'Sistema de BI',13999.99,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'21.121.121/0001-21','Empresa AlfaTech','12.212.212/0001-12','Rua Verde, 890 - Campinas/SP','2025-07-20 00:00:00.000000',1020,'Monitoramento remoto',10800,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'22.122.122/0001-22','Empresa BetaCorp','22.222.222/0001-22','Rua do Comércio, 900 - Santos/SP','2025-07-21 00:00:00.000000',1021,'Cloud hosting',10100,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'23.123.123/0001-23','Empresa GamaPlus','32.232.232/0001-32','Rua da Paz, 910 - Londrina/PR','2025-07-22 00:00:00.000000',1022,'Suporte 24/7',9400,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'24.124.124/0001-24','Empresa Soluções BR','42.242.242/0001-42','Av. Atlântica, 920 - Balneário Camboriú/SC','2025-07-23 00:00:00.000000',1023,'Soluções em rede',11200.55,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'25.125.125/0001-25','Empresa Integrada','52.252.252/0001-52','Rua São João, 930 - Fortaleza/CE','2025-07-24 00:00:00.000000',1024,'Consultoria em ERP',11800,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'26.126.126/0001-26','Empresa Digital Way','62.262.262/0001-62','Rua Ceará, 940 - Goiânia/GO','2025-07-25 00:00:00.000000',1025,'Treinamento online',9700,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'27.127.127/0001-27','Empresa Nova Visão','72.272.272/0001-72','Rua Goiás, 950 - Teresina/PI','2025-07-26 00:00:00.000000',1026,'Serviço técnico',10850,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'28.128.128/0001-28','Empresa MaxPro','82.282.282/0001-82','Rua Maranhão, 960 - São Luís/MA','2025-07-27 00:00:00.000000',1027,'Controle de acesso',9200,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'29.129.129/0001-29','Empresa InfoServ','92.292.292/0001-92','Rua Piauí, 970 - Aracaju/SE','2025-07-28 00:00:00.000000',1028,'Instalação elétrica',8550,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'30.130.130/0001-30','Empresa CompCenter','03.303.303/0001-03','Rua Sergipe, 980 - Palmas/TO','2025-07-29 00:00:00.000000',1029,'Gerenciamento de rede',11000,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'31.131.131/0001-31','Empresa Soluções TI','13.313.313/0001-13','Rua Bahia, 990 - João Pessoa/PB','2025-07-30 00:00:00.000000',1030,'Backup corporativo',10750,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'12.345.678/0001-00','Empresa Alpha Ltda','98.765.432/0001-99','Rua das Flores, 123 - São Paulo/SP','2025-07-01 00:00:00.000000',1001,'Serviço de consultoria',12500,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `nota_fiscal` ENABLE KEYS */;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_roles` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;

--
-- Table structure for table `solicitacao_servico`
--

DROP TABLE IF EXISTS `solicitacao_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao_servico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `card_id` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operacao` varchar(255) DEFAULT NULL,
  `justificativa` varchar(255) DEFAULT NULL,
  `nota_fiscal_id` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_nota_fiscal` (`nota_fiscal_id`),
  CONSTRAINT `fk_nota_fiscal` FOREIGN KEY (`nota_fiscal_id`) REFERENCES `nota_fiscal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao_servico`
--

/*!40000 ALTER TABLE `solicitacao_servico` DISABLE KEYS */;
INSERT INTO `solicitacao_servico` VALUES (1,1001,'usuario1@empresa.com','Congelamento','Nota Duplicada.',1,1),(2,1002,'usuario2@empresa.com','Cadastro','Necessário cadastrar um usuário novo na plataforma.',2,1),(3,1003,'usuario3@empresa.com','Aprovação justificada','Nota precisa ser verificada a parte.',3,1),(4,1004,'usuario4@empresa.com','Congelamento','Possível fraude.',4,1),(5,1005,'usuario5@empresa.com','Cadastro','Necessário cadastrar nova empresa na plataforma.',5,1);
/*!40000 ALTER TABLE `solicitacao_servico` ENABLE KEYS */;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chave` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;

--
-- Table structure for table `token_reset_senha`
--

DROP TABLE IF EXISTS `token_reset_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_reset_senha` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `usuario_id` int NOT NULL,
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

/*!40000 ALTER TABLE `token_reset_senha` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_reset_senha` ENABLE KEYS */;

--
-- Table structure for table `tokens_reset_senha`
--

DROP TABLE IF EXISTS `tokens_reset_senha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens_reset_senha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `id_usuario` int NOT NULL,
  `ip_requisicao` varchar(255) DEFAULT NULL,
  `tempo_expiracao` datetime(6) NOT NULL,
  `token_hash` varchar(255) NOT NULL,
  `usado` bit(1) NOT NULL,
  `usuario_de_criacao` varchar(255) DEFAULT NULL,
  `id_usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa63i9mleovq01659n50nr3irl` (`id_usuario_id`),
  KEY `FKpcir7k259ds180btflw5d5wj2` (`id_usuario`),
  CONSTRAINT `FKa63i9mleovq01659n50nr3irl` FOREIGN KEY (`id_usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKpcir7k259ds180btflw5d5wj2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens_reset_senha`
--

/*!40000 ALTER TABLE `tokens_reset_senha` DISABLE KEYS */;
INSERT INTO `tokens_reset_senha` VALUES (1,1,'127.0.0.1','2025-09-04 16:57:59.952082','ea9fc9eae3fcf7ecddf9306991be76298d91a48f043a963a8d3ddfb52cafd68e',_binary '\0','insomnia/11.5.0',NULL),(2,1,'0:0:0:0:0:0:0:1','2025-09-04 16:58:45.745706','f4e1463428439f14a74e589a4682f1512b927b5698e68b8541017cda55e97409',_binary '\0','insomnia/11.5.0',NULL),(3,2,'127.0.0.1','2025-09-04 17:20:58.490870','39e29483ec5b51677ec2fd0a00f4c473fac9891f66b1a8c040cf1acf0cd1da3a',_binary '\0','insomnia/11.5.0',NULL),(4,2,'127.0.0.1','2025-09-04 18:06:02.981123','c6323cb0a5d7abe9b0ec5249173d5b535d1f393333afd386f7945499f094e488',_binary '\0','insomnia/11.5.0',NULL),(5,2,'127.0.0.1','2025-09-04 18:15:25.239634','33943c821c63e3bdafd6d5ff4fa67e5296348b25f31cbefd060eacf786495713',_binary '','insomnia/11.5.0',NULL),(6,2,'127.0.0.1','2025-09-10 18:36:00.441063','2e6e33b027421b85be643e8d20790fdb13ae4701fa33ba100075e8ca0c9f668c',_binary '\0','insomnia/11.5.0',NULL),(7,2,'127.0.0.1','2025-09-11 13:41:05.858247','60ebc14c6649ed43038d44974a66fee007d062c92147ab2130042ba391403279',_binary '\0','curl/7.87.0',NULL),(8,2,'0:0:0:0:0:0:0:1','2025-09-11 15:43:53.219515','601b8cad171d2c915057217aa9cb9da3f494ad80376486bd6a799366ba2d3065',_binary '\0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36',NULL),(9,2,'0:0:0:0:0:0:0:1','2025-09-11 15:47:07.238715','497baec76fe21dd583f6640ff25ea96e91bd4ea967b5e56af1945469166863ce',_binary '\0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36',NULL),(10,2,'0:0:0:0:0:0:0:1','2025-09-11 17:37:58.300164','1fa98783b0e410a5da6298076ceb01bad150e489239a5b36f4cf4f2f5e7e0dcf',_binary '','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36 OPR/121.0.0.0',NULL),(11,2,'0:0:0:0:0:0:0:1','2025-09-11 22:00:07.587994','c4bbfee8dd5c1cf8842fd039e4f5f5c8c2f95780eab0f5ef6538d324268f33a8',_binary '\0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36',NULL),(12,2,'127.0.0.1','2025-09-12 13:57:20.862515','47be82588e1959ad02135d9e47525f1ed2457a0ee599bd8b874a6432552cc312',_binary '','insomnia/11.5.0',NULL),(13,2,'0:0:0:0:0:0:0:1','2025-09-12 14:55:20.070848','6cdac36338522820a97f1e9c4e5e6ff0e11b2e62e8f42ad9b02e46807ae05377',_binary '','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36',NULL);
/*!40000 ALTER TABLE `tokens_reset_senha` ENABLE KEYS */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_departamento` int DEFAULT NULL,
  `nome_completo` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `representante_externo` bit(1) DEFAULT NULL,
  `representante_interno` bit(1) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `id_empresa` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Analista','jdoe@email.com',1,'John Doe','jdoe',_binary '\0',_binary '','123456',NULL),(2,'Gerente','hakun.cohen@gmail.com',2,'Maria Silva','msilva',_binary '\0',_binary '','$argon2id$v=19$m=19456,t=3,p=1$G3xF+xQLVI4Oy2SzLrHclKhv1UIhkXqlZ1Aw6z5eG5w$WVN20YrB76iXm5Z2GcwwlpP5xxvdXLaJMC9ITC40K/HVBrQM8aGx+PsMiq+Lq47PzKDFstaxI3IJbTv4CsGUPw',NULL),(3,'Coordenador','paulo.costa@email.com',1,'Paulo Costa','pcosta',_binary '\0',_binary '','senha123',NULL),(4,'Consultor','ana.freitas@email.com',3,'Ana Freitas','afreitas',_binary '',_binary '\0','teste456',NULL),(5,'Analista','rafael.carvalho@email.com',2,'Rafael Carvalho','rcarvalho',_binary '\0',_binary '','pwd789',NULL),(6,'Estagiário','lucas.rocha@email.com',1,'Lucas Rocha','lrocha',_binary '\0',_binary '','pass001',NULL),(7,'Consultor','tatiane.fernandes@email.com',3,'Tatiane Fernandes','tfernandes',_binary '',_binary '\0','teste002',NULL),(8,'Gerente','carlos.barros@email.com',2,'Carlos Barros','cbarros',_binary '\0',_binary '','abc789',NULL),(9,'Analista','juliana.andrade@email.com',1,'Juliana Andrade','jandrade',_binary '\0',_binary '','senha777',NULL),(10,'Coordenador','marcelo.reis@email.com',3,'Marcelo Reis','mreis',_binary '\0',_binary '','xyz111',NULL),(11,'Consultor','vanessa.ferreira@email.com',2,'Vanessa Ferreira','vferreira',_binary '',_binary '\0','senha888',NULL),(12,'Gerente','aline.bastos@email.com',1,'Aline Bastos','abastos',_binary '\0',_binary '','pwd654',NULL),(13,'Analista','felipe.rodrigues@email.com',3,'Felipe Rodrigues','frodrigues',_binary '\0',_binary '','teste333',NULL),(14,'Consultor','daniel.oliveira@email.com',2,'Daniel Oliveira','doliveira',_binary '',_binary '\0','pass456',NULL),(15,'Coordenador','gabriel.martins@email.com',1,'Gabriel Martins','gmartins',_binary '\0',_binary '','123abc',NULL),(16,'Analista','patricia.ramos@email.com',2,'Patrícia Ramos','pramos',_binary '\0',_binary '','senha999',NULL),(17,'Gerente','henrique.castro@email.com',3,'Henrique Castro','hcastro',_binary '\0',_binary '','pwd321',NULL),(18,'Consultor','sara.brito@email.com',1,'Sara Brito','sbrito',_binary '',_binary '\0','teste777',NULL),(19,'Analista','andre.mendes@email.com',2,'André Mendes','amendes',_binary '\0',_binary '','pwd111',NULL),(20,'Coordenador','natalia.freire@email.com',3,'Natália Freire','nfreire',_binary '\0',_binary '','senha222',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

--
-- Dumping events for database 'syntro'
--

--
-- Dumping routines for database 'syntro'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-12 14:20:38
