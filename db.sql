-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema muo-beta
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema muo-beta
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `muo-beta` DEFAULT CHARACTER SET utf8 ;
USE `muo-beta` ;

-- -----------------------------------------------------
-- Table `muo-beta`.`noverifieduser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `muo-beta`.`noverifieduser` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(35) NOT NULL,
  `last_name` VARCHAR(35) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `verifyToken` VARCHAR(60) NOT NULL,
  `disponible_resend` DATETIME NOT NULL,
  `emailToken` VARCHAR(16) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `muo-beta`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `muo-beta`.`usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(80) NULL DEFAULT NULL,
  `password` VARCHAR(60) NULL DEFAULT NULL,
  `nombre_usuario` VARCHAR(45) NULL DEFAULT NULL,
  `apellido_usuario` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `muo-beta`.`passwordcode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `muo-beta`.`passwordcode` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `code` INT(6) NOT NULL,
  `user_id` INT(11) NOT NULL,
  `limit_time` DATETIME NULL DEFAULT NULL,
  `resend_code` DATETIME NULL DEFAULT NULL,
  `passToken` VARCHAR(16) NULL DEFAULT NULL,
  `verified` TINYINT(1) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_password_code` (`user_id` ASC),
  CONSTRAINT `fk_password_code`
    FOREIGN KEY (`user_id`)
    REFERENCES `muo-beta`.`usuarios` (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
