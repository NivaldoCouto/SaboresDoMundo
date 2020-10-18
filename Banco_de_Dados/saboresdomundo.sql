-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2020 às 16:29
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `saboresdomundo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `id` int(11) NOT NULL,
  `receita` int(11) NOT NULL,
  `avaliacao` varchar(20) NOT NULL,
  `usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`id`, `receita`, `avaliacao`, `usuario`, `timestamp`) VALUES
(1, 1, '3', 1, '2019-10-23 01:01:34'),
(2, 3, '5', 1, '2019-10-23 01:02:20'),
(3, 2, '2', 1, '2019-10-23 01:02:45'),
(4, 2, '5', 3, '2019-10-23 01:08:27'),
(5, 4, '2', 1, '2019-10-23 01:14:16'),
(6, 5, '3', 1, '2019-10-23 22:09:41'),
(7, 7, '4', 1, '2019-10-24 22:10:56'),
(8, 5, '5', 3, '2019-10-24 22:22:32'),
(9, 9, '5', 5, '2019-10-24 22:56:42'),
(10, 11, '5', 6, '2019-10-24 23:02:22'),
(11, 12, '5', 1, '2019-10-24 23:35:46'),
(12, 8, '5', 1, '2019-10-24 23:35:59'),
(13, 13, '3', 1, '2019-10-25 00:42:24'),
(14, 13, '2', 2, '2019-10-25 00:53:24'),
(15, 17, '5', 1, '2019-10-25 12:55:36'),
(16, 11, '4', 1, '2019-10-25 23:30:46'),
(17, 18, '5', 1, '2019-10-26 00:19:04'),
(18, 24, '5', 1, '2019-10-28 20:15:11'),
(19, 9, '4', 1, '2019-10-28 20:15:24'),
(20, 23, '3', 1, '2019-10-29 10:23:21'),
(21, 22, '4', 1, '2019-10-29 14:08:15'),
(22, 44, '5', 1, '2019-11-02 22:38:38'),
(23, 47, '5', 1, '2019-11-02 22:38:58'),
(24, 8, '4', 11, '2019-11-07 23:24:26'),
(25, 62, '4', 11, '2019-11-07 23:50:32'),
(26, 19, '5', 1, '2019-11-22 23:32:59'),
(27, 61, '3', 1, '2019-11-23 01:47:32'),
(28, 9, '5', 3, '2020-03-13 20:55:11'),
(29, 12, '4', 3, '2020-03-13 20:56:31'),
(30, 63, '5', 3, '2020-03-16 18:22:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `path_icon` varchar(80) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `titulo`, `path_icon`, `timestamp`) VALUES
(1, 'Aves', 'images/icon-categoria/5db0c23ce2341.jpg', '2019-10-23 00:48:40'),
(2, 'Carnes', 'images/icon-categoria/5db0c265dd5ae.jpg', '2019-10-23 21:13:09'),
(3, 'Massas', 'images/icon-categoria/5db0c295d91de.jpg', '2019-10-23 21:13:57'),
(4, 'Sobremesas', 'images/icon-categoria/5db0c2cdee038.jpg', '2019-10-23 21:14:53'),
(5, 'massa2', 'images/icon-categoria/5de68b05b3745.jpg', '2019-12-03 16:19:17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `id_receita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id`, `comentario`, `id_receita`, `id_user`, `timestamp`) VALUES
(12, 'Receita muito boa, tudo corresponde parao resultado.', 63, 16, '2020-10-17 14:26:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `foto_receita`
--

CREATE TABLE `foto_receita` (
  `id` int(11) NOT NULL,
  `receita` int(11) NOT NULL,
  `path_foto` varchar(255) NOT NULL,
  `usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `foto_receita`
--

INSERT INTO `foto_receita` (`id`, `receita`, `path_foto`, `usuario`, `timestamp`) VALUES
(13, 5, 'foto_receita/5db0c2eca64aa.jpg', 1, '2019-10-23 21:15:24'),
(15, 8, 'foto_receita/5db22214bd987.jpg', 1, '2019-10-24 22:13:40'),
(16, 9, 'foto_receita/5db2255973054.jpg', 1, '2019-10-24 22:27:37'),
(17, 12, 'foto_receita/5db22bde49c10.jpg', 1, '2019-10-24 22:55:26'),
(18, 11, 'foto_receita/5db22c61a7f66.jpg', 6, '2019-10-24 22:57:37'),
(19, 0, 'foto_receita/5db234dcf0e1f.jpg', 1, '2019-10-24 23:33:49'),
(24, 14, 'foto_receita/5db2d1f2d95cc.jpg', 1, '2019-10-25 10:44:03'),
(25, 15, 'foto_receita/5db2d459214c7.jpg', 1, '2019-10-25 10:54:17'),
(26, 15, 'foto_receita/5db2d45a50cff.jpg', 1, '2019-10-25 10:54:18'),
(27, 16, 'foto_receita/5db2d68ba0222.jpg', 1, '2019-10-25 11:03:39'),
(28, 17, 'foto_receita/5db2d89bdb455.jpg', 1, '2019-10-25 11:12:28'),
(29, 18, 'foto_receita/5db379000d676.jpg', 3, '2019-10-25 22:36:48'),
(30, 0, 'foto_receita/5db379b351572.jpg', 1, '2019-10-25 22:39:47'),
(31, 0, 'foto_receita/5db379b37bae2.jpg', 1, '2019-10-25 22:39:47'),
(32, 0, 'foto_receita/5db379b3f2f6b.jpg', 1, '2019-10-25 22:39:48'),
(33, 0, 'foto_receita/5db379b4ee6f5.jpg', 1, '2019-10-25 22:39:49'),
(34, 18, 'foto_receita/5db380edd2210.jpg', 3, '2019-10-25 23:10:37'),
(35, 19, 'foto_receita/5db4b46f4e707.jpg', 3, '2019-10-26 21:02:39'),
(36, 20, 'foto_receita/5db4b8e964329.jpg', 3, '2019-10-26 21:21:45'),
(37, 21, 'foto_receita/5db4bc66b6544.jpg', 3, '2019-10-26 21:36:38'),
(38, 22, 'foto_receita/5db4f83308b65.jpg', 3, '2019-10-27 01:51:47'),
(39, 23, 'foto_receita/5db4feb3b9b27.jpg', 3, '2019-10-27 02:19:31'),
(40, 24, 'foto_receita/5db5021517377.jpg', 3, '2019-10-27 02:33:57'),
(41, 24, 'foto_receita/5db5021d6e8fd.jpg', 3, '2019-10-27 02:34:05'),
(42, 31, 'foto_receita/5dba0e644f3c2.jpg', 1, '2019-10-30 22:27:48'),
(43, 32, 'foto_receita/5dba109e6d27e.jpg', 1, '2019-10-30 22:37:18'),
(44, 33, 'foto_receita/5dba11f9b67b0.jpg', 1, '2019-10-30 22:43:05'),
(45, 34, 'foto_receita/5dba1365c2fe3.jpg', 1, '2019-10-30 22:49:09'),
(46, 0, 'foto_receita/5dba16e6d6dba.jpg', 1, '2019-10-30 23:04:07'),
(47, 35, 'foto_receita/5dba19879c22d.jpg', 1, '2019-10-30 23:15:19'),
(48, 36, 'foto_receita/5dbdaaed611ed.jpg', 3, '2019-11-02 16:12:29'),
(49, 39, 'foto_receita/5dbdb704c83cf.jpg', 3, '2019-11-02 17:04:04'),
(50, 0, 'foto_receita/5dbdda2f5a4f1.jpg', 3, '2019-11-02 19:34:07'),
(51, 40, 'foto_receita/5dbdda47a2e25.jpg', 3, '2019-11-02 19:34:31'),
(52, 41, 'foto_receita/5dbddc51b3856.jpg', 3, '2019-11-02 19:43:13'),
(53, 42, 'foto_receita/5dbdde970c719.jpg', 3, '2019-11-02 19:52:55'),
(54, 0, 'foto_receita/5dbde1fe8b7f9.jpg', 3, '2019-11-02 20:07:26'),
(55, 0, 'foto_receita/5dbde212420e0.jpg', 3, '2019-11-02 20:07:46'),
(56, 43, 'foto_receita/5dbde21e89d42.jpg', 3, '2019-11-02 20:07:58'),
(57, 44, 'foto_receita/5dbde530d3316.jpg', 3, '2019-11-02 20:21:04'),
(58, 44, 'foto_receita/5dbde5389fe1b.jpg', 3, '2019-11-02 20:21:12'),
(59, 46, 'foto_receita/5dbdfbb17028f.jpg', 3, '2019-11-02 21:57:05'),
(60, 47, 'foto_receita/5dbdfe6ce0fae.jpg', 3, '2019-11-02 22:08:45'),
(61, 47, 'foto_receita/5dbdfe6d04b26.jpg', 3, '2019-11-02 22:08:45'),
(62, 48, 'foto_receita/5dbe0122cc6b1.jpg', 3, '2019-11-02 22:20:18'),
(63, 48, 'foto_receita/5dbe0123695a3.jpg', 3, '2019-11-02 22:20:19'),
(64, 49, 'foto_receita/5dbe045b3c83f.jpg', 3, '2019-11-02 22:34:03'),
(65, 49, 'foto_receita/5dbe045b9ff0c.jpg', 3, '2019-11-02 22:34:03'),
(66, 50, 'foto_receita/5dbee310ef774.jpg', 3, '2019-11-03 14:24:17'),
(67, 50, 'foto_receita/5dbee3112afd9.jpg', 3, '2019-11-03 14:24:17'),
(68, 51, 'foto_receita/5dbf1aa845756.jpg', 3, '2019-11-03 18:21:28'),
(69, 0, 'foto_receita/5dbf1d4e600cc.jpg', 3, '2019-11-03 18:32:46'),
(70, 52, 'foto_receita/5dbf1d590f72a.jpg', 3, '2019-11-03 18:32:57'),
(71, 52, 'foto_receita/5dbf1d5966706.jpg', 3, '2019-11-03 18:32:57'),
(72, 53, 'foto_receita/5dbf2119ef03f.jpg', 3, '2019-11-03 18:48:58'),
(73, 53, 'foto_receita/5dbf211a16c11.jpg', 3, '2019-11-03 18:48:58'),
(74, 54, 'foto_receita/5dbf22bcebd0b.jpg', 3, '2019-11-03 18:55:57'),
(75, 54, 'foto_receita/5dbf22c33d86a.jpg', 3, '2019-11-03 18:56:04'),
(76, 55, 'foto_receita/5dbf2813df80f.jpg', 3, '2019-11-03 19:18:43'),
(77, 55, 'foto_receita/5dbf2813f2fcf.jpg', 3, '2019-11-03 19:18:44'),
(78, 56, 'foto_receita/5dbf2a90711d5.jpg', 3, '2019-11-03 19:29:20'),
(79, 56, 'foto_receita/5dbf2a90a09e9.jpg', 3, '2019-11-03 19:29:20'),
(80, 57, 'foto_receita/5dbf2db7b8c6c.jpg', 3, '2019-11-03 19:42:47'),
(81, 57, 'foto_receita/5dbf2db7eac2a.jpg', 3, '2019-11-03 19:42:48'),
(82, 58, 'foto_receita/5dbf31e783f80.jpg', 3, '2019-11-03 20:00:39'),
(83, 58, 'foto_receita/5dbf31e8a4f84.jpg', 3, '2019-11-03 20:00:40'),
(84, 59, 'foto_receita/5dbf34ea6d107.jpg', 3, '2019-11-03 20:13:30'),
(85, 59, 'foto_receita/5dbf34eb183c5.jpg', 3, '2019-11-03 20:13:31'),
(86, 60, 'foto_receita/5dc36aae30eb4.jpg', 3, '2019-11-07 00:51:58'),
(87, 60, 'foto_receita/5dc36aafc4d53.jpg', 3, '2019-11-07 00:52:01'),
(90, 62, 'foto_receita/5dc37371025c0.jpg', 3, '2019-11-07 01:29:21'),
(91, 62, 'foto_receita/5dc37371223cf.jpg', 3, '2019-11-07 01:29:21'),
(92, 63, 'foto_receita/5dc3766d143c7.jpg', 3, '2019-11-07 01:42:05'),
(93, 63, 'foto_receita/5dc3766d2d509.jpg', 3, '2019-11-07 01:42:05'),
(94, 0, 'foto_receita/5dc4a9062c567.jpg', 11, '2019-11-07 23:30:14'),
(95, 0, 'foto_receita/5dc4ad9eabb3c.jpg', 1, '2019-11-07 23:49:50'),
(96, 0, 'foto_receita/5dd86ff982d6e.jpg', 1, '2019-11-22 23:32:09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingrediente`
--

CREATE TABLE `ingrediente` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `medida` varchar(15) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ingrediente`
--

INSERT INTO `ingrediente` (`id`, `nome`, `medida`, `timestamp`) VALUES
(1, 'Salmão', 'Unidade ', '2019-10-23 00:56:53'),
(2, 'Tomate', 'Litros de Molho', '2019-10-23 00:56:53'),
(3, 'Lasanha', 'Unidade', '2019-10-23 00:56:53'),
(4, 'Salmão', 'Unidade ', '2019-10-23 00:57:32'),
(5, 'Salmão', 'Unidade ', '2019-10-23 00:59:50'),
(6, 'Acucar', 'Colher', '2019-10-23 01:12:04'),
(7, 'Azeite', 'ML', '2019-10-23 21:25:08'),
(8, 'Peito de frango', 'Filés', '2019-10-23 21:25:08'),
(9, 'Cebola', 'Uma', '2019-10-23 21:25:08'),
(10, 'Chá de Açafrão', 'Colher', '2019-10-23 21:25:08'),
(11, 'Arroz Longo', 'Gramas', '2019-10-23 21:25:08'),
(12, 'Caldo de Galinha', 'litro', '2019-10-23 21:25:08'),
(13, 'Pimenta', 'Grãos', '2019-10-23 21:25:08'),
(14, 'Vagens de Cardamomo', 'Quatro', '2019-10-23 21:25:08'),
(15, 'Alho', 'Dentes', '2019-10-23 21:25:08'),
(16, 'Canela', 'Pau', '2019-10-23 21:25:08'),
(17, 'Ervilhas Frescas', 'Gramas', '2019-10-23 21:25:08'),
(18, 'Pipoca', '1', '2019-10-24 22:07:43'),
(19, 'B', '2', '2019-10-24 22:07:43'),
(20, 'Gg', 'Cd', '2019-10-24 22:07:43'),
(21, 'Cebola', 'Unidades', '2019-10-24 22:25:08'),
(22, 'De Canguru', 'cauda', '2019-10-24 22:25:08'),
(23, 'Agua', 'Litros', '2019-10-24 22:25:08'),
(24, 'Tomate', 'Unidades', '2019-10-24 22:25:08'),
(25, 'Pasta de Tomate', 'Grmas', '2019-10-24 22:25:08'),
(26, 'Sopa de Ervilha', 'Colheres', '2019-10-24 22:25:08'),
(27, 'Agúcar', 'Colheres rasa', '2019-10-24 22:25:08'),
(28, 'Sal', 'Colher rasa', '2019-10-24 22:25:08'),
(29, 'Pimenta', 'Colher rasa', '2019-10-24 22:25:08'),
(30, 'Feijão do deserto de Tanami', 'Xicara', '2019-10-24 22:25:08'),
(31, 'Verduras Warrigal', 'Unidades', '2019-10-24 22:25:08'),
(32, 'Cebola', 'Unidade', '2019-10-24 22:52:15'),
(33, 'Cenoura', 'Unidade', '2019-10-24 22:52:10'),
(34, 'Palito  Aipo', 'Unidade', '2019-10-24 22:52:06'),
(35, 'Azeitona', 'Colher', '2019-10-24 22:52:02'),
(36, 'Manteiga', 'Grmas', '2019-10-24 22:51:58'),
(37, 'Alho', 'Dentes', '2019-10-24 22:51:54'),
(38, 'Linguiças Italianas', 'Gramas', '2019-10-24 22:51:50'),
(39, 'Porco e Carne de vitela Moidas', 'Gramas', '2019-10-24 22:51:47'),
(40, 'Sopa de pasta de Tomate', 'Colher', '2019-10-24 22:51:43'),
(41, 'Vinho Branco Seco', 'ML', '2019-10-24 22:51:38'),
(42, 'Caldo de Carne', 'ML', '2019-10-24 22:51:33'),
(43, 'Pure de Tomate', 'Gramas', '2019-10-24 22:51:25'),
(44, 'Sopa de Manjericão', 'Colher', '2019-10-24 22:51:19'),
(45, 'Salsa Picada', 'Colher', '2019-10-24 22:51:15'),
(46, 'sal e pimenta do reino', 'Porção a gosto', '2019-10-24 22:51:11'),
(47, 'Rigatoni', 'Gramas', '2019-10-24 22:51:00'),
(48, 'cenoura', '250g', '2019-10-24 23:01:59'),
(49, 'ovos', '50g', '2019-10-24 23:01:59'),
(50, 'xícaras de chá farinha de trigo', '50g', '2019-10-24 23:01:59'),
(51, 'xícaras de de açucar', '50g', '2019-10-24 23:01:59'),
(52, 'colher de sopa fermentado em pó', '10g', '2019-10-24 23:01:59'),
(53, 'xícaras de chá farinha de trigo', '50g', '2019-10-24 23:02:06'),
(54, 'xícaras de de açucar', '50g', '2019-10-24 23:02:06'),
(55, 'colher de sopa fermentado em pó', '10g', '2019-10-24 23:02:06'),
(56, 'Chocolate', 'Gramas', '2019-10-24 23:08:33'),
(57, 'Ovos', 'Unidades', '2019-10-24 23:08:33'),
(58, 'Gema de ovo', 'Unidades ', '2019-10-24 23:08:33'),
(59, 'Açúcar Refinado', 'Gramas', '2019-10-24 23:08:33'),
(60, 'Farinha de Trigo', 'Colheres', '2019-10-24 23:08:33'),
(61, 'batatas', 'unidades', '2019-10-25 00:25:16'),
(62, 'oleo', 'litro', '2019-10-25 00:25:16'),
(63, 'sal', 'pitada', '2019-10-25 00:25:16'),
(64, 'Frango Inteiros.', 'Unidades', '2019-10-25 10:52:52'),
(65, 'Sal.', 'Colher Rasa', '2019-10-25 10:52:52'),
(66, 'Páprica.', 'Colher de Sopa', '2019-10-25 10:52:52'),
(67, 'Tomilho Seco.', 'Colher de Chá', '2019-10-25 10:52:52'),
(68, 'Alho Fatiado.', 'Colher Pequena', '2019-10-25 10:52:52'),
(69, 'Cebola, quartadas em 4 pedaços.', 'Unidades', '2019-10-25 10:52:52'),
(70, 'Pimenta Branca Moida', 'Colher Pequena', '2019-10-25 10:52:52'),
(71, 'Peru cordado ao meio.', 'Peito', '2019-10-25 11:02:08'),
(72, 'canjiquinha Fritz&Frida.', 'Gramas', '2019-10-25 11:02:08'),
(73, 'Bacon', 'Gramas', '2019-10-25 11:02:08'),
(74, 'Cebola.', 'Unidade', '2019-10-25 11:02:08'),
(75, 'Alho.', 'Dentes', '2019-10-25 11:02:08'),
(76, 'Sal e Pimenta', 'Colher Pequena ', '2019-10-25 11:02:08'),
(77, 'Tempero verde, da sua Escolha.', 'Gramas', '2019-10-25 11:02:08'),
(78, 'Sálvia e tomilho.', 'Porção ', '2019-10-25 11:02:08'),
(79, 'Carne Moída.', 'Kilo', '2019-10-25 11:11:21'),
(80, 'Cebola Picado.', 'Unidade', '2019-10-25 11:11:21'),
(81, 'Alho Picado.', 'Dente', '2019-10-25 11:11:21'),
(82, 'Ovo', 'Unidade', '2019-10-25 11:11:21'),
(83, 'Farinha de Rosca.', 'Colheres de Sop', '2019-10-25 11:11:21'),
(84, 'Sal e pimenta, de Sua preferencia.', 'Colher de Gosto', '2019-10-25 11:11:21'),
(85, 'Óleo, para untar.', 'Pouco', '2019-10-25 11:11:21'),
(86, 'Cenoura Ralada.', 'Unidade', '2019-10-25 11:11:21'),
(87, 'Muçarela  Ralada.', 'Gramas', '2019-10-25 11:11:21'),
(88, 'Salsa Picada.', 'Gramas', '2019-10-25 11:11:21'),
(89, 'Filé Mignon Picado em Cubinhos', 'Kilo', '2019-10-25 11:22:17'),
(90, 'Alho Picados.', 'Dentes', '2019-10-25 11:22:17'),
(91, 'Cebola Picada.', 'Unidade', '2019-10-25 11:22:17'),
(92, 'Tomate Picados, sem Semente.', 'Unidades', '2019-10-25 11:22:17'),
(93, 'Sal a gosto.', 'Colher Rasa', '2019-10-25 11:22:17'),
(94, 'Pimenta do Reino.', 'Colher Rasa', '2019-10-25 11:22:17'),
(95, 'Salsinha Picada.', 'Gramas ', '2019-10-25 11:22:17'),
(96, 'Castanha de Caju.', 'Gramas', '2019-10-25 11:22:17'),
(97, 'Farinha de Mandioca.', 'Xicaras', '2019-10-25 11:22:17'),
(98, 'Cebolinha Picada.', 'Gramas', '2019-10-25 11:22:17'),
(99, 'Ovos', 'Unidade', '2019-10-25 11:22:17'),
(100, 'Manteiga.', 'Colheres Sopa', '2019-10-25 11:22:17'),
(101, 'Filé de frango em tiras', 'gramas', '2019-10-25 23:01:30'),
(102, 'sal', 'colher (café)', '2019-10-25 23:01:30'),
(103, 'oleo de gergelim', 'colhe r(cafe)', '2019-10-25 23:01:30'),
(104, 'leite de coco', 'ml', '2019-10-25 23:01:30'),
(105, 'óleo', 'colheres', '2019-10-25 23:01:30'),
(106, 'pasta de curry', 'colher', '2019-10-25 23:01:30'),
(107, 'coentro em pó', 'colher (sopa)', '2019-10-25 23:01:30'),
(108, 'suco de tamarindo', 'colheres (sopa)', '2019-10-25 23:01:30'),
(109, 'limão siciliano em gomos e sem casca', 'unidade', '2019-10-25 23:01:30'),
(110, 'laranja Bahia em gomos e sem cascas', 'unidade', '2019-10-25 23:01:30'),
(111, 'vinagre branco', 'colheres (sopa)', '2019-10-25 23:01:30'),
(112, 'azeite', 'colheres (sopa)', '2019-10-25 23:01:30'),
(113, 'pimenta dedo-de-moça picada', 'unidade', '2019-10-25 23:01:30'),
(114, 'coentro em pó', 'pitada', '2019-10-25 23:01:30'),
(115, 'manga (adem) firme em tiras', 'unidade', '2019-10-26 21:17:23'),
(116, 'açucar', 'colher () chá', '2019-10-26 21:17:23'),
(117, 'a Gosto', 'sal', '2019-10-26 21:17:23'),
(118, 'pimenta do reino preta na hora a gosto', 'moida', '2019-10-26 21:17:23'),
(119, 'azeite balsâmico', 'colher (sopa)', '2019-10-26 21:17:23'),
(120, 'pimentão vermelho cortado em tiras ', 'unidade ', '2019-10-26 21:17:23'),
(121, 'pimentão verde cortado em tiras', 'unidade', '2019-10-26 21:17:23'),
(122, 'Mini Tender ', 'embalagem ', '2019-10-26 21:17:23'),
(123, 'paletas de porco cortada em cubos', 'gramas', '2019-10-26 21:31:25'),
(124, 'óleo', 'colheres (sopa)', '2019-10-26 21:31:25'),
(125, 'molho de ostras', 'colheres (sopa)', '2019-10-26 21:31:25'),
(126, 'gergelim tostado', 'colheres (sopa)', '2019-10-26 21:31:25'),
(127, 'molho de peixe', 'colheres (sopa)', '2019-10-26 21:31:25'),
(128, 'cebola picada', 'unidades', '2019-10-26 21:31:25'),
(129, 'dente de alho inteiro', 'unidade', '2019-10-26 21:31:25'),
(130, 'açúcar mascavo', 'colheres (sopa)', '2019-10-26 21:31:25'),
(131, ' sal a gosto', 'quantidade', '2019-10-26 21:31:25'),
(132, 'macarrão:', 'ingredientes', '2019-10-26 22:03:25'),
(133, ' macarrão de arroz tailandês (rice noodles)', 'gramas', '2019-10-26 22:03:25'),
(134, 'tofu cortado em cubos', 'gramas', '2019-10-26 22:03:25'),
(135, 'camarão limpo', 'gramas', '2019-10-26 22:03:25'),
(136, 'brotos de feijão', 'xícaras (chá)', '2019-10-26 22:03:25'),
(137, 'cenoura pequena cortada em tiras', 'unidade', '2019-10-26 22:03:25'),
(138, 'alho picados', 'dentes', '2019-10-26 22:03:25'),
(139, 'cebolinhas verdes picadas', 'unidades', '2019-10-26 22:03:25'),
(140, 'óleo vegetal', 'colheres (sopa)', '2019-10-26 22:03:25'),
(141, 'amendoim tostado sem cascas picados', 'terço, xícara', '2019-10-26 22:03:25'),
(142, ' molho:', 'ingredientes', '2019-10-26 22:03:25'),
(143, 'suco de tamarindo ou vinagre branco com água, em uma proporção de meio a meio', 'xícaras (chá)', '2019-10-26 22:03:25'),
(144, 'açúcar mascavo ', 'colheres (chá)', '2019-10-26 22:03:25'),
(145, ' molho de ostra ', 'colheres (sopa)', '2019-10-26 22:03:25'),
(146, 'molho de soja escuro (dark soy sauce, mais espesso e mais doce que o shoyu norma', 'colheres (sopa)', '2019-10-26 22:03:25'),
(147, 'sal a gosto', 'quantidade', '2019-10-26 22:03:25'),
(148, 'pimenta do reino a gosto', 'quantidade', '2019-10-26 22:03:25'),
(149, 'camarão rosa limpo', 'gramas', '2019-10-27 02:15:38'),
(150, 'frango inteiro desfiado', 'gramas', '2019-10-27 02:15:38'),
(151, 'linguiça toscana pícada', 'gramas', '2019-10-27 02:15:38'),
(152, 'macarrão para yakisoba', 'gramas', '2019-10-27 02:15:38'),
(153, 'nirá em pedaços pequenos', 'xícara (chá) pe', '2019-10-27 02:15:38'),
(154, 'cebolinha verde picada', 'xícara (chá) pe', '2019-10-27 02:15:38'),
(155, 'gengibre picado', 'xícara (chá) pe', '2019-10-27 02:15:38'),
(156, 'alho picado', 'xícara (chá) pe', '2019-10-27 02:15:38'),
(157, 'pimenta dedo-de-moça sem semente', 'xícara (chá) pe', '2019-10-27 02:15:38'),
(158, 'broto de feijão', ' xícara (chá) ', '2019-10-27 02:15:38'),
(159, 'shoyo (molho de soja)', 'colheres(sopa)', '2019-10-27 02:15:38'),
(160, 'molho de ostra', 'colher (sopa)', '2019-10-27 02:15:38'),
(161, 'óleo de gergelim', 'colher (café)', '2019-10-27 02:15:38'),
(162, 'iogurte natural', 'potes', '2019-10-27 02:30:25'),
(163, 'creme de leite', 'caixa', '2019-10-27 02:30:25'),
(164, 'açucar orgânico', 'colheres (sopa)', '2019-10-27 02:30:25'),
(165, 'pimenta dedo de moça', 'unidade', '2019-10-27 02:30:25'),
(166, 'morango', 'caixa', '2019-10-27 02:30:25'),
(167, 'hortelã', 'folhas ', '2019-10-27 02:30:25'),
(168, 'arroz thailandês', 'e 1/2 xícara ', '2019-10-27 02:50:57'),
(169, 'leite de coco', 'xícaras', '2019-10-27 02:50:57'),
(170, 'açucar', '1/2 xícaras', '2019-10-27 02:50:57'),
(171, 'sal', 'colher (café)', '2019-10-27 02:50:57'),
(172, 'manga em fatias (para companhar) ', 'unidade', '2019-10-27 02:50:57'),
(173, 'peito de frango cozido e desfiado', 'Kg', '2019-10-27 13:44:22'),
(174, 'tomate batido no liquidificador e coado', 'Kg', '2019-10-27 13:44:22'),
(175, 'cebolas cortadas em rodelas', 'unidade', '2019-10-27 13:44:22'),
(176, 'sal', 'colher (sopa)', '2019-10-27 13:44:22'),
(177, 'pimentas dedo-de-moça picadas', 'unidade', '2019-10-27 13:44:22'),
(178, 'vidro de requeijão misturado com creme de leite', 'vidro', '2019-10-27 13:44:22'),
(179, ' alface crespa cortadinha', 'maço', '2019-10-27 13:44:22'),
(180, 'ricota despedaçada', '1/2  Kg', '2019-10-27 13:44:22'),
(181, 'massa para pastel fritos e abertos', 'discos', '2019-10-27 13:44:22'),
(182, 'pimentas dedo-de-moça picadas', 'unidade', '2019-10-27 13:45:20'),
(183, 'vidro de requeijão misturado com creme de leite', 'vidro', '2019-10-27 13:45:20'),
(184, ' alface crespa cortadinha', 'maço', '2019-10-27 13:45:20'),
(185, 'ricota despedaçada', '1/2  Kg', '2019-10-27 13:45:20'),
(186, 'pimentas dedo-de-moça picadas', 'unidades', '2019-10-27 14:00:54'),
(187, 'requeijão misturado com creme de leite', 'vidro', '2019-10-27 14:00:54'),
(188, 'alface crespa cortadinha', 'maço', '2019-10-27 14:00:54'),
(189, 'ricota despedaçada', '1/2 Kg', '2019-10-27 14:00:54'),
(190, ' discos de massa para pastel fritos e abertos', 'discos', '2019-10-27 14:00:54'),
(191, 'Massa espaguete', 'Gramas', '2019-10-30 22:36:16'),
(192, 'Patinho moído', 'Kilos', '2019-10-30 22:36:16'),
(193, 'Pães amanhecidos', 'Unidade', '2019-10-30 22:36:16'),
(194, 'Leite', 'xícara', '2019-10-30 22:36:16'),
(195, 'Cebola grande picada', 'Unidade', '2019-10-30 22:36:16'),
(196, 'Salsinha', 'Maço', '2019-10-30 22:36:16'),
(197, 'Sal', 'Colher', '2019-10-30 22:36:16'),
(198, 'Tomates grandes picados', 'Unidade', '2019-10-30 22:36:16'),
(199, 'Alho picado', 'Colher de chá', '2019-10-30 22:36:16'),
(200, 'Cebola picada', 'Unidade', '2019-10-30 22:36:16'),
(201, 'Vinho tinto', 'Copo', '2019-10-30 22:36:16'),
(202, 'Azeite de oliva', 'Colher', '2019-10-30 22:36:16'),
(203, 'Espaguete Fritz & Frida', 'Gramas', '2019-10-30 22:41:26'),
(204, 'Queijo brie em pedaços', 'Gramas', '2019-10-30 22:41:26'),
(205, 'Ervilhas', 'Gramas', '2019-10-30 22:41:26'),
(206, 'Tomate cereja cortadinho ao meio', 'Gramas', '2019-10-30 22:41:26'),
(207, 'Azeite, sal e pimenta a gosto', 'colher', '2019-10-30 22:41:26'),
(208, 'Bolacha de maizena', 'Pacote', '2019-10-30 22:48:42'),
(209, 'Leite condensado', 'Caixa', '2019-10-30 22:48:42'),
(210, 'Creme de leite fresco ou nata', 'ML', '2019-10-30 22:48:42'),
(211, 'Açúcar', 'Colheres de sop', '2019-10-30 22:48:42'),
(212, 'Chocolate em pó', 'Colheres', '2019-10-30 22:48:42'),
(213, 'Café Torrado e Moído Melitta® Tradicional', 'Colher', '2019-10-30 22:48:42'),
(214, 'Farinha de trigo', 'xícara', '2019-10-30 22:56:29'),
(215, 'Leite ', 'xícara', '2019-10-30 22:56:29'),
(216, 'Açúcar', 'Colheres de sop', '2019-10-30 22:56:29'),
(217, 'Chocolate em pó', 'Colheres ', '2019-10-30 22:56:29'),
(218, 'Óleo', 'Colher de sopa', '2019-10-30 22:56:29'),
(219, 'Leite condensado', 'Lata', '2019-10-30 22:56:29'),
(220, 'Creme de leite', 'caixinha ', '2019-10-30 22:56:29'),
(221, 'Chocolate branco ', 'Barra', '2019-10-30 22:56:29'),
(222, 'Morangos cortados ao meio', 'Unidades', '2019-10-30 22:56:29'),
(223, 'Aceto balsâmico', 'Colher', '2019-10-30 22:56:29'),
(224, 'Óleo de amendoim', 'Colher de sopa', '2019-10-30 23:22:43'),
(225, 'Galinha em cubos', 'Gramas', '2019-10-30 23:22:43'),
(226, 'Chávena de chá de caju sem sal', 'Colher', '2019-10-30 23:22:43'),
(227, 'Camarão', 'Gramas', '2019-10-30 23:22:43'),
(228, 'Chávena de chá de aipo picado', 'Colher', '2019-10-30 23:22:43'),
(229, 'Chávena de chá de cebola picada', 'Colher', '2019-10-30 23:22:43'),
(230, 'Chávena de chá de cogumelos laminados', 'Colher', '2019-10-30 23:22:43'),
(231, 'Chávena de chá de pimentos verdes picados', 'Colher', '2019-10-30 23:22:43'),
(232, 'Manteiga de amendoim', 'Colher de sopa', '2019-10-30 23:22:43'),
(233, ' Mel', 'Colher', '2019-10-30 23:22:43'),
(234, 'Molho de soja', 'Colher', '2019-10-30 23:22:43'),
(235, 'Xerez', 'colher de sopa', '2019-10-30 23:22:43'),
(236, 'Massa de ovo', 'Gramas', '2019-10-30 23:22:43'),
(237, 'cebolas cortadas em rodelas', 'unidades', '2019-11-02 00:17:11'),
(238, 'pimentas dedo-de-moça picadas', 'unidade', '2019-11-02 00:17:11'),
(239, 'requeijão misturado com creme de leite', 'vidro', '2019-11-02 00:17:11'),
(240, 'alface crespa cortadinha', 'maço', '2019-11-02 00:17:11'),
(241, 'ricota despedaçada', '1/2  Kg', '2019-11-02 00:17:11'),
(242, ' peito de frango', 'fíles ', '2019-11-02 16:22:32'),
(243, 'bacon', 'tiras', '2019-11-02 16:22:32'),
(244, 'alface recortado', 'pé', '2019-11-02 16:22:32'),
(245, 'ervas finas', 'colher (sopa)', '2019-11-02 16:22:32'),
(246, 'cominho', 'colher (sopa)', '2019-11-02 16:22:32'),
(247, ' Pimenta vermelha seca calabresa', '/2 colher (sopa', '2019-11-02 16:22:32'),
(248, 'sal a gosto', 'colocar', '2019-11-02 16:22:32'),
(249, ' cebolas cortadas em rodelas', 'unidades', '2019-11-02 16:30:30'),
(250, 'pimentas dedo-de-moça picadas', 'unidades', '2019-11-02 16:30:30'),
(251, ' requeijão misturado com creme de leite', 'vidro', '2019-11-02 16:30:30'),
(252, 'alface crespa cortadinha', 'maço', '2019-11-02 16:30:30'),
(253, 'ricota despedaçada', '/2 kg', '2019-11-02 16:30:30'),
(254, 'pernil suino', 'gramas', '2019-11-02 16:58:12'),
(255, 'alho', 'gramas', '2019-11-02 16:58:12'),
(256, 'cebola', 'gramas', '2019-11-02 16:58:12'),
(257, 'cominho', 'gramas', '2019-11-02 16:58:12'),
(258, 'orégano', 'gramas', '2019-11-02 16:58:12'),
(259, 'pimenta calabresa', 'gramas', '2019-11-02 16:58:12'),
(260, 'páprica 5', 'gramas', '2019-11-02 16:58:12'),
(261, 'vinagre', 'ml', '2019-11-02 16:58:12'),
(262, 'sal grosso', 'gramas', '2019-11-02 16:58:12'),
(263, 'milho verde', 'gramas', '2019-11-02 16:58:12'),
(264, 'molho de tomate picante', 'ml ', '2019-11-02 16:58:12'),
(265, 'anis estrelado', 'unidade', '2019-11-02 16:58:12'),
(266, 'orégano', 'gramas', '2019-11-02 17:14:02'),
(267, 'páprica5', 'gramas', '2019-11-02 17:14:02'),
(268, ' sal grosso', 'gramas', '2019-11-02 17:14:02'),
(269, 'pimentas dedo-de-moça picadas', 'unidade', '2019-11-02 19:41:51'),
(270, 'requeijão misturado com creme de leite', 'vidro', '2019-11-02 19:41:51'),
(271, 'alface crespa cortadinha', 'maço', '2019-11-02 19:41:51'),
(272, ' ricota despedaçada', '/2 kg', '2019-11-02 19:41:51'),
(273, 'carne moída grossa', 'gramas', '2019-11-02 19:52:01'),
(274, 'água', 'colher (sopa)', '2019-11-02 19:52:01'),
(275, ' óleo', 'colher (sopa)', '2019-11-02 19:52:01'),
(276, 'cebola média picada', 'unidade', '2019-11-02 19:52:01'),
(277, 'alho', 'dente', '2019-11-02 19:52:01'),
(278, ' tomates picados, sem pele e sem sementes', 'unidades', '2019-11-02 19:52:01'),
(279, ' cominho', 'colher (sopa)', '2019-11-02 19:52:01'),
(280, 'tempero', 'Coentro e tempe', '2019-11-02 19:52:01'),
(281, 'tempero', 'Sal e pimenta a', '2019-11-02 19:52:01'),
(282, 'tortillas de milho', 'unidade', '2019-11-02 20:06:10'),
(283, 'Guacamole', 'porção ', '2019-11-02 20:06:10'),
(284, 'Creme de nata', 'cx ', '2019-11-02 20:06:10'),
(285, 'carne picante', 'gramas', '2019-11-02 20:06:10'),
(286, 'Alface americana em tiras', 'maço', '2019-11-02 20:06:10'),
(287, ' muçarela ralado', 'gramas', '2019-11-02 20:06:10'),
(288, 'tomates picados', 'unidades', '2019-11-02 20:06:10'),
(289, 'milho verde', 'lata', '2019-11-02 20:06:10'),
(290, 'tortillas de trigo', 'unidade', '2019-11-02 20:18:11'),
(291, 'queijo muçarela ralado', 'gramas', '2019-11-02 20:18:11'),
(292, ' feijão', 'gramas', '2019-11-02 20:18:11'),
(293, 'cebola em tiras', 'unidade', '2019-11-02 20:18:11'),
(294, 'pimentão em tiras', 'unidade', '2019-11-02 20:18:11'),
(295, 'alface americana em tiras', 'maço', '2019-11-02 20:18:11'),
(296, 'guacamole', 'gramas', '2019-11-02 20:18:11'),
(297, 'creme de nata', 'gramas', '2019-11-02 20:18:11'),
(298, ' tomates picados', 'unidades', '2019-11-02 20:18:11'),
(299, ' milho verde', 'lata', '2019-11-02 20:18:11'),
(300, 'tempero', 'Óregano a gosto', '2019-11-02 20:18:11'),
(301, 'tempero', 'sal a gosto', '2019-11-02 20:18:11'),
(302, 'mistura para bolo de chocolate;', 'pacote', '2019-11-02 20:35:46'),
(303, 'Cajeta Mexicana ou Doce de Leite', 'xícara ', '2019-11-02 20:35:46'),
(304, 'leite evaporado (370ml)', 'lata', '2019-11-02 20:35:46'),
(305, 'nozes picadas descascadas', '/2 xícara ', '2019-11-02 20:35:46'),
(306, 'óleo', 'ml', '2019-11-02 20:35:46'),
(307, 'manteiga', 'colher (sopa)', '2019-11-02 20:35:46'),
(308, 'essência de baunilha', 'colher (chá)', '2019-11-02 20:35:46'),
(309, 'leite condensado', 'ml ', '2019-11-02 20:35:46'),
(310, 'arroz cru', 'gramas', '2019-11-02 21:55:32'),
(311, 'água quente', 'litros', '2019-11-02 21:55:32'),
(312, 'canela em pó', '/2  colher(chá)', '2019-11-02 21:55:32'),
(313, 'leite', 'e 1/4  xícara (', '2019-11-02 21:55:32'),
(314, 'xtrato de baunilha', 'colher (chá)', '2019-11-02 21:55:32'),
(315, 'rum', '/4 xícara de (c', '2019-11-02 21:55:32'),
(316, 'água quente', 'litros', '2019-11-02 22:02:31'),
(317, 'canela em pó', '/2  colher(chá)', '2019-11-02 22:02:32'),
(318, 'leite', 'e 1/4  xícara (', '2019-11-02 22:02:32'),
(319, ' extrato de baunilha', 'colher (chá)', '2019-11-02 22:02:32'),
(320, 'rum', '/4 xícara (chá)', '2019-11-02 22:02:32'),
(321, 'peito ou coxas de frango desossadas', 'gramas', '2019-11-02 22:19:01'),
(322, 'mirin (vinho de arroz doce japonês)', '/3 xícara', '2019-11-02 22:19:01'),
(323, 'molho de soja', 'xícara', '2019-11-02 22:19:01'),
(324, 'vinagre de arroz', 'e 1/2 colheres ', '2019-11-02 22:19:01'),
(325, 'óleo de gergelim', 'colher (chá)', '2019-11-02 22:19:01'),
(326, 'açucar', '/3 xícara ', '2019-11-02 22:19:01'),
(327, 'gengibre fresco picado', 'colher (sopa)', '2019-11-02 22:19:01'),
(328, 'pimenta vermelha desidratada', 'pitada', '2019-11-02 22:19:01'),
(329, 'pimenta do reino a gosto', 'pitada', '2019-11-02 22:19:01'),
(330, 'frango (500g)', 'coxas', '2019-11-02 22:27:55'),
(331, ' sal (2.5g)', '/2 colher (chá)', '2019-11-02 22:27:55'),
(332, ' shoyu (30ml)', 'colher (sopa)', '2019-11-02 22:27:55'),
(333, 'caldo de gengibre (10ml)', 'colher (chá)', '2019-11-02 22:27:55'),
(334, ' trigo para passar o frango', 'farinha', '2019-11-02 22:27:55'),
(335, 'Lombo ou filé mignon', 'gramas', '2019-11-02 22:59:34'),
(336, 'cebolinha', 'unidades', '2019-11-02 22:59:34'),
(337, 'cebola média, cortada em 1-2 cm.', 'unidade', '2019-11-02 22:59:34'),
(338, 'tofu (requeijão de soja), cortados em 2-3 cm.', 'pratos ou pedaç', '2019-11-02 22:59:34'),
(339, 'shirataki, eles são macarrão muito fino, feito de amidos de certos tubérculos, v', 'gramas drenados', '2019-11-02 22:59:34'),
(340, 'shirataki, eles são macarrão muito fino, feito de amidos de certos tubérculos, v', 'gramas', '2019-11-02 22:59:34'),
(341, 'shungiku (folhas de crisântemo japonês) pode ser substituído por três vezes espi', 'gramas', '2019-11-02 22:59:34'),
(342, ' brotos de bambu enlatados, fatiados,', 'gramas', '2019-11-02 22:59:34'),
(343, 'ogumelos corte em discos.', 'unidades', '2019-11-02 22:59:34'),
(344, ' molho de soja', '/2 xícara', '2019-11-02 22:59:34'),
(345, '?mirin´´, saquê suave que é usado apenas na culinária, pode ser comprada em loja', 'xícara (cafe)', '2019-11-02 22:59:34'),
(346, ' caldo japonês dashi', '/2 xícara', '2019-11-02 22:59:34'),
(347, 'mel de arroz, (glicose de arroz integral, melaço)  Glutamato de 1 polegada', 'colher (sopa)', '2019-11-02 22:59:34'),
(348, 'óleo ou pellet de sebo de vaca ', 'colher (sopa)', '2019-11-02 22:59:34'),
(349, '(arroz branco)', 'opcional', '2019-11-02 22:59:34'),
(350, 'alhos franceses', 'dentes', '2019-11-03 14:38:05'),
(351, 'cenouras pequenas', 'unidades', '2019-11-03 14:38:05'),
(352, 'cogumelos grandes', 'unidades', '2019-11-03 14:38:05'),
(353, ' sumo de limão', 'colher (sopa)', '2019-11-03 14:38:05'),
(354, 'beringela pequena', 'unidade', '2019-11-03 14:38:05'),
(355, ' gema de ovo', 'unidade', '2019-11-03 14:38:05'),
(356, 'farinha', 'gramas', '2019-11-03 14:38:05'),
(357, 'água mineral com gás gelada', 'dl', '2019-11-03 14:38:05'),
(358, 'gambas frescas(tipo de camarão)', 'unidade', '2019-11-03 14:38:05'),
(359, 'mexilhão', 'Kg', '2019-11-03 14:38:05'),
(360, 'filetes de peixe', 'gramas', '2019-11-03 14:38:05'),
(361, 'óleo de girassol', 'litro', '2019-11-03 14:38:05'),
(362, ' macarrão sobá', 'gramas', '2019-11-03 18:30:41'),
(363, ' tofu', 'gramas', '2019-11-03 18:30:41'),
(364, 'couve chinesa ou pak choy', 'maço', '2019-11-03 18:30:41'),
(365, '  cenoura', 'unidade', '2019-11-03 18:30:41'),
(366, 'champignon', 'unidade', '2019-11-03 18:30:41'),
(367, 'aipo ou salsão', 'unidade', '2019-11-03 18:30:41'),
(368, 'gengibre fresco', 'tablete', '2019-11-03 18:30:41'),
(369, 'salsinha fresca', 'ramo', '2019-11-03 18:30:41'),
(370, 'caldo de legumes (opcional)', '/2', '2019-11-03 18:30:41'),
(371, ' óleo', 'fio', '2019-11-03 18:30:41'),
(372, 'shoyo', 'fio', '2019-11-03 18:30:41'),
(373, 'pimenta do reino', 'pitada', '2019-11-03 18:30:41'),
(374, 'gelatina em pó', 'gramas', '2019-11-03 18:39:58'),
(375, 'água', 'xícaras (chá)', '2019-11-03 18:39:58'),
(376, ' açúcar', 'gramas', '2019-11-03 18:39:58'),
(377, ' ovos', 'unidade', '2019-11-03 18:39:58'),
(378, ' baunilha', 'gotas', '2019-11-03 18:39:58'),
(379, 'filés de frango', 'unidades', '2019-11-03 18:54:23'),
(380, 'aspargos', 'lata', '2019-11-03 18:54:23'),
(381, 'presunto', 'fatias', '2019-11-03 18:54:23'),
(382, 'azeite de oliva', 'colher (sopa)', '2019-11-03 18:54:23'),
(383, 'vinho branco seco', 'copo ', '2019-11-03 18:54:23'),
(384, ' tempero a gosto', 'sal e pimenta', '2019-11-03 18:54:23'),
(385, 'água', '/2  xícara', '2019-11-03 18:54:23'),
(386, 'frango limpo  sem peles', '/2  unidades', '2019-11-03 19:14:46'),
(387, 'cenoura pequena', 'unidade', '2019-11-03 19:14:46'),
(388, 'cebola pequena', 'unidade', '2019-11-03 19:14:46'),
(389, 'salsa', 'ramo ', '2019-11-03 19:14:46'),
(390, 'cravinhos', 'unidades', '2019-11-03 19:14:46'),
(391, ' espinafres congelados', 'gramas', '2019-11-03 19:14:46'),
(392, 'batatas media', 'unidades', '2019-11-03 19:14:46'),
(393, 'pimenta', 'vários grãos ', '2019-11-03 19:14:46'),
(394, 'sal e pimenta  e noz moscada a gosto', 'quantidades', '2019-11-03 19:14:46'),
(395, 'leite o quanto bastar', 'quantidade', '2019-11-03 19:14:46'),
(396, 'molho bechamel q.b. ( se usarem de pacote 200ml chegam)', 'quantidade', '2019-11-03 19:14:46'),
(397, 'costeletas de porco', 'unidas', '2019-11-03 19:28:30'),
(398, 'pimenta e sal para o tempero', ' porção ', '2019-11-03 19:28:30'),
(399, 'azeite', 'quantidade', '2019-11-03 19:28:30'),
(400, 'margaria', 'porção ', '2019-11-03 19:28:30'),
(401, 'vinho branco', 'dl', '2019-11-03 19:28:30'),
(402, 'farinha', 'colher (sopa)', '2019-11-03 19:28:30'),
(403, 'leite', 'dl', '2019-11-03 19:28:30'),
(404, 'noz moscada', 'quantidade', '2019-11-03 19:28:30'),
(405, 'queijo ralado', 'gramas', '2019-11-03 19:28:30'),
(406, 'pão de centeio', 'fatias', '2019-11-03 19:28:30'),
(407, 'salsa', 'quantidade', '2019-11-03 19:28:30'),
(408, 'massa campanelle', 'gramas', '2019-11-03 19:41:27'),
(409, 'de azeite quanto bastar', 'quantidade', '2019-11-03 19:41:27'),
(410, 'sal e pimenta preta moída na altura', 'quantidade', '2019-11-03 19:41:27'),
(411, 'pimentão vermelho', 'unidade', '2019-11-03 19:41:27'),
(412, 'pimentão verde', 'unidade', '2019-11-03 19:41:27'),
(413, 'courgete', 'unidade', '2019-11-03 19:41:27'),
(414, 'talo de aipo', 'unidade', '2019-11-03 19:41:27'),
(415, 'margarina', 'colher (sopa)', '2019-11-03 19:41:27'),
(416, 'cogumelos', 'gramas', '2019-11-03 19:56:55'),
(417, 'margarina', 'gramas', '2019-11-03 19:56:55'),
(418, 'carne picada', 'gramas', '2019-11-03 19:56:55'),
(419, 'salsa', 'colher (sopa)', '2019-11-03 19:56:55'),
(420, 'concentrado de tomate', 'colher (sopa)', '2019-11-03 19:56:55'),
(421, ' caldo de carne', 'dl', '2019-11-03 19:56:55'),
(422, 'nata', 'dl', '2019-11-03 19:56:55'),
(423, 'sal e pimenta a gosto', 'quantidade', '2019-11-03 19:56:55'),
(424, 'lasanha', 'folhas ', '2019-11-03 19:56:55'),
(425, 'molho bechamel', 'ml', '2019-11-03 19:56:55'),
(426, 'queijo ralado a gosto', 'quantidade', '2019-11-03 19:56:55'),
(427, 'farinha de trigo', 'gramas', '2019-11-03 20:11:58'),
(428, 'manteiga', 'gramas', '2019-11-03 20:11:58'),
(429, 'nozes moídas (ou castanhas-do-pará)', 'gramas', '2019-11-03 20:11:58'),
(430, 'açucar', 'gramas', '2019-11-03 20:11:58'),
(431, 'baunilha', 'colher (sopa)', '2019-11-03 20:11:58'),
(432, 'peras', 'unidades', '2019-11-03 20:11:58'),
(433, 'agua', 'copo', '2019-11-03 20:11:58'),
(434, 'açucar', 'copo', '2019-11-03 20:11:58'),
(435, 'gelatina sem cor e sem sabor', 'envelope', '2019-11-03 20:11:58'),
(436, 'canela em rama a gosto', 'quantidade', '2019-11-03 20:11:58'),
(437, 'açucar', 'gramas', '2019-11-03 20:17:18'),
(438, 'licor a gosto', 'ml', '2019-11-03 20:17:18'),
(439, 'casca de limão ralada', 'quantidade ', '2019-11-03 20:17:18'),
(440, 'manteiga', 'porção', '2019-11-03 20:17:18'),
(441, 'pato', 'Kg', '2019-11-07 01:05:40'),
(442, 'laranjas', 'unidades', '2019-11-07 01:05:40'),
(443, 'Caldo de pato de 50 cl', 'tablete', '2019-11-07 01:05:40'),
(444, ' licor de laranja', 'cálice', '2019-11-07 01:05:40'),
(445, 'açucar', 'colher (sopa)', '2019-11-07 01:05:40'),
(446, ' vinagre balsâmico', 'colher (sopa)', '2019-11-07 01:05:40'),
(447, 'Carne de panela ou açém', 'gramas', '2019-11-07 01:23:18'),
(448, 'bacon assado e salgado', 'gramas', '2019-11-07 01:23:18'),
(449, 'banha de porco', 'gramas', '2019-11-07 01:23:18'),
(450, 'cebolas pequenas', 'gramas', '2019-11-07 01:23:18'),
(451, 'vinho', 'litro', '2019-11-07 01:23:18'),
(452, 'louro', 'folha', '2019-11-07 01:23:18'),
(453, 'salsa', 'ramos ', '2019-11-07 01:23:18'),
(454, 'noz-moscada', 'unidade', '2019-11-07 01:23:18'),
(455, 'tomilho em pó', 'quantidade', '2019-11-07 01:23:18'),
(456, 'pimenta,sal a gosto', 'quantidade', '2019-11-07 01:23:18'),
(457, 'cebolas grandes, muito bem fatiadas', 'unidade', '2019-11-07 01:38:44'),
(458, 'sal marinho e pimenta do reino moída na hora', 'quantidade', '2019-11-07 01:38:44'),
(459, 'azeite extra-virgem', 'colher (sopa)', '2019-11-07 01:38:44'),
(460, 'massa de pão ou pizza', 'gramas', '2019-11-07 01:38:44'),
(461, ' anchova, escorridos', 'filhetes', '2019-11-07 01:38:44'),
(462, 'azeitonas pretas', 'unidades', '2019-11-07 01:38:44'),
(463, 'tomilho, com cerca de 1 cm de comprimento', 'pedaços', '2019-11-07 01:38:44'),
(464, 'cacau', 'gramas', '2019-11-07 02:05:01'),
(465, 'açucar', 'gramas', '2019-11-07 02:05:01'),
(466, 'castanhas frescas', 'gramas', '2019-11-07 02:05:01'),
(467, 'peras italianas', 'unidades', '2019-11-07 02:05:01'),
(468, 'geléia de pêra caramelizada', 'gramas', '2019-11-07 02:05:01'),
(469, 'geléia marrom glace', 'unidades', '2019-11-07 02:05:01'),
(470, 'baunilha', 'palito', '2019-11-07 02:05:01'),
(471, 'creme de leite', 'ml', '2019-11-07 02:05:02'),
(472, 'leite integral', 'ml', '2019-11-07 02:05:02'),
(473, 'limao', '/2  ', '2019-11-07 02:05:02'),
(474, 'chocolate preto', 'gramas', '2019-11-07 02:05:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingrediente_receita`
--

CREATE TABLE `ingrediente_receita` (
  `id` int(11) NOT NULL,
  `ingrediente` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `receita` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ingrediente_receita`
--

INSERT INTO `ingrediente_receita` (`id`, `ingrediente`, `quantidade`, `receita`, `timestamp`) VALUES
(1, 1, 1, 1, '2019-10-23 00:56:53'),
(2, 2, 5, 1, '2019-10-23 00:56:53'),
(3, 3, 1, 1, '2019-10-23 00:56:53'),
(4, 4, 1, 2, '2019-10-23 00:57:32'),
(5, 2, 5, 2, '2019-10-23 00:57:32'),
(6, 3, 1, 2, '2019-10-23 00:57:32'),
(7, 5, 1, 3, '2019-10-23 00:59:50'),
(8, 2, 5, 3, '2019-10-23 00:59:50'),
(9, 3, 1, 3, '2019-10-23 00:59:50'),
(10, 6, 1, 4, '2019-10-23 01:12:04'),
(11, 7, 60, 5, '2019-10-23 21:25:08'),
(12, 8, 4, 5, '2019-10-23 21:25:08'),
(13, 9, 1, 5, '2019-10-23 21:25:08'),
(14, 10, 1, 5, '2019-10-23 21:25:08'),
(15, 11, 400, 5, '2019-10-23 21:25:08'),
(16, 12, 1, 5, '2019-10-23 21:25:09'),
(17, 13, 8, 5, '2019-10-23 21:25:09'),
(18, 14, 4, 5, '2019-10-23 21:25:09'),
(19, 15, 2, 5, '2019-10-23 21:25:09'),
(20, 16, 1, 5, '2019-10-23 21:25:09'),
(21, 17, 120, 5, '2019-10-23 21:25:09'),
(22, 7, 125, 8, '2019-10-24 22:25:08'),
(23, 21, 4, 8, '2019-10-24 22:25:08'),
(24, 15, 4, 8, '2019-10-24 22:25:08'),
(25, 22, 2, 8, '2019-10-24 22:25:08'),
(26, 23, 4, 8, '2019-10-24 22:25:08'),
(27, 24, 6, 8, '2019-10-24 22:25:08'),
(28, 25, 50, 8, '2019-10-24 22:25:08'),
(29, 26, 3, 8, '2019-10-24 22:25:08'),
(30, 27, 2, 8, '2019-10-24 22:25:08'),
(31, 28, 1, 8, '2019-10-24 22:25:08'),
(32, 29, 1, 8, '2019-10-24 22:25:08'),
(33, 30, 1, 8, '2019-10-24 22:25:08'),
(34, 31, 2, 8, '2019-10-24 22:25:08'),
(35, 32, 1, 9, '2019-10-24 22:42:09'),
(36, 33, 1, 9, '2019-10-24 22:42:09'),
(37, 34, 1, 9, '2019-10-24 22:42:09'),
(38, 35, 1, 9, '2019-10-24 22:42:09'),
(39, 36, 50, 9, '2019-10-24 22:42:09'),
(40, 37, 2, 9, '2019-10-24 22:42:09'),
(41, 38, 160, 9, '2019-10-24 22:42:09'),
(42, 39, 500, 9, '2019-10-24 22:42:09'),
(43, 40, 1, 9, '2019-10-24 22:42:09'),
(44, 41, 125, 9, '2019-10-24 22:42:09'),
(45, 42, 250, 9, '2019-10-24 22:42:09'),
(46, 43, 425, 9, '2019-10-24 22:42:09'),
(47, 44, 2, 9, '2019-10-24 22:42:09'),
(48, 45, 2, 9, '2019-10-24 22:42:09'),
(49, 46, 1, 9, '2019-10-24 22:42:09'),
(50, 47, 500, 9, '2019-10-24 22:42:09'),
(56, 48, 3, 11, '2019-10-24 23:02:06'),
(57, 49, 4, 11, '2019-10-24 23:02:06'),
(58, 53, 2, 11, '2019-10-24 23:02:06'),
(59, 54, 2, 11, '2019-10-24 23:02:06'),
(60, 55, 1, 11, '2019-10-24 23:02:06'),
(61, 56, 250, 12, '2019-10-24 23:08:33'),
(62, 57, 5, 12, '2019-10-24 23:08:33'),
(63, 58, 5, 12, '2019-10-24 23:08:33'),
(64, 59, 150, 12, '2019-10-24 23:08:33'),
(65, 60, 2, 12, '2019-10-24 23:08:33'),
(69, 64, 2, 14, '2019-10-25 10:52:52'),
(70, 65, 1, 14, '2019-10-25 10:52:52'),
(71, 66, 1, 14, '2019-10-25 10:52:52'),
(72, 67, 1, 14, '2019-10-25 10:52:52'),
(73, 68, 1, 14, '2019-10-25 10:52:52'),
(74, 69, 2, 14, '2019-10-25 10:52:52'),
(75, 70, 1, 14, '2019-10-25 10:52:52'),
(76, 71, 1, 15, '2019-10-25 11:02:08'),
(77, 72, 500, 15, '2019-10-25 11:02:08'),
(78, 73, 100, 15, '2019-10-25 11:02:08'),
(79, 74, 1, 15, '2019-10-25 11:02:08'),
(80, 75, 4, 15, '2019-10-25 11:02:08'),
(81, 76, 1, 15, '2019-10-25 11:02:08'),
(82, 77, 100, 15, '2019-10-25 11:02:08'),
(83, 78, 1, 15, '2019-10-25 11:02:08'),
(84, 79, 1, 16, '2019-10-25 11:11:21'),
(85, 80, 1, 16, '2019-10-25 11:11:21'),
(86, 81, 1, 16, '2019-10-25 11:11:21'),
(87, 82, 1, 16, '2019-10-25 11:11:21'),
(88, 83, 5, 16, '2019-10-25 11:11:21'),
(89, 84, 1, 16, '2019-10-25 11:11:21'),
(90, 85, 1, 16, '2019-10-25 11:11:21'),
(91, 86, 1, 16, '2019-10-25 11:11:21'),
(92, 87, 200, 16, '2019-10-25 11:11:21'),
(93, 88, 100, 16, '2019-10-25 11:11:21'),
(94, 89, 1, 17, '2019-10-25 11:22:17'),
(95, 90, 3, 17, '2019-10-25 11:22:17'),
(96, 91, 2, 17, '2019-10-25 11:22:17'),
(97, 92, 4, 17, '2019-10-25 11:22:17'),
(98, 93, 1, 17, '2019-10-25 11:22:17'),
(99, 94, 1, 17, '2019-10-25 11:22:17'),
(100, 95, 100, 17, '2019-10-25 11:22:17'),
(101, 96, 100, 17, '2019-10-25 11:22:17'),
(102, 97, 2, 17, '2019-10-25 11:22:17'),
(103, 98, 50, 17, '2019-10-25 11:22:17'),
(104, 99, 4, 17, '2019-10-25 11:22:17'),
(105, 100, 3, 17, '2019-10-25 11:22:17'),
(106, 101, 250, 18, '2019-10-25 23:01:30'),
(107, 102, 1, 18, '2019-10-25 23:01:30'),
(108, 103, 1, 18, '2019-10-25 23:01:30'),
(109, 104, 200, 18, '2019-10-25 23:01:30'),
(110, 105, 2, 18, '2019-10-25 23:01:30'),
(111, 106, 1, 18, '2019-10-25 23:01:30'),
(112, 107, 1, 18, '2019-10-25 23:01:30'),
(113, 108, 2, 18, '2019-10-25 23:01:30'),
(114, 109, 1, 18, '2019-10-25 23:01:30'),
(115, 110, 1, 18, '2019-10-25 23:01:30'),
(116, 111, 3, 18, '2019-10-25 23:01:30'),
(117, 112, 3, 18, '2019-10-25 23:01:30'),
(118, 113, 1, 18, '2019-10-25 23:01:30'),
(119, 114, 1, 18, '2019-10-25 23:01:30'),
(120, 115, 3, 19, '2019-10-26 21:17:23'),
(121, 116, 1, 19, '2019-10-26 21:17:23'),
(122, 117, 1, 19, '2019-10-26 21:17:23'),
(123, 118, 1, 19, '2019-10-26 21:17:23'),
(124, 119, 1, 19, '2019-10-26 21:17:23'),
(125, 120, 1, 19, '2019-10-26 21:17:23'),
(126, 121, 1, 19, '2019-10-26 21:17:23'),
(127, 122, 1, 19, '2019-10-26 21:17:23'),
(128, 123, 500, 20, '2019-10-26 21:31:25'),
(129, 124, 6, 20, '2019-10-26 21:31:25'),
(130, 125, 4, 20, '2019-10-26 21:31:25'),
(131, 126, 5, 20, '2019-10-26 21:31:25'),
(132, 127, 3, 20, '2019-10-26 21:31:25'),
(133, 128, 2, 20, '2019-10-26 21:31:25'),
(134, 129, 1, 20, '2019-10-26 21:31:25'),
(135, 130, 1, 20, '2019-10-26 21:31:25'),
(136, 131, 1, 20, '2019-10-26 21:31:25'),
(137, 132, 0, 21, '2019-10-26 22:03:25'),
(138, 133, 200, 21, '2019-10-26 22:03:25'),
(139, 134, 100, 21, '2019-10-26 22:03:25'),
(140, 135, 100, 21, '2019-10-26 22:03:25'),
(141, 136, 2, 21, '2019-10-26 22:03:25'),
(142, 57, 2, 21, '2019-10-26 22:03:25'),
(143, 137, 1, 21, '2019-10-26 22:03:25'),
(144, 138, 3, 21, '2019-10-26 22:03:25'),
(145, 139, 2, 21, '2019-10-26 22:03:25'),
(146, 140, 3, 21, '2019-10-26 22:03:25'),
(147, 141, 1, 21, '2019-10-26 22:03:25'),
(148, 142, 0, 21, '2019-10-26 22:03:25'),
(149, 143, 1, 21, '2019-10-26 22:03:25'),
(150, 144, 3, 21, '2019-10-26 22:03:25'),
(151, 127, 4, 21, '2019-10-26 22:03:25'),
(152, 145, 2, 21, '2019-10-26 22:03:25'),
(153, 146, 2, 21, '2019-10-26 22:03:25'),
(154, 147, 0, 21, '2019-10-26 22:03:25'),
(155, 148, 0, 21, '2019-10-26 22:03:25'),
(156, 149, 100, 22, '2019-10-27 02:15:38'),
(157, 150, 100, 22, '2019-10-27 02:15:38'),
(158, 151, 100, 22, '2019-10-27 02:15:38'),
(159, 152, 200, 22, '2019-10-27 02:15:38'),
(160, 153, 1, 22, '2019-10-27 02:15:38'),
(161, 154, 1, 22, '2019-10-27 02:15:38'),
(162, 155, 1, 22, '2019-10-27 02:15:38'),
(163, 156, 1, 22, '2019-10-27 02:15:38'),
(164, 157, 1, 22, '2019-10-27 02:15:38'),
(165, 158, 2, 22, '2019-10-27 02:15:38'),
(166, 159, 3, 22, '2019-10-27 02:15:38'),
(167, 160, 1, 22, '2019-10-27 02:15:38'),
(168, 161, 1, 22, '2019-10-27 02:15:38'),
(169, 162, 2, 23, '2019-10-27 02:30:25'),
(170, 163, 1, 23, '2019-10-27 02:30:25'),
(171, 164, 5, 23, '2019-10-27 02:30:25'),
(172, 165, 1, 23, '2019-10-27 02:30:25'),
(173, 166, 1, 23, '2019-10-27 02:30:25'),
(174, 167, 3, 23, '2019-10-27 02:30:25'),
(175, 168, 1, 24, '2019-10-27 02:50:57'),
(176, 169, 2, 24, '2019-10-27 02:50:57'),
(177, 170, 0, 24, '2019-10-27 02:50:57'),
(178, 171, 1, 24, '2019-10-27 02:50:57'),
(179, 172, 1, 24, '2019-10-27 02:50:57'),
(180, 173, 2, 27, '2019-10-27 13:47:19'),
(181, 174, 1, 27, '2019-10-27 13:47:19'),
(182, 175, 5, 27, '2019-10-27 13:47:19'),
(183, 173, 2, 28, '2019-10-27 13:49:22'),
(184, 174, 1, 28, '2019-10-27 13:49:22'),
(185, 175, 5, 28, '2019-10-27 13:49:22'),
(186, 191, 500, 31, '2019-10-30 22:36:16'),
(187, 192, 2, 31, '2019-10-30 22:36:16'),
(188, 193, 2, 31, '2019-10-30 22:36:16'),
(189, 194, 1, 31, '2019-10-30 22:36:16'),
(190, 195, 1, 31, '2019-10-30 22:36:16'),
(191, 196, 1, 31, '2019-10-30 22:36:16'),
(192, 197, 1, 31, '2019-10-30 22:36:16'),
(193, 198, 6, 31, '2019-10-30 22:36:16'),
(194, 199, 1, 31, '2019-10-30 22:36:16'),
(195, 200, 1, 31, '2019-10-30 22:36:16'),
(196, 201, 1, 31, '2019-10-30 22:36:16'),
(197, 202, 1, 31, '2019-10-30 22:36:16'),
(198, 203, 500, 32, '2019-10-30 22:41:26'),
(199, 204, 150, 32, '2019-10-30 22:41:26'),
(200, 205, 200, 32, '2019-10-30 22:41:26'),
(201, 206, 200, 32, '2019-10-30 22:41:26'),
(202, 200, 1, 32, '2019-10-30 22:41:26'),
(203, 138, 2, 32, '2019-10-30 22:41:26'),
(204, 207, 1, 32, '2019-10-30 22:41:26'),
(205, 208, 1, 33, '2019-10-30 22:48:42'),
(206, 209, 1, 33, '2019-10-30 22:48:42'),
(207, 163, 2, 33, '2019-10-30 22:48:42'),
(208, 210, 300, 33, '2019-10-30 22:48:42'),
(209, 211, 2, 33, '2019-10-30 22:48:42'),
(210, 212, 5, 33, '2019-10-30 22:48:42'),
(211, 213, 2, 33, '2019-10-30 22:48:42'),
(212, 57, 2, 34, '2019-10-30 22:56:29'),
(213, 214, 1, 34, '2019-10-30 22:56:29'),
(214, 215, 1, 34, '2019-10-30 22:56:29'),
(215, 216, 3, 34, '2019-10-30 22:56:29'),
(216, 217, 3, 34, '2019-10-30 22:56:29'),
(217, 218, 1, 34, '2019-10-30 22:56:29'),
(218, 219, 1, 34, '2019-10-30 22:56:29'),
(219, 220, 1, 34, '2019-10-30 22:56:29'),
(220, 221, 1, 34, '2019-10-30 22:56:29'),
(221, 222, 8, 34, '2019-10-30 22:56:29'),
(222, 223, 1, 34, '2019-10-30 22:56:29'),
(223, 224, 4, 35, '2019-10-30 23:22:43'),
(224, 225, 450, 35, '2019-10-30 23:22:43'),
(225, 226, 2, 35, '2019-10-30 23:22:43'),
(226, 227, 120, 35, '2019-10-30 23:22:43'),
(227, 228, 1, 35, '2019-10-30 23:22:43'),
(228, 229, 1, 35, '2019-10-30 23:22:43'),
(229, 230, 1, 35, '2019-10-30 23:22:43'),
(230, 231, 1, 35, '2019-10-30 23:22:43'),
(231, 232, 2, 35, '2019-10-30 23:22:43'),
(232, 233, 1, 35, '2019-10-30 23:22:43'),
(233, 234, 1, 35, '2019-10-30 23:22:43'),
(234, 235, 1, 35, '2019-10-30 23:22:43'),
(235, 236, 340, 35, '2019-10-30 23:22:43'),
(236, 242, 4, 36, '2019-11-02 16:22:32'),
(237, 243, 6, 36, '2019-11-02 16:22:32'),
(238, 244, 1, 36, '2019-11-02 16:22:32'),
(239, 245, 1, 36, '2019-11-02 16:22:32'),
(240, 246, 1, 36, '2019-11-02 16:22:32'),
(241, 247, 1, 36, '2019-11-02 16:22:32'),
(242, 248, 0, 36, '2019-11-02 16:22:32'),
(243, 254, 220, 39, '2019-11-02 17:14:02'),
(244, 255, 10, 39, '2019-11-02 17:14:02'),
(245, 256, 30, 39, '2019-11-02 17:14:02'),
(246, 257, 5, 39, '2019-11-02 17:14:02'),
(247, 266, 5, 39, '2019-11-02 17:14:02'),
(248, 259, 5, 39, '2019-11-02 17:14:02'),
(249, 267, 5, 39, '2019-11-02 17:14:02'),
(250, 261, 5, 39, '2019-11-02 17:14:02'),
(251, 268, 10, 39, '2019-11-02 17:14:02'),
(252, 263, 50, 39, '2019-11-02 17:14:02'),
(253, 264, 30, 39, '2019-11-02 17:14:02'),
(254, 265, 2, 39, '2019-11-02 17:14:02'),
(255, 173, 2, 40, '2019-11-02 19:41:51'),
(256, 174, 1, 40, '2019-11-02 19:41:51'),
(257, 237, 5, 40, '2019-11-02 19:41:51'),
(258, 176, 1, 40, '2019-11-02 19:41:51'),
(259, 269, 2, 40, '2019-11-02 19:41:51'),
(260, 270, 1, 40, '2019-11-02 19:41:51'),
(261, 271, 1, 40, '2019-11-02 19:41:51'),
(262, 272, 1, 40, '2019-11-02 19:41:51'),
(263, 181, 12, 40, '2019-11-02 19:41:51'),
(264, 273, 800, 41, '2019-11-02 19:52:01'),
(265, 274, 4, 41, '2019-11-02 19:52:01'),
(266, 275, 1, 41, '2019-11-02 19:52:01'),
(267, 276, 1, 41, '2019-11-02 19:52:01'),
(268, 277, 1, 41, '2019-11-02 19:52:01'),
(269, 278, 2, 41, '2019-11-02 19:52:01'),
(270, 279, 1, 41, '2019-11-02 19:52:01'),
(271, 280, 0, 41, '2019-11-02 19:52:01'),
(272, 281, 0, 41, '2019-11-02 19:52:01'),
(273, 282, 12, 42, '2019-11-02 20:06:10'),
(274, 283, 1, 42, '2019-11-02 20:06:10'),
(275, 284, 1, 42, '2019-11-02 20:06:10'),
(276, 285, 500, 42, '2019-11-02 20:06:10'),
(277, 286, 1, 42, '2019-11-02 20:06:10'),
(278, 287, 300, 42, '2019-11-02 20:06:10'),
(279, 288, 2, 42, '2019-11-02 20:06:10'),
(280, 289, 1, 42, '2019-11-02 20:06:10'),
(281, 290, 5, 43, '2019-11-02 20:18:11'),
(282, 291, 300, 43, '2019-11-02 20:18:11'),
(283, 285, 600, 43, '2019-11-02 20:18:11'),
(284, 292, 400, 43, '2019-11-02 20:18:11'),
(285, 293, 1, 43, '2019-11-02 20:18:11'),
(286, 294, 1, 43, '2019-11-02 20:18:11'),
(287, 295, 1, 43, '2019-11-02 20:18:11'),
(288, 296, 300, 43, '2019-11-02 20:18:11'),
(289, 297, 100, 43, '2019-11-02 20:18:11'),
(290, 298, 2, 43, '2019-11-02 20:18:11'),
(291, 299, 1, 43, '2019-11-02 20:18:11'),
(292, 300, 0, 43, '2019-11-02 20:18:11'),
(293, 301, 1, 43, '2019-11-02 20:18:11'),
(294, 302, 1, 44, '2019-11-02 20:35:46'),
(295, 303, 1, 44, '2019-11-02 20:35:46'),
(296, 304, 1, 44, '2019-11-02 20:35:46'),
(297, 305, 1, 44, '2019-11-02 20:35:46'),
(298, 306, 240, 44, '2019-11-02 20:35:46'),
(299, 307, 2, 44, '2019-11-02 20:35:46'),
(300, 57, 3, 44, '2019-11-02 20:35:46'),
(301, 308, 1, 44, '2019-11-02 20:35:46'),
(302, 309, 300, 44, '2019-11-02 20:35:46'),
(303, 57, 5, 44, '2019-11-02 20:35:46'),
(304, 310, 180, 46, '2019-11-02 22:02:32'),
(305, 316, 2, 46, '2019-11-02 22:02:32'),
(306, 317, 1, 46, '2019-11-02 22:02:32'),
(307, 318, 1, 46, '2019-11-02 22:02:32'),
(308, 219, 1, 46, '2019-11-02 22:02:32'),
(309, 319, 1, 46, '2019-11-02 22:02:32'),
(310, 320, 1, 46, '2019-11-02 22:02:32'),
(311, 321, 500, 47, '2019-11-02 22:19:01'),
(312, 322, 2, 47, '2019-11-02 22:19:01'),
(313, 323, 1, 47, '2019-11-02 22:19:01'),
(314, 324, 4, 47, '2019-11-02 22:19:01'),
(315, 325, 1, 47, '2019-11-02 22:19:01'),
(316, 326, 1, 47, '2019-11-02 22:19:01'),
(317, 138, 7, 47, '2019-11-02 22:19:01'),
(318, 327, 1, 47, '2019-11-02 22:19:01'),
(319, 328, 1, 47, '2019-11-02 22:19:01'),
(320, 329, 1, 47, '2019-11-02 22:19:01'),
(321, 330, 2, 48, '2019-11-02 22:27:55'),
(322, 331, 1, 48, '2019-11-02 22:27:55'),
(323, 329, 1, 48, '2019-11-02 22:27:55'),
(324, 332, 2, 48, '2019-11-02 22:27:55'),
(325, 333, 2, 48, '2019-11-02 22:27:55'),
(326, 334, 1, 48, '2019-11-02 22:27:55'),
(327, 335, 500, 49, '2019-11-02 22:59:34'),
(328, 336, 10, 49, '2019-11-02 22:59:34'),
(329, 337, 1, 49, '2019-11-02 22:59:34'),
(330, 338, 1, 49, '2019-11-02 22:59:34'),
(331, 339, 250, 49, '2019-11-02 22:59:34'),
(332, 340, 100, 49, '2019-11-02 22:59:34'),
(333, 341, 100, 49, '2019-11-02 22:59:34'),
(334, 342, 225, 49, '2019-11-02 22:59:34'),
(335, 343, 12, 49, '2019-11-02 22:59:34'),
(336, 344, 1, 49, '2019-11-02 22:59:34'),
(337, 345, 1, 49, '2019-11-02 22:59:34'),
(338, 346, 1, 49, '2019-11-02 22:59:34'),
(339, 347, 4, 49, '2019-11-02 22:59:34'),
(340, 348, 1, 49, '2019-11-02 22:59:34'),
(341, 57, 4, 49, '2019-11-02 22:59:34'),
(342, 349, 1, 49, '2019-11-02 22:59:34'),
(343, 350, 1, 50, '2019-11-03 14:38:05'),
(344, 351, 12, 50, '2019-11-03 14:38:05'),
(345, 352, 18, 50, '2019-11-03 14:38:05'),
(346, 353, 2, 50, '2019-11-03 14:38:05'),
(347, 354, 1, 50, '2019-11-03 14:38:05'),
(348, 355, 1, 50, '2019-11-03 14:38:05'),
(349, 356, 250, 50, '2019-11-03 14:38:05'),
(350, 357, 3, 50, '2019-11-03 14:38:05'),
(351, 358, 30, 50, '2019-11-03 14:38:05'),
(352, 359, 2, 50, '2019-11-03 14:38:05'),
(353, 360, 300, 50, '2019-11-03 14:38:05'),
(354, 361, 1, 50, '2019-11-03 14:38:05'),
(355, 362, 100, 51, '2019-11-03 18:30:41'),
(356, 363, 250, 51, '2019-11-03 18:30:41'),
(357, 364, 1, 51, '2019-11-03 18:30:41'),
(358, 365, 1, 51, '2019-11-03 18:30:41'),
(359, 366, 3, 51, '2019-11-03 18:30:41'),
(360, 367, 1, 51, '2019-11-03 18:30:41'),
(361, 368, 1, 51, '2019-11-03 18:30:41'),
(362, 369, 1, 51, '2019-11-03 18:30:41'),
(363, 370, 1, 51, '2019-11-03 18:30:41'),
(364, 371, 1, 51, '2019-11-03 18:30:41'),
(365, 372, 1, 51, '2019-11-03 18:30:41'),
(366, 63, 1, 51, '2019-11-03 18:30:41'),
(367, 373, 1, 51, '2019-11-03 18:30:41'),
(368, 374, 5, 52, '2019-11-03 18:39:58'),
(369, 375, 2, 52, '2019-11-03 18:39:58'),
(370, 376, 200, 52, '2019-11-03 18:39:58'),
(371, 377, 4, 52, '2019-11-03 18:39:58'),
(372, 378, 5, 52, '2019-11-03 18:39:58'),
(373, 379, 8, 53, '2019-11-03 18:54:23'),
(374, 380, 1, 53, '2019-11-03 18:54:23'),
(375, 381, 8, 53, '2019-11-03 18:54:23'),
(376, 382, 2, 53, '2019-11-03 18:54:23'),
(377, 383, 1, 53, '2019-11-03 18:54:23'),
(378, 384, 1, 53, '2019-11-03 18:54:23'),
(379, 385, 1, 53, '2019-11-03 18:54:23'),
(380, 386, 1, 54, '2019-11-03 19:14:46'),
(381, 387, 1, 54, '2019-11-03 19:14:46'),
(382, 388, 1, 54, '2019-11-03 19:14:46'),
(383, 389, 1, 54, '2019-11-03 19:14:46'),
(384, 390, 2, 54, '2019-11-03 19:14:46'),
(385, 391, 400, 54, '2019-11-03 19:14:46'),
(386, 392, 4, 54, '2019-11-03 19:14:46'),
(387, 393, 1, 54, '2019-11-03 19:14:46'),
(388, 394, 1, 54, '2019-11-03 19:14:46'),
(389, 395, 1, 54, '2019-11-03 19:14:46'),
(390, 396, 1, 54, '2019-11-03 19:14:46'),
(391, 397, 4, 55, '2019-11-03 19:28:30'),
(392, 398, 1, 55, '2019-11-03 19:28:30'),
(393, 399, 1, 55, '2019-11-03 19:28:30'),
(394, 400, 1, 55, '2019-11-03 19:28:30'),
(395, 401, 2, 55, '2019-11-03 19:28:30'),
(396, 402, 1, 55, '2019-11-03 19:28:30'),
(397, 403, 3, 55, '2019-11-03 19:28:30'),
(398, 404, 1, 55, '2019-11-03 19:28:30'),
(399, 405, 80, 55, '2019-11-03 19:28:30'),
(400, 406, 4, 55, '2019-11-03 19:28:30'),
(401, 277, 1, 55, '2019-11-03 19:28:30'),
(402, 407, 1, 55, '2019-11-03 19:28:30'),
(403, 408, 400, 56, '2019-11-03 19:41:27'),
(404, 409, 1, 56, '2019-11-03 19:41:27'),
(405, 410, 1, 56, '2019-11-03 19:41:27'),
(406, 411, 1, 56, '2019-11-03 19:41:27'),
(407, 412, 1, 56, '2019-11-03 19:41:27'),
(408, 413, 1, 56, '2019-11-03 19:41:27'),
(409, 414, 1, 56, '2019-11-03 19:41:27'),
(410, 32, 1, 56, '2019-11-03 19:41:27'),
(411, 15, 2, 56, '2019-11-03 19:41:27'),
(412, 415, 2, 56, '2019-11-03 19:41:27'),
(413, 416, 100, 57, '2019-11-03 19:56:55'),
(414, 32, 1, 57, '2019-11-03 19:56:55'),
(415, 277, 1, 57, '2019-11-03 19:56:55'),
(416, 387, 1, 57, '2019-11-03 19:56:55'),
(417, 73, 100, 57, '2019-11-03 19:56:55'),
(418, 417, 70, 57, '2019-11-03 19:56:55'),
(419, 418, 400, 57, '2019-11-03 19:56:55'),
(420, 419, 1, 57, '2019-11-03 19:56:55'),
(421, 420, 1, 57, '2019-11-03 19:56:55'),
(422, 401, 1, 57, '2019-11-03 19:56:55'),
(423, 421, 3, 57, '2019-11-03 19:56:55'),
(424, 422, 1, 57, '2019-11-03 19:56:55'),
(425, 423, 1, 57, '2019-11-03 19:56:55'),
(426, 424, 9, 57, '2019-11-03 19:56:55'),
(427, 425, 200, 57, '2019-11-03 19:56:55'),
(428, 426, 1, 57, '2019-11-03 19:56:55'),
(429, 427, 125, 58, '2019-11-03 20:11:58'),
(430, 428, 70, 58, '2019-11-03 20:11:58'),
(431, 429, 40, 58, '2019-11-03 20:11:58'),
(432, 430, 50, 58, '2019-11-03 20:11:58'),
(433, 63, 1, 58, '2019-11-03 20:11:58'),
(434, 431, 4, 58, '2019-11-03 20:11:58'),
(435, 432, 4, 58, '2019-11-03 20:11:58'),
(436, 201, 1, 58, '2019-11-03 20:11:58'),
(437, 433, 1, 58, '2019-11-03 20:11:58'),
(438, 434, 1, 58, '2019-11-03 20:11:58'),
(439, 435, 1, 58, '2019-11-03 20:11:58'),
(440, 436, 1, 58, '2019-11-03 20:11:58'),
(441, 437, 400, 59, '2019-11-03 20:17:18'),
(442, 356, 400, 59, '2019-11-03 20:17:18'),
(443, 438, 30, 59, '2019-11-03 20:17:18'),
(444, 439, 1, 59, '2019-11-03 20:17:18'),
(445, 7, 25, 59, '2019-11-03 20:17:18'),
(446, 440, 1, 59, '2019-11-03 20:17:18'),
(447, 57, 5, 59, '2019-11-03 20:17:18'),
(448, 441, 3, 60, '2019-11-07 01:05:40'),
(449, 442, 4, 60, '2019-11-07 01:05:40'),
(450, 443, 1, 60, '2019-11-07 01:05:40'),
(451, 444, 3, 60, '2019-11-07 01:05:40'),
(452, 445, 2, 60, '2019-11-07 01:05:40'),
(453, 446, 2, 60, '2019-11-07 01:05:40'),
(454, 428, 30, 60, '2019-11-07 01:05:40'),
(455, 423, 1, 60, '2019-11-07 01:05:40'),
(467, 428, 50, 62, '2019-11-07 01:38:44'),
(468, 457, 3, 62, '2019-11-07 01:38:44'),
(469, 458, 1, 62, '2019-11-07 01:38:44'),
(470, 459, 3, 62, '2019-11-07 01:38:44'),
(471, 460, 500, 62, '2019-11-07 01:38:44'),
(472, 461, 20, 62, '2019-11-07 01:38:44'),
(473, 462, 25, 62, '2019-11-07 01:38:44'),
(474, 463, 25, 62, '2019-11-07 01:38:44'),
(475, 56, 100, 63, '2019-11-07 02:05:02'),
(476, 464, 10, 63, '2019-11-07 02:05:02'),
(477, 428, 90, 63, '2019-11-07 02:05:02'),
(478, 465, 100, 63, '2019-11-07 02:05:02'),
(479, 57, 3, 63, '2019-11-07 02:05:02'),
(480, 466, 50, 63, '2019-11-07 02:05:02'),
(481, 467, 3, 63, '2019-11-07 02:05:02'),
(482, 468, 50, 63, '2019-11-07 02:05:02'),
(483, 469, 3, 63, '2019-11-07 02:05:02'),
(484, 470, 1, 63, '2019-11-07 02:05:02'),
(485, 471, 100, 63, '2019-11-07 02:05:02'),
(486, 472, 20, 63, '2019-11-07 02:05:02'),
(487, 473, 1, 63, '2019-11-07 02:05:02'),
(488, 474, 140, 63, '2019-11-07 02:05:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `localidade` varchar(50) NOT NULL,
  `path_icon` varchar(80) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`id`, `nome`, `localidade`, `path_icon`, `timestamp`) VALUES
(1, 'Brasil', 'AmÃ©ria', 'images/icon-pais/5dafa2390f729.jpg', '2019-10-23 00:43:37'),
(9, 'Tailandia', 'Ãsia', 'images/icon-pais/5db0bfd91c95b.jpg', '2019-10-23 21:02:17'),
(10, 'AustrÃ¡lia', 'Oceania', 'images/icon-pais/5db0c02995e89.jpg', '2019-10-23 21:03:37'),
(12, 'Espanha', 'Europa', 'images/icon-pais/5db0c09e22732.jpg', '2019-10-23 21:05:34'),
(13, 'FranÃ§a', 'Europa', 'images/icon-pais/5db0c0c75b569.jpg', '2019-10-23 21:06:15'),
(14, 'ItÃ¡lia', 'Europa', 'images/icon-pais/5db0c0eb2aaa4.jpg', '2019-10-23 21:06:51'),
(15, 'JapÃ£o', 'Ãsia', 'images/icon-pais/5db0c11f2c605.jpg', '2019-10-23 21:07:43'),
(16, 'MÃ©xico', 'AmÃ©rica do Norte', 'images/icon-pais/5dd870b24fad7.jpg', '2019-10-23 21:08:20'),
(18, 'China', 'Asia', 'images/icon-pais/5f862fc382f56.jpg', '2019-10-30 23:13:48');

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita`
--

CREATE TABLE `receita` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `modo_preparo` text NOT NULL,
  `usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `categoria` int(11) NOT NULL,
  `pais` int(11) NOT NULL,
  `tempo_preparo` varchar(25) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `receita`
--

INSERT INTO `receita` (`id`, `titulo`, `modo_preparo`, `usuario`, `timestamp`, `categoria`, `pais`, `tempo_preparo`, `status`) VALUES
(5, 'Chicken With Spiced Rice', '<br><b>1</b>  -  AqueÃ§a o Ã³leo em uma frigideira grande e funda ou em uma panela rasa Ã  prova de fogo<br><b>2</b>  -  Cozinhe os pedaÃ§os de frango por 2 minutos de cada lado, atÃ© dourar. Separe.<br><b>3</b>  -  AqueÃ§a a cebola mÃ©dia e refogue na mesma panela por 3 minutos, atÃ© dourar.<br><b>4</b>  -  Adicione aÃ§afrÃ£o e cozinhe, mexendo, por 1 minuto. Misture o arroz e mexa por 3-4 minutos, atÃ© ficar translÃºcido.<br><b>5</b>  -  Mexa com o caldo, temperos e tempere. Coloque o frango novamente na panela, empurrando-o para o arroz.<br><b>6</b>  -  Tampe e cozinhe em fogo baixo por 15 minutos. <br><b>7</b>  -  Adicione as ervilhas e cozinhe por mais 8 a 10 minutos, atÃ© que o frango esteja cozido.', 1, '2019-10-23 21:25:08', 1, 10, '50', 0),
(8, 'Kangaroo Tail', '<br><b>1</b>  -  AqueÃ§a o azeite em uma panela e frite a cebola. <br><b>2</b>  -  Adicione o alho e cozinhe atÃ© perfumar.<br><b>3</b>  -  Adicione a cauda de canguru e refogue atÃ© dourar.<br><b>4</b>  -  Adicione o caldo ou a Ã¡gua, depois o tomate e a pasta de tomate.<br><b>5</b>  -  Misture as ervas e tempere com aÃ§Ãºcar, sal e pimenta.<br><b>6</b>  -  Cozinhe por cerca de 3 horas.<br><b>7</b>  -  Sirva com massas cozidas na hora, feijÃµes e verduras Warrigal.', 1, '2020-10-17 11:23:07', 2, 10, '45', 0),
(9, 'Carne de porco e vitela Ã  bolonhesa com Rigatoni', '<br><b>1</b>  -  Picar todos os ingredientes.<br><b>2</b>  -  AqueÃ§a o Ã³leo e a manteiga em uma panela grande, cozinhe a mistura de alho e cebola, mexendo ocasionalmente, por cerca de 10 minutos ou atÃ© os legumes ficarem macios.<br><b>3</b>  -  Enquanto isso, cozinhe o macarrÃ£o em uma panela grande de Ã¡gua fervente e salgada, descoberta, atÃ© ficar macia, drenar.<br><b>4</b>  -  Misture o macarrÃ£o com o molho e sirva com queijo parmesÃ£o ralado, se desejar.', 1, '2019-10-24 22:42:09', 3, 10, '90', 0),
(11, 'Bolo de Cenoura', '<br><b>1</b>  -  Retire a casca das cenouras, corte-as em pedaÃ§os, lave-as e cozinhe-as cobertas com Ã¡gua. Escorra a Ã¡gua, e deixe que as cenouras esfriem um pouco. Em um liquidificador, bata as cenouras cozidas, os ovos e o Ã³leo. Despeje a mistura em um recipiente e misture o aÃ§Ãºcar e a farinha de trigo peneirada com o fermento. Coloque em uma fÃ´rma retangular (20 x 30 cm) untada, e leve ao forno mÃ©dio (180Â°C), preaquecido, por 40 minutos. Enquanto isso, prepare a cobertura de brigadeiro.', 6, '2020-10-17 11:30:46', 4, 1, '40', 2),
(12, 'Soft-centred Chocolate Pudding', '<br><b>1</b>  -  AqueÃ§a o forno a 180 Â° C.<br><b>2</b>  -  Untar e peneirar farinha em  8 potes de sua preferencia.<br><b>3</b>  -  Derreta a manteiga e o chocolate em banho-maria.<br><b>4</b>  -  Bata os ovos inteiros, as gemas e o aÃ§Ãºcar juntos atÃ© engrossar e empalidecer.<br><b>5</b>  -  Adicione o chocolate e a manteiga e depois a farinha.<br><b>6</b>  -  Misture Bem.<br><b>7</b>  -  Divida a mistura entre os 8 moldes e asse por aproximadamente 8 minutos.<br><b>8</b>  -  Sirva com sorvete de baunilha e frutas da estaÃ§Ã£o.', 1, '2019-10-24 23:08:33', 4, 10, '30', 0),
(14, 'FRANGO DE TV EM CASA', '<br><b>1</b>  -  Em uma vasilha pequena, misture a pÃ¡prica, o tomilho e a pimenta-branca. Reserve.<br><b>2</b>  -  Lave o frango por dentro e seque-o com um papel-toalha.<br><b>3</b>  -  Passe a mistura de temperos por dentro e por fora do frango. <br><b>4</b>  -  Ponha uma cebola dentro de cada frango. <br><b>5</b>  -  Coloque os frangos em vasilhas grandes fechadas com plÃ¡stico-filme e leve Ã  geladeira por 8 horas.<br><b>6</b>  -  Retire o plÃ¡stico-filme.<br><b>7</b>  -  PreaqueÃ§a o forno a 120 graus. <br><b>8</b>  -  Leve o frango ao forno em uma assadeira e asse por 4 horas ou atÃ© que esteja cozido (isso vai depender do tamanho do frango).<br><b>9</b>  -  9. Deixe o frango esfriando durante 10 minutos, antes de cortÃ¡-lo. Sirva.', 1, '2019-10-25 10:52:52', 1, 1, '300', 0),
(15, 'Canjiquinha com peru marinado.', '<br><b>1</b>  -  Com 24 horas de antecedÃªncia, deixe as duas partes do peito de peru marinar no suco da laranja, com tomilho, sÃ¡lvia e sal.<br><b>2</b>  -  Leve o peito de peru marinado ao forno preaquecido a 180 graus por cerca de 30 minutos, mais ou menos.<br><b>3</b>  -  Cuide para que a Ã¡gua nÃ£o seque, senÃ£o pode ficar muito seco.<br><b>4</b>  -  Para a canjiquinha, frite o bacon e, em seguida, adicione a cebola e o alho.<br><b>5</b>  -  Adicione a canjiquinha e, em seguida, adicione Ã¡gua para cozinhar.<br><b>6</b>  -  Cozinhe atÃ© desgrudar da panela, mexendo sempre.<br><b>7</b>  -  Sirva o peru com a canjiquinha e finalize com tempero verde.', 1, '2020-10-17 11:30:07', 1, 1, '120', 1),
(16, 'Bolo de Carne Recheado.', '<br><b>1</b>  -  Em uma tigela, misture a carne, a cebola, o alho, o ovo, a farinha de rosca, o sal e a pimenta. Reserve.<br><b>2</b>  -  Para o recheio, em outra tigela, misture a cenoura, a muÃ§arela e a salsa. <br><b>3</b>  -  Em uma forma retangular, levemente untada com Ã³leo, alterne camadas de carne e recheio.<br><b>4</b>  -  Cubra com papel-alumÃ­nio e asse no forno preaquecido a 220 graus durante 50 minutos.<br><b>5</b>  -  Retire do forno, deixe esfriar um pouco e escorra a Ã¡gua que se formou na assadeira.<br><b>6</b>  -  Fatie e sirva em seguida.', 1, '2020-10-17 11:30:12', 2, 1, '80', 1),
(17, 'Picadinho com Farofa e ovo Estalados.', '<br><b>1</b>  -  Em uma panela grande, aqueÃ§a o azeite e doure a carne.<br><b>2</b>  -  Acrescente o alho e a cebola e refogue.<br><b>3</b>  -  Adicione o tomate, o sal, a pimenta e cubra-os com Ã¡gua.<br><b>4</b>  -  Cozinhe por uns 10 ou 15 minutos.<br><b>5</b>  -  Deixe esfriar a panela e acrescente a salsinha picada.<br><b>6</b>  -  Para a farofa, aqueÃ§a a manteiga em uma panela mÃ©dia e doure o alho e a cebola.<br><b>7</b>  -  Acrescente a castanha e refogue.<br><b>8</b>  -  Em seguida, adicione a farinha, o sal, a pimenta e, por fim, a cebolinha e a salsinha, misturando bem. Reserve.<br><b>9</b>  -  Para o ovo, coloque uma frigideria antiaderente em fogo baixo e adicione um fio de azeite.<br><b>10</b>  -  Abra o ovo em uma tigela pequena e coloque-o com cuidado na frigideira.<br><b>11</b>  -  Acerte o tempero.<br><b>12</b>  -  Cozinhe em fogo baixo atÃ© a textura desejada.<br><b>13</b>  -  Sirva os ovos junto com a farofa e o picadinho.', 1, '2019-10-25 11:22:17', 2, 1, '120', 0),
(18, 'Espetinho de frango Ã  tailandesa', '<br><b>1</b>  -  Para o frango, tempere as tiras de frango com o sal, o Ã³leo de gergelim e coloque em um espetinho de madeira, lembrando de torcer a carne. Coloque em uma chapa para grelhar.<br><b>2</b>  -  Reserve. Em uma panela, aqueÃ§a o Ã³leo, coloque o curry e deixe por 2 minutos em fogo baixo para que seu aroma comece a perfumar o ambiente. EntÃ£o acrescente o restante dos ingredientes e cozinhe em fogo baixo atÃ© que fique levemente espesso.<br><b>3</b>  -  Reserve. Para o vinagrete de cÃ­tricos, coloque todos os ingredientes em uma vasilha, misture bem e reserve. Depois que os espetinhos estiverem dourados sirva com o molho e o vinagrete ao lado.', 3, '2019-10-25 23:01:30', 1, 9, '45', 0),
(19, 'Mini tender Ã  tailandesa', '<br><b>1</b>  -  No liquidificador, bata metade da manga, o aÃ§Ãºcar, sal, pimenta e o aceto balsÃ¢mico. Reserve.<br><b>2</b>  -  Em uma vasilha, coloque a outra metade da manga, os pimentÃµes e o molho de manga. Reserve.<br><b>3</b>  -  Fatie o mini tender e espalhe o molho ao redor dele. Mantenha na geladeira coberto com plÃ¡stico-filme atÃ© a hora de servir.', 3, '2019-10-26 21:17:23', 2, 9, '30', 0),
(20, 'Espetinho de carne de porco', '<br><b>1</b>  -   Coloque o Ã³leo, o molho de ostras, o gergelim, o molho de peixe, o aÃ§Ãºcar mascavo, a cebola e o alho no processador.<br><b>2</b>  -  Bata atÃ© virar um purÃª. <br><b>3</b>  -  Acerte o sal. <br><b>4</b>  -  Misture esse creme com a carne em uma tigela e deixe descansar por 2h na geladeira.<br><b>5</b>  -  Prepare os espetos e toste a carne de todos os lados. Isso pode ser feito no forno, na brasa ou na frigideira. Cuide para nÃ£o secar.<br><b>6</b>  -  Sirva com molho de pimenta.', 3, '2019-10-26 21:31:25', 2, 9, '30', 0),
(21, 'PAD THAI (MACARRÃƒO DE ARROZ THAI)', '<br><b>1</b>  -  Comece preparando o molho: misture todos os ingredientes em uma vasilha e reserve.<br><b>2</b>  -   Em uma frigideira antiaderente, adicione o Ã³leo.<br><b>3</b>  -  Quando o Ã³leo estiver bem quente, adicione o alho, o tofu e o camarÃ£o. Frite atÃ© o tofu comeÃ§ar a ficar dourado.<br><b>4</b>  -  Reduza o fogo e adicione os ovos, mexendo para que eles se desmanchem e se misturem ao tofu e ao camarÃ£o.<br><b>5</b>  -  Adicione a cenoura, a cebolinha verde e os brotos de feijÃ£o e mexa rapidamente.<br><b>6</b>  -  Desligue o fogo. Reserve a mistura em outro recipiente.<br><b>7</b>  -  Na mesma frigideira, agora sem Ã³leo, coloque o noodle e a mistura do molho e cozinhe por 3min.<br><b>8</b>  -  Acrescente a mistura que estava reservada, mexa bem e desligue em seguida<br><b>9</b>  -  Adicione os amendoins e sirva.', 3, '2019-10-26 22:03:25', 3, 9, '60', 0),
(22, 'MacarrÃ£o tailandÃªs', '<br><b>1</b>  -  Cozinhe o macarrÃ£o de acordo com o tempo indicado na embalagem, escorra e frite em Ã³leo abundante atÃ© ficar levemente dourado, escorra outra vez e r<br><b>2</b>  -  No mesmo Ã³leo frite separadamente o camarÃ£o o frango e a lingÃ¼iÃ§a em fogo alto atÃ© ficar no ponto e reserve.<br><b>3</b>  -  Ainda nessa panela refogue o alho junto com o gengibre e a pimenta, em seguida acrescente o nirÃ¡ e o broto de feijÃ£o.<br><b>4</b>  -   Volte o camarÃ£o, o frango e a lingÃ¼iÃ§a para a panela. Tempere com o shoyu e o molho de ostra misturando bem, acrescente o Ã³leo de gergelim para finalizar e sirva sobre o macarrÃ£o frito.', 3, '2019-10-27 02:15:38', 3, 9, '11', 0),
(23, 'Frozen Yorgut com Morango e Pimenta', '<br><b>1</b>  -  Modo de Preparo - Principal<br><b>2</b>  -  Bata por aproximadamente 1 minuto os 2 potes de iogurte natural, 1 caixa de creme de leite, 4 colheres de sopa de aÃ§ucar orgÃ¢nico e 2 morangos no liquidificador.<br><b>3</b>  -  ApÃ³s obter um creme homogÃªneo e rosa claro, divida-o em duas taÃ§as de vidro de tamanho mÃ©dio.<br><b>4</b>  -  Leve a sobremesa ao congelador por aproximadamente 3 horas.<br><b>5</b>  -  Corte os morangos e a pimenta.<br><b>6</b>  -  Utilize fatias dos morangos e folhas de hortelÃ£ para decorar. Salpique pedaÃ§os da pimenta sobre a sobremesa de forma a preencher os espaÃ§os de forma igualitÃ¡ria.<br><b>7</b>  -  Modo de Preparo - Acompanhamento<br><b>8</b>  -  O restante dos morangos, da pimenta e a 1 colher de aÃ§ucar orgÃ¢nico devem ser misturados (sem bater no liquidificador) e servidos como complemento.', 3, '2019-10-27 02:30:25', 4, 9, '20', 0),
(24, 'Arroz doce thalandÃªs', '<br><b>1</b>  -  Coloque o arroz num recipiente grande, encha com Ã¡gua e deixe de molho durante a noite.<br><b>2</b>  -  No dia seguinte, escorra, lave o arroz e cozinhe em vapor.<br><b>3</b>  -  Enquanto coze o arroz, coloque o leite de coco, o aÃ§Ãºcar e o sal numa panela e deixe cozinhar, sem ferver, em lume brando.<br><b>4</b>  -  Quando o arroz estiver cozido, deite-o num recipiente e, aos poucos, regue com o preparado do leite de coco.<br><b>5</b>  -  Retifique o aÃ§Ãºcar, misture bem, e cubra com pelÃ­cula aderente.<br><b>6</b>  -  Antes de servir distribua por tacinhas.', 3, '2019-10-27 02:50:57', 4, 9, '30', 0),
(31, 'Espaguete com porpetas', '<br><b>1</b>  -  Em uma tigela, coloque os pÃ£es picados e o leite para que fiquem embebidos.<br><b>2</b>  -  Deixe por 10 minutos e retire.<br><b>3</b>  -  Em outra tigela, coloque a carne, a cebola picada, a salsinha e o pÃ£o embebido.<br><b>4</b>  -  Adicione sal e amasse com as mÃ£os atÃ© que a mistura se torne consistente.<br><b>5</b>  -  FaÃ§a as porpetas do tamanho desejado.<br><b>6</b>  -  VocÃª pode fritÃ¡-las em Ã³leo bem quente, de modo a deixÃ¡-las tostadas do lado de fora e com consistÃªncia tenra por dentro. Ou colocÃ¡-las no forno, em uma assadeira, para evitar gordura e ainda ser mais saudÃ¡vel.<br><b>7</b>  -  Para o molho, refogue a cebola e o alho em uma panela com azeite.<br><b>8</b>  -  Quando ambos comeÃ§arem a dourar, junte o vinho e deixe evaporar.<br><b>9</b>  -  Junte os tomates e deixe-os cozinhar, mexendo sempre, atÃ© que comecem a ter aparÃªncia pastosa.<br><b>10</b>  -  Acerte o sal e coloque as porpetas para terminar de cozinhar no molho.<br><b>11</b>  -  Adicione o manjericÃ£o e o orÃ©gano no final.<br><b>12</b>  -  Leve uma panela ao fogo com Ã¡gua e deixe ferver.<br><b>13</b>  -  Adicione sal e coloque a massa.<br><b>14</b>  -  Cozinhe al dente ou conforme sua preferÃªncia, e sirva com o molho e as porpetas.', 1, '2019-10-30 22:36:16', 3, 1, '50', 0),
(32, 'Espaguete com legumes e queijo brie.', '<br><b>1</b>  -  Em uma panela, coloque a massa para cozinhar em Ã¡gua fervente atÃ© ela ficar al dente.<br><b>2</b>  -  Em uma outra panela, coloque a cebola e o alho e refogue bem.  <br><b>3</b>  -  Acrescente os tomates e as ervilhas nessa panela e misture bem. Tempere com sal e pimenta.<br><b>4</b>  -  Coloque a massa junto ao molho, misture bem e corrija o tempero.<br><b>5</b>  -  Finalize colocando o queijo brie em pedaÃ§os para derreter. Sirva com as folhinhas de manjericÃ£o rasgadas por cima.', 1, '2019-10-30 22:41:26', 3, 1, '45', 0),
(33, 'Torta de chocolate com cafÃ© Melitta.', '<br><b>1</b>  -  Em uma panela coloque o leite condensado com o chocolate em pÃ³ e faÃ§a um brigadeiro bem firme.<br><b>2</b>  -  Misture o creme de leite. Reserve.<br><b>3</b>  -  Em uma batedeira, coloque o creme de leite fresco e o aÃ§Ãºcar e bata atÃ© formar um chantilly. Reserve na geladeira.<br><b>4</b>  -  Em uma travessa, cubra o fundo com um pouco do creme de chocolate. Molhe o biscoito no CafÃ© Torrado e MoÃ­do MelittaÂ® Tradicional e coloque-os por cima.<br><b>5</b>  -  Cubra com mais um pouco do creme e repita o processo deixando um espaÃ§o para o chantilly.<br><b>6</b>  -  Leve para a geladeira por aproximadamente quatro horas ou atÃ© ficar bem firme.<br><b>7</b>  -  Finalize com o chantilly por cima e sobre ele coloque um pouco de CafÃ© SolÃºvel MelittaÂ® Tradicional, para decorar e para incrementar no gosto do cafÃ©. Sirva â€“ acompanhado de um cafÃ© MelittaÂ®  bem fresquiho, para harmonizar, Ã© claro.', 1, '2019-10-30 22:48:42', 4, 1, '300', 0),
(34, 'Crepe de chocolate com chocolate branco e morango.', '<br><b>1</b>  -   Em um liquidificador, misture os ovos, a farinha, o aÃ§Ãºcar, o chocolate em pÃ³, o Ã³leo e o leite.<br><b>2</b>  -  Bata tudo atÃ© formar uma massa um pouco mais fina do que a de panqueca. Se necessÃ¡rio, coloque um pouco mais de farinha para nÃ£o ficar lÃ­quido.<br><b>3</b>  -  Em uma frigideira em fogo mÃ©dio e com um pouco de Ã³leo, disponha cerca de uma concha da massa para preparar o crepe. O preparo Ã© igual ao de uma panqueca, porÃ©m com a massa mais fina, gire a frigideira ao derramar a concha de massa para que ela cubra todo o fundo.<br><b>4</b>  -  Repita o processo atÃ© a massa acabar. Deixe os crepes reservados enquanto esfriam.<br><b>5</b>  -  Em uma panela pequena, leve o leite condensado para cozinhar e prepare-o como um brigadeiro.<br><b>6</b>  -  Acrescente o chocolate branco em pedaÃ§os e mexa para derreter. <br><b>7</b>  -  Adicione o creme de leite e misture bem. Quando estiver em ponto de um brigadeiro mole, retire do fogo e deixe esfriar na geladeira.<br><b>8</b>  -  Em uma tigela, misture os morangos cortados com o aceto balsÃ¢mico e o aÃ§Ãºcar. Deixe-os reservados por 10 minutos.<br><b>9</b>  -  Na hora da montagem, disponha a massa do crepe em um prato e recheie com o chocolate branco para depois dobrar 2 vezes, e os morangos por cima. Sirva em seguida. ', 1, '2019-10-30 22:56:29', 4, 1, '90', 0),
(35, 'Cashewchickenphoto (Galinha Com Caju)', '<br><b>1</b>  -  AqueÃ§a o Ã³leo numa frigideira grande e frite rapidamente a galinha, o caju, o camarÃ£o e os vegetais atÃ© a galinha estar bem frita.<br><b>2</b>  -  Junte Ã  galinha, frite dum lado, vire e frite do outro. <br><b>3</b>  -  Misture a manteiga de amendoim, o molho de soja, o xerez e o mel.<br><b>4</b>  -  Despeje por cima da massa, deixe cozinhar durante 1 minuto e coloque numa travessa, servindo de imediato.', 1, '2019-10-30 23:22:43', 1, 18, '35', 0),
(36, 'Lanche de Peito Frango Mexicano', '<br><b>1</b>  -  Pegue o peito de frango coloque em um saquinho de congelamento e bata para arrebentar um pouco a fibra deles pode usar pau de macarrÃ£o( mas cuidado para nÃ£o arrebentar)<br><b>2</b>  -  Coloque em uma travessa e espalhe os temperos pelos dois lados deixando por alguns minutos Em uma frigideira coloque o bacon e frite ate que fiquem crocante e reserve<br><b>3</b>  -  Em uma frigideira coloque o bacon e frite ate que fiquem crocante e reserve<br><b>4</b>  -  Na mesma Frigideira coloque o peito e frite bem e reserve<br><b>5</b>  -  Nesta receita o pÃ£o deve ser baguetinho e colocado no forno antes para ficar crocante e o que se passa no pÃ£o para a montagem Ã© guacamole<br><b>6</b>  -  Para montar o lanche corte os peitos em tiras e inicie a montagens passando guacamole nos 2 lados do pÃ£o, en seguida o alface, podendo ser rÃºcula ou agriÃ£o depois os pedaÃ§os de peito e em seguida o bacon ( fotos no passo a passo)<br><b>7</b>  -  Bom Apetite', 3, '2019-11-02 16:22:32', 1, 16, '30', 0),
(39, 'ChicharrÃ³n', '<br><b>1</b>  -  No liquidificador, bata o alho, cebola, cominho, orÃ©gano, pimenta calabresa, pÃ¡prica, vinagre e sal grosso.<br><b>2</b>  -  Corte o pernil em pedaÃ§os iguais e deixe marinando na mistura feita no liquidificador. No dia seguinte, cubra com Ã¡gua e cozinhe em fogo baixo por trÃªs horas ou atÃ© que fique macio. reserve.<br><b>3</b>  -   Ã€ parte, cozinhe o milho com anis estrelado atÃ© obter uma consistÃªncia macia.<br><b>4</b>  -  Para servir, frite os pedaÃ§os de pernil. ReÃºna o pernil crocante e o milho em um recipiente e sirva com um molho picante.', 3, '2019-11-02 17:14:02', 2, 16, '30', 0),
(40, 'Tinga de Pollo', '<br><b>1</b>  -  Em um prato acomode um disco de pastel frito, <br><b>2</b>  -  espalhe 1 colher de sopa da mistura do requeijao com creme de leite, em cima 2 colheres de sopa cheias do frango refogado, <br><b>3</b>  -  junte a alface picada a gosto e 1 colher de sopa rasa de ricota.', 3, '2019-11-02 19:41:51', 1, 16, '45', 0),
(41, 'Carne Picante', '<br><b>1</b>  -  Em uma panela mÃ©dia, aqueÃ§a o Ã³leo e refogue a cebola e o alho.<br><b>2</b>  -  unte o restante dos ingredientes: carne, tomates, Ã¡gua, cominho, sal, pimenta, coentro e tempero verde.<br><b>3</b>  -   Cozinhe em fogo baixo, mexendo de vez em quando, atÃ© que a carne fique dourada e o molho, espesso.<br><b>4</b>  -  SÃ³ servir', 3, '2019-11-02 19:52:01', 2, 16, '30', 0),
(42, 'Tacos Originais', '<br><b>1</b>  -   1. Prepare a carne picante, o guacamole e o creme de nata <br><b>2</b>  -  Em seguida, recheie as tortillas. Adicione o queijo muÃ§arela e a carne picante.<br><b>3</b>  -  Depois, acrescente a alface em tiras, os tomates picados e o milho.<br><b>4</b>  -  Finalize com guacamole e creme de nata.', 3, '2019-11-02 20:06:10', 3, 16, '25', 0),
(43, 'Burritos Original', '<br><b>1</b>  -  VocÃª vai precisar de 1 frigideira grande<br><b>2</b>  -   Prepare a carne picante, o feijÃ£o, o guacamole e o creme de nata <br><b>3</b>  -  Em uma frigideira grande, refogue a cebola e o pimentÃ£o com um pouco de sal e orÃ©gano. Reserve.<br><b>4</b>  -   Em seguida, aqueÃ§a na prÃ³pria frigideira a tortilla de trigo atÃ© ficar macia.<br><b>5</b>  -  Recheie as tortillas com queijo muÃ§arela, carne picante, feijÃ£o, pimentÃ£o refogado, tomate picado, alface em tiras, milho verde, guacamole e creme de nata. <br><b>6</b>  -  Dobre as pontas e feche com um palito.', 3, '2019-11-02 20:18:11', 3, 16, '45', 0),
(44, 'Chocoflan Mexicano', '<br><b>1</b>  -  BOLO:<br><b>2</b>  -  Antes de comeÃ§ar, prÃ©-aqueÃ§a o forno a 200 Â°C.<br><b>3</b>  -  AqueÃ§a a Cajeta Mexicana para ficar mais lÃ­quida.<br><b>4</b>  -  Unte com manteiga e farinha de trigo a forma que irÃ¡ servir o Chocoflan e despeje a Cajeta quente, cubrindo a forma de maneira uniforme.<br><b>5</b>  -  Prepare o bolo conforme as instruÃ§Ãµes da embalagem e despeje a massa por cima da Cajeta, derramando pouco a pouco. Flan.<br><b>6</b>  -  Coloque o conteÃºdo do leite condensado no liquidificar e aperte pulsar algumas vezes, adicionando depois todos os outros ingredientes e batendo com cuidado para nÃ£o formar espuma.<br><b>7</b>  -  Despeje o flan pouco a pouco sobre a massa do bolo na forma, nÃ£o hÃ¡ problema se misturar um pouco as massas.<br><b>8</b>  -  Cubra a forma com papel alumÃ­nio e leve ao forno em banho maria por 1 hora sem abrir o forno. Antes de colocar no forno, reduza a temperatura a 175Â°C.<br><b>9</b>  -  Quando o Chocoflan estiver pronto, retire do forno e deixe esfriar por 20 minutos; desenforme e sirva em temperatura ambiente.<br><b>10</b>  -  AtenÃ§Ã£o â€“ durante o tempo que o bolo estÃ¡ assando, a mistura de flan desce e a massa do bolo vem para cima.', 3, '2019-11-02 20:35:46', 4, 16, '20', 0),
(46, 'Horchata', '<br><b>1</b>  -  Em uma vasilha misture o arroz com a Ã¡gua quente. Deixe-o separado durante meia hora. <br><b>2</b>  -  Escorra o arroz, mas reserve a sua Ã¡gua. Ponha o arroz no processador de alimentos junto com a canela. <br><b>3</b>  -  Bata atÃ© formar uma pasta. Coloque o arroz de volta na Ã¡gua reservada e deixe de molho durante 2 horas.<br><b>4</b>  -  Mexa o arroz algumas vezes. Quando vocÃª notar que a Ã¡gua estÃ¡ ficando leitosa, coloque-a em uma jarra e peneire o arroz.<br><b>5</b>  -  Na Ã¡gua do arroz misture o leite, o leite condensado, a baunilha e o rum.<br><b>6</b>  -  Mexa bem e deixe a bebida na geladeira por no mÃ­nimo 2 horas. <br><b>7</b>  -  Sirva com pedras de gelo.', 3, '2019-11-02 22:02:32', 4, 16, '40', 0),
(47, 'Frango Teriyaki', '<br><b>1</b>  -  Como preparar o molho teriyaki:<br><b>2</b>  -  Coloque o mirin em uma panela mÃ©dia e leve ao fogo alto. ApÃ³s levantar fervura, reduza o fogo e deixe cozinhar por 10 minutos.<br><b>3</b>  -   Acrescente o molho de soja, o vinagre de arroz, o Ã³leo de gergelim e o aÃ§Ãºcar. Mexa atÃ© estar tudo incorporado. Se quiser engrossar um pouco mais o molho, adicione 2 colheres de chÃ¡ de amido de milho dissolvido em um pouco de Ã¡gua.<br><b>4</b>  -  Adicione os temperos do molho: alho, gengibre e pimenta, se assim desejar.<br><b>5</b>  -  Cozinhe por mais 5 minutos, retire do fogo e deixe esfriar por 10 minutos.<br><b>6</b>  -  Como preparar o frango:<br><b>7</b>  -  Espere molho esfriar, caso contrÃ¡rio pode acabar cozinhando o frango.<br><b>8</b>  -  Coloque quase todo o molho em um saco plÃ¡stico juntamente com o frango. Reserve 1/4 do molho para ser usado para regar o frango no final do cozimento ou como acompanhamento.<br><b>9</b>  -  Coloque o frango marinado na geladeira por pelo menos uma hora ou mais. Quanto maior o tempo que o frango ficar marinando, mais suculento e saboroso ele irÃ¡ ficar.<br><b>10</b>  -   Quando estiver pronto para comeÃ§ar a cozinhar, retire o frango do saco plÃ¡stico e ligue o fogo mÃ©dio. Retire o excesso de molho que entrou em contato com o frango. Ele nÃ£o vai ser usado.<br><b>11</b>  -  Cozinhe o frango em uma panela mÃ©dia por 6 minutos, com tampa, sem mexer.<br><b>12</b>  -  . Vire o frango e cozinhe com a panela tampada por mais 6 minutos.<br><b>13</b>  -  Regue o frango com o molho reserva, vire-o e cozinhe no fogo mÃ©dio por mais 2-3 minutos de cada lado, com a panela destampada. Se achar que vai queimar, acrescente mais um pouquinho de molho Teriyaki. Desligue o fogo assim que o frango estiver bem cozido.<br><b>14</b>  -   Prontinho! Seu frango teriyaki estÃ¡ pronto para ser consumido por vocÃª e toda a sua famÃ­lia. Se quiser, vocÃª pode cobrir o frango com cebolinha picada e sementes de gergelim. Sirva com arroz branco ou arroz japonÃªs e legumes cozidos como acompanhamento.', 3, '2019-11-02 22:19:01', 1, 15, '50', 0),
(48, 'Tori no Karaage', '<br><b>1</b>  -  Misture o caldo de gengibre com o shoyu. Um pedaÃ§o de gengibre de 3 centÃ­metros, quando ralado, deverÃ¡ render cerca de 2 colheres de sopa de caldo.<br><b>2</b>  -  .Corte o frango em pedaÃ§os de 3 centÃ­metros, e esfregue com o sal e a pimenta do reino.<br><b>3</b>  -  Acrescente o frango Ã  mistura de shoyu e caldo de gengibre, deixando marinar por 10 minutos.<br><b>4</b>  -  Escorra a marinada com uma peneira e passe o frango na farinha de trigo.<br><b>5</b>  -  AqueÃ§a o Ã³leo atÃ© 170 graus e frite o frango por aproximadamente 4 minutos. Se o frango tiver osso, frite por 7 a 8 minu', 3, '2019-11-02 22:27:55', 1, 15, '40', 0),
(49, 'Sukiyaki (carne com verduras refogadas)', '<br><b>1</b>  -  coloque a carne no freezer por cerca de 30 minutos ou atÃ© que esteja um pouco endurecida, para que possamos cortar fatias muito finas.<br><b>2</b>  -  limparemos as cebolinhas, deixando toda a parte do caule utilizÃ¡vel, cortaremos a parte bulbosa e as hastes com um comprimento de cerca de 5 centÃ­metros em cortes diagonais.<br><b>3</b>  -  Cozinhe o shiritaki em Ã¡gua por 1 minuto, escorra e corte ao meio. se usarmos macarrÃ£o, ferva-os por 2 minutos e escorra.<br><b>4</b>  -  coloque todos os ingredientes em uma tigela, aqui vocÃª deve observar a mÃ£o do artista na colocaÃ§Ã£o e nos cortes.<br><b>5</b>  -  em uma panela, misturaremos o molho de soja, mirin, caldo, glutamato e mel de arroz, deixe ferver, coloque-o em uma jarra para levÃ¡-lo Ã  mesa. e todos os ingredientes sobre a mesa,<br><b>6</b>  -  , o sukiyaki-nabe Ã© colocado no fogÃ£o, jÃ¡ que provavelmente nÃ£o temos esse recipiente, podemos substituÃ­-lo por um recipiente semelhante ou uma panela grossa de fundo.<br><b>7</b>  -   O sukiyaki-nabe Ã© um vaso com bordas nÃ£o muito altas e geralmente Ã© feito de ferro fundido e o nabe em geral sÃ£o recipientes de ferro fundido usados â€‹â€‹para oficiar Ã  mesa (nabemono). Uma vez que o recipiente no fogÃ£o deixamos aquecer por alguns minutos, isso dependerÃ¡ da espessura do recipiente usado.<br><b>8</b>  -  espalhe a tigela com sebo bovino ou Ã³leo vegetal. deixe o pedaÃ§o de sebo na tigela, se usado. para oficiar o prato, coloque os ingredientes na panela aos poucos; coloque um pouco de carne e deixe esfriar 1-2 minutos sem virar. <br><b>9</b>  -  adicione a cebolinha e a cebola e despeje metade da mistura de molho de soja sobre os ingredientes.<br><b>10</b>  -  coloque metade do macarrÃ£o, coalhada de soja, legumes, brotos de bambu e cogumelos e refogue com pauzinhos max. 4 minutos.<br><b>11</b>  -  os ovos quebram em tigelas individuais e mexem. as mordidas que sÃ£o capturadas sÃ£o espalhadas no ovo antes de comÃª-las.', 3, '2019-11-02 22:59:34', 2, 15, '60', 0),
(50, 'Tempura', '<br><b>1</b>  -  Retire as folhas verdes dos alhos franceses e lave-os.<br><b>2</b>  -  Depois de escorridos, corte-os Ã s rodelas de cerca de 1 cm.<br><b>3</b>  -  Lave, descasque, seque e corte em palitos finos as cenouras.<br><b>4</b>  -  Lave os cogumelos em Ã¡gua fria e abundante e retire-lhes a pele.<br><b>5</b>  -  Lave, seque e corte a beringela, sem a descascar, em rodelas de 0,5 cm. Misture a gema com a farinha e a Ã¡gua mineral.<br><b>6</b>  -  Deixe repousar tapada cerca de 15 minutos.<br><b>7</b>  -  Descasque as gambas, escaldando-as por um instante.<br><b>8</b>  -  Abra os mexilhÃµes ao vapor e retire as conchas. Lave, seque e corte os filetes em cubos de 3 cm.<br><b>9</b>  -  AqueÃ§a o Ã³leo atÃ© comeÃ§ar a fumegar.<br><b>10</b>  -  AqueÃ§a o rechaud da fondue.<br><b>11</b>  -  Leve o rechaud para a mesa e coloque em cima o recipiente da fondue com o azeite.<br><b>12</b>  -  Regule a temperatura de forma a que apenas fumegue ligeiramente. Distribua os ingredientes em travessas e leve os recipientes com o polme para a mesa.<br><b>13</b>  -  Para comer, espete com um garfo aquilo que mais lhe apetecer, mergulhe no polme e de seguida no Ã³leo atÃ© que fique estaladiÃ§o e dourado. Quando estiver pronto, retire, tempere com sal, pimenta, gengibre moÃ­do ou qualquer outro condimento.', 3, '2019-11-03 14:38:05', 2, 15, '45', 0),
(51, ' Yakisoba ', '<br><b>1</b>  -  Primeiramente cozinhe o sobÃ¡ do jeito indicado na embalagem.<br><b>2</b>  -  Como fazer sobÃ¡? Leve ao fogo uma panela com Ã¡gua e um pouco de sal e, quando ferver, coloque o macarrÃ£o sobÃ¡ e deixe cozinhar por aproximadamente 5 minutos. Depois escorra e mergulhe o sobÃ¡ cozinhado em Ã¡gua fria, para parar o cozimento e eliminar o excesso de amido.<br><b>3</b>  -  Enquanto isso prepare os restantes ingredientes: pique o tofu em pedaÃ§os e pique tambÃ©m a couve chinesa, a cenoura, o aipo e os champignon. Rale o gengibre finamente.<br><b>4</b>  -  Dica: Se vocÃª quiser pode incluir outros legumes nesta receita de yakisoba. Algumas sugestÃµes: broto de bambu, broto de feijÃ£o, cebola, pimentÃ£o, brÃ³colis, etc<br><b>5</b>  -  Leve ao fogo alto uma frigideira ou wok com o Ã³leo e junte a couve chinesa, a cenoura, o aipo, os champignon e o gengibre. Salteie os legumes atÃ© comeÃ§arem a ficar macios, junte um fio de shoyu e cozinhe por mais 2 minutos, mexendo de vez em quando.<br><b>6</b>  -  Para conseguir um yakisoba caldoso adicione o caldo de legumes nos legumes e a salsinha, baixe o fogo e deixe cozinhar por mais 2-3 minutos ou atÃ© os legumes ficarem macios. Dica: Para um gostinho ainda mais oriental use Ã³leo de gergelim ou Ã³leo de amendoim para saltear os legumes!<br><b>7</b>  -  Numa outra frigideira ou panela salteie os pedaÃ§os de tofu em um pouco de Ã³leo atÃ© ficarem dourados. Tempere a gosto com sal e pimenta do rein<br><b>8</b>  -  Adicione o tofu e o sobÃ¡ na frigideira dos legumes e misture bem. EstÃ¡ pronto a servir seu yakisoba de sobÃ¡! Delicie-se com esta receita vegetariana muito nutritiva, saborosa e perfeita para qualquer ocasiÃ£o do dia. Bom apetite', 3, '2019-11-03 18:30:41', 3, 15, '50', 0),
(52, 'Kanami Awayuki', '<br><b>1</b>  -  Dissolva a gelatina na Ã¡gua fria, leve a lume brando e ferva durante 3 minutos.<br><b>2</b>  -   Junte o aÃ§Ãºcar e deixe ferver durante mais alguns minutos atÃ© que comece a ficar viscoso<br><b>3</b>  -   Misture nas claras batidas em castelo as gemas e a baunilha. <br><b>4</b>  -  VÃ¡ misturando aos poucos o kanten ainda quente, batendo sempre. <br><b>5</b>  -  Leve novamente ao lume atÃ© as gemas cozerem. Retire e continue a bater atÃ© ficar bastante cremoso.<br><b>6</b>  -  Despeje num pirex que esteja dentro de um tabuleiro com Ã¡gua gelada. <br><b>7</b>  -  Coloque no congelador, deixe endurecer, corte em fatias e sirva gelado.', 3, '2019-11-03 18:39:58', 4, 15, '30', 0),
(53, 'FilÃ© de frango recheado', '<br><b>1</b>  -  temperar o frango e colocar uma fatia de presunto em cada filÃ© e dois pedaÃ§os de aspargo. <br><b>2</b>  -  enrolar e prender com um palito. refogar no azeite, colocar o vinho e um pouco de Ã¡gua. <br><b>3</b>  -  cozinhar em fogo brando atÃ© evaporar todo o lÃ­quido.', 3, '2019-11-03 18:54:23', 1, 14, '30', 0),
(54, 'Frango a Florentina', '<br><b>1</b>  -  leve uma panela ao fogo com Ã¡gua temperada de sal, uns grÃ£os de pimenta, a cebola com os cravinhos espetados, a cenoura descascada e a salsa.<br><b>2</b>  -   quando comeÃ§ar a ferver junte o frango partido em pedaÃ§os e deixe cozinhar em fogo brando atÃ© a carne estar bem cozinhada.<br><b>3</b>  -  entretanto coza, em panelas separadas os espinafres e as batatas. quando os espinafres estiverem cozidos, retire-os e deixe escorrer muito bem espremendo-os, se necessÃ¡rio.<br><b>4</b>  -  quando Ã s batatas assim que estiverem cozidas, reduza-as a purÃ© e junte um pouco de leite, para obter um purÃ© que nÃ£o fique muito lÃ­quido. <br><b>5</b>  -   rectifique de sal e tempere com um pouco de pimenta e noz moscada.<br><b>6</b>  -  assim que o frango estiver cozido, retire do caldo (que pode aproveitar para fazer uma canja ou arroz), deixe arrefecer e desfie-o.<br><b>7</b>  -  num prato que possa ir ao forno e Ã  mesa coloque o purÃ©, por cima deste o frango desfiado e por cima os espinafres bem escorridos.<br><b>8</b>  -  cubra com o bechamel e leve a forno quente atÃ© gratinar. <br><b>9</b>  -  sirva bem quentinho.', 3, '2019-11-03 19:14:46', 1, 14, '50', 0),
(55, 'Costeletas Ã¡ Italiana', '<br><b>1</b>  -  tempere as costeletas de porco com sal e pimenta e coloque-as de ambos os lados numa frigideira com o azeite.<br><b>2</b>  -  junte o vinho branco e deixe ferver sobre fogo alto atÃ© o vinho reduzir para metade. coloque as costeletas num tabuleiro untado com margarina.<br><b>3</b>  -  derreta um pouco de margarina, junte a farinha e deixe cozer, mexendo, cerca de 2 minutos. regue com o leite, tempere com sal, pimenta e noz moscada e deixe engrossar. adicione metade do queijo e deite sobre as costeletas.<br><b>4</b>  -  leve ao forno, previamente aquecido a 200Âºc, durante 15 minutos. polvilhe com o restante queijo, aumente a temperatura do forno e deixe gratinar.<br><b>5</b>  -  torre as fatias de pÃ£o de centeio, esfregue-as com o dente de alho cortado ao meio e por cima, disponha as costeletas e o molho.<br><b>6</b>  -  enfeite com salsa e acompanhe com salada e esparguete cozido.', 3, '2019-11-03 19:28:30', 2, 14, '50', 0),
(56, 'Campanelle com Legumes', '<br><b>1</b>  -  Refogue a cebola cortada em meias luas e os dentes de alho picados, <br><b>2</b>  -   junte o resto dos ingredientes (excepto a massa) e deixe cozer (deverÃ¡ cortar os pimentos em tiras finas, a courgete em fatias finas e o talo de aipo em pedaÃ§os pequenos, antes de juntar ao refogado), de modo a ficarem macios, mas rijos.<br><b>3</b>  -   Coza, escorra e passe a massa para a frigideira onde tem os legumes, tempere com sal e pimenta, regue com um fio de azeite, mexa cuidadosamente e sirva.', 3, '2019-11-03 19:41:27', 3, 14, '35', 0),
(57, 'Lasanha Ã  Bolonhesa', '<br><b>1</b>  -  Pique finamente os cogumelos, a cebola, o alho, a cenoura e o bacon.<br><b>2</b>  -  aloure - se tudo na margarina durante cerca de 10 minutos.<br><b>3</b>  -  Junte a carne picada e deixe alourar.Adicione a salsa picada a polpa de tomate, o vinho branco e o caldo de carne<br><b>4</b>  -  Deixe cozer em lume brando, atÃ© obter um molho espesso. Junte as natas e mexa.Tempere com sal e pimenta e deixe cozer  suavemente mais 10 minutos.<br><b>5</b>  -  Coza as folhas de lasanha 3 de cada vez durante 8 minutos.<br><b>6</b>  -  Coloque as folhas, lado a lado, sobre um pano de cozinha hÃºmido. <br><b>7</b>  -   Coloque num tabuleiro untado com margarina 3 folhas de lasanha, lado a lado.<br><b>8</b>  -   Regue primeiro com o molho bechamel e, depois com o molho de carne. <br><b>9</b>  -  Polvilhe com o queijo ralado. Repita as operaÃ§Ãµes e termine com o molho de carne.<br><b>10</b>  -   Polvilhe com mais queijo ralado e margarina em nozinhas.<br><b>11</b>  -  Leve a gratinar em forno moderadamente quente durante cerca de 45 minutos.', 3, '2019-11-03 19:56:55', 3, 14, '60', 0),
(58, 'Torta de Pera', '<br><b>1</b>  -  misturar a farinha com o aÃ§Ãºcar, a baunilha, o sal, as nozes, a manteiga e a Ã¡gua. <br><b>2</b>  -   juntar tudo com a mÃ£o formando uma bola de massa. deixar descansar por 30 minutos dentro da geladeira.<br><b>3</b>  -   estender a massa com a mÃ£o numa fÃ´rma de abrir untada, deixando uns dois centÃ­metros de borda. furar com um garfo e assar em forno mÃ©dio. <br><b>4</b>  -   retirar do forno, colocar as pÃªras em fatias e cobrir com a calda gelatinada. levar Ã  geladeira atÃ© endurecer. rechear.<br><b>5</b>  -   retirar do forno, colocar as pÃªras em fatias e cobrir com a calda gelatinada. levar Ã  geladeira atÃ© endurecer. rechear<br><b>6</b>  -  RECHEIO:<br><b>7</b>  -  cozinhar as pÃªras com o Ã¡Ã§ucar, a Ã¡gua, o vinho e a canela. retirar as frutas quando estivrem cozidas. <br><b>8</b>  -  colocar 5 colheres de Ã¡gua fria na gelatina em pÃ³, formando uma pasta. jogar a calda quente na gelatina, dissolvendo-a completamente. reservar.', 3, '2019-11-03 20:11:58', 4, 14, '50', 0),
(59, 'Scroccafusii', '<br><b>1</b>  -  bater bem os ovos com 370 gramas de aÃ§Ãºcar. <br><b>2</b>  -  juntar o azeite, o licor, a casca do limÃ£o ralada e a farinha e misturar atÃ© obter uma massa firme. <br><b>3</b>  -  com a palma da mÃ£o fazer bolinhas do tamanho de uma noz e colocar numa assadeira untada com manteiga.<br><b>4</b>  -   polvilhar com o aÃ§Ãºcar restante e assar por 20 minutos, em forno preaquecido a 150 graus.', 3, '2019-11-03 20:17:18', 4, 14, '40', 0),
(60, 'Canard Ã  L\'orange', '<br><b>1</b>  -  PrÃ©-aqueÃ§a o forno a 200 graus C.<br><b>2</b>  -  Corte a casca de 4 laranjas em tiras. Ferva delicadamente em Ã¡gua por 20 minutos. Escorra.<br><b>3</b>  -  Adicione uma pitada de sal e pimenta dentro do pato e um terÃ§o das cascas de laranja.<br><b>4</b>  -  Asse no forno por 15 minutos. Reduza para 175 C. Gire o pato e asse novamente por 30 minutos. Vire o pato novamente. Asse por 20 minutos. Adicione uma pitada de sal e vire uma Ãºltima vez. Asse por 15 minutos.<br><b>5</b>  -  Ferva o vinagre e o aÃ§Ãºcar em fogo alto por 5 minutos. Retire do fogo. Adicione metade do caldo de pato. Cozinhe em fogo baixo por 1 minuto enquanto mistura. <br><b>6</b>  -  Adicione o restante do caldo, a porta e as cascas de laranja. Cozinhe em fogo baixo por 4 minutos. Despeje o licor de laranja.<br><b>7</b>  -  Retire a gordura do prato de pato.<br><b>8</b>  -  Coloque um pouco de manteiga no molho antes de servir. Despeje o molho sobre o pato. Decore com quartos de laranja.', 3, '2019-11-07 01:05:40', 1, 13, '50', 0),
(62, 'Anchovy Pizza (PissaladiÃ¨re)', '<br><b>1</b>  -  AqueÃ§a a manteiga em uma frigideira grande. Adicione as cebolas e um pouco de sal e pimenta e cozinhe em fogo baixo por cerca de 20 minutos, mexendo de vez em quando, atÃ© caramelizar levemente<br><b>2</b>  -   Ã‰ importante cozinhar as cebolas lentamente, pois caso contrÃ¡rio elas podem queimar e ter um sabor desagradÃ¡vel. Deixe esfriar um pouco.<br><b>3</b>  -  PrÃ©-aqueÃ§a o forno a 190 Â° C e pincele levemente uma grande bandeja quadrada ou retangular com um pouco de Ã³leo.<br><b>4</b>  -  Coloque a massa na bandeja e use as mÃ£os para achatÃ¡-la em um quadrado ou retÃ¢ngulo Ã¡spero com cerca de 5 mm de espessura. Pincele a parte superior da massa com um pouco mais de Ã³leo.<br><b>5</b>  -  Espalhe a cebola cozida por cima, deixando uma borda de cerca de 2 cm nas bordas. FaÃ§a as anchovas em linhas com cerca de 5 cm de distÃ¢ncia, indo na diagonal pela cebola. FaÃ§a mais linhas de anchovas cruzando essas linhas, criando um padrÃ£o de diamante.<br><b>6</b>  -   Coloque um raminho de azeitona e tomilho em cada diamante. <br><b>7</b>  -   Tempere o pissaladiÃ¨re com pimenta.<br><b>8</b>  -  Asse no forno por cerca de 15 minutos ou atÃ© a base ficar dourada e crocante.<br><b>9</b>  -   Pincele as bordas do pÃ£o com um pouco mais de azeite, depois fatie e sirva. (Como alternativa, deixe o pissaladiÃ¨re esfriar atÃ© a temperatura ambiente antes de servir.)', 3, '2019-11-07 01:38:44', 3, 13, '30', 0),
(63, 'Torta Con Pere e Cioccolato', '<br><b>1</b>  -  Derreta o chocolate em banho-maria e adicione 75g de manteiga e cacau. Bata.<br><b>2</b>  -  Separe as claras das gemas e bata as gemas com 50g de aÃ§Ãºcar.<br><b>3</b>  -  PrÃ©-aqueÃ§a o forno a 180 Â° C (th.6).<br><b>4</b>  -  Bata as claras com o aÃ§Ãºcar restante e adicione as gemas batidas. Despeje as castanhas esfareladas, misture e adicione o chocolate derretido Ã  preparaÃ§Ã£o.<br><b>5</b>  -  Unte com manteiga um molde com 20 cm de diÃ¢metro, despeje a mistura e asse por 20 minutos.<br><b>6</b>  -  Prepare o creme: em uma panela, adicione o creme de leite e deixe ferver em fogo mÃ©dio. Retire do gÃ¡s e adicione o chocolate.<br><b>7</b>  -  Misture bem, despeje o creme sobre o bolo e deixe esfriar.<br><b>8</b>  -  descasca as peras, corta-as em 2 e retira as sementes.<br><b>9</b>  -  Deixe ferver 30cl de Ã¡gua, aÃ§Ãºcar, suco de limÃ£o e baunilha derretida.<br><b>10</b>  -  Coloque as peras na calda, cubra e cozinhe em fogo baixo por 10 minutos. Mantenha em local fresco.<br><b>11</b>  -  Pique as meias peras e arrume-as em forma de roseta no creme. Esmalte de gelÃ©ia de pÃªra caramelizada e decore com 3 marrons glacÃ©s.', 3, '2020-10-17 11:24:27', 4, 13, '40', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `receita_favorita`
--

CREATE TABLE `receita_favorita` (
  `id` int(11) NOT NULL,
  `receita` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `receita_favorita`
--

INSERT INTO `receita_favorita` (`id`, `receita`, `usuario`, `timestamp`) VALUES
(3, 2, 3, '2019-10-23 01:08:45'),
(5, 4, 3, '2019-10-23 01:15:24'),
(7, 3, 1, '2019-10-23 01:58:54'),
(8, 1, 1, '2019-10-23 10:20:25'),
(10, 5, 1, '2019-10-23 22:09:45'),
(11, 7, 1, '2019-10-24 22:10:37'),
(13, 11, 6, '2019-10-24 23:02:36'),
(17, 16, 1, '2019-10-26 00:48:53'),
(18, 24, 1, '2019-10-29 14:08:05'),
(19, 24, 9, '2019-10-30 22:01:25'),
(20, 48, 1, '2019-11-02 22:38:19'),
(21, 48, 3, '2019-11-02 23:10:47'),
(24, 19, 3, '2019-11-07 23:22:05'),
(25, 8, 11, '2019-11-07 23:28:20'),
(26, 12, 11, '2019-11-07 23:33:56'),
(27, 8, 1, '2019-11-07 23:51:04'),
(28, 5, 3, '2019-11-08 00:47:42'),
(29, 19, 1, '2019-11-22 23:33:07'),
(31, 63, 3, '2020-03-16 18:32:42');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `endpoint` text DEFAULT NULL,
  `auth` text DEFAULT NULL,
  `p256dh` text DEFAULT NULL,
  `usuario` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subscribers`
--

INSERT INTO `subscribers` (`id`, `endpoint`, `auth`, `p256dh`, `usuario`, `status`) VALUES
(1, 'https://fcm.googleapis.com/fcm/send/dWOmpjVA44Q:APA91bGK9ARS4uwVwwyK2rccWe9qJOo35MdgaXb-hF2fHz4Y7fJcMgBwDfiMJ6odbJbjuYipu0wCWhxRQS9u6WbKk59IDodUNT8Mwcdfpn5ybnf4OtVxYtn6w9llS_jPK8BzGsYI1z39', 'P75allqOs0IbbPg7vwqLMQ==', 'BJcEKjrRTqE30RbfW/jO/CMsoYFsVBeOX1pgQXdFipoyge1dt3nizQJbww2AJITpO0aDUa2/r/6B+9sTaPCLmMg=', 0, 1),
(2, 'https://fcm.googleapis.com/fcm/send/cgC960H0DBo:APA91bHy8iuGag8ZMiIaKhaR1xfQiOnwFSoqqAp9Ms0M4SHScJCcI4e0j46hLa5UzsdeLA_fSpkmI4NzrI7N9lS5nudND3yxNRppKrp0kbeRaNSzi4p1GGLM-hcQmVoIsSPR9aaUa5QG', '5wJeVuZ+vAW1lZmHUwrUlA==', 'BN3J62AorvX6q2hBPXyBAK8DIp+WjHjmgt1cIH8+oLl11Fd3unYFGlu9CTseYgZOIoXlufZ/PRIQGjUDK4NQUkY=', 0, 1),
(3, 'https://fcm.googleapis.com/fcm/send/dUehZXtCIW4:APA91bHEDNft-kmoH7CqMRGtDe5t958KapWgxHXMDwZeOX7MnPjh_4yD0NQOuXREhTx4dWuZJZ6SxxF-9JxtCYUGXvRPpCj6giVRNWMySZzbmlUv1iuJ0OjSUjJfQjSt3CnvHT0IweHK', 'gSQaf1xuh8gjuKtEjYoLCw==', 'BEfEO7xtg2af3HM25ebaZ+D9O4GA9t2/He3sbSYOgdgCzulUG1RotIbe9ROBGrmfaNkLQaS46oD9ZQVlGdPYqOc=', 0, 1),
(4, 'https://fcm.googleapis.com/fcm/send/c5FKV2giiq4:APA91bG3WM34-O4ip3Bi6D80qha6pA5QoWQb7mCfdKFVNJTUpKz0qPOvCltM1VW7OnA5AZhPicXWG_UhgHcGZ7s8jBcfH2lvMdj8MQrUD_mk9BDahkJx1TaVFr4e4Y7IyjaKMHdvT98M', 'CeQn/Ct9r3Ywx6q6nVeT2w==', 'BJKXh04ZpN8pnW27L2DW5ALxEFVj7fc1RwunPHiEX6riGKlEobvvmwIYQwN5iVDbj1jOBPfMLAnQA11dwribjuk=', 0, 1),
(5, 'https://fcm.googleapis.com/fcm/send/dNKhRX-hoto:APA91bFIa7uQxaWbyQFu9AS6w7AFJqZgOgk0lui8DiT_A_Y0RDmX-p8ZUGYRTAzUg9g61O-T6P7bX6mY0bwCVRnMtVV--ZYIO67qM_KsE8ejbGJXUF1t95eIrsSasdAeq_CgdoVgTtMj', 'RfBzQIKLChOZ3YnohTU4TA==', 'BHF69L8MoTfe8CiVQkUNRV+ZI4aHU1mnbEinEpdokzdNtkaHAL6hUyDOwfJf8i5aIpVPGVHjDGPs7+g+JrQsVZo=', 0, 1),
(6, 'https://fcm.googleapis.com/fcm/send/dVp9KEyl4Hs:APA91bFLvwLFWN2dvOEm_i6W7NT_V94rv6iBxl5i8wj2d25Ou3vEdoqWFtV4vbM15eIxz_q81ywY_BPG6kOX40Cq8Dc6WzOWjsRXqtHHQlayBGCZgH0j5Yo9HuZv7pkPNZHT2xDrtk46', 'NQLauguNMrms2xNn9FZxkQ==', 'BEWT9bPj+/OFrBR6WYuen1ApwDW8mZ8YANkKqn/wkos0/09mXlOExCOjP9k4mqFSdhDIpD0xVegjmkvC1iXZM/A=', 55, 1),
(7, 'https://fcm.googleapis.com/fcm/send/dwyqhnretZs:APA91bGo2p-DNewrNpvQF6FDcUHz_II7UyY4YJxDIi9xcTNgiA5BgMQamUHlduRauKPFpVcy7SnBqLNpxqakeH2Y9otY-XXOrZHYbfQuwNDQDGRZO9hsXa4HVzV9A7niyw6qeCuei3Hn', 'Mu3gOXlygmpobTidGuJy2Q==', 'BMl37rb5zWAwRdaGI+lZ81NTKzU3BwFXGgCfQaQebEdsEnU30tn/DRG1WoVxxTe6f60oJvlpW5Ju4dE8cTFZrjg=', 55, 1),
(8, 'https://fcm.googleapis.com/fcm/send/feVU8i5s5Vg:APA91bEdNgKV9LY-YTDHjYuVK_fNvK1q4DGJCt5ZGYlwE_eYBxZAqMqLQVoSLlF0c2guCtkA-7kLvbbBmcJb1RLKC2kHC6VViL2gt1TYLhgzYyym0EKUBXj-FgINycaYJwYGxu2RL1xI', 'qGhnOsnVKp9J+fDBfyJ5Qw==', 'BPa53EDmJCtoBS44h/6U4mEj2vvqBGKYKyovNSqxnO6EmND1YDhhBpNAyhrTDSVKiA7yjCs8+1soRMeX97QMRVU=', 55, 1),
(9, 'https://fcm.googleapis.com/fcm/send/dKqyCsNpiy8:APA91bGtjYaQPrL91eBWcjl8esiQc5INkxSf4ukCNiJg5s7SWmD3WAIPClSfkk1jKSkxcjR-SCjQ6ICMv3_wJzmoTaR-9h5NEU3-1tjCwFv6e-yONBX8V2KqZB-Af5da_0THLonqKgl1', 'Ny8r+31GlqLwrwjXW6tlPQ==', 'BIJeSEIF3Ht3RU1ALpiA2HuqIrXmCBxDsH+tdIt6qACgQ3o+aZd4HA3Wna/SqzzjCq8MrQfLkTpDhu01ZfOCctA=', 0, 1),
(10, 'https://fcm.googleapis.com/fcm/send/fu34rTnLBhs:APA91bHClPtQIvEn2fNd8gzXD1EJ1C502hnyB_8Yw_b6XWBAyOrssKv9yHW0kxKdWExJeRdwOm0ieFdCzPZF41w0KF3KVqZwfUZLepqOQJR_rQOQIb0Yk_oCXFI-7qb9hJzUWmOoaA28', 'DNz80vEt9xTTQTDmaq1E1A==', 'BIHNA3+vvPJf0hTixIQTxljV6RbtcgyaLIYWwyDtVTfk3SmyugL8zrDfKkA+ZM0zGcm5dpLXhr+tG7LtVtmzBDo=', 57, 1),
(11, 'https://fcm.googleapis.com/fcm/send/fAtUrr522Qc:APA91bFQb8o7gCMlJiJAYtQdERZz4tCk0Z2sysiEdif4d0Q4XyqHP_5l5cCYhVGs5RyGJnQCXiS3MARkbJnptIPqGc9_Mp3ZjR35KfKYhpRh4Bl6CoGLGIsjRRf4Ci-bVwBUoopj1n_l', 'pr3znlWbslZl4r6wwTo2Bg==', 'BPwtVuI6b+UCozj65fTcPjtQVrp0HO7wfrZf0AKbPkj3eUeBUyjTweMjZ+hfJmsOhCP9b37sCtyQXPWJOhLdLFk=', 57, 1),
(12, 'https://fcm.googleapis.com/fcm/send/eMgfjwICGIQ:APA91bFJbTpqRWDEYtwecmjyrAn_xhzdVR9o6qyJUFyb0y0lq1XD-B7MtjXnd82TXFylPMM1exCkm_FaePV_gEMBiATJTPR5FWeTiAGDEY2IINGnJwWpB57YqcUBMxRK1FMQGvKw3tF2', 'rvURRYpZK9c2kTaJ9TP5sg==', 'BBOQBpNGNR6ojHWZLu52vXm0gCeC2KzFA+qQZYq3kFHi8pvHtERD4e54Qh2WSBcpP97DXrmF3ICiSQhrKfldA8I=', 0, 1),
(13, 'https://fcm.googleapis.com/fcm/send/du40PNuK9DI:APA91bGoWMkXHTgcVQvCspT_qBIkraW8j6W6GxsXq2QUbzO9InCJpPziIyIaaJt2HNTaiNvOEQtF2NPgR5myKS0eXP2rNHGHaB6jklgqm7GOxKuz2wD3CohgZORropJJX3TWhNCTAwUe', 'rcJWgbFa/5/njwtMyPTkNw==', 'BK9Ci7DsdgAC+F+NmPIXgvgVcrpClCWaHIUHcqfONqGs32pzMRG6PRMP+YER9s8AMYWcXtoz0fCh2ikDNhJjKdE=', 0, 1),
(14, 'https://fcm.googleapis.com/fcm/send/fAE0Ai9DNvs:APA91bGd6hY0UX0Wb0olGO32kyvIzgpRWfMJ_r7BiK1hz0HD6DLRwbWBmmA9oNH9Ydwn1Ar5KA0X8gAA8Ehz3QOWMOjPgzy2FZ5o5kU9RVeVR44Kgtzp9ns5g837SoSIIGhiO-gwFMeB', 'gWeIn5DMBCu6eyTE1u7gSg==', 'BPIMkrAJJt9A8+uP84ZS+Jxg9Ocv8et6AL9ikeAyu0fnSDuDvqJMM2cVG/tONBu0izNvhw3le9wHn4RgI4TBs24=', 0, 1),
(15, 'https://fcm.googleapis.com/fcm/send/f3iRCFmVf7A:APA91bEsd_v9kgCa3tK7D5vxNhkXDN-x6o1bJblK9x1yXr7bylRe_d8xHsoSunnpgciuqyV0mBeM30gYRzh9hFPvdQtRSoTmOueeEH9JKdWuhuoeyMvJtckRhmGQWFMX4j8ypIqxBVlP', 'Jl5sRZ8mS2Hb3J+SAd4+aA==', 'BOK7EUcO58+ltzWrXtLRynvJvbatfWp6C1SzDGrOM2kWrS1EiO1KNVmCVIu+UyHkyJz6kDQaQqFK2ljqcEnR2N0=', 1, 1),
(16, 'https://fcm.googleapis.com/fcm/send/eWnaCGsbWLQ:APA91bE9C_m6WBXHeygEDAHMy0QKlIQYIMFhATf5WuTbdFJC3nnJSYMSWykrdWLxh5PiUVqC1vsIk_tMIurHXhOnzbcELPLKuA7SIo73kOA4E9ecswMlk_6etgOyYGrYUoyHDedGi-W2', '2rWKRWL1RjlH+DHpk2eMzg==', 'BEKBzyldbHSMBHvdDrRQI+GMAGV3fI1gzsaa4i/gOZ9m0bgNSt66f7NnzssTrOQimixE6jNUHon7LVNl18jJJVQ=', 0, 1),
(17, 'https://fcm.googleapis.com/fcm/send/d4d4xu8qP3U:APA91bEOAuzMWyKY_Z8b-RRmfy1qSEAx3KIv4bqm1v0y3gq5h8aUOJuEm4vVyLeWcz6aZm5VxANfCZtODa5t8UH642_EwRSpJM1GlNSbl5U5klHVPPKPW0B_PrNjTnUfrRgfJYkx0Ep4', 'AK+R3OmIPwtijCXMVwi6qw==', 'BHAgRGwZLudAYa/tNY9S7wxvlzrYsxD+QrlCrtNln6dnFeE0BNEtOTzfAz1ESqAcXDxAVcVfDMeJ24c03udvL5w=', 1, 0),
(18, 'https://fcm.googleapis.com/fcm/send/dQRsNEtyGi0:APA91bHFYyYNM-OH-d8CKFPZHMtAlWrYsNxiUd0JFjaUft24D61yVBCJWLK8KzmEOCtuWrhHhJgHEOiLVUZMA9r7NFC3118d65IWMyE_IDfzfozJBl7ZKgpTUVfNvhaw__hXBcfcoL0T', 'eRMiGYj5NYMUk6wfkCTQtQ==', 'BNiGY88fV6STpNgMJN7a3taAeFzMSAqQ8dFDnuhZmUc0FJay0G7kfrwNjb1nuLsA6dkBzjEQp4KoiYoZpEUbg/I=', 1, 1),
(19, 'https://fcm.googleapis.com/fcm/send/dkZJG2V73TU:APA91bHZh3NMLn0NcZNVyo6_jEBT9OI_tMmc7TWr8dl3ldUrnLT1wYy1UJYM88RVix-T8gMc9wCAP-EackSzQ2A0hQvxjExlkDY-iln6Y4tl9oKQxh7hHnEu5JjpVZZy056al-q9zvZB', '4CqkMXJ80DS/4CvsCyh5/A==', 'BJS3lSWVVEWYeT7bSJVWJp/q7EEbcv5hdy/6TUy9/N+bqS7bdAWOKckUt/FH6i4Gje1SIS/snh4PQpn5kefjpg8=', 4, 1),
(20, 'https://fcm.googleapis.com/fcm/send/dW4kbPpThMA:APA91bFP1m5VPiyj40mf9bdpPe1SBP5G0iz4cTtHxzomSSlW7E4-rmPew28C-s2mFsOjmQu3452OpcTEypXJP80FN-XOa6Ddgs_TkODtKn6l5E94bEGmyr_tMyXfZadDkUgHC3GMAbIJ', 'RVm+FyA1XfhbAf6YJXtpjQ==', 'BAbPTrgeHGCDT04aXubhVf6iujc2F/U9yY5SpAwfMT0bHnzCmYRFDZcA3cp7cIQ/uDsE2dZsBsYV18Zjq4D/2wY=', 2, 1),
(21, 'https://fcm.googleapis.com/fcm/send/eNSkBLV9w2M:APA91bEJF61IO27Z0QE5V73zSJyuMEpED2Q1Jnvru4TTdqEgFM3see0ja4fW3MBvtx3z4Uj1_cb7P5fRYKmh5NjEP5PP6TnMNl3earDh6Vm45Sear--PVw38QKW6KtuBzOP5vvyL7-z_', 'pBS1LGkiEUyzMMRUgljKWw==', 'BGHQ56qtkiI3lmk6tCmQLtKKBAL3/U2WOh72THEQHSJ9ry+/kbt38fOQZ7NMPOtgo2gpnDBqk4GCcQ5Hf81nRgE=', 3, 0),
(23, 'https://fcm.googleapis.com/fcm/send/fzZhRj2qqAk:APA91bGgYW84fj-vgY02Cn80zaKw7Q8XLaimef078_3QtQlLuhOQvGpGom6TXfjEmj3zv6tjNNb3zkTDuaOPmJnzzrfLUpaqySelZE1xIO_Qvrz9gxmfvRztbiUhuTIQM5dzkhYBmKVI', '9IUnJOu1Wg651zcyUnlg1w==', 'BJwLMIE9wnv5YHDE+FNH81bUOH7OB0R7TqnvIG1bmaOIUf/4jcO9UqLhrlQT1aqMY6GFmdxpbjGnI1TXPn4+a9k=', 1, 1),
(22, 'https://fcm.googleapis.com/fcm/send/eAqZZnXG27Q:APA91bEbkaMZN3T1Ko0i_1-rBOc1CBP0s7XwtvrNa4TEZjAT9A1EXwamLv-DR7QEufSqQBscBhFYEkxdSjYBKi7MbKDKUkuK5FewyKKMV-MUrzt-7tYWRm26czyLnFQ6E7xrCT5yErCs', 'JJnX72Vf6IJc9LWrW5IkxA==', 'BIBNfnDXZMWVca9nyHviwv8zLuI8OsbxLHci3lwPQM5JdweXpNC+6tL1g8z61kiVb2JICoHpjyhZ0pm6KmdZclE=', 5, 1),
(24, 'https://fcm.googleapis.com/fcm/send/dt-D72E82wg:APA91bEtXhwexwTEu1FYuAg4pBzDlaxENm5AGBj5-4J-h8V_dZ-VeOgQ0W8ElLTjwJGsROqeM1Nf4kzATibBOXltcp_eWlfcrUIC618JfjeJTEE4KFUUBDaSLriXSY-JopwSLdTYtGmV', 'GQRHl9AfxZ2froZLMJpl5Q==', 'BJNfeGJm9mOt/8T8g854hEBbL7F8/oEAfmm9FQXMWZRrdxDZF0Fe6VMGVRxT8FxD+9S/qoj/T0HBkp35QGa0W1w=', 1, 1),
(25, 'https://fcm.googleapis.com/fcm/send/e952Ckf5YHw:APA91bF3qTfdtfjI49_b1lb2WuiPTMOhQWRDqSqZa-5JWhd0ipYn9BOlzbzn8xGj-Q9BawpJh1R_eV5AVvoWzTcv1y5ReW8D6UnrUSFfe2wOyjGNARzIvaUn_Q4z1RGwkkyKJXwBPQLl', 'AKhThUbV5yORcQY/SizPwQ==', 'BG1WRJhi4j/Qkk4LV2+sUhNL2IxMITKlDVVm8fm1AX4lE7BQBQL4q/Fe9yiEFkKRCLvFj0NvL+ZDDq8cYqNNwOc=', 1, 0),
(29, 'https://fcm.googleapis.com/fcm/send/fjQgIcD7jfY:APA91bFccdVwQ66EMd3zHjxK04ngtAMfrwg7jO2exLk7BFUgVJ2cbW_KVl-0XAYmL_8pwuu7wnOwmFO8hKiuWu6w03MVBw4aLRKdDzOucfwq_ZkqSRLHBCeId7NjV4srxDm5LfBUVQE0', 'JVjDCSyngSTxlrmKHz8Acg==', 'BFSrOCzTrQh9R0uzENaHrDbD+N+ckgLAThYjAtg6jmwNgmc15NefvurMvxvHTLybYi/sHNHVMSJr2+4IsxnbZd8=', 0, 1),
(26, 'https://fcm.googleapis.com/fcm/send/erghsAZ5djU:APA91bG6YQ0MFJEvomEssG4ayrrXYP3k-VMEExDfx0XRRKoGLMKFLuF2EKrT6iqmgzU83VMZT-zMQRNKNE80BoUyqzsAl0GMQnZng8XL0vTkIXjklJt4ezu6Jwjc5SbHBRc06GBS_Ao_', 'CAyzPCVCtJyu/boPHvrVsg==', 'BEg/b2Fzp+4TU4rAll9J4m0AoXrkGpTozGzAeq5sFTcMPM+RZkHo4cnb7hII6vdN3KpEBIoZACmMLsct9T63bLk=', 0, 1),
(27, 'https://fcm.googleapis.com/fcm/send/fKw-plnUmQ4:APA91bEcyeYmQZoo19TLM6rCeosek_3hWzVFaUvGjv9bMZ7nHLK_20Vw6WZiq6cPUT624uN5QK8-xbkPt28Jv5SXr26bpX26y83Ozx7Hg03iKlKjfWxigNS18hWAdZKgH-bIS9p3ywn2', '9SePUU8jQAr9ErPzx/3GwQ==', 'BOFCZaKakyL6aGZHeSHfuDpAQAOd//0S+ML9WWKxttyDRaJR1hnYyiQVUU13m7kBu17gdMVAkJIAaQpqsxiidUk=', 0, 1),
(28, 'https://fcm.googleapis.com/fcm/send/cuDiiJiA2-I:APA91bGPksnsdSBfu4KO_cZ3wfMVF9tHHJ8qH6agSqO8tKvdfSZ2ltP4HLIJSwRwemnG-IYovwpMeCE7westHvlyKAJig4o4_RNZHF4OhHoAR88AOtvrE2LELsOW2cDBdh4oPYHmaQtD', 'pC8HCqcEdE6jRaDwWfYBqw==', 'BNT5R6/9HVmU+7nT2CU10GT9Z8mkdrlJV+BLfMGs/kgKgKuSbZCkh/QrMYWZAfCcCzz3++KNRMcviDY9xlDnugU=', 0, 1),
(30, 'https://fcm.googleapis.com/fcm/send/c9PGQFfqaKs:APA91bGBR8nAKlRGpjh9M-mx--ZlNZpns91CPNP9Uuw131OAE6Y1NayvsNJtXZbzG-3-E-28qAWt09FmwC8fTM4lEasCgUoGlcLzswNfbltHHNrKg5feLm6f0k2iiDdawrwy-lg3greK', '3A61qfnsGjlPc4KfldCD/w==', 'BNwdA99XNWmYBj4KglRFyL68cuGjBJnvn7maKffVyFkNtFQTpktGmF7IsG1vXB7TZD8D0Pr+NfIZ4XqDxbaMQa8=', 0, 1),
(31, 'https://fcm.googleapis.com/fcm/send/fJkphLJf9F0:APA91bFA7WOQK2fy8xH_RXUVF-4tiRfPDlDWmD5F-a3GG4_RJagVhkGepmkwpXgCesKN832XrCkWxarBOFkh5IIt2GvTubCHgJZX_Ed4hsAFYCE-vTSq45bGhDS9K9QHxcRhs8Nc2mjk', 'N3bIoDHGCy2SDFHU7cxKCg==', 'BPq+PZ6RegfAX64DgoGo9xnnM0WPLrVfjtFo0kigXPAY4t9xnxyl2GVmNhgjFSMFedsQgzGsA62VW5vl8Aixl2c=', 1, 1),
(32, 'https://fcm.googleapis.com/fcm/send/ckdtI0WcAHk:APA91bEtZsZBnBX4aoCsvYP2B2ewvtXdtJ8MF0EnVlfz9MDi0pUlmIMzGAidm7hImE9ePhiSKH2WQh9b_-DVBqNlMJiHTbg8csKvrA0e3v8LkosQiBNJOdLBQCNCEAsdW-t0l6Q33xyA', 'fti3O48EnFtqnAkB0ulnsw==', 'BAnr6by/0N/10fHSSTQ4tTOZR50TG1uZepUTEdcEcQARApSygEMNOo4HMDjWRu0pEGVpWrT2TDE3fykj9U41ew4=', 0, 1),
(33, 'https://fcm.googleapis.com/fcm/send/fib4rJvsu1g:APA91bFGU9wlYC5Zd8Olydgepp2XHf_muBakDyZEAcLeZsD1nJkNdsb6D-ZPzQ9-UaTQa3T7R23JmjkxcfYvcf3vbPhaeKILDPJPmlzNAVMrgIRsfp_jAWpjYGDmc-I8b6ZU8eTwhkfi', '/aQSVWQMSis9u/kUUXIKQA==', 'BCm3zp/m8bWZmLOApJ3Ldy/P/EHBqH/QO8W4Nwm+ytaEH7zWYsHubcWjOwyCrB4uI8Twswnz6aMrGssaUpEgyjk=', 0, 1),
(34, 'https://fcm.googleapis.com/fcm/send/eRno8-YUjAY:APA91bFwDX_5j2daIjHPSakmzZjqVVCTR0uvyKP1jOumt2zQidt0WZzizM94BRoDPELKssrT2nmi9r4vOOmS3AmU73J7P1fts6TbT91Ro4QSx7MNkct4LiOvbaCph882HR1cNLTnmIqU', 'jlqozSNsSyqnUI0McEogDA==', 'BKvg0Hx8Cc4KvSokgCKcMWn6NFA2NVoE0Dqr8bETlLsU4HXLt/wjPwD2CEdeWQI1KJ4NGfSHAIf1wch1yAoym78=', 0, 1),
(35, 'https://fcm.googleapis.com/fcm/send/dCsYQpgLq-I:APA91bHM8HWWifigixSl1BksaaEjVmFA44Bn-lcm6xSCvdbMBOPf9Ux3wu21m6S4wK3toOi9xIdpXcSDAZouL062pBBQftX4aEMe8_b4OJ5voRs4gUtznTWHLpNjMqacKtwSxbXQVcyb', '4IKHjkkGDdV1BCJV31BjAA==', 'BJHXzJ8wNCUFG85Z1thT9mdaAyphCAlLPwuv9ATcVoDDO5ZrikyfDt0CsmSE6IQTyh2K9dORNqLX7SkKPoNOg0s=', 0, 1),
(36, 'https://fcm.googleapis.com/fcm/send/dCsYQpgLq-I:APA91bHM8HWWifigixSl1BksaaEjVmFA44Bn-lcm6xSCvdbMBOPf9Ux3wu21m6S4wK3toOi9xIdpXcSDAZouL062pBBQftX4aEMe8_b4OJ5voRs4gUtznTWHLpNjMqacKtwSxbXQVcyb', '4IKHjkkGDdV1BCJV31BjAA==', 'BJHXzJ8wNCUFG85Z1thT9mdaAyphCAlLPwuv9ATcVoDDO5ZrikyfDt0CsmSE6IQTyh2K9dORNqLX7SkKPoNOg0s=', 0, 1),
(37, 'https://fcm.googleapis.com/fcm/send/cpTMcPXSVmA:APA91bEl7yfKLbxpJU1OPQvviLq_vb3B1STWUr4OHt8bt1P0r2W_lWeq_Ohr1tjKoQVOE47oEr37yLIN8WU394ZHL8_rST29yzOs1fTuSbVmqFtO-OqAZaAriVvNzackzJKCwooAcZE_', '1OZe5Bpcnv5zTxmn7q96Vw==', 'BGawZCwP7gqUqrwH3mtPemBIW6HMUONhvzCQZp4/KkrK/sl/0FCRoPshZTZBXsQEo7EEcZF3W44m0rju5o9hVW0=', 1, 1),
(38, 'https://fcm.googleapis.com/fcm/send/cPv4eAdDAHk:APA91bEKZTnUxKaMpIwakkz2urNTRQGOf7wYwRWSsDuUeQ3yZ3ztVj86lCEYxbu24btMDgKX9q_Gr56zNhEnOE3NPnOU3ZGchMpUCYrIuJ48rhtU0GEwm5M_tmt19s_vUoJT7-simUfZ', 'naovOunLGnIUhNpu7J1g+w==', 'BAbNRikEUKEGnOaqsOVO4SW4AOfnDzuusjj9fVU8crCUdmHYD/02ZuZHOzF5r1/xJbjgSpCMXn/8NPwOvFLJdyI=', 0, 1),
(39, 'https://fcm.googleapis.com/fcm/send/dDeIvea5edg:APA91bH29I5a4uGfps6sZ2e1RvDbSoOJvlGGleHPnpmjGtbE98AGsDS82oXYm6xWg9xbM_bYrkQHMU3oDw3irWgUokw0ZGyHWxxI7GsndiZ-_rzSaW5yHSgC6QG1kHlDOsMtx6ghxVjd', 'VSAxlUkUwYT/euDLrfQo6Q==', 'BDzpr+h1jPF8Sj/m95RgfiBS0l1fetDpTI9DGoD+49jK7iDKm0WfKc8hxmCwK+E4unzbefPLnme39OOWoEefvuo=', 1, 1),
(40, 'https://fcm.googleapis.com/fcm/send/eMMxdDbMV8g:APA91bHAnB75ehb0qmVsbin4MknDAzcb3UwbqAFQwTAu0f_nYbO-fFEx7oMITO49JrPHAqEvFo1kw8vQ8y9L6QSP0s3wCxi_7Tx_AAi2HYTBnaFZK8BRLY57JfpG3mtANZ3rr7n-Q0U3', 'M6otP8NwBuS7+JJLamqvpA==', 'BG+nuiD8vOxb9kULz3O57voybAo8NXKqGU1vjjwTKVZGNW6gDf9h7ktOypV0uSya2xBudjierEQadmYRcyEh2lw=', 0, 1),
(41, 'https://fcm.googleapis.com/fcm/send/fzyi0SiNcAY:APA91bGdetpv5fldOmKlT6DntK-oUWyte_TsqgQa-4_zh9Om-OV2LlFoynwDP42HA5SIYODcRjVj6o61q99NpttqOA4R5PY87BHyLtn3ygOqRT2BpGh1dEJYk9aCiVwCaBukhFtqXhSJ', '8aox2BAwD09Gs/qqwXbDGQ==', 'BFgisfCGRHDMTaxpUtm3dshTE7gxC4zuH6EGFLG3U3PwxvgKCfBBEafZ/fqGpYqXMaPheKcVg2f5J8KV7jALNmA=', 0, 1),
(42, 'https://fcm.googleapis.com/fcm/send/db1bFlrVtqM:APA91bEujR4n2TS_L7a_zq6NTrD_mk80jr7126uEl8zlq-rA6GLHvwtrW6sMgaL75cS82_kgMHr1i4uN_YRrhqtJ8O8T9VNcglsqemspwR8pkHHIKn2L7BEK2qn7ogtRMMKsPVArcRV7', 'LDGX9KxHnA7OgY+gmdxqWg==', 'BLJmtMnlu4TisZCWC8VzboS5RIvdCcf4oy8PoYAniMCX7CMl0tWdKKT23yJYrR4knqHYtlZ9GBNknte/YZinnvc=', 3, 0),
(43, 'https://fcm.googleapis.com/fcm/send/d7Qbrmxfsbk:APA91bFiAomTIY_3yVsiBptapcZdj2XBcOpV0E6nBI1zCWWNzmS6etJ-C8YPcGZjBaVPHBRYg5MuQEqG0kVh59Qjn5wryzPIrJO8mHkuOegwGrDC0oWLLQsnY6EXSELgUNV-PqQczNgj', 'SqTFQz6ZVbzYYmoZneKkRQ==', 'BDIOjeGzrPtqQSefArUExb5323/UinCebazFov56phjA2XgtmZepi198Makz/tcw/ra9eyL18QHT9wdTwKz11uk=', 3, 1),
(44, 'https://fcm.googleapis.com/fcm/send/ce96kvC4Wzk:APA91bFoeCE0-w8jAUVNa1LOXrtrHq9Y-9HcI8ZBHYgOWFt7XsmXPUh7U7lTaJH_G7NEIhCYwa2mQjAn-Lg6IT2VK3X0oXS5fCnlTXXdETMVYehswrZqCWOzTtR1mQ35BE2sJd1DseKw', 'SE5TWoFk4sdzJ5xWzUffAQ==', 'BGT/J6UNVdhhPMkIrOjwRBD4CseeGkVnnrcYgSBY9d7uqgAdaPq3OPO8Zylwz1ftfrbUHb6RunGh41txN+xXs7U=', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `nascimento` date NOT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(80) NOT NULL,
  `changelog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `nascimento`, `email`, `senha`, `changelog`) VALUES
(1, 'admin', '2019-10-20', 'admin@admin.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-16 00:11:57'),
(2, 'HIGOR HENRIQUE FREITAS RODRIGUES', '0000-00-00', 'freitashigor@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-22 11:06:55'),
(3, 'Nivaldo Couto', '2020-03-13', 'nivaldo_couto@hotmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-23 01:07:38'),
(4, 'Daniel', '1994-09-05', 'danielm4624@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-24 22:03:34'),
(5, 'Leonardo', '0000-00-00', 'leo@hotmail.com', '202cb962ac59075b964b07152d234b70', '2019-10-24 22:54:56'),
(6, 'guilherme henrique', '0000-00-00', 'guilhermehenrique@hotmail.com', '11f7e5d441d27e33e7f688548b72cb0d', '2019-10-24 22:56:27'),
(7, 'Claudia Vicci Amadeu', '0000-00-00', 'claudiavicci@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-25 01:01:56'),
(8, 'Lucas', '0000-00-00', 'lucas@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-28 20:13:29'),
(9, 'Teste', '0000-00-00', 'teste@teste.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-10-30 22:00:48'),
(10, 'Flávia Helena', '0000-00-00', 'flavia22k@hotmail.com.br', 'a59e66c02c877bd97880d16e7383ffb9', '2019-11-02 20:13:19'),
(11, 'Vinicius', '2020-02-13', 'vinicius_almeidasilva@outlook.com', '1bbd886460827015e5d605ed44252251', '2019-11-07 23:23:30'),
(12, 'Vinicius melo', '0000-00-00', 'viniciusmelo241@gmail.com', 'c6f4aa5b1d44051f1db1159be1692277', '2019-11-07 23:37:03'),
(13, 'Tais Aparecida Ribeiro Salgado', '0000-00-00', 'taisribeirosalgado@gmail.com', '1f225c0e9cb9249dd8149c5b302a9b95', '2019-11-08 22:43:54'),
(14, 'daniel teste', '0000-00-00', 'danielgenaro198@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2019-11-22 23:38:04'),
(15, 'Lucas Freitas', '0000-00-00', 'lukinha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-02-11 19:07:09'),
(16, 'Wly', '0000-00-00', 'wly@gg.com', '25f9e794323b453885f5181f1b624d0b', '2020-10-17 14:09:37');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `foto_receita`
--
ALTER TABLE `foto_receita`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ingrediente_receita`
--
ALTER TABLE `ingrediente_receita`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receita`
--
ALTER TABLE `receita`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `receita_favorita`
--
ALTER TABLE `receita_favorita`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `foto_receita`
--
ALTER TABLE `foto_receita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de tabela `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=475;

--
-- AUTO_INCREMENT de tabela `ingrediente_receita`
--
ALTER TABLE `ingrediente_receita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `receita`
--
ALTER TABLE `receita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `receita_favorita`
--
ALTER TABLE `receita_favorita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
