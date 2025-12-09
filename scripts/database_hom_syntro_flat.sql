/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: syntro_flat
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
-- Table structure for table `flattened_data`
--

 DROP USER IF EXISTS 'syntro_flat'@'%';
 DROP USER IF EXISTS 'syntro_flat'@'localhost';
 
 CREATE USER 'syntro_flat'@'%' IDENTIFIED WITH mysql_native_password BY '12345678';
 
 GRANT ALL PRIVILEGES ON syntro.* TO 'syntro_flat'@'%';
 GRANT ALL PRIVILEGES ON syntro_flat.* TO 'syntro_flat'@'%';
 FLUSH PRIVILEGES;
  
 create database IF NOT EXISTS syntro_flat;
 use syntro_flat;
  




DROP TABLE IF EXISTS `flattened_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `flattened_data` (
  `id_nota_fiscal` int(11) NOT NULL,
  `numero_identificador` varchar(255) DEFAULT NULL,
  `cnpj_emitente` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `data_emissao` datetime DEFAULT NULL,
  `data_vencimento` datetime DEFAULT NULL,
  `data_aprovacao` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `motivo_invalidacao` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `cargo_usuario` varchar(255) DEFAULT NULL,
  `id_empresa` int(11) DEFAULT NULL,
  `nome_empresa` varchar(255) DEFAULT NULL,
  `cnpj_empresa` varchar(255) DEFAULT NULL,
  `id_fornecedor` int(11) DEFAULT NULL,
  `nome_fornecedor` varchar(255) DEFAULT NULL,
  `id_log_validacao` int(11) DEFAULT NULL,
  `tipo_validacao` varchar(255) DEFAULT NULL,
  `data_validacao` datetime DEFAULT NULL,
  `resultado_validacao` varchar(50) DEFAULT NULL,
  `id_log_atividade` int(11) DEFAULT NULL,
  `descricao_atividade` varchar(255) DEFAULT NULL,
  `data_atividade` datetime DEFAULT NULL,
  `id_contrato` int(11) DEFAULT NULL,
  `nome_servico` varchar(255) DEFAULT NULL,
  `valor_contrato` decimal(10,2) DEFAULT NULL,
  `data_realizacao` datetime DEFAULT NULL,
  `id_departamento` int(11) DEFAULT NULL,
  `nome_departamento` varchar(255) DEFAULT NULL,
  `id_endereco` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `tempo_analise` int(11) DEFAULT NULL,
  `prioridade` varchar(50) DEFAULT NULL,
  `status_pagamento` varchar(50) DEFAULT NULL,
  `tipo_erro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota_fiscal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flattened_data`
--

LOCK TABLES `flattened_data` WRITE;
/*!40000 ALTER TABLE `flattened_data` DISABLE KEYS */;
set autocommit=0;
/*!40000 ALTER TABLE `flattened_data` ENABLE KEYS */;
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

-- Dump completed on 2025-10-28 23:35:49
