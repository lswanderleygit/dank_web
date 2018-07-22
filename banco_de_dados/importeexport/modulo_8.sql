-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Jul-2018 às 22:49
-- Versão do servidor: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modulo_8`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`) VALUES
(1, 'Geral'),
(2, 'Esportes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) COLLATE utf8_bin NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8_bin NOT NULL,
  `momento_registro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `sobrenome`, `momento_registro`) VALUES
(1, 'Lucas', 'de Sousa Wanderley', '2018-07-11 07:46:00'),
(2, 'Guilherme', 'Grillo', '2017-05-09 19:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8_bin NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `conteudo` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`id`, `titulo`, `categoria_id`, `conteudo`) VALUES
(1, 'Minha noticia geral', 1, 'Meu texto de exemplo'),
(2, 'Noticia de esportes', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut mi vel ex tincidunt blandit. Sed convallis rutrum nisi sed elementum. Proin id arcu nunc. Quisque volutpat, quam a vestibulum auctor, eros dui tempor velit, at mattis elit libero vel erat. Sed elit nulla, gravida ac quam luctus, tincidunt fermentum nunc. Nullam elit orci, semper eget rutrum fermentum, volutpat vel metus. Curabitur consequat quis elit ac consectetur. Vestibulum at eleifend arcu. Nam dapibus ultrices finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus id felis ut commodo. In aliquam nisl id congue maximus. Etiam non hendrerit leo. Integer ultrices ultrices leo eu posuere. Nulla facilisi. Sed venenatis urna eu lectus gravida, ut ultrices tortor cursus.'),
(3, 'Minha outra noticia de esportes', 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut mi vel ex tincidunt blandit. Sed convallis rutrum nisi sed elementum. Proin id arcu nunc. Quisque volutpat, quam a vestibulum auctor, eros dui tempor velit, at mattis elit libero vel erat. Sed elit nulla, gravida ac quam luctus, tincidunt fermentum nunc. Nullam elit orci, semper eget rutrum fermentum, volutpat vel metus. Curabitur consequat quis elit ac consectetur. Vestibulum at eleifend arcu. Nam dapibus ultrices finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus id felis ut commodo. In aliquam nisl id congue maximus. Etiam non hendrerit leo. Integer ultrices ultrices leo eu posuere. Nulla facilisi. Sed venenatis urna eu lectus gravida, ut ultrices tortor cursus.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
