-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 24, 2020 at 09:19 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fseletron`
--

-- --------------------------------------------------------

--
-- Table structure for table `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedidos` int NOT NULL,
  `Nome_cli` varchar(45) NOT NULL,
  `endereço_cli` varchar(100) NOT NULL,
  `telefone` varchar(14) DEFAULT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `valor_unitário` decimal(8,2) NOT NULL,
  `quantidade` int DEFAULT NULL,
  `valor total` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `descriçao` varchar(150) NOT NULL,
  `preço` decimal(8,2) NOT NULL,
  `preçofinal` decimal(8,2) NOT NULL,
  `imagem` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`idprodutos`, `categoria`, `descriçao`, `preço`, `preçofinal`, `imagem`) VALUES
(1, 'geladeira', 'Refrigerador Brastemp Side Inverse BRO80 540 Litros Ice Maker Evox 110v', '5.26', '5.20', '/img/Geladeira03_1.png'),
(2, 'geladeira', 'Geladeira/Refrigerador Brastemp Frost Free BRM44 375 Litros - Evox - 110v\r\n\r\n', '2.45', '2.35', '/img/Geladeira02_1.png'),
(3, 'geladeira', 'Geladeira/Refrigerador Consul Duplex Frost Free 340 litros Branca 110V', '2.07', '1.97', '/img/Geladeira01_1.png'),
(4, 'microondas', 'Microondas 25L Espelhado Pme25 Philco 127V', '649.00', '549.00', '/img/Microondas01_1.png'),
(5, 'fogão', 'Fogão de Piso Mesa de Vidro Electrolux 5', '1.85', '1.75', '/img/Fogao02_1.png'),
(6, 'fogão', 'Fogão Brastemp 5 Bocas BFS5N - Inox', '1.60', '1.50', '/img/Fogao01_1.png'),
(7, 'maquina de lavar', 'Máquina De Lavar Roupas Midea Storm', '3.10', '3.00', '/img/Lavadoura01_1.png'),
(8, 'lava louças', 'Lava Louças Brastemp 10 Serviços BLF10 Branca 110V', '3.70', '3.60', '/img/Lava_louca02_1.png'),
(9, 'lava louças', 'Lava-Louças Electrolux Inox 14 Serviços LV14X', '4.42', '4.32', '/img/Lava_louca01_1.png'),
(10, 'lavadoura de roupas', 'Lavadora de Roupas Brastemp 12Kg', '2.10', '2.00', '/img/Lavadoura02_1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idprodutos`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idprodutos` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
