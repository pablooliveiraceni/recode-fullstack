-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 25, 2021 at 10:40 AM
-- Server version: 8.0.22-0ubuntu0.20.04.2
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fullstackeletro`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Geladeira'),
(2, 'Fogao'),
(3, 'Micro-ondas'),
(4, 'Maqui de lavar'),
(5, 'Lava Louça');

-- --------------------------------------------------------

--
-- Table structure for table `comentario`
--

CREATE TABLE `comentario` (
  `id` int NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `msg` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `comentario`
--

INSERT INTO `comentario` (`id`, `nome`, `msg`) VALUES
(1, 'pablo', 'ola'),
(2, 'pánbls', 'asds');

-- --------------------------------------------------------

--
-- Table structure for table `produto`
--

CREATE TABLE `produto` (
  `idproduto` int NOT NULL,
  `fk_categoria` int NOT NULL,
  `descricao` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `precofinal` decimal(8,2) DEFAULT NULL,
  `imagem` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `produto`
--

INSERT INTO `produto` (`idproduto`, `fk_categoria`, `descricao`, `preco`, `precofinal`, `imagem`) VALUES
(1, 1, 'Geladeira/Refrigerador Consul Duplex Frost Free 340 litros Branca 110V', '2069.89', '1969.89', 'Geladeira01_1.png'),
(2, 1, 'Geladeira/Refrigerador Brastemp Frost Free BRM44 375 Litros - Evox - 110v', '2448.99', '2348.99', 'Geladeira02_1.png'),
(3, 1, 'Geladeira Brastemp Side Inverse BRO80 540 Litros Ice Maker Evox 110v', '5258.99', '5199.99', 'Geladeira03_1.png'),
(4, 2, 'Fogão Brastemp 5 Bocas BFS5N - Inox', '1599.89', '1499.89', 'Fogao01_1.png'),
(5, 2, 'Fogão de Piso Mesa de Vidro Electrolux 5', '1848.89', '1748.89', 'Fogao02_1.png'),
(6, 3, 'Microondas 25L Espelhado Pme25 Philco 127V', '679.99', '579.99', 'Microondas01_1.png'),
(7, 3, 'Micro-ondas Consul Espelhado 32 Litros - CMS45 240v', '4100.00', '4000.00', 'Microondas02_1.png'),
(8, 3, 'Micro-ondas Brastemp Espelhado Grill 32', '1173.81', '1073.81', 'Microondas03_1.png'),
(9, 4, 'Máquina De Lavar Roupas Midea Storm', '3099.00', '2999.00', 'Lavadoura01_1.png'),
(10, 4, 'Lavadora de Roupas Brastemp 12Kg', '2099.99', '1999.99', 'Lavadoura02_1.png'),
(11, 4, 'Lava-Louças Electrolux Inox 14 Serviços LV14X', '4423.90', '4323.90', 'Lava_louca01_1.png'),
(12, 4, 'Lava Louças Brastemp 10 Serviços BLF10 Branca 110V', '3699.89', '3599.89', 'Lava_louca02_1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`),
  ADD UNIQUE KEY `imagem` (`imagem`),
  ADD KEY `fk_categoria` (`fk_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idproduto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
