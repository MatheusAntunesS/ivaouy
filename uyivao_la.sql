-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Abr-2019 às 04:06
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uyivao_la`
--
CREATE DATABASE IF NOT EXISTS `uyivao_la` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `uyivao_la`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 'Evento 1', 'Descrição evento 1', '2019-03-07', '2019-03-05 03:00:00', '2019-03-05 03:00:00'),
(2, 'Evento2', 'descrição evento2', '2019-03-07', NULL, NULL),
(3, 'Evento2', 'descrição evento2', '2019-03-07', NULL, NULL),
(4, 'IVAO_UY', 'teste1234242342', '2019-03-15', '2019-03-08 01:25:57', '2019-03-08 01:25:57'),
(5, 'IVAO_UY', 'ytryrthgfhfghgfh', '2019-03-29', '2019-03-08 01:29:14', '2019-03-08 01:29:14'),
(6, 'IVAO_UY', 'ytryrthgfhfghgfh', '2019-03-29', '2019-03-08 01:31:04', '2019-03-08 01:31:04'),
(7, 'IVAO_UY', 'ytryrthgfhfghgfh', '2019-03-29', '2019-03-08 01:31:18', '2019-03-08 01:31:18'),
(8, 'IVAO_UY', 'ytryrthgfhfghgfh', '2019-03-29', '2019-03-08 01:31:58', '2019-03-08 01:31:58'),
(9, '[HQ] Montevideo 2015', 'Evento serpa ahsfd dasdak', '2019-03-13', '2019-03-08 01:32:47', '2019-03-08 01:32:47'),
(10, '[uy] teste', 'dfgdfgdfg', '2019-03-02', '2019-03-08 01:33:44', '2019-03-08 01:33:44'),
(11, '[uy] teste', 'dfgdfgdfg', '2019-03-02', '2019-03-08 01:34:30', '2019-03-08 01:34:30'),
(12, '[UY] Teste2', 'Descrição [UY] Teste 2', '2019-03-07', '2019-03-08 03:36:57', '2019-03-08 03:36:57'),
(13, '[HQ] Montevideo 2019', 'Teste 2019', '2019-03-09', '2019-03-08 04:02:27', '2019-03-08 04:02:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `localuser_admin`
--

DROP TABLE IF EXISTS `localuser_admin`;
CREATE TABLE `localuser_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `localuser_admin`
--

INSERT INTO `localuser_admin` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'root', 'uy-wm@ivao.aero', '$2y$10$xwVS6G8NCTZn.aUIciGheeSb4xLTA//TA/UA7JUIdncOzAlc6T/r2', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `ratingpilot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratingatc` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2019_03_05_214248_create_event_table', 1),
(5, '2019_03_05_220622_create_members_table', 1),
(6, '2019_03_05_221810_create_localuser_admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `localuser_admin`
--
ALTER TABLE `localuser_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `localuser_admin`
--
ALTER TABLE `localuser_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
