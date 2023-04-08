-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Abr-2023 às 03:59
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
('115629454420567283308', 'Douglas Eduardo Machado', 'https://lh3.googleusercontent.com/a/AGNmyxYmRTTrl0r7vIUuim5GJgYr5oTkoqoPKFL6263i=s96-c');

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
(16, 'https://howlongtobeat.com/games/256px-Tr2011cover.jpg', 'Tomb Raider', '34,99', '11', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(17, 'https://howlongtobeat.com/games/Sunset_Overdrive_cover.jpg', 'Sunset Overdrive', '38,95', '10', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(18, 'https://howlongtobeat.com/games/2119733-box_shank2_large.png', 'Shank 2', '19,99', '4', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(19, 'https://howlongtobeat.com/games/Portal2cover.jpg', 'Portal 2', '32,99', '9', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(20, 'https://howlongtobeat.com/games/256px-Portal_standalonebox.jpg', 'Portal', '32,99', '3', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(21, 'https://howlongtobeat.com/games/Payday2cover.jpg', 'Payday 2', '23,99', '25', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(22, 'https://howlongtobeat.com/games/33021_Paladins.jpg', 'Paladins', '0,00', '41', 'PC-STEAM', 'HISTÓRIA', 'odougrazzz', '115629454420567283308'),
(23, 'https://howlongtobeat.com/games/Mortal_Kombat_X_Cover_Art.png', 'Mortal Kombat X', '89,99', '6', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(24, 'https://howlongtobeat.com/games/98215_MIR4.jpg', 'MIR4', '0,00', '20', 'MOBILE', 'HISTÓRIA', '', '115629454420567283308'),
(25, 'https://howlongtobeat.com/games/36287_A_Lenda_do_Heroi.jpg', 'A Lenda do Heroi', '29,99', '10', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(26, 'https://howlongtobeat.com/games/Lego-Marvel-cover.jpg', 'LEGO Marvel Super Heroes', '36,99', '12', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(27, 'https://howlongtobeat.com/games/59509_Guacamelee_2.jpg', 'Guacamelee! 2', '59,99', '9', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(28, 'https://howlongtobeat.com/games/36385_For_Honor.jpg', 'For Honor', '44,99', '7', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(29, 'https://howlongtobeat.com/games/46093_Far_Cry_5.png', 'Far Cry 5', '179,99', '18', 'PC-UBISOFT', 'HISTÓRIA', '', '115629454420567283308'),
(30, 'https://howlongtobeat.com/games/250px-Counter-Strike_Global_Offensive.jpg', 'Counter-Strike: Global Offensive', '24,00', '164', 'PC-STEAM', 'HISTÓRIA', 'odougrazzz', '115629454420567283308'),
(31, 'https://howlongtobeat.com/games/Assetto_Corsa_cover.png', 'Assetto Corsa', '37,99', '43', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(32, 'https://howlongtobeat.com/games/ARK_Survival_Evolved_header.jpg', 'ARK: Survival Evolved', '37,99', '57', 'PC-STEAM', 'NÃO JOGUEI', '', '115629454420567283308'),
(33, 'https://howlongtobeat.com/games/watch_dogs.jpg', 'Watch Dogs', '89,00', '19', 'PC-UBISOFT', 'NÃO JOGUEI', '', '115629454420567283308'),
(34, 'https://howlongtobeat.com/games/35764_TrackMania_Turbo.jpg', 'TrackMania Turbo', '0,00', '12', 'PC-UBISOFT', 'HISTÓRIA', '', '115629454420567283308'),
(35, 'https://howlongtobeat.com/games/43499_Tom_Clancys_Ghost_Recon_Wildlands.jpg', 'Tom Clancy\'s Ghost Recon Wildlands', '149,99', '26', 'PC-UBISOFT', 'NÃO JOGUEI', '', '115629454420567283308'),
(36, 'https://howlongtobeat.com/games/Far_Cry_4_box_art.jpg', 'Far Cry 4', '40,00', '18', 'PC-UBISOFT', 'HISTÓRIA', '', '115629454420567283308'),
(37, 'https://howlongtobeat.com/games/250px-Far-cry-3-box-art-xbox-360.jpg', 'Far Cry 3', '59,99', '16', 'PC-UBISOFT', 'NÃO JOGUEI', '', '115629454420567283308'),
(38, 'https://howlongtobeat.com/games/46402_Assassins_Creed_Origins.jpg', 'Assassin\'s Creed Origins', '179,99', '30', 'PC-UBISOFT', 'NÃO JOGUEI', '', '115629454420567283308'),
(39, 'https://howlongtobeat.com/games/The_Witcher_EU_box.jpg', 'The Witcher', '16,99', '35', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(40, 'https://howlongtobeat.com/games/Fallout_New_Vegas.jpg', 'Fallout: New Vegas', '19,99', '27', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(41, 'https://howlongtobeat.com/games/46568_The_Evil_Within_2.jpg', 'The Evil Within 2', '155,00', '13', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(42, 'https://howlongtobeat.com/games/TheElderScrollsIVOblivion-GameoftheYearEdition.jpg', 'The Elder Scrolls IV: Oblivion', '42,99', '32', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(43, 'https://howlongtobeat.com/games/256px-Daggerfall_Cover_art.gif', 'The Elder Scrolls II: Daggerfall', '0,00', '32', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(44, 'https://howlongtobeat.com/games/256px-Elder_Scrolls_Arena_Cover.jpg', 'The Elder Scrolls: Arena', '0,00', '24', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(45, 'https://howlongtobeat.com/games/26731_Dishonored_2.jpg', 'Dishonored 2', '89,99', '12', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(46, 'https://howlongtobeat.com/games/41028_Beat_Cop.jpg', 'Beat Cop', '27,99', '8', 'PC-GOG', 'NÃO JOGUEI', '', '115629454420567283308'),
(47, 'https://howlongtobeat.com/games/38052_Forza_Horizon_3.jpg', 'Forza Horizon 3', '220,11', '17', 'PC-STEAM', 'HISTÓRIA', '', '115629454420567283308'),
(48, 'https://howlongtobeat.com/games/64753_Apex_Legends.jpg', 'Apex Legends', '0,00', '34', 'PC-ORIGIN', 'HISTÓRIA', '', '115629454420567283308'),
(49, 'https://howlongtobeat.com/games/57352_Battlefield_V.jpg', 'Battlefield V', '57,25', '6', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(50, 'https://howlongtobeat.com/games/Dead_Space_2_Box_Art.jpg', 'Dead Space 2', '59,00', '9', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(51, 'https://howlongtobeat.com/games/Dragon_Age_Inquisition_BoxArt.jpg', 'Dragon Age: Inquisition', '49,75', '47', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(52, 'https://howlongtobeat.com/games/82088_FIFA_21.jpg', 'FIFA 21', '200,00', '62', 'PC-ORIGIN', 'HISTÓRIA', '', '115629454420567283308'),
(53, 'https://howlongtobeat.com/games/95926_GRID_Legends.jpg', 'GRID Legends', '49,80', '6', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(54, 'https://howlongtobeat.com/games/96884_Madden_NFL_22.jpg', 'Madden NFL 22', '249,00', '11', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(55, 'https://howlongtobeat.com/games/84851_Mass_Effect_Legendary_Edition.jpg', 'Mass Effect Legendary Edition', '74,70', '60', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(56, 'https://howlongtobeat.com/games/69695_Need_For_Speed_Heat.jpg', 'Need For Speed Heat', '279,00', '13', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(57, 'https://howlongtobeat.com/games/Nfshp-2010-cover.jpg', 'Need for Speed: Hot Pursuit', '149,00', '14', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(58, 'https://howlongtobeat.com/games/70153_Plants_vs_Zombies_Battle_for_Neighborville.jpg', 'Plants vs. Zombies: Battle for Neighborville', '29,80', '5', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(59, 'https://howlongtobeat.com/games/60145_Star_Wars_Jedi_Fallen_Order.jpg', 'Star Wars Jedi: Fallen Order', '200,00', '17', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(60, 'https://howlongtobeat.com/games/80090_Star_Wars_Squadrons.jpg', 'Star Wars: Squadrons', '200,00', '9', 'PC-ORIGIN', 'NÃO JOGUEI', '', '115629454420567283308'),
(61, 'https://howlongtobeat.com/games/63110_Call_of_Duty_Modern_Warfare.jpeg', 'Call of Duty: Modern Warfare', '200,00', '6', 'PC-BATTLE', 'HISTÓRIA', '', '115629454420567283308'),
(62, 'https://howlongtobeat.com/games/14121_Hearthstone_Heroes_of_Warcraft.jpg', 'Hearthstone', '0,00', '35', 'PC-BATTLE', 'HISTÓRIA', 'douglaseduar', '115629454420567283308'),
(63, 'https://howlongtobeat.com/games/Ninja_Commando.jpg', 'Ninja Commando', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(64, 'https://howlongtobeat.com/games/Art_of_Fighting_3_cover.jpg', 'Art of Fighting 3', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(65, 'https://howlongtobeat.com/games/82541_Peaky_Blinders_Mastermind.jpg', 'Peaky Blinders: Mastermind', '0,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(66, 'https://howlongtobeat.com/games/41486_Book_of_Demons.jpg', 'Book of Demons', '69,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(67, 'https://howlongtobeat.com/games/63992_Faraway_3_Arctic_Escape.jpg', 'Faraway 3', '0,00', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(68, 'https://howlongtobeat.com/games/86459_Adios.jpg', 'Adios', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(69, 'https://howlongtobeat.com/games/89073_I_Am_Fish.jpg', 'I Am Fish', '37,99', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(70, 'https://howlongtobeat.com/games/220px-Baldurs_Gate_Enhanced_Edition.png', 'Baldur\'s Gate', '59,99', '30', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(71, 'https://howlongtobeat.com/games/84315_Space_Crew.jpg', 'Space Crew', '27,11', '18', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(72, 'https://howlongtobeat.com/games/101009_Space_Warlord_Organ_Trading_Simulator.jpg', 'Space Warlord Organ Trading Simulator', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(73, 'https://howlongtobeat.com/games/76004_Tunche.jpg', 'Tunche', '15,00', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(74, 'https://howlongtobeat.com/games/102688_BATS_Bloodsucker_Anti-Terror_Squad.jpg', 'BATS', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(75, 'https://howlongtobeat.com/games/84119_One_Hand_Clapping.jpg', 'One Hand Clapping', '44,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(76, 'https://howlongtobeat.com/games/91068_Aerial_Knights_Never_Yield.jpg', 'Aerial_Knight\'s Never Yield', '22,11', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(77, 'https://howlongtobeat.com/games/116473_Onsen_Master.jpg', 'Onsen Master', '28,11', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(78, 'https://howlongtobeat.com/games/225px-Metal_Slug_(cover).jpg', 'Metal Slug', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(79, 'https://howlongtobeat.com/games/410218-lastblade2_large.jpg', 'The Last Blade 2', '22,11', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(80, 'https://howlongtobeat.com/games/250px-Kofxiiips3.jpg', 'The King of Fighters ', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(81, 'https://howlongtobeat.com/games/Metal_Slug_3.png', 'Metal Slug 3', '14,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(82, 'https://howlongtobeat.com/games/62621_SNK_40th_Anniversary_Collection.jpg', 'SNK 40th Anniversary Collection', '59,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

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
