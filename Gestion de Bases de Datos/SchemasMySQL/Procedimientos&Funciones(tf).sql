CREATE DATABASE  IF NOT EXISTS `tf` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tf`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: tf
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actuaciones`
--

DROP TABLE IF EXISTS `actuaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actuaciones` (
  `Referencia` varchar(10) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `TiempoEstimado` decimal(4,2) DEFAULT NULL,
  `Importe` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`Referencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actuaciones`
--

LOCK TABLES `actuaciones` WRITE;
/*!40000 ALTER TABLE `actuaciones` DISABLE KEYS */;
INSERT INTO `actuaciones` VALUES ('1110001111','Cambiar correa de distribución',2.50,125.00),('1110002222','Cambiar tubo de escape',3.00,150.00),('1110003333','Sustituir junta de inyectores',2.70,135.00),('1110004444','Sustitución mando regulación velocidad',0.60,30.00),('1110005555','Cambiar compresor de aire acondicionado',3.30,160.50),('1110006666','Cambiar batería',1.30,60.50),('1110007777','Sustitución escobillas',0.70,35.00),('1110008888','Sustitución de lámparas',0.20,10.00),('1110009999','Limpieza de inyectores',1.75,87.50),('1111110000','Sustitución correa transmisi�n',2.15,100.75),('1112220000','Limpieza carburador',2.10,100.50),('1113330000','Cambio filtro aceite',0.70,35.00),('1114440000','Cambiar junta',0.20,10.00),('1115550000','Sustituir líquido de frenos',0.50,25.00),('1116660000','Cambiar amortiguadores',1.50,75.00),('1117770000','Cambiar radiador',2.50,120.50),('1118880000','Limpiar Bujías',0.30,20.50);
/*!40000 ALTER TABLE `actuaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clientes` (
  `CodCliente` varchar(5) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`CodCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('00001','12345678A','Alvarez Martín','Isabel','Alameda de Osuna, nº 112, 2º B, Madrid','111223344'),('00002','23456789B','Ceballos López','Carlos','Avenida de los Castros, nº 27, Bajo, Santander','222334455'),('00003','34567890C','Ruiz Esteban','Alfonso','Parque del Olivo, nº 7, 3º, Reinosa','333445566'),('00004','45678901D','Escudero Ruiz','Carmen','Paseo Pereda, nº 342, 2º dcha, Santander','444556677'),('00005','56789012E','Muriedas, Arce','Enrique','Calle Ruiz de Alda, nº 43, 1º A, Torrelavega','555667788'),('00006','67890123F','Arce Villegas','Manuel Antonio','Paseo Fernández Vallejo, nº 160, Bajo, Torrelavega','666778899'),('00007','78901234G','Martínez Salces','María Luisa','Calle Valdenoja, nº 23, 4º C, Santander','777889900'),('00008','89012345H','Barquín Rodríguez','Antonio','Calle Fontaneda, s/n, Bajo, Reinosa','888990011'),('00009','90123456I','Cos Herrero','Jesús','Calle Mayor, nº 10, Bajo, Correpoco','999001122'),('00010','01234567J','Sanchez Valverde','Fernando','Travesía Peñafiel, nº 423, 1º Izda, Valladolid','000112233');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empleados` (
  `CodEmpleado` varchar(5) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Nombre` varchar(25) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `CP` varchar(5) DEFAULT NULL,
  `FechaAlta` date DEFAULT NULL,
  `Categoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CodEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES ('10000','87654321A','Marta','Márquez Barcelona','Avenida del Sardinero, nº1, 3º C, Santander','112233444','39012','2009-03-21','Encargada de recambios'),('11000','98765432J','Héctor','Díaz Trigo','Plaza de las Autonomías, nº 67, 5º Izda, Santander','001122333','39316','2008-01-12','Jefe de mecánica'),('20000','76543210B','Joaqu�n','Ruiz Díaz','Calle Revilla, nº 2, 2º Dcha, Astillero','223344555','39403','2008-06-01','Oficial de 2ª, ayudante de mecánica'),('30000','65432109C','Ernesto','Fernández Pellín','Avenida de Barreda, nº 327, bajo, Torrelavega','334455666','39300','2010-02-23','Recepcionista'),('40000','54321098D','Javier','Vegar Cos','Paseo Menéndez Pelayo, nº 42, 2º dcha, Santander','445566777','39008','2008-01-12','Jefe chapa/pintura'),('50000','43210987E','Ana Luisa','González Fernández','Avenida del Alisal, nº 16, 1º Izda, Santander','556677888','39011','2010-01-01','Administrativo'),('60000','32109876F','Tomás','Ruiz Cerezo','Paseo Fernando Arce, nº 160, Bajo, Torrelavega','667788999','39315','2008-06-01','Oficial de 2ª, ayudante de chapa/pintura'),('70000','21098765G','José Carlos','Sáinz Mata','Calle Valdenoja, nº 12, 2º F, Santander','777889900','39016','2009-10-16','Oficial de 1ª, mecánico'),('80000','10987654H','Silvia','Robles Pereda','Calle Avelino García, nº 23, 4º C, Heras','889900111','39213','2010-03-15','Gerente de Administración'),('90000','09876543I','Luis Jesús','Hermida Martínez','Calle del desfiladero, nº 101, Bajo, LLanes','990011222','33500','2008-01-12','Jefe de electricidad');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `facturas` (
  `IdFactura` int(4) NOT NULL,
  `FechaFactura` date NOT NULL,
  `CodCliente` varchar(5) NOT NULL,
  `IdReparacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdFactura`),
  KEY `FACT_FK_CodCli` (`CodCliente`),
  KEY `FACT_FK_IdRep` (`IdReparacion`),
  CONSTRAINT `FACT_FK_CodCli` FOREIGN KEY (`CodCliente`) REFERENCES `clientes` (`CodCliente`) ON UPDATE CASCADE,
  CONSTRAINT `FACT_FK_IdRep` FOREIGN KEY (`IdReparacion`) REFERENCES `reparaciones` (`IdReparacion`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (10,'2011-01-01','00005',1),(11,'2011-01-03','00007',2),(12,'2011-01-03','00001',3),(13,'2011-01-05','00005',6),(14,'2011-01-07','00006',5),(15,'2011-01-07','00010',4),(16,'2011-01-07','00006',7),(17,'2011-01-10','00005',8),(18,'2011-01-10','00002',10);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incluyen`
--

DROP TABLE IF EXISTS `incluyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `incluyen` (
  `IdRecambio` varchar(10) NOT NULL,
  `IdReparacion` int(11) NOT NULL,
  `Unidades` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`IdRecambio`,`IdReparacion`),
  KEY `Incluy_FK_IdRep` (`IdReparacion`),
  CONSTRAINT `Incluy_FK_IdRec` FOREIGN KEY (`IdRecambio`) REFERENCES `recambios` (`IdRecambio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Incluy_FK_IdRep` FOREIGN KEY (`IdReparacion`) REFERENCES `reparaciones` (`IdReparacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incluyen`
--

LOCK TABLES `incluyen` WRITE;
/*!40000 ALTER TABLE `incluyen` DISABLE KEYS */;
INSERT INTO `incluyen` VALUES ('BB_000_777',7,1),('BB_000_777',8,1),('CA_111_999',5,1),('CD_000_666',1,1),('EE_111_333',6,1),('IN_222_444',3,2),('JU_222_333',1,2),('JU_222_333',8,1),('JU_222_333',10,2),('LD_222_777',6,1),('PL_222_555',3,1),('RR_111_111',10,1),('RV_222_666',4,1),('TE_111_888',2,1);
/*!40000 ALTER TABLE `incluyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intervienen`
--

DROP TABLE IF EXISTS `intervienen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `intervienen` (
  `CodEmpleado` varchar(5) NOT NULL DEFAULT '',
  `IdReparacion` int(11) NOT NULL,
  `Horas` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`CodEmpleado`,`IdReparacion`),
  KEY `Inter_FK_IdRep` (`IdReparacion`),
  CONSTRAINT `Inter_FK_CodEm` FOREIGN KEY (`CodEmpleado`) REFERENCES `empleados` (`CodEmpleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Inter_FK_IdRep` FOREIGN KEY (`IdReparacion`) REFERENCES `reparaciones` (`IdReparacion`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intervienen`
--

LOCK TABLES `intervienen` WRITE;
/*!40000 ALTER TABLE `intervienen` DISABLE KEYS */;
INSERT INTO `intervienen` VALUES ('11000',3,1.20),('11000',7,0.30),('20000',1,2.00),('20000',2,3.10),('20000',5,1.00),('20000',7,0.30),('20000',8,0.75),('20000',10,0.10),('40000',2,3.10),('40000',6,0.30),('60000',4,0.40),('60000',5,0.75),('70000',1,0.50),('70000',3,1.50),('70000',9,0.10),('70000',10,0.50),('90000',4,0.20),('90000',8,1.00);
/*!40000 ALTER TABLE `intervienen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realizan`
--

DROP TABLE IF EXISTS `realizan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `realizan` (
  `IdReparacion` int(11) NOT NULL,
  `Referencia` varchar(10) NOT NULL,
  `Horas` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`IdReparacion`,`Referencia`),
  KEY `Real_FK_Refer` (`Referencia`),
  CONSTRAINT `Real_FK_IdRep` FOREIGN KEY (`IdReparacion`) REFERENCES `reparaciones` (`IdReparacion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Real_FK_Refer` FOREIGN KEY (`Referencia`) REFERENCES `actuaciones` (`Referencia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realizan`
--

LOCK TABLES `realizan` WRITE;
/*!40000 ALTER TABLE `realizan` DISABLE KEYS */;
INSERT INTO `realizan` VALUES (1,'1110001111',2.50),(1,'1114440000',0.20),(2,'1110002222',3.00),(3,'1110003333',3.00),(3,'1110009999',1.75),(4,'1110004444',0.60),(5,'1110005555',3.30),(6,'1110007777',0.10),(6,'1110008888',0.30),(7,'1110006666',1.30),(8,'1110006666',1.30),(8,'1114440000',0.20),(10,'1114440000',0.20),(10,'1117770000',2.50),(10,'1118880000',0.30);
/*!40000 ALTER TABLE `realizan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recambios`
--

DROP TABLE IF EXISTS `recambios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recambios` (
  `IdRecambio` varchar(10) NOT NULL,
  `Descripcion` varchar(100) DEFAULT NULL,
  `UnidadBase` varchar(50) DEFAULT NULL,
  `Stock` smallint(6) DEFAULT NULL,
  `PrecioReferencia` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`IdRecambio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recambios`
--

LOCK TABLES `recambios` WRITE;
/*!40000 ALTER TABLE `recambios` DISABLE KEYS */;
INSERT INTO `recambios` VALUES ('AA_000_333','Amortiguación','Caja de 2 unidades',5,75.00),('BB_000_777','Bateria','Unidad',23,130.00),('BD_000_111','Bomba de dirección','Unidad',12,13.25),('BJ_111_666','Bujías','Caja de 2 unidades',4,99.00),('CA_111_999','Compresor de aire acondicionado','Unidad',2,460.00),('CA_222_222','Carburador','Unidad',5,360.00),('CC_000_999','Caja de cambios','Unidad',12,330.00),('CD_000_666','Correa de distribución','Unidad',12,115.00),('CD_000_888','Cremallera de dirección','Unidad',4,102.10),('DF_000_444','Disco de freno','Caja 4 unidades',12,155.50),('EE_111_333','Escobillas','Caja de 2 unidades',43,86.34),('EM_111_444','Embrague','Juego de 2 unidades',2,122.00),('FA_000_555','Filtro de aceite','Unidad',12,99.00),('FA_111_222','Filtro de aire','Unidad',25,86.00),('IN_222_444','Inyectores','2 Unidades',12,67.50),('JU_222_333','Juntas','Unidad',34,12.00),('LD_222_777','Juego de lámparas delantero','2 Unidades',12,17.37),('PF_111_777','Pastillas de freno','Caja de 2 unidades',6,155.00),('PL_222_555','Plaquetas','Juego de 4',6,70.94),('RR_111_111','Radiador','unidad',6,98.90),('RV_222_666','Mando regulación velocidad','Unidad',3,65.32),('TE_111_888','Tubo de escape','Unidad',7,220.00),('TF_000_222','Tambor de freno','Unidad',6,130.00),('TT_111_555','Trasmisión','Unidad',4,211.00),('ZF_222_111','Zapatas de freno','Caja de 2 unidades',12,33.25);
/*!40000 ALTER TABLE `recambios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reparaciones`
--

DROP TABLE IF EXISTS `reparaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reparaciones` (
  `IdReparacion` int(11) NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(8) NOT NULL,
  `FechaEntrada` date DEFAULT NULL,
  `Km` decimal(8,2) DEFAULT NULL,
  `Averia` varchar(200) DEFAULT NULL,
  `FechaSalida` date DEFAULT NULL,
  `Reparado` tinyint(1) DEFAULT NULL,
  `Observaciones` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`IdReparacion`),
  KEY `REPAR_FK_CodRep` (`Matricula`),
  CONSTRAINT `REPAR_FK_CodRep` FOREIGN KEY (`Matricula`) REFERENCES `vehiculos` (`Matricula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reparaciones`
--

LOCK TABLES `reparaciones` WRITE;
/*!40000 ALTER TABLE `reparaciones` DISABLE KEYS */;
INSERT INTO `reparaciones` VALUES (1,'5566 ABC','2010-12-30',50000.00,'Posible desgaste de la correa de distribución','2011-01-01',1,'Sin observaciones'),(2,'1313 DEF','2011-01-01',60000.00,'Ruido tubo de escape','2011-01-02',1,'Cambiar si es necesario'),(3,'0011 ABC','2011-01-01',16000.00,'Revisar fogueo de inyectores','2011-01-03',1,'Ruido al arrancar en frío'),(4,'1414 DEF','2011-01-03',2500.00,'Ruptura pieza mando regulación velocidad','2011-01-04',1,'Sin observaciones'),(5,'9900 ABC','2011-01-03',83400.00,'No funciona aire acondicionado','2011-01-06',1,'Sin observaciones'),(6,'1313 DEF','2011-01-03',61000.00,'Fundida lámpara faro delantero izquierdo','2011-01-04',1,'Sustutuir'),(7,'4455 ABC','2011-01-04',10000.00,'Batería se descarga','2011-01-04',1,'Observar funcionamiento'),(8,'4455 ABC','2011-01-05',10000.00,'No arranca. Posible sustitución bateria','2011-01-07',1,'Sin observaciones'),(9,'1515 DEF','2011-01-07',45000.00,'Ruido amortiguadores','2011-01-08',0,'No acepta presupuesto'),(10,'1212 DEF','2011-01-10',62300.00,'El radiador pierde agua',NULL,0,'Pendiente de entrega');
/*!40000 ALTER TABLE `reparaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehiculos` (
  `Matricula` varchar(8) NOT NULL,
  `Marca` varchar(25) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `FechaMatriculacion` date DEFAULT NULL,
  `CodCliente` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`Matricula`),
  KEY `VEHIC_FK_CodCli` (`CodCliente`),
  CONSTRAINT `VEHIC_FK_CodCli` FOREIGN KEY (`CodCliente`) REFERENCES `clientes` (`CodCliente`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculos`
--

LOCK TABLES `vehiculos` WRITE;
/*!40000 ALTER TABLE `vehiculos` DISABLE KEYS */;
INSERT INTO `vehiculos` VALUES ('0011 ABC','Hyundai','Tucson','Negro azabache','2010-09-22','00007'),('1111 DEF','Suzuki','Vitara','Gris magenta','2010-05-30','00006'),('1122 ABC','Citroen','C3','Azul cobalto','2006-08-16','00009'),('1212 DEF','Citroen','C4','Azul Turquesa','2009-07-07','00010'),('1313 DEF','Seat','Ibiza','Gris','2009-12-23','00003'),('1414 DEF','Volkswagen','Golf','Azul marino','2010-08-15','00004'),('1515 DEF','Renault','Clio','Gris perla','2004-04-23','00010'),('1616 DEF','Seat','Leon','Rojo','2007-06-21','00009'),('2233 ABC','Ford','Mondeo','Gris metalizado','2008-06-21','00002'),('3344 ABC','Nissan','Primera','Negro metalizado','2006-03-22','00009'),('4455 ABC','Seat','León','Rojo','2001-01-19','00005'),('5566 ABC','Daewo','','Azul Cobalto','2006-08-16','00008'),('6677 ABC','Renault','Megane Privilege','Azul','2009-10-12','00004'),('7788 ABC','Opel','Corsa Personality','Negro','2010-11-26','00003'),('8899 ABC','BMW','X3','Verde','2009-01-05','00002'),('9900 ABC','Renault','Laguna','Blanco','2010-11-06','00001');
/*!40000 ALTER TABLE `vehiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tf'
--
/*!50003 DROP FUNCTION IF EXISTS `GBD_U5_T3_E3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GBD_U5_T3_E3`() RETURNS varchar(10000) CHARSET utf8
BEGIN
	declare existe int default 1;
    declare n,a,d varchar(50) default "";
	declare salida varchar(10000) default "";
    declare c1 cursor for 
		select nombre, apellidos, direccion
		from empleados;
	declare continue handler for sqlstate '02000' set existe=0;
   
	open c1;
    
    fetch c1 into n,a,d;
		
    while existe=1 do
		set salida=concat(salida,"Nombre: ",n,"\n",
								"Apellidos: ",a,"\n"
                                ,"Dirección",d,"\n",
                                "-------------- \n");
        fetch c1 into n,a,d;
	end while;
    close c1;
RETURN salida;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `coches_marca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `coches_marca`(in mar varchar(25), out cantidad int)
BEGIN
	select count(*) into cantidad
    from vehiculos
    where marca=mar;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GBD_U5_T2_E1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GBD_U5_T2_E1`()
BEGIN
	declare existe int default 1;
    declare mar,model,col,rep varchar(50) default ""; #Cursor1
    declare codc,dni,ap,nom,dir,tel varchar(50) default ""; #Cursor2
    declare matri,marc,model2,col2,fecmatri,codc2 varchar(50) default ""; #Cursor2
    declare salida longtext default "";
    declare salida2 longtext default "";
    declare c1 cursor for 
		select v.marca,v.modelo,v.color, if(r.Reparado=1, 'reparado','no reparado') as 'Estado'
		from clientes c join vehiculos v on c.CodCliente=v.CodCliente
		join reparaciones r on v.Matricula=r.Matricula
		where v.Matricula not in(
			select v.Matricula
			from clientes c join vehiculos v on c.CodCliente=v.CodCliente
			join reparaciones r on v.Matricula=r.Matricula
			where r.Reparado=1);
	declare c2 cursor for
		select c.*, v.*
		from clientes c join vehiculos v on c.codCliente=v.CodCliente
		join reparaciones r on v.matricula=r.Matricula
		where year(r.FechaEntrada) between 2010 and 2011
        order by(c.CodCliente);
    declare continue handler for sqlstate '02000' set existe=0;
    open c1;
    open c2;
    fetch c1 into mar,model,col,rep;
    fetch c2 into codc,dni,ap,nom,dir,tel,matri,marc,model2,col2,fecmatri,codc2;
    while existe=1 do
		set salida=concat(salida,"El vehiculo ",mar," ",model," de color ",col," tiene estado de ",rep,
								  "\n----------------------------------------------------------------------------------- \n");
		set salida2=concat(salida2,"Datos del cliente","\n------------------","\nCodigo Cliente: ",codc,
        "\nDNI: ",dni,
        "\nApellidos: ",ap,
        "\nNombre",nom,
        "\nDirección: ",dir,
		"\nTelefono: ",tel,
        "\n------------------",
        "\nDatos del vehiculo",
        "\n------------------",
        "\nMatricula: ",matri,
        "\nMarca: ",marc,
        "\nModelo: ",model2,
        "\nColor: ",col2,
        "\nFecha de Matriculación: ",fecmatri,
        "\nCodigo Cliente: ",codc2,
		"\n----------------------------------------------------------------------------------- \n" );    
        fetch c1 into mar,model,col,rep;
        fetch c2 into codc,dni,ap,nom,dir,tel,matri,marc,model2,col2,fecmatri,codc2;
	end while;
    select concat("\n","					Vehiculos no reparados\n","----------------------------------------------------------------------------------- \n",salida,
		"\n 						Datos \n","----------------------------------------------------------------------------------- \n",salida2,"\n" ) as "Ejercicio1";
    close c1;
    close c2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GBD_U5_T2_E2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GBD_U5_T2_E2`(in matri varchar(8))
BEGIN
    
    select v.*, count(r.IdReparacion), ifnull("Ha sido reparado", "No ha sido reparado") as "Estado"
    from vehiculos v join reparaciones r on v.Matricula=r.Matricula
    where v.Matricula=matri;
    
    select distinct e.codempleado,e.nombre, e.apellidos
    from reparaciones r join intervienen i on r.IdReparacion=i.IdReparacion
    join empleados e on i.CodEmpleado=e.CodEmpleado
    where r.Matricula=matri;
  
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GBD_U5_T2_E3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GBD_U5_T2_E3`(in fecha date, out salida int)
BEGIN
	
    select count(*) into salida
    from reparaciones
    where reparado=0 
    and fechasalida=fecha;
    
    update reparaciones
    set reparado=1
    where fechasalida=fecha;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GBD_U5_T3_E2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GBD_U5_T3_E2`(in f1 date, in f2 date)
BEGIN
	declare existe int default 1;
    declare mes varchar(20) default "";
    declare a,num int;
    declare salida varchar(10000) default "";
    declare c1 cursor for 
		select count(*), monthname(fechaEntrada), year(fechaEntrada)
        from reparaciones
        where fechaEntrada between f1 and f2
        group by monthname(fechaEntrada), year(fechaEntrada); 
    declare continue handler for sqlstate '02000' set existe=0;
    
    open c1;
    
    fetch c1 into num,mes,a;
    
    while existe=1 do
		set salida= concat(salida, mes," ",a,":",num," reparaciones\n");
		fetch c1 into num,mes,a;
	end while;
    select salida;
    close c1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-15  9:17:39
