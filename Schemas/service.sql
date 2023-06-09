CREATE TABLE `service` (
  `SERVICE_NUM` int NOT NULL,
  `SERVICE_DATE` date NOT NULL,
  `SERVICE_LOC` varchar(45) NOT NULL,
  `DECEASED_SSN` int NOT NULL,
  `PAYER_ID` int NOT NULL,
  `placeInChurch` char(1) DEFAULT NULL,
  `visitation` varchar(45) DEFAULT NULL,
  `memorials` varchar(45) DEFAULT NULL,
  `openOrClose` char(1) DEFAULT NULL,
  `interment` varchar(45) DEFAULT NULL,
  `numOfDeathCerts` smallint DEFAULT NULL,
  `orderDateDeathCerts` date DEFAULT NULL,
  `SERVICE_TIME` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SERVICE_NUM`),
  KEY `DECEASED_SSN_idx` (`DECEASED_SSN`),
  KEY `PAYER_ID_idx` (`PAYER_ID`),
  CONSTRAINT `PAYER_ID` FOREIGN KEY (`PAYER_ID`) REFERENCES `person` (`PERSON_ID`),
  CONSTRAINT `SERVICE_DECEASED_SSN` FOREIGN KEY (`DECEASED_SSN`) REFERENCES `deceased` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
