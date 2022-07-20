-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Nov-2021 às 04:06
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mercearia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `telefone` decimal(15,0) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `cpf`, `telefone`, `endereco`) VALUES
(1, 'Maria da Silva', '21345678910', '55212233', 'Ceilandia'),
(2, 'Jose Pereira', '87345678910', '44215103', 'Ceilandia'),
(3, 'Katia Bernardes', '78345678910', '35815103', 'Ceilandia'),
(4, 'Carlos Batista', '88345678910', '535815103', 'Ceilandia'),
(5, 'Divina Soares ', '91345678910', '44215103', 'Taguatinga');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idfornecedor` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `telefone` decimal(15,0) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idfornecedor`, `nome`, `telefone`, `endereco`, `email`) VALUES
(1, 'Copal Distribuidora', '55212233', 'Saan', 'copaldistribuidora@gmail.com'),
(2, 'Canaã Alimentos', '30212233', 'Setor Sul', 'canaalimentos@gmail.com'),
(3, 'Celeste Alimentos', '30215103', 'Ceilandia', 'celestealimentos@hotmail.com'),
(4, 'STO Atacadista', '23251030', 'Ceilandia', 'stoatacadista@hotmail.com'),
(5, 'Roma Atacadista', '44212233', 'Taguatinga', 'romaatacadista@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `cpf` decimal(11,0) DEFAULT NULL,
  `telefone` decimal(15,0) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `nome`, `cpf`, `telefone`, `endereco`) VALUES
(1, 'Claudia Almeida', '12345678910', '30212233', 'Taguatinga'),
(2, 'Gabriel Gonçalves', '21345678910', '23251030', 'Samambaia Sul'),
(3, 'Cleiton Antonio', '87345678910', '30215103', 'Asa Sul'),
(4, 'Fabiana da Silva', '78345678910', '35815103', 'Ceilandia'),
(5, 'Paulo Sales', '12345678918', '44215103', 'Ceilandia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `nome`, `descricao`, `marca`, `valor`) VALUES
(1, 'arroz', 'agulhinha', 'Tio Joao', '1000'),
(2, 'feijao', 'tipo 1', 'Bene', '2000'),
(3, 'oleo de soja', 'oleo vegetal', 'Bonav', '500'),
(4, 'sal ', 'de mesa', 'Nosal', '300'),
(5, 'biscoito', 'biscoito recheado sabores', 'Fortaleza', '400');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idvenda` int(11) NOT NULL,
  `produto` varchar(45) DEFAULT NULL,
  `valor` decimal(10,0) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idvenda`, `produto`, `valor`, `data`) VALUES
(1, 'Feijao', '100', '2021-11-01'),
(2, 'arroz', '200', '2021-11-01'),
(3, 'biscoito', '100', '2021-11-01'),
(4, 'sal', '20', '2021-11-01'),
(5, 'oleo de soja', '40', '2021-11-01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idfornecedor`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idvenda`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
