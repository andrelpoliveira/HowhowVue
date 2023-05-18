-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Maio-2023 às 16:13
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u374924820_howhowdev`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `campaign_invitations`
--

CREATE TABLE `campaign_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `invited_influencer` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `is_refused` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campaign_participants`
--

CREATE TABLE `campaign_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `influencer_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `confirmationStatus` varchar(255) NOT NULL DEFAULT '0',
  `was_invited` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campanhas`
--

CREATE TABLE `campanhas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `budget` varchar(255) NOT NULL,
  `brand_info` longtext DEFAULT NULL,
  `campaign_purpose` longtext DEFAULT NULL,
  `min_reach` varchar(255) DEFAULT NULL,
  `states` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`states`)),
  `line_of_business` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`line_of_business`)),
  `category` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`category`)),
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_media`)),
  `type` varchar(255) NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `ended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `belongs_to` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `categorie`, `belongs_to`, `icon`, `active`, `created_at`, `updated_at`) VALUES
(17, 'Media recommendations', 1, NULL, 1, NULL, NULL),
(18, 'Cosplay', 1, NULL, 1, NULL, NULL),
(19, 'Fan theories', 1, NULL, 1, NULL, NULL),
(20, 'Watch Alongs', 16, NULL, 1, NULL, NULL),
(25, 'Fan art', 1, NULL, 1, NULL, NULL),
(26, 'Geek related merch review', 1, NULL, 1, NULL, NULL),
(27, 'Fanfiction reaction', 1, NULL, 1, NULL, NULL),
(28, 'Apps & software tutorials', 2, NULL, 1, NULL, NULL),
(29, 'Apps & services comparisons', 2, NULL, 1, NULL, NULL),
(30, 'New app releases ', 2, NULL, 1, NULL, NULL),
(31, 'Productivity tips', 16, NULL, 1, NULL, NULL),
(32, 'Technology news', 2, NULL, 1, NULL, NULL),
(33, 'Interviews', 16, NULL, 1, NULL, NULL),
(34, 'App & service hacks', 2, NULL, 1, NULL, NULL),
(35, 'User stories/feedback', 2, NULL, 1, NULL, NULL),
(36, 'Weird & strange facts', 3, NULL, 1, NULL, NULL),
(37, 'Mysterious stories & legends', 3, NULL, 1, NULL, NULL),
(38, 'Oddities and curiosities', 3, NULL, 1, NULL, NULL),
(39, 'Travel and exploration', 3, NULL, 1, NULL, NULL),
(40, 'Historial oddities', 3, NULL, 1, NULL, NULL),
(41, 'Cryptids and creatures', 3, NULL, 1, NULL, NULL),
(42, 'Cultural oddities', 3, NULL, 1, NULL, NULL),
(43, 'Strange foods and drinks', 7, NULL, 1, NULL, NULL),
(44, 'Exploration of abandoned places', 3, NULL, 1, NULL, NULL),
(45, 'Dance tutorials', 4, NULL, 1, NULL, NULL),
(46, 'Choreography', 4, NULL, 1, NULL, NULL),
(47, 'Dance Performances', 4, NULL, 1, NULL, NULL),
(48, 'Dance Challengers', 4, NULL, 1, NULL, NULL),
(49, 'Dance styles', 4, NULL, 1, NULL, NULL),
(50, 'Fitness & Wellness', 14, NULL, 1, NULL, NULL),
(51, 'Dance Events & Competitions', 4, NULL, 1, NULL, NULL),
(52, 'Dance history and Culture', 4, NULL, 1, NULL, NULL),
(53, 'Audiobooks', 5, NULL, 1, NULL, NULL),
(54, 'Impression of characters', 5, NULL, 1, NULL, NULL),
(55, 'Documentaries', 5, NULL, 1, NULL, NULL),
(56, 'E-learning content', 5, NULL, 1, NULL, NULL),
(57, 'Voiceover storys', 5, NULL, 1, NULL, NULL),
(58, 'Dubbing', 5, NULL, 1, NULL, NULL),
(59, 'Outfit inspiration', 6, NULL, 1, NULL, NULL),
(60, 'Fashion hauls', 6, NULL, 1, NULL, NULL),
(61, 'Style advice', 6, NULL, 1, NULL, NULL),
(62, 'Makeup tutorials', 11, NULL, 1, NULL, NULL),
(63, 'Fashion trends', 6, NULL, 1, NULL, NULL),
(64, 'Sustainable fashion', 6, NULL, 1, NULL, NULL),
(65, 'Fashion industry news', 6, NULL, 1, NULL, NULL),
(66, 'Fashion events', 6, NULL, 1, NULL, NULL),
(67, 'Fashion history and culture', 6, NULL, 1, NULL, NULL),
(68, 'Recipe videos', 7, NULL, 1, NULL, NULL),
(69, 'Cooking tips', 7, NULL, 1, NULL, NULL),
(70, 'Food photography', 7, NULL, 1, NULL, NULL),
(71, 'Restaurant reviews', 7, NULL, 1, NULL, NULL),
(72, 'Food trends', 7, NULL, 1, NULL, NULL),
(73, 'Food industry news', 7, NULL, 1, NULL, NULL),
(74, 'Food and drink pairing', 7, NULL, 1, NULL, NULL),
(75, 'Nutrition and health', 7, NULL, 1, NULL, NULL),
(76, 'Cultural cuisine', 7, NULL, 1, NULL, NULL),
(77, 'Sketches and parodies', 8, NULL, 1, NULL, NULL),
(78, 'Pranks and social experiments', 8, NULL, 1, NULL, NULL),
(79, 'Stand up comedy', 8, NULL, 1, NULL, NULL),
(80, 'Comedic commentary', 8, NULL, 1, NULL, NULL),
(81, 'Improvisation and games', 8, NULL, 1, NULL, NULL),
(82, 'Satire and political humor', 8, NULL, 1, NULL, NULL),
(83, 'Storytelling Comedy', 8, NULL, 1, NULL, NULL),
(84, 'Collaboration', 16, NULL, 1, NULL, NULL),
(85, 'Character-based comedy', 8, NULL, 1, NULL, NULL),
(86, 'Animated comedy', 8, NULL, 1, NULL, NULL),
(87, 'Gameplays', 9, NULL, 1, NULL, NULL),
(88, 'Walkthroughs', 9, NULL, 1, NULL, NULL),
(89, 'Game Reviews and previews', 9, NULL, 1, NULL, NULL),
(90, 'Challenges and speed runs', 9, NULL, 1, NULL, NULL),
(91, 'Mods and customization', 9, NULL, 1, NULL, NULL),
(92, 'Esports and competitive gaming', 9, NULL, 1, NULL, NULL),
(93, 'Game development', 9, NULL, 1, NULL, NULL),
(94, 'Gaming news and events', 9, NULL, 1, NULL, NULL),
(95, 'Retro gaming', 9, NULL, 1, NULL, NULL),
(96, 'Productivity and time management', 10, NULL, 1, NULL, NULL),
(97, 'Organization and decluttering', 10, NULL, 1, NULL, NULL),
(98, 'Budgeting and personal finance', 10, NULL, 1, NULL, NULL),
(99, 'Cooking and meal prep', 7, NULL, 1, NULL, NULL),
(100, 'Health and wellness', 10, NULL, 1, NULL, NULL),
(101, 'Career and entrepreneurship', 10, NULL, 1, NULL, NULL),
(102, 'Personal development', 10, NULL, 1, NULL, NULL),
(103, 'Relationships and communication', 10, NULL, 1, NULL, NULL),
(104, 'Travel and adventure', 16, NULL, 1, NULL, NULL),
(105, 'DIY and home improvement', 15, NULL, 1, NULL, NULL),
(106, 'Make up Tutorials', 11, NULL, 1, NULL, NULL),
(107, 'Cosmetics reviews', 11, NULL, 1, NULL, NULL),
(108, 'Cosmetics hauls', 11, NULL, 1, NULL, NULL),
(109, 'Get ready with me', 11, NULL, 1, NULL, NULL),
(110, 'Favorite cosmetics', 11, NULL, 1, NULL, NULL),
(111, 'Beauty industry news', 11, NULL, 1, NULL, NULL),
(112, 'Makeup techniques', 11, NULL, 1, NULL, NULL),
(113, 'Covers and performances', 12, NULL, 1, NULL, NULL),
(114, 'Music tutorials', 12, NULL, 1, NULL, NULL),
(115, 'Music reviews', 12, NULL, 1, NULL, NULL),
(116, 'Behind-the-scenes', 16, NULL, 1, NULL, NULL),
(117, 'Music challenges', 12, NULL, 1, NULL, NULL),
(118, 'Music history and analysis', 12, NULL, 1, NULL, NULL),
(119, 'Music news and events', 12, NULL, 1, NULL, NULL),
(120, 'Music promotion', 12, NULL, 1, NULL, NULL),
(121, 'Music education', 12, NULL, 1, NULL, NULL),
(124, 'Mindset and positivity', 13, NULL, 1, NULL, NULL),
(125, 'Goal setting and achievement ', 13, NULL, 1, NULL, NULL),
(126, 'Inspirational stories and interviews', 13, NULL, 1, NULL, NULL),
(129, 'Entrepreneurship and business', 13, NULL, 1, NULL, NULL),
(130, 'Leadership and teamwork', 13, NULL, 1, NULL, NULL),
(131, 'Motivational speeches and videos', 13, NULL, 1, NULL, NULL),
(132, 'Inspirational quotes and affirmations', 13, NULL, 1, NULL, NULL),
(133, 'Show reviews', 16, NULL, 1, NULL, NULL),
(134, 'Movie reviews', 16, NULL, 1, NULL, NULL),
(135, 'Product reviews', 16, NULL, 1, NULL, NULL),
(136, 'Livestream', 16, NULL, 1, NULL, NULL),
(137, 'Collaboration with other influencers', 16, NULL, 1, NULL, NULL),
(141, 'Behind the scenes', 16, NULL, 1, NULL, NULL),
(142, 'Sports Events and Competitions', 14, NULL, 1, NULL, NULL),
(143, 'Fitness and Wellness', 14, NULL, 1, NULL, NULL),
(144, 'Podcasts', 16, NULL, 1, NULL, NULL),
(146, 'Reels/Storys/Short-Videos', 16, NULL, 1, NULL, NULL),
(147, 'Q&A sessions', 16, NULL, 1, NULL, NULL),
(148, 'Challenges', 16, NULL, 1, NULL, NULL),
(149, 'Travel vlogs', 16, NULL, 1, NULL, NULL),
(150, 'Destination guides', 16, NULL, 1, NULL, NULL),
(151, 'Unboxing’s', 16, NULL, 1, NULL, NULL),
(152, 'DIY', 16, NULL, 1, NULL, NULL),
(153, 'Educational content', 16, NULL, 1, NULL, NULL),
(154, 'ASMR', 16, NULL, 1, NULL, NULL),
(155, 'Celebrity interviews', 16, NULL, 1, NULL, NULL),
(156, 'Relationship and dating advice', 10, NULL, 1, NULL, NULL),
(157, 'Personal finance & money management', 10, NULL, 1, NULL, NULL),
(158, 'Pet videos', 16, NULL, 1, NULL, NULL),
(159, 'Science experiments', 16, NULL, 1, NULL, NULL),
(160, 'Political commentary & analysis', 16, NULL, 1, NULL, NULL),
(161, 'Mental health', 10, NULL, 1, NULL, NULL),
(162, 'Parenting & family vlogs', 16, NULL, 1, NULL, NULL),
(163, 'Minimalism & decluttering', 13, NULL, 1, NULL, NULL),
(164, 'Conspiracy theory videos', 3, NULL, 1, NULL, NULL),
(165, 'Car videos', 16, NULL, 1, NULL, NULL),
(166, 'Book reviews', 16, NULL, 1, NULL, NULL),
(167, 'Social media tips', 16, NULL, 1, NULL, NULL),
(168, 'Photography tutorials & gear reviews', 15, NULL, 1, NULL, NULL),
(169, 'Nature and wildlife videos', 16, NULL, 1, NULL, NULL),
(170, 'Food challenges/eating competitions', 7, NULL, 1, NULL, NULL),
(171, 'Celebrity news and gossip', 16, NULL, 1, NULL, NULL),
(172, 'Vlogger', 16, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `line_of_business`
--

CREATE TABLE `line_of_business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `line_of_business` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `line_of_business`
--

INSERT INTO `line_of_business` (`id`, `line_of_business`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Beauty and cosmetics', 1, NULL, NULL),
(2, 'Fashion and apparel', 1, NULL, NULL),
(3, 'Fitness and wellness', 1, NULL, NULL),
(4, 'Food and beverage', 1, NULL, NULL),
(5, 'Health and personal care', 1, NULL, NULL),
(6, 'Travel and tourism', 1, NULL, NULL),
(7, 'Home decor and furnishings', 1, NULL, NULL),
(8, 'Technology and gadgets', 1, NULL, NULL),
(9, 'Automotive', 1, NULL, NULL),
(10, 'Jewelry and accessories', 1, NULL, NULL),
(11, 'Entertainment and media', 1, NULL, NULL),
(12, 'Sports and outdoor gear', 1, NULL, NULL),
(13, 'Pet products', 1, NULL, NULL),
(14, 'Children\'s products', 1, NULL, NULL),
(15, 'Financial services', 1, NULL, NULL),
(16, 'Real estate', 1, NULL, NULL),
(17, 'Education and training', 1, NULL, NULL),
(18, 'Gaming', 1, NULL, NULL),
(19, 'Luxury goods', 1, NULL, NULL),
(20, 'Hospitality and events', 1, NULL, NULL),
(21, 'Toys and games', 1, NULL, NULL),
(22, 'Toys and games', 1, NULL, NULL),
(23, 'Art and design', 1, NULL, NULL),
(24, 'Non-profit and social causes', 1, NULL, NULL),
(25, 'Online courses and coaching', 1, NULL, NULL),
(26, 'E-commerce and retail', 1, NULL, NULL),
(27, 'Personal and professional development', 1, NULL, NULL),
(28, 'Agriculture and farming', 1, NULL, NULL),
(29, 'Fitness equipment and accessories', 1, NULL, NULL),
(30, 'Online services and software', 1, NULL, NULL),
(31, 'Fitness classes and gyms', 1, NULL, NULL),
(32, 'Supplements and vitamins', 1, NULL, NULL),
(33, 'Business services and consulting', 1, NULL, NULL),
(34, 'Beauty salons and spas', 1, NULL, NULL),
(35, 'Restaurants and cafes', 1, NULL, NULL),
(36, 'Baby and maternity products', 1, NULL, NULL),
(37, 'Outdoor and camping gear', 1, NULL, NULL),
(38, 'Home appliances and electronics', 1, NULL, NULL),
(39, 'Environmental and sustainability products', 1, NULL, NULL),
(40, 'Furniture and home improvement', 1, NULL, NULL),
(41, 'Sports teams and events', 1, NULL, NULL),
(42, 'Wedding and bridal products', 1, NULL, NULL),
(43, 'Music and entertainment products', 1, NULL, NULL),
(44, 'Event planning and coordination', 1, NULL, NULL),
(45, 'Beauty treatments and procedures', 1, NULL, NULL),
(46, 'Cooking and culinary products', 1, NULL, NULL),
(47, 'Gardening and landscaping products', 1, NULL, NULL),
(48, 'Gardening and landscaping products', 1, NULL, NULL),
(49, 'Photography equipment and accessories', 1, NULL, NULL),
(50, 'Career services and job search tools.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_17_184712_create_campaigns_table', 1),
(6, '2023_04_25_131300_create_campaign_participants_table', 1),
(7, '2023_04_26_132751_create_categories_table', 1),
(8, '2023_04_26_163436_create_line_of_business_table', 1),
(9, '2023_04_27_202000_create_parent_categorie_table', 1),
(10, '2023_04_28_195025_create_campaign_invitations_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `parent_categorie`
--

CREATE TABLE `parent_categorie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_categorie` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `parent_categorie`
--

INSERT INTO `parent_categorie` (`id`, `parent_categorie`, `created_at`, `updated_at`) VALUES
(1, 'Geek & nerd media', NULL, NULL),
(2, 'Tech,Apps & services', NULL, NULL),
(3, 'Curiosities', NULL, NULL),
(4, 'Professional dancing', NULL, NULL),
(5, 'Voiceover', NULL, NULL),
(6, 'Fashion', NULL, NULL),
(7, 'Gastronomy', NULL, NULL),
(8, 'Comedy', NULL, NULL),
(9, 'Games', NULL, NULL),
(10, 'Life Skills', NULL, NULL),
(11, 'Make-up', NULL, NULL),
(12, 'Music', NULL, NULL),
(13, 'Motivation', NULL, NULL),
(14, 'Sports', NULL, NULL),
(15, 'Design', NULL, NULL),
(16, 'Others', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `name_artistic` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `line_of_business` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `cnpj` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `name_artistic`, `business_name`, `username`, `line_of_business`, `role`, `category`, `gender`, `cpf`, `cnpj`, `adress`, `birthday`, `email`, `landline`, `phone`, `password`, `status`, `profile_photo_path`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Andre', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, 'andreluizprado@howhow.com.br', NULL, '11961547864', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0', NULL, '2023-05-15 18:25:36', 'rN8LEY8GoR', '2023-05-15 18:25:36', '2023-05-15 18:25:36'),
(2, 'Influencer Howhow', NULL, NULL, NULL, NULL, 'influencer', NULL, NULL, NULL, NULL, NULL, NULL, 'influencerteste2@howhow.com.br', NULL, NULL, '$2y$10$LtHkzqD3i3x2wqHNxRe..uGjXiTwygOHwRzDlTXSwyfNm9tVPXS76', '0', NULL, NULL, NULL, '2023-05-16 20:58:29', '2023-05-16 20:58:29'),
(3, 'influencer test2', NULL, NULL, NULL, NULL, 'influencer', NULL, NULL, NULL, NULL, NULL, NULL, 'teste@teste.com', NULL, NULL, '$2y$10$N6kRDii462GEWEcpMMNa/ODqgMR1FKeii9UNb6fh1NJmIAVBwcYH.', '0', NULL, NULL, NULL, '2023-05-17 16:37:25', '2023-05-17 16:37:25'),
(4, 'Influencer Howhow', NULL, NULL, NULL, NULL, 'influencer', NULL, NULL, NULL, NULL, NULL, NULL, 'influencerbeta@howhow.com.br', NULL, NULL, '$2y$10$5KQgHR2Gk4If70olfczfXufvNv6tOvsH2oK0v5kV/QOETpHYckFAi', '0', NULL, NULL, NULL, '2023-05-18 15:13:59', '2023-05-18 15:13:59'),
(5, NULL, 'Marca beta', 'Marca Teste', NULL, 'fashion', 'brand', NULL, NULL, NULL, '11.111.111/0001-01', NULL, NULL, 'marcabeta@howhow.com.br', NULL, '11999999999', '$2y$10$2Lzar6Qb95CGeRiyC0sHZ.YJOkY/yCxmS/FelSGjb2.2g87dC/Pj.', '0', NULL, NULL, NULL, '2023-05-18 15:17:35', '2023-05-18 15:17:35'),
(7, NULL, 'Marca teste2', 'Marca Teste2', NULL, 'Travel and tourism', 'brand', NULL, NULL, NULL, '01.001.001/0002-02', NULL, NULL, 'marca@teste.com', NULL, '+55 11 98765 4321', '$2y$10$bP8Gce5fQuZP8QNUTXVyv.HLWv77RlfJFlm7AUnsXKvK2Gr6vmLRS', '0', NULL, NULL, NULL, '2023-05-18 15:27:34', '2023-05-18 15:27:34'),
(8, NULL, 'Agencia Beta', 'Agencia Teste', NULL, 'Agência', 'agency', NULL, NULL, NULL, '05.005.005/0001-02', NULL, NULL, 'agencia@howhow.com.br', NULL, '+55 11 98765 4322', '$2y$10$ZQqzuutom88fOMjfsIkmD.wHJiv9hb/vyQsG8Mp1IuzkMgFpim8vi', '0', NULL, NULL, NULL, '2023-05-18 15:35:55', '2023-05-18 15:35:55');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `campaign_invitations`
--
ALTER TABLE `campaign_invitations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `campaign_participants`
--
ALTER TABLE `campaign_participants`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `campanhas`
--
ALTER TABLE `campanhas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `campanhas_name_unique` (`name`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_categorie_unique` (`categorie`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `line_of_business`
--
ALTER TABLE `line_of_business`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `parent_categorie`
--
ALTER TABLE `parent_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_name_artistic_unique` (`name_artistic`),
  ADD UNIQUE KEY `users_business_name_unique` (`business_name`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_cpf_unique` (`cpf`),
  ADD UNIQUE KEY `users_cnpj_unique` (`cnpj`),
  ADD UNIQUE KEY `users_landline_unique` (`landline`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `campaign_invitations`
--
ALTER TABLE `campaign_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `campaign_participants`
--
ALTER TABLE `campaign_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `campanhas`
--
ALTER TABLE `campanhas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `line_of_business`
--
ALTER TABLE `line_of_business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `parent_categorie`
--
ALTER TABLE `parent_categorie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
