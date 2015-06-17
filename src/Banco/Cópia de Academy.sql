
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: Academy
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
INSERT INTO `academia` VALUES (1,'SUPER','00000','SUPER','NONE',1,1),(2,'SportLife','123456789','ali acola','SportLifeLogo.jpg',1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aparelho`
--

LOCK TABLES `aparelho` WRITE;
/*!40000 ALTER TABLE `aparelho` DISABLE KEYS */;
INSERT INTO `aparelho` VALUES (1,'Barra'),(2,'Halteres'),(3,'Leg');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'Domingo'),(2,'Segunda'),(3,'Terca'),(4,'Quarta'),(5,'Quinta'),(6,'Sexta'),(7,'Sabado');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicio`
--

LOCK TABLES `exercicio` WRITE;
/*!40000 ALTER TABLE `exercicio` DISABLE KEYS */;
INSERT INTO `exercicio` VALUES (1,'Supino Reto',1),(2,'Supino Barra',1),(3,'Rosca',2),(4,'Rosca Invertida',2),(5,'Horizontal',3),(6,'45',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hora`
--

LOCK TABLES `hora` WRITE;
/*!40000 ALTER TABLE `hora` DISABLE KEYS */;
INSERT INTO `hora` VALUES (1,'06:00-07:00'),(2,'07:00-08:00'),(3,'08:00-09:00'),(4,'09:00-10:00'),(5,'10:00-11:00'),(6,'11:00-12:00'),(7,'12:00-13:00'),(8,'13:00-14:00'),(9,'14:00-15:00'),(10,'15:00-16:00'),(11,'16:00-17:00'),(12,'17:00-18:00'),(13,'18:00-19:00'),(14,'19:00-20:00'),(15,'20:00-21:00'),(16,'21:00-22:00'),(17,'22:00-23:00'),(18,'23:00-00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meses`
--

LOCK TABLES `meses` WRITE;
/*!40000 ALTER TABLE `meses` DISABLE KEYS */;
INSERT INTO `meses` VALUES (1,'Janeiro'),(2,'Fevereiro'),(3,'Marco'),(4,'Abril'),(5,'Maio'),(6,'Junho'),(7,'Julho'),(8,'Agosto'),(9,'Setembro'),(10,'Outubro'),(11,'Novembro'),(12,'Dezembro');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacote`
--

LOCK TABLES `pacote` WRITE;
/*!40000 ALTER TABLE `pacote` DISABLE KEYS */;
INSERT INTO `pacote` VALUES (1,'SUPER',1,1),(2,'Gold',100,200);
/*!40000 ALTER TABLE `pacote` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peso`
--

LOCK TABLES `peso` WRITE;
/*!40000 ALTER TABLE `peso` DISABLE KEYS */;
INSERT INTO `peso` VALUES (1,5,5);
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
  CONSTRAINT `fk_publicidade_meses1` FOREIGN KEY (`fk_mes_id`) REFERENCES `meses` (`mes_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_publicidade_hora1` FOREIGN KEY (`fk_hora_id`) REFERENCES `hora` (`hora_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicidade`
--

LOCK TABLES `publicidade` WRITE;
/*!40000 ALTER TABLE `publicidade` DISABLE KEYS */;
INSERT INTO `publicidade` VALUES (1,'CabecaIdeia','CabecaIdeiaPublicidade.jpg',11,2,11,'Sexta');
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
  PRIMARY KEY (`tre_id`,`fk_acad_id`),
  KEY `fk_treino_academia1_idx` (`fk_acad_id`),
  CONSTRAINT `fk_treino_academia1` FOREIGN KEY (`fk_acad_id`) REFERENCES `academia` (`acad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino`
--

LOCK TABLES `treino` WRITE;
/*!40000 ALTER TABLE `treino` DISABLE KEYS */;
INSERT INTO `treino` VALUES (1,'A',2);
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
  `fk_exe_id` int(11) NOT NULL,
  `fk_apa_id` int(11) NOT NULL,
  `ta_serie` int(11) DEFAULT NULL,
  `ta_repeticao` int(11) DEFAULT NULL,
  `fk_peso_id` int(11) NOT NULL,
  PRIMARY KEY (`ta_id`,`fk_tre_id`,`fk_usu_id`,`fk_exe_id`,`fk_apa_id`,`fk_peso_id`),
  KEY `fk_Treino_aluno_usuario1_idx` (`fk_usu_id`),
  KEY `fk_Treino_aluno_exercicio1_idx` (`fk_exe_id`,`fk_apa_id`),
  KEY `fk_treino_aluno_peso1_idx` (`fk_peso_id`),
  KEY `fk_Treino_aluno_treino1` (`fk_tre_id`),
  CONSTRAINT `fk_Treino_aluno_treino1` FOREIGN KEY (`fk_tre_id`) REFERENCES `treino` (`tre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treino_aluno_usuario1` FOREIGN KEY (`fk_usu_id`) REFERENCES `usuario` (`usu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Treino_aluno_exercicio1` FOREIGN KEY (`fk_exe_id`, `fk_apa_id`) REFERENCES `exercicio` (`exe_id`, `fk_apa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_treino_aluno_peso1` FOREIGN KEY (`fk_peso_id`) REFERENCES `peso` (`peso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino_aluno`
--

LOCK TABLES `treino_aluno` WRITE;
/*!40000 ALTER TABLE `treino_aluno` DISABLE KEYS */;
INSERT INTO `treino_aluno` VALUES (1,1,3,2,1,4,10,1);
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
  `usu_mail` varchar(255) NOT NULL,
  `usu_senha` varchar(32) NOT NULL,
  `usu_nivel` tinyint(4) NOT NULL,
  `usu_status` tinyint(1) NOT NULL,
  `fk_acad_id` int(11) NOT NULL,
  PRIMARY KEY (`usu_id`,`fk_acad_id`),
  UNIQUE KEY `usu_mail_UNIQUE` (`usu_mail`),
  KEY `fk_usuario_academia1_idx` (`fk_acad_id`),
  CONSTRAINT `fk_usuario_academia1` FOREIGN KEY (`fk_acad_id`) REFERENCES `academia` (`acad_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','admin','1',4,1,1),(2,'SportLife','SportLife','123',0,1,2),(3,'vinicios','aluno','1',2,1,2),(4,'prof','professor','1',1,1,2);
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

-- Dump completed on 2014-11-21 16:28:15
