-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Mar-2021 às 00:15
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogo`
--

CREATE TABLE `jogo` (
  `nome` varchar(220) NOT NULL,
  `corp` varchar(220) NOT NULL,
  `progresso` varchar(220) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogo`
--

INSERT INTO `jogo` (`nome`, `corp`, `progresso`, `imagem`, `id`) VALUES
('farcry 5', 'ubisoft', 'asim', 'farcry', 1),
('ghost recon', 'ubisoft', 'nao', 'ghost', 2),
('GTA V', 'Rockstar', 'asim', 'gta', 3),
('the witcher 3', 'cd projekt red', 'nao', 'thewitcher', 4),
('Watch Dogs 2', 'Ubisoft', 'asim', 'watch', 5),
('dying light', 'Techland', 'asim', 'dying', 6),
('second son', 'Sucker Punch', 'asim', 'second', 7),
('Just cause 3', 'Avalanche', 'asim', 'just', 8),
('Magicka 2', 'Pieces Interactive', 'asim', 'magicka', 9),
('Grow Home', 'ubisoft', 'nao', 'grow', 10),
('broforce', 'Free Lives', 'nao', 'brow', 11),
('Battlefield 4', 'dice', 'nao', 'battlefield', 12),
('Trials Fusion', 'ubisoft', 'nao', 'trials', 13),
('cod: mw', 'Infinity Ward', 'asim', 'mw', 14),
('MKX', 'NetherRealm', 'asim', 'mortal', 15),
('DESTINY', 'Bungie', 'nao', 'destiny', 16),
('DESTINY 2', 'Bungie', 'nao', 'destiny2', 17),
('sunset over...', 'Blind Squirrel', 'nao', 'sunset', 18),
('rainbow six', 'ubisoft', 'coop', 'r6', 19),
('War Thunder', 'Gaijin Ent...', 'coop', 'war', 20),
('Towerfall', 'indie', 'asim', 'tower', 21),
('Payday 2 ', 'Overkill', 'coop', 'payday', 22),
('Trackmania', 'ubisoft', 'nao', 'track', 23),
('PVZ GW2', 'Popcap', 'coop', 'pvz', 24),
('Battlefield 1', 'EA', 'coop', 'bf1', 25),
('Paladins', 'Hi-Rez Studios', 'coop', 'paladins', 26),
('Rocket Le...', 'Psyonix', 'coop', 'rocket', 27),
('Fortnite ', 'Epic Games', 'coop', 'fortnite ', 28),
('Goat Simula...', 'Coffee Stain', 'nao', 'goat', 29),
('euro truck 2', 'SCS Software', 'nao', 'euro', 30),
('cs: go', 'valve', 'coop', 'cs', 31),
('apex', 'Respawn', 'coop', 'apex', 32),
('rogue comp...', 'Hi-Rez Studios', 'coop', 'rogue', 33),
('overcooked', 'Team17', 'nao', 'overcooked', 34),
('among us', 'InnerSloth', 'coop', 'among', 35),
('just cause 4', 'avalanche', 'nao', 'justcause', 36),
('assetto cor...', 'Kunos Sim...', 'nao', 'assetto', 37),
('fall guys', 'Mediatonic', 'coop', 'fall', 38),
('poly bridge 2', 'Dry Cactus', 'nao', 'poly', 39),
('fifa 21', 'ea', 'asim', 'fifa', 40),
('lego marvel', ' TT Games', 'nunca', 'lego', 41),
('Civilization VI', 'Firaxis Games', 'nunca', 'civi', 42),
('Portal 2 ', 'valve', 'asim', 'portal', 43),
('h1z1', 'Daybreak', 'coop', 'h1z1', 44),
('tomb raider', 'Crystal Dyn...', 'nunca', 'tomb', 45),
('for honor', 'ubisoft', 'nunca', 'for', 46),
('Free Fire', 'Garena', 'coop', 'free', 47),
('Watch Dogs', 'Ubisoft', 'nunca', 'watch1', 48),
('overwatch', 'Blizzard', 'coop', 'overwatch', 49),
('hearthstone', 'Blizzard', 'coop', 'hearthstone', 50),
('farming 19', 'giants', 'nunca', 'farming', 51),
('the escapists', 'Team17', 'nao', 'the', 52),
('absolute dr...', 'Funselektor', 'nunca', 'absolute', 53),
('ALIEN ISOLATI...', 'Creative Assembly', 'nao', 'Alien', 54),
('ARK', 'Instinct Games', 'nunca', 'ARK', 55),
('batman', 'Rocksteady', 'nunca', 'batman', 56),
('Borderlands2', 'Gearbox', 'nunca', 'Borderlands', 57),
('jurassic wo...', 'Frontier', 'nunca', 'jurassic', 58),
('LEGO Batman', 'TT GAMES', 'nunca', 'legoBatman', 59),
('Metro', '4A Games', 'nunca', 'Metro', 60),
('RAGE 2', 'Bethesda', 'nunca', 'RAGE', 61),
('rollercoaster', 'Frontier', 'nunca', 'rollercoaster', 62),
('battlefront2', 'DICE', 'coop', 'battlefront', 63),
('subnautica', 'Grip Digital', 'nao', 'subnautica', 64),
('GTA SA', 'ROCKSTAR', 'nao', 'gtasa', 65),
('paper please', '3909 LLC', 'asim', 'paper', 66),
('this war of...', '11 bit', 'asim', 'this', 67),
('minecraft', 'mojang', 'asim', 'minecraft', 68),
('warface', 'Crytek', 'coop', 'warface', 69),
('Black Squad', 'NS Studio', 'coop', 'Black', 70),
('point blank', 'Zepetto', 'coop', 'point', 71),
('Clash Royale', 'Supercell', 'coop', 'Clash', 72),
('brawl stars', 'Supercell', 'coop', 'brawl', 73),
('skate 3', 'ea', 'asim', 'skate', 74),
('forza 3', 'Playground', 'asim', 'forza', 75),
('DUKE NUKEM F', '3D Realms', 'nao', 'Duke', 76),
('NBA 2K12', 'Visual Concepts', 'nao', 'NBA', 77),
('GRAN TURIS... 6', 'Polyphony Digital', 'nao', 'Gran', 78),
('Far Cry 4', 'ubisoft', 'asim', 'FarCry4', 79),
('Just Dance', 'ubisoft', 'asim', 'justdance', 80),
('NFS: Rivals', 'EA', 'nao', 'nfs', 81),
('PVZ GW', 'EA', 'asim', 'pvzgw', 82),
('Cod: BO2', 'Treyarch', 'coop', 'codbo2', 83),
('medal of ho...', 'ea', 'nao', 'medal', 84),
('A Lenda do...', 'Dumativa', 'nao', 'lenda', 85),
('valorant', 'riot games', 'coop', 'valorant', 86);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
