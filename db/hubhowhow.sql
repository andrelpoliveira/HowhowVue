-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/05/2023 às 14:11
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
(1, 'Lucas Lira', NULL, '25000', '12000', '8000', '6500', '3500', 'recusado', 'http://localhost/HowhowVue/howhow/src/assets/images/influencers/1.jpeg'),
(2, 'Rato Borrachudo', NULL, '18000', '8000', '12000', '3500', '15000', 'aprovado', 'http://localhost/HowhowVue/howhow/src/assets/images/influencers/2.jpeg'),
(3, 'Influencer2', NULL, '65000', '72000', '8800', '12000', '4500', 'requer atençao', 'http://localhost/HowhowVue/howhow/src/assets/favicon.ico'),
(4, 'Fulano de tal', 'musica', '6500', '12000', '6500', '35000', '18000', 'aprovado', 'http://localhost/HowhowVue/howhow/src/assets/images/influencers/3.jpeg'),
(5, 'Vagabau', 'comedia', '6500', '12000', '6500', '35000', '18000', 'aprovado', 'http://localhost/HowhowVue/howhow/src/assets/favicon.ico');

-- --------------------------------------------------------

--
-- Estrutura para tabela `states`
--

CREATE TABLE `states` (
  `id` int(120) NOT NULL,
  `estado` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_general_ci;

--
-- Despejando dados para a tabela `states`
--

INSERT INTO `states` (`id`, `estado`) VALUES
(1, 'Acre'),
(2, 'Alagoas'),
(3, 'Amapa'),
(4, 'Amazonas'),
(5, 'Bahia'),
(6, 'Ceará'),
(7, 'Espírito Santo'),
(8, 'Goiás'),
(9, 'Maranhão'),
(10, 'Mato Grosso'),
(11, 'Mato Grosso do Sul'),
(12, 'Minas Gerais'),
(13, 'Pará'),
(14, 'Paraíba'),
(15, 'Paraná'),
(16, 'Pernambuco'),
(17, 'Piauí'),
(18, 'Rio de Janeiro'),
(19, 'Rio Grande do Norte'),
(20, 'Rio Grande do Sul'),
(21, 'Rondônia'),
(22, 'Roraima'),
(23, 'Santa Catarina'),
(24, 'São Paulo'),
(25, 'Sergipe'),
(26, 'Tocantins');

--
-- Índices para tabelas despejadas
--