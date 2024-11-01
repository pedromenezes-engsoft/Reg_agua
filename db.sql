-- MySQL Script generated by MySQL Workbench
-- Sat Oct 19 10:20:47 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema my_water_app
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_water_app` DEFAULT CHARACTER SET utf8 ;
USE `my_water_app` ;

-- -----------------------------------------------------
-- Table `my_water_app`.`casas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_water_app`.`casas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome_proprietario` VARCHAR(45) NOT NULL,
  `nivel_acesso` VARCHAR(45) NOT NULL DEFAULT 'comum',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nome_proprietario_UNIQUE` (`nome_proprietario` ASC) VISIBLE)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `my_water_app`.`leituras`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_water_app`.`leituras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `contador` INT NOT NULL,
  `photo` VARCHAR(45) NULL,
  `createAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `casas_id` INT NOT NULL,
  PRIMARY KEY (`id`, `casas_id`),
  INDEX `fk_leituras_casas_idx` (`casas_id` ASC) VISIBLE,
  CONSTRAINT `fk_leituras_casas`
    FOREIGN KEY (`casas_id`)
    REFERENCES `my_water_app`.`casas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Inserindo casa com nível de acesso 'ADM' e nome do proprietário 'DEFAULT'
INSERT INTO `my_water_app`.`casas` (`nome_proprietario`, `nivel_acesso`) 
VALUES ('DEFAULT', 'ADM');

-- Inserindo leitura associada à casa do usuário 'DEFAULT'
INSERT INTO `my_water_app`.`leituras` (`contador`, `casas_id`) 
VALUES (0, 1);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
