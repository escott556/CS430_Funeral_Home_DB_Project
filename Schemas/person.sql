CREATE TABLE `person` (
  `PERSON_ID` int NOT NULL,
  `PERSON_FIRST` varchar(45) NOT NULL,
  `PERSON_LAST` varchar(45) NOT NULL,
  `PERSON_PHONENUM` bigint DEFAULT NULL,
  `PERSON_ADDRESS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PERSON_ID`),
  UNIQUE KEY `idperson_UNIQUE` (`PERSON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
