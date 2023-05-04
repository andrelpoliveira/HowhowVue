-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04/05/2023 às 22:43
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hubhowhow`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `influencers`
--

CREATE TABLE `influencers` (
  `id` int(20) NOT NULL,
  `nameinfluencer` varchar(50) NOT NULL,
  `categoria` varchar(90) DEFAULT NULL,
  `youtube` varchar(90) DEFAULT NULL,
  `facebook` varchar(90) DEFAULT NULL,
  `instagram` varchar(90) DEFAULT NULL,
  `tiktok` varchar(90) DEFAULT NULL,
  `kwai` varchar(90) DEFAULT NULL,
  `statuscampaign` varchar(50) DEFAULT NULL,
  `picture` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `influencers`
--

INSERT INTO `influencers` (`id`, `nameinfluencer`, `categoria`, `youtube`, `facebook`, `instagram`, `tiktok`, `kwai`, `statuscampaign`, `picture`) VALUES
(1, 'Lucas Lira', NULL, '25000', '12000', '8000', '6500', '3500', NULL, 'https://xsgames.co/randomusers/avatar.php?g=male'),
(2, 'Rato Borrachudo', NULL, '18000', '8000', '12000', '3500', '15000', NULL, 'https://xsgames.co/randomusers/avatar.php?g=male'),
(3, 'Influencer2', NULL, '65000', '72000', '8800', '12000', '4500', NULL, 'https://xsgames.co/randomusers/avatar.php?g=male');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `influencers`
--
ALTER TABLE `influencers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `influencers`
--
ALTER TABLE `influencers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
