-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Mar-2023 às 02:42
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `listgames`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE `jogador` (
  `id` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`id`, `nome`, `foto`) VALUES
('104431021602020662595', 'Douglas Eduardo', 'https://lh3.googleusercontent.com/a/AGNmyxY5YN5J_2YLbfOdXa8OMIRx_N_Z_YpoYtMHTpvK=s96-c'),
('115629454420567283308', 'Douglas Eduardo Machado', 'https://lh3.googleusercontent.com/a/AEdFTp7mOnN3UYJEWtB3lhrncCtmMi4WVpN3E2fLg8Re=s96-c');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `htlb` varchar(200) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `valor` varchar(20) DEFAULT NULL,
  `tempo` varchar(20) DEFAULT NULL,
  `plataforma` varchar(50) DEFAULT NULL,
  `progresso` varchar(50) DEFAULT NULL,
  `multiplayer` varchar(50) DEFAULT NULL,
  `fk_jogador_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `htlb`, `nome`, `valor`, `tempo`, `plataforma`, `progresso`, `multiplayer`, `fk_jogador_id`) VALUES
(1, 'https://howlongtobeat.com/games/38052_Forza_Horizon_3.jpg', 'Forza Horizon 3', '31,63', '17', 'pc', 'COMPLETO', '', '115629454420567283308'),
(2, 'https://howlongtobeat.com/games/Horizon-Zero-Dawn-feat.jpg', 'Horizon Zero Dawn', '24,38', '23', 'ps5', 'COMPLETO', '', '115629454420567283308'),
(3, 'https://howlongtobeat.com/games/53247_Horizon_Zero_Dawn_-_Complete_Edition.jpg', 'Horizon Zero Dawn', '36,15', '30', 'ps5', 'COMPLETO', '', '115629454420567283308'),
(4, 'https://howlongtobeat.com/games/37861_Watch_Dogs_2.jpg', 'Watch Dogs 2', ' 70,00', '19', 'ps4', 'COMPLETO', '', '115629454420567283308'),
(5, 'https://howlongtobeat.com/games/Goat_Simulator.jpg', 'Goat Simulator', '41,50', '2', 'ps4', 'COMPLETO', '', '115629454420567283308'),
(7, 'https://howlongtobeat.com/games/4064_Grand_Theft_Auto_V.jpg', 'Grand Theft Auto V', '49,25', '32', 'ps4', 'HISTÓRIA', '', '115629454420567283308'),
(8, 'https://howlongtobeat.com/games/Far_Cry_4_box_art.jpg', 'Far Cry 4', '90,81', '18', 'ps3', 'HISTÓRIA', '', '115629454420567283308'),
(9, 'https://howlongtobeat.com/games/46093_Far_Cry_5.png', 'Far Cry 5', '200,00', '18', 'pc', 'HISTÓRIA', '', '115629454420567283308'),
(10, 'https://howlongtobeat.com/games/64996_Far_Cry_New_Dawn.jpg', 'Far Cry New Dawn', '41,04', '11', 'ps4', 'HISTÓRIA', '', '115629454420567283308'),
(15, 'https://howlongtobeat.com/games/Rainbow_Six_siege_photo_2014-06-14_17-51.jpg', 'Tom Clancy\'s Rainbow Six Siege', '22,11', '3', 'PC', 'COMPLETO', 'odougrazzz', '115629454420567283308');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jogos_2` (`fk_jogador_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `FK_jogos_2` FOREIGN KEY (`fk_jogador_id`) REFERENCES `jogador` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
