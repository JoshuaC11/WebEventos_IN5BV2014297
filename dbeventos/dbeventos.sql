-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbeventos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbeventos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbeventos` DEFAULT CHARACTER SET utf8 ;
USE `dbeventos` ;

-- -----------------------------------------------------
-- Table `dbeventos`.`area`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`area` (
  `idarea` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idarea`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`lugarevento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`lugarevento` (
  `idlugarevento` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `area_idarea` INT NOT NULL,
  PRIMARY KEY (`idlugarevento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`evento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`evento` (
  `idevento` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idevento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`cotizacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`cotizacion` (
  `idcotizacion` INT NOT NULL AUTO_INCREMENT,
  `nombrecotizacion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idcotizacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`cliente` (
  `idcliente` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(100) NOT NULL,
  `apellidos` VARCHAR(100) NOT NULL,
  `telefono` VARCHAR(10) NOT NULL,
  `correro` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idcliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`reservacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`reservacion` (
  `idreservacion` INT NOT NULL AUTO_INCREMENT,
  `horainicio` DATETIME NOT NULL,
  `horafin` DATETIME NOT NULL,
  `descripcion` VARCHAR(100) NOT NULL,
  `lugarEvento_idlugarEvento` INT NOT NULL,
  `area_idarea` INT NOT NULL,
  `evento_idevento` INT NOT NULL,
  `cotizacion_idcotizacion` INT NOT NULL,
  `cliente_idcliente` INT NOT NULL,
  PRIMARY KEY (`idreservacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`tipoproducto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`tipoproducto` (
  `idtipoproducto` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtipoproducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`productos` (
  `idproductos` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `precioventa` VARCHAR(45) NULL,
  `fechavencimiento` VARCHAR(45) NULL,
  `tipoproducto_idtipoproducto` INT NOT NULL,
  PRIMARY KEY (`idproductos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`facturacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`facturacion` (
  `idfacturacion` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `nombrefactura` DATETIME NOT NULL,
  `total` DECIMAL NOT NULL,
  `productos_idproductos` INT NOT NULL,
  `cotizacion_idcotizacion` INT NOT NULL,
  PRIMARY KEY (`idfacturacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`detallefacturacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`detallefacturacion` (
  `iddetallefacturacion` INT NOT NULL AUTO_INCREMENT,
  `productos_idproductos` INT NOT NULL,
  `cantidad` VARCHAR(45) NOT NULL,
  `precioventa` DOUBLE NOT NULL,
  `facturacion_idfacturacion` INT NOT NULL,
  PRIMARY KEY (`iddetallefacturacion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbeventos`.`detallecotizacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbeventos`.`detallecotizacion` (
  `iddetallecotizacion` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NOT NULL,
  `cantidad` VARCHAR(45) NOT NULL,
  `precioventa` VARCHAR(45) NOT NULL,
  `productos_idproductos` INT NOT NULL,
  `cotizacion_idcotizacion` INT NOT NULL,
  PRIMARY KEY (`iddetallecotizacion`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
