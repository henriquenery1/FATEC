-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 01-Out-2024 às 01:11
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
  `senha_funcionario` varchar(50) NOT NULL,
  `ativo` int(50) NOT NULL,
  PRIMARY KEY (`registro`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`registro`, `nome`, `data_admissao`, `cargo`, `qtde_salarios`, `salario_bruto`, `inss`, `salario_liquido`, `senha_funcionario`, `ativo`) VALUES
(26, 'Enzo', '2023-02-11', 'Desenvolvedor', 564654, 797291448, 87702059.28, 709589388.72, '', 0),
(28, 'Giulia', '2024-09-15', 'Desenvolvedor', 654983, 924835996, 101731959.56, 823104036.44, 'teste', 1),
(29, 'Ellen', '2025-03-09', 'Desenvolvedor', 2147483647, 125030540350900, 13753359438599, 111277180912300, '', 1),
(30, 'Hector', '2025-04-16', 'Desenvolvedor', 56454854, 79714253848, 8768567923.28, 70945685924.72, '', 0),
(32, 'dfdfd', '2024-09-12', 'Estagiario', 76, 107312, 11804.32, 95507.68, '565656', 0),
(35, 'zika', '2024-09-12', 'Estagiario', 4, 5648, 621.28, 5026.72, '123', 0),
(36, 'fgfgfg', '2024-09-05', 'Estagiario', 3, 4236, 465.96, 3770.04, 'ggttg', 1),
(37, 'fgfg', '2024-09-06', 'Estagiario', 44, 62128, 6834.08, 55293.92, 'gfgfg', 1),
(38, 'fgfgf', '2024-09-26', 'Estagiario', 44, 62128, 6834.08, 55293.92, '45454', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
