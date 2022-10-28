CREATE DATABASE `db_proyectoii` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `encargado` (
  `id_encargado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `edad` varchar(45) DEFAULT NULL,
  `numero_dpi` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `numero_telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_encargado`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `paciente` (
  `idpaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_paciente` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(45) DEFAULT NULL,
  `id_encargado` int(11) DEFAULT NULL,
  `genero` varchar(25) DEFAULT NULL,
  `enfermedad` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`),
  KEY `id_encargado_idx` (`id_encargado`),
  CONSTRAINT `id_encargado` FOREIGN KEY (`id_encargado`) REFERENCES `encargado` (`id_encargado`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `vacuna` (
  `id_vacuna` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_vacuna` varchar(45) DEFAULT NULL,
  `via_aplicacion` varchar(45) DEFAULT NULL,
  `edad_aplicacion_meses` varchar(45) DEFAULT NULL,
  `numero_dosis` varchar(45) DEFAULT NULL,
  `cantidad_dosis` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_vacuna`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

