-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema folhaverde
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `folhaverde` ;

-- -----------------------------------------------------
-- Schema folhaverde
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `folhaverde` DEFAULT CHARACTER SET utf8 ;
USE `folhaverde` ;

-- -----------------------------------------------------
-- Table `folhaverde`.`tb_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `folhaverde`.`tb_product` (
  `id_product` INT(11) NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(100) NOT NULL,
  `product_price` DOUBLE NOT NULL,
  `product_product_path_image` VARCHAR(300) NOT NULL,
  `product_type` ENUM('0', '1', '2') NOT NULL,
  PRIMARY KEY (`id_product`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `folhaverde`.`tb_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `folhaverde`.`tb_order` (
  `id_order` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(100) NOT NULL,
  `user_last_name` VARCHAR(100) NOT NULL,
  `user_cep_code` VARCHAR(45) NOT NULL,
  `user_adress` VARCHAR(200) NOT NULL,
  `card_number` VARCHAR(45) NOT NULL,
  `cc_selected_card_flag_id` INT NOT NULL,
  `cc_slected_installment` INT NOT NULL,
  `holder_card_name` VARCHAR(100) NOT NULL,
  `cc_selected_month` INT NOT NULL,
  `cc_selected_year` INT NOT NULL,
  `security_code_card` INT NOT NULL,
  `holder_card_cpf` VARCHAR(45) NOT NULL,
  `total_order` FLOAT NOT NULL,
  PRIMARY KEY (`id_order`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `folhaverde`.`tb_order_products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `folhaverde`.`tb_order_products` (
  `id_order_products` INT NOT NULL AUTO_INCREMENT,
  `id_product` INT NOT NULL,
  `id_order` INT NOT NULL,
  `product_price` FLOAT NOT NULL,
  PRIMARY KEY (`id_order_products`),
  INDEX `fk_tb_order_products_tb_product_idx` (`id_product` ASC),
  INDEX `fk_tb_order_products_tb_order1_idx` (`id_order` ASC),
  CONSTRAINT `fk_tb_order_products_tb_product`
    FOREIGN KEY (`id_product`)
    REFERENCES `folhaverde`.`tb_product` (`id_product`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_order_products_tb_order1`
    FOREIGN KEY (`id_order`)
    REFERENCES `folhaverde`.`tb_order` (`id_order`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
