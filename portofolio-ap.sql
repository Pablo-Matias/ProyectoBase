-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema brnv1yr93x1865xl8gni
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema brnv1yr93x1865xl8gni
-- -----------------------------------------------------
USE `brnv1yr93x1865xl8gni` ;

-- -----------------------------------------------------
-- Table `brnv1yr93x1865xl8gni`.`persona`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellido` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `titulo` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  `ubicacion` VARCHAR(45) NULL,
  `acerca` VARCHAR(45) NULL,
  `fotourl` VARCHAR(45) NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(2000) NULL,
  PRIMARY KEY (`idpersona`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brnv1yr93x1865xl8gni`.`educacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`educacion` (
  `ideducacion` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `fechafin` DATE NULL,
  `institucion` VARCHAR(200) NULL,
  `institucionurl` VARCHAR(2000) NULL,
  `fotourl` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`ideducacion`),
  INDEX `persona_educacion_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_educacion`
    FOREIGN KEY (`persona`)
    REFERENCES `brnv1yr93x1865xl8gni`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brnv1yr93x1865xl8gni`.`proyecto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`proyecto` (
  `idproyecto` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `descripcion` VARCHAR(2000) NULL,
  `url` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idproyecto`),
  INDEX `persona_proyecto_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_proyecto`
    FOREIGN KEY (`persona`)
    REFERENCES `brnv1yr93x1865xl8gni`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brnv1yr93x1865xl8gni`.`skill`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`skill` (
  `idskill` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(500) NULL,
  `dominio` INT NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idskill`),
  INDEX `persona_skill_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_skill`
    FOREIGN KEY (`persona`)
    REFERENCES `brnv1yr93x1865xl8gni`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brnv1yr93x1865xl8gni`.`laboral`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`laboral` (
  `idlaboral` INT NOT NULL AUTO_INCREMENT,
  `puesto` VARCHAR(500) NULL,
  `descripcion` VARCHAR(2000) NULL,
  `empresa` VARCHAR(500) NULL,
  `inicio` DATE NULL,
  `fin` DATE NULL,
  `fotourl` VARCHAR(2000) NULL,
  `persona` INT NULL,
  PRIMARY KEY (`idlaboral`),
  INDEX `persona_laboral_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_laboral`
    FOREIGN KEY (`persona`)
    REFERENCES `brnv1yr93x1865xl8gni`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
