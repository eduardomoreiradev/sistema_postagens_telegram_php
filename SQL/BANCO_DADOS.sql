-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/05/2024 às 18:08
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_postagem`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `postagens`
--

CREATE TABLE `postagens` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `midia` varchar(255) DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `youtube` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `postagens`
--

INSERT INTO `postagens` (`id`, `titulo`, `conteudo`, `midia`, `data_criacao`, `youtube`) VALUES
(1, 'teste', 'funcionou?', NULL, '2024-05-30 14:20:32', NULL),
(2, 'ATENÇÃO :', 'Estou testando o bot de envio de mensagem ', 'uploads/atencao.png', '2024-05-30 14:22:28', NULL),
(3, 'ATENÇÃO :', 'Estou testando o bot de envio de mensagem ', 'uploads/atencao.png', '2024-05-30 14:23:02', NULL),
(4, 'ok', 'funcionou', 'uploads/atencao.png', '2024-05-30 14:24:49', NULL),
(5, 'teste de post com video yt', 'ahhahaha', NULL, '2024-05-30 15:10:56', 'https://youtu.be/ouf-5XLe8LE'),
(6, 'teste final', 'Teste final da versão 1.0 ', 'uploads/atencao.png', '2024-05-30 15:57:24', ''),
(7, 'teste configurado', 'x', NULL, '2024-05-30 16:07:14', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `postagens`
--
ALTER TABLE `postagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `postagens`
--
ALTER TABLE `postagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
