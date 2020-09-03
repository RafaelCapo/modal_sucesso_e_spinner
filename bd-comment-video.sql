-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 02-Set-2020 às 13:15
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd-comment-video`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) COLLATE utf8_bin NOT NULL,
  `comment` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`) VALUES
(117, 'asdasda', 'asdasd'),
(116, 'rafael', '123'),
(113, 'asdsadas', 'sadas'),
(112, 'lucas', '123'),
(111, 'rasdsad', 'sadasd'),
(110, 'rafa', '123'),
(109, 'rasdasdasd', 'asdsad'),
(108, 'asdas', 'asdsadas'),
(107, 'asdasdas', 'asdas'),
(106, 'asdsadsa', 'sadas'),
(105, 'bruno', '123'),
(95, 'vinicius', '123'),
(104, 'lucas', '123'),
(93, 'alessandro', 'teste'),
(92, 'Bruna', 'sdsadsa 2'),
(91, 'Rafa', 'teste');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
