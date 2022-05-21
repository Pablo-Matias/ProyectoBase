-- MySQL Workbench Synchronization
-- Generated: 2022-05-03 20:05
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Walter

CREATE TABLE IF NOT EXISTS `brnv1yr93x1865xl8gni`.`redes` (
  `idred` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL DEFAULT NULL,
  `url` VARCHAR(2000) NULL DEFAULT NULL,
  `fotourl` VARCHAR(200) NULL DEFAULT NULL,
  `persona` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idred`),
  INDEX `persona_redes_idx` (`persona` ASC) VISIBLE,
  CONSTRAINT `persona_redes`
    FOREIGN KEY (`persona`)
    REFERENCES `brnv1yr93x1865xl8gni`.`persona` (`idpersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
