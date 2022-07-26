-- MySQL Script generated by MySQL Workbench
-- Wed Nov 24 18:25:06 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema dbshoes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbshoes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbshoes` DEFAULT CHARACTER SET utf8 ;
USE `dbshoes` ;

-- -----------------------------------------------------
-- Table `dbshoes`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbshoes`.`funcionario` (
  `idfuncionario` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `cpf` DECIMAL(11) NULL,
  `telefone` DECIMAL(15) NULL,
  `funcao` VARCHAR(45) NULL,
  PRIMARY KEY (`idfuncionario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbshoes`.`produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbshoes`.`produto` (
  `idproduto` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `descricao` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `valor` DECIMAL NULL,
  `funcionario_idfuncionario` INT NOT NULL,
  PRIMARY KEY (`idproduto`),
  INDEX `fk_produto_funcionario_idx` (`funcionario_idfuncionario` ASC) VISIBLE,
  CONSTRAINT `fk_produto_funcionario`
    FOREIGN KEY (`funcionario_idfuncionario`)
    REFERENCES `dbshoes`.`funcionario` (`idfuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbshoes`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbshoes`.`fornecedor` (
  `idfornecedor` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `telefone` DECIMAL(15) NULL,
  `endereco` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `produto_idproduto` INT NOT NULL,
  PRIMARY KEY (`idfornecedor`),
  INDEX `fk_fornecedor_produto1_idx` (`produto_idproduto` ASC) VISIBLE,
  CONSTRAINT `fk_fornecedor_produto1`
    FOREIGN KEY (`produto_idproduto`)
    REFERENCES `dbshoes`.`produto` (`idproduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbshoes`.`venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbshoes`.`venda` (
  `idvenda` INT NOT NULL,
  `produto` VARCHAR(45) NULL,
  `data` DATE NULL,
  `valor` VARCHAR(45) NULL,
  `funcionario_idfuncionario` INT NOT NULL,
  PRIMARY KEY (`idvenda`),
  INDEX `fk_venda_funcionario1_idx` (`funcionario_idfuncionario` ASC) VISIBLE,
  CONSTRAINT `fk_venda_funcionario1`
    FOREIGN KEY (`funcionario_idfuncionario`)
    REFERENCES `dbshoes`.`funcionario` (`idfuncionario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbshoes`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbshoes`.`cliente` (
  `idcliente` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `cpf` DECIMAL(11) NULL,
  `telefone` VARCHAR(45) NULL,
  `telefone` DECIMAL(15) NULL,
  `endereco` VARCHAR(45) NULL,
  `venda_idvenda` INT NOT NULL,
  PRIMARY KEY (`idcliente`),
  INDEX `fk_cliente_venda1_idx` (`venda_idvenda` ASC) VISIBLE,
  CONSTRAINT `fk_cliente_venda1`
    FOREIGN KEY (`venda_idvenda`)
    REFERENCES `dbshoes`.`venda` (`idvenda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
