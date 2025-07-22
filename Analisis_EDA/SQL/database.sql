-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema inventario_datos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema inventario_datos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `inventario_datos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `inventario_datos` ;

-- -----------------------------------------------------
-- Table `inventario_datos`.`inventario_servicios_apis`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_datos`.`inventario_servicios_apis` (
  `Id` INT NOT NULL,
  `Tipo` VARCHAR(100) NULL DEFAULT NULL,
  `Nombre_producto_API` VARCHAR(255) NULL DEFAULT NULL,
  `Version_producto` VARCHAR(50) NULL DEFAULT NULL,
  `Nombre_de_servicio_API` VARCHAR(255) NULL DEFAULT NULL,
  `Nombre_Tecnico_API` VARCHAR(255) NULL DEFAULT NULL,
  `Componente_menor` VARCHAR(255) NULL DEFAULT NULL,
  `Nombre_equipo` VARCHAR(255) NULL DEFAULT NULL,
  `Servicio_proveedor` VARCHAR(255) NULL DEFAULT NULL,
  `Consumidores` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `inventario_datos`.`opensearch_filtrado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `inventario_datos`.`opensearch_filtrado` (
  `Id` INT NOT NULL,
  `Hora_de_transaccion` DATETIME NULL DEFAULT NULL,
  `Herramienta_desarrollo` VARCHAR(255) NULL DEFAULT NULL,
  `Plataforma_de_despliegue` VARCHAR(255) NULL DEFAULT NULL,
  `Nombre_de_servicio` VARCHAR(255) NULL DEFAULT NULL,
  `Estado_de_respuesta` VARCHAR(255) NULL DEFAULT NULL,
  `Detalle_de_error` TEXT NULL DEFAULT NULL,
  `Causas` TEXT NULL DEFAULT NULL,
  `Nombre_de_operacion` VARCHAR(255) NULL DEFAULT NULL,
  `Id_consumidor` VARCHAR(255) NULL DEFAULT NULL,
  `Id_mensaje` VARCHAR(255) NULL DEFAULT NULL,
  `Version` VARCHAR(50) NULL DEFAULT NULL,
  `Año_de_ingestion` INT NULL DEFAULT NULL,
  `Mes_de_ingestion` INT NULL DEFAULT NULL,
  `Dia_de_ingestion` INT NULL DEFAULT NULL,
  `Inventario_Id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
