-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 26-Ago-2024 às 23:48
-- Versão do servidor: 5.6.13
-- versão do PHP: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `2dsm_24_2s`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE IF NOT EXISTS `funcionarios` (
  `registro` int(9) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `data_admissao` date NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `qtde_salarios` int(9) NOT NULL,
  `salario_bruto` double NOT NULL,
  `inss` double NOT NULL,
  `salario_liquido` double NOT NULL,
  PRIMARY KEY (`registro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`registro`, `nome`, `data_admissao`, `cargo`, `qtde_salarios`, `salario_bruto`, `inss`, `salario_liquido`) VALUES
(9, 'Betania', '5444-04-05', 'muie da limpeza', 5, 7060, 776.6, 6283.4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
