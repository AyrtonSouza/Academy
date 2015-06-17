-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: academy
-- ------------------------------------------------------
-- Server version	5.6.21-log

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
-- Table structure for table `academia`
--

DROP TABLE IF EXISTS `academia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academia` (
  `acad_id` int(11) NOT NULL AUTO_INCREMENT,
  `acad_nome` varchar(100) NOT NULL,
  `acad_cpf_cnpj` mediumtext NOT NULL,
  `acad_endereco` varchar(255) NOT NULL,
  `acad_logo` varchar(100) NOT NULL,
  `acad_status` tinyint(1) NOT NULL,
  `fk_pac_id` int(11) NOT NULL,
  PRIMARY KEY (`acad_id`,`fk_pac_id`),
  KEY `fk_academia_pacote1_idx` (`fk_pac_id`),
  CONSTRAINT `fk_academia_pacote1` FOREIGN KEY (`fk_pac_id`) REFERENCES `pacote` (`pac_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academia`
--

LOCK TABLES `academia` WRITE;
/*!40000 ALTER TABLE `academia` DISABLE KEYS */;
INSERT INTO `academia` VALUES (2,'acad','123','acad','aca',1,3);
/*!40000 ALTER TABLE `academia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aparelho`
--

DROP TABLE IF EXISTS `aparelho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aparelho` (
  `apa_id` int(11) NOT NULL AUTO_INCREMENT,
  `apa_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`apa_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparelho`
--

LOCK TABLES `aparelho` WRITE;
/*!40000 ALTER TABLE `aparelho` DISABLE KEYS */;
INSERT INTO `aparelho` VALUES (1,'Teste'),(2,'Teste2');
/*!40000 ALTER TABLE `aparelho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia` (
  `dia_id` int(11) NOT NULL AUTO_INCREMENT,
  `dia_nome` varchar(20) NOT NULL,
  PRIMARY KEY (`dia_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercicio` (
  `exe_id` int(11) NOT NULL AUTO_INCREMENT,
  `exe_nome` varchar(45) NOT NULL,
  `fk_apa_id` int(11) NOT NULL,
  PRIMARY KEY (`exe_id`,`fk_apa_id`),
  KEY `fk_exercicio_aparelho1_idx` (`fk_apa_id`),
  CONSTRAINT `fk_exercicio_aparelho1` FOREIGN KEY (`fk_apa_id`) REFERENCES `aparelho` (`apa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicio`
--

LOCK TABLES `exercicio` WRITE;
/*!40000 ALTER TABLE `exercicio` DISABLE KEYS */;
INSERT INTO `exercicio` VALUES (1,'teste3',1),(2,'teste4',2),(3,'teste5',1),(4,'teste6',2);
/*!40000 ALTER TABLE `exercicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hora`
--

DROP TABLE IF EXISTS `hora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hora` (
  `hora_id` int(11) NOT NULL AUTO_INCREMENT,
  `hora` varchar(20) NOT NULL,
  PRIMARY KEY (`hora_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
/*!40000 ALTER TABLE `hora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medida`
--

DROP TABLE IF EXISTS `medida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medida` (
  `med_id` int(11) NOT NULL AUTO_INCREMENT,
  `med_pant_esquerda` float NOT NULL,
  `med_pant_direita` float NOT NULL,
  `med_cox_esquerda` float NOT NULL,
  `med_cox_direita` float NOT NULL,
  `med_cintura` float NOT NULL,
  `med_peito` float NOT NULL,
  `med_biceps_esquerdo` float NOT NULL,
  `med_biceps_direito` float NOT NULL,
  `med_antebraco_esquerdo` float NOT NULL,
  `med_antebraco_direito` float NOT NULL,
  `med_quadril` float NOT NULL,
  `fk_usu_id` int(11) NOT NULL,
  PRIMARY KEY (`med_id`,`fk_usu_id`),
  UNIQUE KEY `fk_usu_id_UNIQUE` (`fk_usu_id`),
  KEY `fk_medida_usuario1_idx` (`fk_usu_id`),
  CONSTRAINT `fk_medida_usuario1` FOREIGN KEY (`fk_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medida`
--

LOCK TABLES `medida` WRITE;
/*!40000 ALTER TABLE `medida` DISABLE KEYS */;
/*!40000 ALTER TABLE `medida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medida_final`
--

DROP TABLE IF EXISTS `medida_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medida_final` (
  `med_id` int(11) NOT NULL AUTO_INCREMENT,
  `med_pant_esquerda_f` float NOT NULL,
  `med_pant_direita_f` float NOT NULL,
  `med_cox_esquerda_f` float NOT NULL,
  `med_cox_direita_f` float NOT NULL,
  `med_cintura_f` float NOT NULL,
  `med_peito_f` float NOT NULL,
  `med_biceps_esquerdo_f` float NOT NULL,
  `med_biceps_direito_f` float NOT NULL,
  `med_antebraco_esquerdo_f` float NOT NULL,
  `med_antebraco_direito_f` float NOT NULL,
  `med_quadril_f` float NOT NULL,
  `fk_usu_id` int(11) NOT NULL,
  PRIMARY KEY (`med_id`,`fk_usu_id`),
  UNIQUE KEY `fk_usu_id_UNIQUE` (`fk_usu_id`),
  KEY `fk_medida_final_usuario1_idx` (`fk_usu_id`),
  CONSTRAINT `fk_medida_final_usuario1` FOREIGN KEY (`fk_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medida_final`
--

LOCK TABLES `medida_final` WRITE;
/*!40000 ALTER TABLE `medida_final` DISABLE KEYS */;
/*!40000 ALTER TABLE `medida_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meses`
--

DROP TABLE IF EXISTS `meses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meses` (
  `mes_id` int(11) NOT NULL AUTO_INCREMENT,
  `mes_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`mes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meses`
--

LOCK TABLES `meses` WRITE;
/*!40000 ALTER TABLE `meses` DISABLE KEYS */;
/*!40000 ALTER TABLE `meses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacote`
--

DROP TABLE IF EXISTS `pacote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacote` (
  `pac_id` int(11) NOT NULL AUTO_INCREMENT,
  `pac_nome` varchar(45) NOT NULL,
  `pac_num_usuario` int(11) NOT NULL,
  `pac_valor` float NOT NULL,
  PRIMARY KEY (`pac_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacote`
--

LOCK TABLES `pacote` WRITE;
/*!40000 ALTER TABLE `pacote` DISABLE KEYS */;
INSERT INTO `pacote` VALUES (3,'super',123,123);
/*!40000 ALTER TABLE `pacote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissao`
--

DROP TABLE IF EXISTS `permissao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissao` (
  `permi_id` int(11) NOT NULL,
  `permissao` varchar(45) NOT NULL,
  PRIMARY KEY (`permi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissao`
--

LOCK TABLES `permissao` WRITE;
/*!40000 ALTER TABLE `permissao` DISABLE KEYS */;
INSERT INTO `permissao` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_ACAD'),(3,'ROLE_PROF'),(4,'ROLE_ALUNO');
/*!40000 ALTER TABLE `permissao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peso`
--

DROP TABLE IF EXISTS `peso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peso` (
  `peso_id` int(11) NOT NULL AUTO_INCREMENT,
  `peso_inicial` int(11) DEFAULT NULL,
  `peso_final` int(11) DEFAULT NULL,
  PRIMARY KEY (`peso_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peso`
--

LOCK TABLES `peso` WRITE;
/*!40000 ALTER TABLE `peso` DISABLE KEYS */;
/*!40000 ALTER TABLE `peso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicidade`
--

DROP TABLE IF EXISTS `publicidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicidade` (
  `pub_id` int(11) NOT NULL AUTO_INCREMENT,
  `pub_nome` varchar(45) NOT NULL,
  `pub_imagem_nome` varchar(45) NOT NULL,
  `fk_mes_id` int(11) NOT NULL,
  `fk_acad_id` int(11) NOT NULL,
  `fk_hora_id` int(11) NOT NULL,
  `pub_dias` varchar(60) NOT NULL,
  PRIMARY KEY (`pub_id`,`fk_mes_id`,`fk_acad_id`,`fk_hora_id`),
  KEY `fk_publicidade_academia1_idx` (`fk_acad_id`),
  KEY `fk_publicidade_meses1_idx` (`fk_mes_id`),
  KEY `fk_publicidade_hora1_idx` (`fk_hora_id`),
  CONSTRAINT `fk_publicidade_academia1` FOREIGN KEY (`fk_acad_id`) REFERENCES `academia` (`acad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicidade_hora1` FOREIGN KEY (`fk_hora_id`) REFERENCES `hora` (`hora_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicidade_meses1` FOREIGN KEY (`fk_mes_id`) REFERENCES `meses` (`mes_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidade`
--

LOCK TABLES `publicidade` WRITE;
/*!40000 ALTER TABLE `publicidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino`
--

DROP TABLE IF EXISTS `treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treino` (
  `tre_id` int(11) NOT NULL AUTO_INCREMENT,
  `tre_nome` varchar(20) NOT NULL,
  `fk_acad_id` int(11) NOT NULL,
  `fk_exe_id` int(11) NOT NULL,
  `fk_apa_id` int(11) NOT NULL,
  PRIMARY KEY (`tre_id`,`fk_acad_id`,`fk_exe_id`,`fk_apa_id`),
  KEY `fk_treino_academia1_idx` (`fk_acad_id`),
  KEY `fk_treino_exercicio1_idx` (`fk_exe_id`,`fk_apa_id`),
  CONSTRAINT `fk_treino_academia1` FOREIGN KEY (`fk_acad_id`) REFERENCES `academia` (`acad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treino_exercicio1` FOREIGN KEY (`fk_exe_id`, `fk_apa_id`) REFERENCES `exercicio` (`exe_id`, `fk_apa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino`
--

LOCK TABLES `treino` WRITE;
/*!40000 ALTER TABLE `treino` DISABLE KEYS */;
/*!40000 ALTER TABLE `treino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino_aluno`
--

DROP TABLE IF EXISTS `treino_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treino_aluno` (
  `ta_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_tre_id` int(11) NOT NULL,
  `fk_usu_id` int(11) NOT NULL,
  `ta_serie` int(11) DEFAULT NULL,
  `ta_repeticao` int(11) DEFAULT NULL,
  `fk_peso_id` int(11) NOT NULL,
  PRIMARY KEY (`ta_id`,`fk_tre_id`,`fk_usu_id`,`fk_peso_id`),
  KEY `fk_Treino_aluno_usuario1_idx` (`fk_usu_id`),
  KEY `fk_treino_aluno_peso1_idx` (`fk_peso_id`),
  KEY `fk_Treino_aluno_treino1` (`fk_tre_id`),
  CONSTRAINT `fk_Treino_aluno_treino1` FOREIGN KEY (`fk_tre_id`) REFERENCES `treino` (`tre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treino_aluno_usuario1` FOREIGN KEY (`fk_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treino_aluno_peso1` FOREIGN KEY (`fk_peso_id`) REFERENCES `peso` (`peso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino_aluno`
--

LOCK TABLES `treino_aluno` WRITE;
/*!40000 ALTER TABLE `treino_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `treino_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `usu_id` int(11) NOT NULL AUTO_INCREMENT,
  `usu_nome` varchar(45) NOT NULL,
  `usu_cpf` int(11) NOT NULL,
  `usu_mail` varchar(255) NOT NULL,
  `usu_endereco` varchar(45) NOT NULL,
  `usu_senha` varchar(32) NOT NULL,
  `usu_status` tinyint(1) NOT NULL,
  `fk_acad_id` int(11) NOT NULL DEFAULT '0',
  `fk_permi_id` int(11) NOT NULL,
  PRIMARY KEY (`usu_id`,`fk_acad_id`,`fk_permi_id`),
  UNIQUE KEY `usu_mail_UNIQUE` (`usu_mail`),
  UNIQUE KEY `usu_cpf_UNIQUE` (`usu_cpf`),
  KEY `fk_usuario_academia1_idx` (`fk_acad_id`),
  KEY `fk_usuario_permissao1_idx` (`fk_permi_id`),
  CONSTRAINT `fk_usuario_academia1` FOREIGN KEY (`fk_acad_id`) REFERENCES `academia` (`acad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_permissao1` FOREIGN KEY (`fk_permi_id`) REFERENCES `permissao` (`permi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (20,'admin',123,'admin','admin','123',1,2,1),(22,'aluno',1234,'aluno','luno','123',1,2,4),(24,'prof',12345,'prof','prof','123',1,2,3),(25,'acad',134,'acad','acad','123',1,2,2);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-13 15:17:26
