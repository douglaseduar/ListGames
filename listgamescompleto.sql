-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Abr-2023 às 03:11
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
  `comprado` smallint(6) NOT NULL,
  `jogando` smallint(6) NOT NULL,
  `fk_jogador_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `htlb`, `nome`, `valor`, `tempo`, `plataforma`, `progresso`, `multiplayer`, `comprado`, `jogando`, `fk_jogador_id`) VALUES
(16, 'https://howlongtobeat.com/games/256px-Tr2011cover.jpg', 'Tomb Raider', '34,99', '11', 'PC-STEAM', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(17, 'https://howlongtobeat.com/games/Sunset_Overdrive_cover.jpg', 'Sunset Overdrive', '38,95', '10', 'PC-STEAM', 'HISTÓRIA', '', 1, 1, '115629454420567283308'),
(18, 'https://howlongtobeat.com/games/2119733-box_shank2_large.png', 'Shank 2', '19,99', '4', 'PC-STEAM', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(19, 'https://howlongtobeat.com/games/Portal2cover.jpg', 'Portal 2', '32,99', '9', 'PC-STEAM', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(20, 'https://howlongtobeat.com/games/256px-Portal_standalonebox.jpg', 'Portal', '32,99', '3', 'PC-STEAM', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(21, 'https://howlongtobeat.com/games/Payday2cover.jpg', 'Payday 2', '23,99', '25', 'PC-STEAM', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(22, 'https://howlongtobeat.com/games/33021_Paladins.jpg', 'Paladins', '0,00', '41', 'PC-STEAM', 'HISTÓRIA', 'odougrazzz', 0, 0, '115629454420567283308'),
(23, 'https://howlongtobeat.com/games/Mortal_Kombat_X_Cover_Art.png', 'Mortal Kombat X', '89,99', '6', 'PC-STEAM', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(24, 'https://howlongtobeat.com/games/98215_MIR4.jpg', 'MIR4', '0,00', '20', 'MOBILE', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(25, 'https://howlongtobeat.com/games/36287_A_Lenda_do_Heroi.jpg', 'A Lenda do Heroi', '29,99', '10', 'PC-STEAM', 'HISTÓRIA', '', 1, 1, '115629454420567283308'),
(26, 'https://howlongtobeat.com/games/Lego-Marvel-cover.jpg', 'LEGO Marvel Super Heroes', '36,99', '12', 'PC-STEAM', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(27, 'https://howlongtobeat.com/games/59509_Guacamelee_2.jpg', 'Guacamelee! 2', '59,99', '9', 'PC-STEAM', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(28, 'https://howlongtobeat.com/games/36385_For_Honor.jpg', 'For Honor', '44,99', '7', 'PC-STEAM', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(29, 'https://howlongtobeat.com/games/46093_Far_Cry_5.png', 'Far Cry 5', '179,99', '18', 'PC-UBISOFT', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(30, 'https://howlongtobeat.com/games/250px-Counter-Strike_Global_Offensive.jpg', 'Counter-Strike: Global Offensive', '24,00', '164', 'PC-STEAM', 'HISTÓRIA', 'odougrazzz', 1, 0, '115629454420567283308'),
(31, 'https://howlongtobeat.com/games/Assetto_Corsa_cover.png', 'Assetto Corsa', '37,99', '43', 'PC-STEAM', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(32, 'https://howlongtobeat.com/games/ARK_Survival_Evolved_header.jpg', 'ARK: Survival Evolved', '37,99', '57', 'PC-STEAM', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(33, 'https://howlongtobeat.com/games/watch_dogs.jpg', 'Watch Dogs', '89,00', '19', 'PC-UBISOFT', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(34, 'https://howlongtobeat.com/games/35764_TrackMania_Turbo.jpg', 'TrackMania Turbo', '0,00', '12', 'PC-UBISOFT', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(35, 'https://howlongtobeat.com/games/43499_Tom_Clancys_Ghost_Recon_Wildlands.jpg', 'Tom Clancy\'s Ghost Recon Wildlands', '149,99', '26', 'PC-UBISOFT', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(36, 'https://howlongtobeat.com/games/Far_Cry_4_box_art.jpg', 'Far Cry 4', '40,00', '18', 'PC-UBISOFT', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(37, 'https://howlongtobeat.com/games/250px-Far-cry-3-box-art-xbox-360.jpg', 'Far Cry 3', '59,99', '16', 'PC-UBISOFT', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(38, 'https://howlongtobeat.com/games/46402_Assassins_Creed_Origins.jpg', 'Assassin\'s Creed Origins', '179,99', '30', 'PC-UBISOFT', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(39, 'https://howlongtobeat.com/games/The_Witcher_EU_box.jpg', 'The Witcher', '16,99', '35', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(40, 'https://howlongtobeat.com/games/Fallout_New_Vegas.jpg', 'Fallout: New Vegas', '19,99', '27', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(41, 'https://howlongtobeat.com/games/46568_The_Evil_Within_2.jpg', 'The Evil Within 2', '155,00', '13', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(42, 'https://howlongtobeat.com/games/TheElderScrollsIVOblivion-GameoftheYearEdition.jpg', 'The Elder Scrolls IV: Oblivion', '42,99', '32', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(43, 'https://howlongtobeat.com/games/256px-Daggerfall_Cover_art.gif', 'The Elder Scrolls II: Daggerfall', '0,00', '32', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(44, 'https://howlongtobeat.com/games/256px-Elder_Scrolls_Arena_Cover.jpg', 'The Elder Scrolls: Arena', '0,00', '24', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(45, 'https://howlongtobeat.com/games/26731_Dishonored_2.jpg', 'Dishonored 2', '89,99', '12', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(46, 'https://howlongtobeat.com/games/41028_Beat_Cop.jpg', 'Beat Cop', '27,99', '8', 'PC-GOG', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(47, 'https://howlongtobeat.com/games/38052_Forza_Horizon_3.jpg', 'Forza Horizon 3', '220,11', '17', 'PC-STEAM', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(48, 'https://howlongtobeat.com/games/64753_Apex_Legends.jpg', 'Apex Legends', '0,00', '34', 'PC-ORIGIN', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(49, 'https://howlongtobeat.com/games/57352_Battlefield_V.jpg', 'Battlefield V', '57,25', '6', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(50, 'https://howlongtobeat.com/games/Dead_Space_2_Box_Art.jpg', 'Dead Space 2', '59,00', '9', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(51, 'https://howlongtobeat.com/games/Dragon_Age_Inquisition_BoxArt.jpg', 'Dragon Age: Inquisition', '49,75', '47', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(52, 'https://howlongtobeat.com/games/82088_FIFA_21.jpg', 'FIFA 21', '200,00', '62', 'PC-ORIGIN', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(53, 'https://howlongtobeat.com/games/95926_GRID_Legends.jpg', 'GRID Legends', '49,80', '6', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(54, 'https://howlongtobeat.com/games/96884_Madden_NFL_22.jpg', 'Madden NFL 22', '249,00', '11', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(57, 'https://howlongtobeat.com/games/Nfshp-2010-cover.jpg', 'Need for Speed: Hot Pursuit', '149,00', '14', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(58, 'https://howlongtobeat.com/games/70153_Plants_vs_Zombies_Battle_for_Neighborville.jpg', 'Plants vs. Zombies: Battle for Neighborville', '29,80', '5', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(59, 'https://howlongtobeat.com/games/60145_Star_Wars_Jedi_Fallen_Order.jpg', 'Star Wars Jedi: Fallen Order', '200,00', '17', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(60, 'https://howlongtobeat.com/games/80090_Star_Wars_Squadrons.jpg', 'Star Wars: Squadrons', '200,00', '9', 'PC-ORIGIN', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(61, 'https://howlongtobeat.com/games/63110_Call_of_Duty_Modern_Warfare.jpeg', 'Call of Duty: Modern Warfare', '200,00', '6', 'PC-BATTLE', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(62, 'https://howlongtobeat.com/games/14121_Hearthstone_Heroes_of_Warcraft.jpg', 'Hearthstone', '0,00', '35', 'PC-BATTLE', 'HISTÓRIA', 'douglaseduar', 0, 0, '115629454420567283308'),
(63, 'https://howlongtobeat.com/games/Ninja_Commando.jpg', 'Ninja Commando', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(64, 'https://howlongtobeat.com/games/Art_of_Fighting_3_cover.jpg', 'Art of Fighting 3', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(65, 'https://howlongtobeat.com/games/82541_Peaky_Blinders_Mastermind.jpg', 'Peaky Blinders: Mastermind', '0,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(66, 'https://howlongtobeat.com/games/41486_Book_of_Demons.jpg', 'Book of Demons', '69,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(67, 'https://howlongtobeat.com/games/63992_Faraway_3_Arctic_Escape.jpg', 'Faraway 3', '0,00', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(68, 'https://howlongtobeat.com/games/86459_Adios.jpg', 'Adios', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(69, 'https://howlongtobeat.com/games/89073_I_Am_Fish.jpg', 'I Am Fish', '37,99', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(70, 'https://howlongtobeat.com/games/220px-Baldurs_Gate_Enhanced_Edition.png', 'Baldur\'s Gate', '59,99', '30', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(71, 'https://howlongtobeat.com/games/84315_Space_Crew.jpg', 'Space Crew', '27,11', '18', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(72, 'https://howlongtobeat.com/games/101009_Space_Warlord_Organ_Trading_Simulator.jpg', 'Space Warlord Organ Trading Simulator', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(74, 'https://howlongtobeat.com/games/102688_BATS_Bloodsucker_Anti-Terror_Squad.jpg', 'BATS', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(75, 'https://howlongtobeat.com/games/84119_One_Hand_Clapping.jpg', 'One Hand Clapping', '44,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(76, 'https://howlongtobeat.com/games/91068_Aerial_Knights_Never_Yield.jpg', 'Aerial_Knight\'s Never Yield', '22,11', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(77, 'https://howlongtobeat.com/games/116473_Onsen_Master.jpg', 'Onsen Master', '28,11', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(78, 'https://howlongtobeat.com/games/225px-Metal_Slug_(cover).jpg', 'Metal Slug', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(79, 'https://howlongtobeat.com/games/410218-lastblade2_large.jpg', 'The Last Blade 2', '22,11', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(80, 'https://howlongtobeat.com/games/250px-Kofxiiips3.jpg', 'The King of Fighters ', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(81, 'https://howlongtobeat.com/games/Metal_Slug_3.png', 'Metal Slug 3', '14,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(82, 'https://howlongtobeat.com/games/62621_SNK_40th_Anniversary_Collection.jpg', 'SNK 40th Anniversary Collection', '59,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(83, 'https://howlongtobeat.com/games/255px-Last_Blade_(cover).jpg', 'The Last Blade', '19,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(84, 'https://howlongtobeat.com/games/metal_slug_X.jpg', 'Metal Slug X', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(85, 'https://howlongtobeat.com/games/TwinkleStarSprites_frontcover.png', 'Twinkle Star Sprites', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(86, 'https://howlongtobeat.com/games/225px-Real_Bout_2_(cover).jpg', 'Real Bout Fatal Fury 2: The Newcomers', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(87, 'https://howlongtobeat.com/games/61488_Breathedge.jpg', 'Breathedge', '79,99', '16', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(88, 'https://howlongtobeat.com/games/100032_Lawn_Mowing_Simulator.jpg', 'Lawn Mowing Simulator', '59,99', '23', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(89, 'https://howlongtobeat.com/games/84835_Chicken_Police.jpg', 'Chicken Police', '37,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(90, 'https://howlongtobeat.com/games/111005_Faraway_2_Jungle_Escape.jpg', 'Faraway 2: Jungle Escape', '16,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(91, 'https://howlongtobeat.com/games/115708_Doors_Paradox.jpg', 'Doors: Paradox', '46,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(92, 'https://howlongtobeat.com/games/89567_The_Amazing_American_Circus.jpg', 'The Amazing American Circus', '59,99', '12', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(93, 'https://howlongtobeat.com/games/82168_Banners_of_Ruin.jpg', 'Banners of Ruin', '37,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(94, 'https://howlongtobeat.com/games/Brothers_A_Tale_of_Two_Sons_cover_art.jpg', 'Brothers: A Tale of Two Sons', '6,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(95, 'https://howlongtobeat.com/games/63173_Desert_Child.jpg', 'Desert Child', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(96, 'https://howlongtobeat.com/games/83373_Spinch.jpg', 'Spinch', '46,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(97, 'https://howlongtobeat.com/games/WhisperingWillows_292x136.jpg', 'Whispering Willows', '19,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(98, 'https://howlongtobeat.com/games/69038_Etherborn.jpg', 'Etherborn', '52,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(99, 'https://howlongtobeat.com/games/48621_Last_Day_of_June.jpg', 'Last Day of June', '9,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(100, 'https://howlongtobeat.com/games/108241_Indiana_Jones_and_the_Last_Crusade.jpg', 'Indiana Jones and the Last Crusade', '12,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(101, 'https://howlongtobeat.com/games/82743_WRC_9.jpg', 'WRC 9: FIA World Rally Championship', '19,99', '18', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(102, 'https://howlongtobeat.com/games/250px-LOOM_Cover_Art.jpg', 'Loom', '12,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(103, 'https://howlongtobeat.com/games/105664_Heros_Hour.jpg', 'Hero\'s Hour', '34,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(104, 'https://howlongtobeat.com/games/69579_Horace_(2019).jpg', 'Horace', '11,99', '14', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(105, 'https://howlongtobeat.com/games/108020_Castle_on_the_Coast.jpg', 'Castle on the Coast', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(106, 'https://howlongtobeat.com/games/99825_Defend_the_Rook.jpg', 'Defend the Rook', '34,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(107, 'https://howlongtobeat.com/games/The_Dig_artwork.jpg', 'The Dig', '12,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(108, 'https://howlongtobeat.com/games/65820_We_The_Revolution.jpg', 'We. The Revolution', '49,99', '13', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(109, 'https://howlongtobeat.com/games/Zak_McKracken_artwork.jpg', 'Zak McKracken and the Alien Mindbenders', '11,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(110, 'https://howlongtobeat.com/games/93259_Beasts_of_Maravilla_Island.jpg', 'Beasts of Maravilla Island', '19,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(111, 'https://howlongtobeat.com/games/69534_Recompile_(2020).jpg', 'Recompile', '45,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(112, 'https://howlongtobeat.com/games/68579_ScourgeBringer.jpg', 'ScourgeBringer', '37,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(113, 'https://howlongtobeat.com/games/64047_Fell_Seal_Arbiters_Mark.jpg', 'Fell Seal: Arbiter\'s Mark', '89,99', '37', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(114, 'https://howlongtobeat.com/games/84662_Fishing_North_Atlantic.jpg', 'Fishing: North Atlantic', '59,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(115, 'https://howlongtobeat.com/games/83906_Suzerain.jpg', 'Suzerain', '46,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(116, 'https://howlongtobeat.com/games/250px-Maniac_Mansion_artwork.jpg', 'Maniac Mansion', '11,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(117, 'https://howlongtobeat.com/games/Star_Wars_-_Republic_Commando_Coverart.png', 'Star Wars: Republic Commando', '19,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(118, 'https://howlongtobeat.com/games/Jabox.jpg', 'Star Wars Jedi Knight: Jedi Academy', '19,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(119, 'https://howlongtobeat.com/games/Jedi_Outcast_pc_cover.jpg', 'Star Wars Jedi Knight II: Jedi Outcast', '19,99', '13', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(120, 'https://howlongtobeat.com/games/44498_Clouds_&_Sheep_2.jpg', 'Clouds & Sheep 2', '32,99', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(121, 'https://howlongtobeat.com/games/91005_The_Darkside_Detective_A_Fumble_in_the_Dark.jpg', 'The Darkside Detective: A Fumble in the Dark', '46,99', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(122, 'https://howlongtobeat.com/games/47682_The_Darkside_Detective.jpg', 'The Darkside Detective', '46,00', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(123, 'https://howlongtobeat.com/games/Rain_World_header.jpg', 'Rain World', '77,99', '22', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(124, 'https://howlongtobeat.com/games/90468_8Doors_Arums_Afterlife_Adventure.jpg', '8Doors: Arum\'s Afterlife Adventure', '37,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(125, 'https://howlongtobeat.com/games/40258_The_Metronomicon.jpg', 'The Metronomicon', '0,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(126, 'https://howlongtobeat.com/games/Samurai_Shodown_II_cover.jpg', 'Samurai Shodown II', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(127, 'https://howlongtobeat.com/games/40473_Serial_Cleaner.jpg', 'Serial Cleaner', '0,00', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(128, 'https://howlongtobeat.com/games/250px-Fatal_Fury_Special_(cover).jpg', 'Fatal Fury Special', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(129, 'https://howlongtobeat.com/games/38008_HUE.jpg', 'HUE', '27,11', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(130, 'https://howlongtobeat.com/games/74471_Metal_Unit.jpg', 'Metal Unit', '27,11', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(131, 'https://howlongtobeat.com/games/40492_Manual_Samuel.jpg', 'Manual Samuel', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(132, 'https://howlongtobeat.com/games/51841_The_Crows_Eye.jpg', 'The Crow\'s Eye', '32,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(133, 'https://howlongtobeat.com/games/225px-Metal_Slug_2_(cover).jpg', 'Metal Slug 2', '12,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(134, 'https://howlongtobeat.com/games/ProjectGianaSplashArt.jpg', 'Giana Sisters: Twisted Dreams', '6,00', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(135, 'https://howlongtobeat.com/games/66375_Pumped_bmx_pro.jfif', 'Pumped BMX Pro', '5,00', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(136, 'https://howlongtobeat.com/games/47424_Death_Squared.jpg', 'Death Squared', '28,11', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(137, 'https://howlongtobeat.com/games/The_King_of_Fighters_2000_-_poster.jpg', 'The King of Fighters 2000', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(138, 'https://howlongtobeat.com/games/38775_10_Second_Ninja_X.jpg', '10 Second Ninja X', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(139, 'https://howlongtobeat.com/games/The_King_of_Fighters_2002_(cover).jpg', 'The King of Fighters 2002', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(140, 'https://howlongtobeat.com/games/85787_Gone_Viral.jpg', 'Gone Viral', '59,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(141, 'https://howlongtobeat.com/games/2222510-box_bbr_large.png', 'Bang Bang Racing', '16,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(142, 'https://howlongtobeat.com/games/81108_Across_The_Grooves.jpg', 'Across The Grooves', '47,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(143, 'https://howlongtobeat.com/games/67977_Astrologaster.jpg', 'Astrologaster', '20,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(144, 'https://howlongtobeat.com/games/85354_Calico.jpg', 'Calico', '22,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(145, 'https://howlongtobeat.com/games/70659_Wrc_8.jfif', 'WRC 8', '69,99', '17', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(146, 'https://howlongtobeat.com/games/250px-Escape_from_Monkey_Island_artwork.jpg', 'Escape from Monkey Island', '14,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(147, 'https://howlongtobeat.com/games/89414_Mail_Mole.jpg', 'Mail Mole', '28,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(148, 'https://howlongtobeat.com/games/48142_Cat_Quest.jpg', 'Cat Quest', '8,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(149, 'https://howlongtobeat.com/games/94633_Out_of_Line.jpg', 'Out of Line', '27,11', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(150, 'https://howlongtobeat.com/games/67694_Shattered_-_Tale_of_the_Forgotten_King.jpg', 'Shattered - Tale of the Forgotten King', '59,99', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(151, 'https://howlongtobeat.com/games/250px-The_Curse_of_Monkey_Island_artwork.jpg', 'The Curse of Monkey Island', '14,99', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(152, 'https://howlongtobeat.com/games/80383_Turnip_Boy_Commits_Tax_Evasion.jpg', 'Turnip Boy Commits Tax Evasion', '28,11', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(153, 'https://howlongtobeat.com/games/98531_Guild_of_Ascension.jpg', 'Guild of Ascension', '37,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(154, 'https://howlongtobeat.com/games/71950_Nanotale_-_Typing_Chronicles.jpg', 'Nanotale - Typing Chronicles', '49,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(155, 'https://howlongtobeat.com/games/82604_As_Far_As_The_Eye.jpg', 'As Far As The Eye', '47,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(156, 'https://howlongtobeat.com/games/92533_Golazo_Soccer_League.jpg', 'Golazo! Soccer League', '17,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(157, 'https://howlongtobeat.com/games/indigo-prophecy-box-art.jpg', 'Indigo Prophecy / Fahrenheit', '22,11', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(158, 'https://howlongtobeat.com/games/45584_abandon_ship.jpg', 'Abandon Ship', '77,99', '20', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(159, 'https://howlongtobeat.com/games/77229_Paper_Beast.jpg', 'Paper Beast', '45,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(160, 'https://howlongtobeat.com/games/74940_In_Other_Waters.jpg', 'In Other Waters', '46,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(161, 'https://howlongtobeat.com/games/60043_two_point_hospital.jpg', 'Two Point Hospital', '119,00', '39', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(162, 'https://howlongtobeat.com/games/51200_WRC_7.jpg', 'WRC 7: World Rally', '47,99', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(163, 'https://howlongtobeat.com/games/37397_Youtubers_Life.jpg', 'Youtubers Life', '69,99', '12', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(164, 'https://howlongtobeat.com/games/73064_Tools_Up.jpg', 'Tools Up!', '37,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(165, 'https://howlongtobeat.com/games/255px-Sports_Champions.png', 'Sports Champions', '0,00', '17', 'PS3', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(166, 'https://howlongtobeat.com/games/NBA_2K12_cover.jpg', 'NBA 2K12', '0,00', '60', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(167, 'https://howlongtobeat.com/games/Duke_Nukem_Forever_Box_art.jpg', 'Duke Nukem Forever', '30,00', '9', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(168, 'https://howlongtobeat.com/games/256px-Skate-3-Boxart.jpg', 'Skate 3', '0,00', '9', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(169, 'https://howlongtobeat.com/games/GranTurismo6.jpg', 'Gran Turismo 6', '50,00', '45', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(170, 'https://howlongtobeat.com/games/Battlefield_4.jpg', 'Battlefield 4 ', '49,99', '6', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(171, 'https://howlongtobeat.com/games/Just_Dance_2014_Official_NTSC_Cover_Art.jpg', 'Just Dance 2014', '0,00', '5', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(172, 'https://howlongtobeat.com/games/Plants_vs._zombies_Garden_Warfare_cover.jpg', 'Plants vs. Zombies: Garden Warfare', '0,00', '8', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(173, 'https://howlongtobeat.com/games/FIFA_14.jpg', 'FIFA 14', '0,00', '82', 'PS3', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(174, 'https://howlongtobeat.com/games/Grow_Home_header.jpg', 'Grow Home', '42,90', '3', 'PS4', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(175, 'https://howlongtobeat.com/games/Rocket_League_header.jpg', 'Rocket League', '0,00', '5', 'PS4', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(176, 'https://howlongtobeat.com/games/warthunder_keyart.jpg', 'War Thunder', '0,00', '10', 'PS4', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(177, 'https://howlongtobeat.com/games/PvZ_Garden_Warfare_2.jpg', 'Plants vs. Zombies: Garden Warfare 2', '220,00', '7', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(178, 'https://howlongtobeat.com/games/TowerFall_Ascension.jpg', 'TowerFall Ascension', '37,99', '4', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(179, 'https://howlongtobeat.com/games/Goat_Simulator.jpg', 'Goat Simulator', '10,00', '2', 'PS4', 'COMPLETO', '', 1, 0, '115629454420567283308'),
(180, 'https://howlongtobeat.com/games/FIFA_16_cover.jpg', 'FIFA 16', '59,99', '52', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(181, 'https://howlongtobeat.com/games/Magicka_2_header.jpg', 'Magicka 2', '19,99', '6', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(182, 'https://howlongtobeat.com/games/70239_Uno_(2016).jpg', 'Uno', '19,99', '4', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(183, 'https://howlongtobeat.com/games/4064_Grand_Theft_Auto_V.jpg', 'Grand Theft Auto V', '100,00', '32', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(184, 'https://howlongtobeat.com/games/35859_Ratchet_&_Clank_(2016).jpg', 'Ratchet & Clank', '99,99', '10', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(185, 'https://howlongtobeat.com/games/Subnautica_header.jpg', 'Subnautica', '161,90', '30', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(186, 'https://howlongtobeat.com/games/1402571017-abzu-logo.jpg', 'ABZÛ', '37,99', '2', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(187, 'https://howlongtobeat.com/games/35549_Enter_the_Gungeon.jpg', 'Enter the Gungeon', '31,99', '22', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(188, 'https://howlongtobeat.com/games/48441_Moss.jpg', 'Moss', '99,50', '4', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(189, 'https://howlongtobeat.com/games/40535_Rez_Infinite.jpg', 'Rez Infinite', '159,90', '2', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(190, 'https://howlongtobeat.com/games/250px-The_witness_poster.jpg', 'The Witness', '200,00', '17', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(191, 'https://howlongtobeat.com/games/40500_Thumper.jpg', 'Thumper', '99,99', '8', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(192, 'https://howlongtobeat.com/games/40715_Sniper_Elite_4.jpg', 'Sniper Elite 4', '150,99', '11', 'PS5', 'NÃO JOGUEI', '', 1, 0, '115629454420567283308'),
(193, 'https://howlongtobeat.com/games/Horizon-Zero-Dawn-feat.jpg', 'Horizon Zero Dawn', '99,99', '22', 'PS5', 'COMPLETO', '', 0, 0, '115629454420567283308'),
(194, 'https://howlongtobeat.com/games/57518_Overcooked_2.jpeg', 'Overcooked 2', '79,99', '7', 'PS4', 'HISTÓRIA', '', 1, 1, '115629454420567283308'),
(195, 'https://howlongtobeat.com/games/67361_Man_of_Medan.jpg', 'The Dark Pictures: Man of Medan', '59,99', '4', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(196, 'https://howlongtobeat.com/games/98586_Nickelodeon_All_Star.jpg', 'Nickelodeon All-Star Brawl', '249,00', '1', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(197, 'https://howlongtobeat.com/games/93486_Tribes_of_Midgard.jpg', 'Tribes of Midgard', '99,99', '15', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(198, 'https://howlongtobeat.com/games/75585_Curse_of_the_Dead_Gods.jpg', 'Curse of the Dead Gods', '100,00', '22', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(199, 'https://howlongtobeat.com/games/MetalGearSolid5_2013.jpg', 'Metal Gear Solid V: The Phantom Pain', '19,99', '46', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(200, 'https://howlongtobeat.com/games/Infamous_second_son_boxart.jpg', 'inFAMOUS: Second Son', '100,00', '10', 'PS4', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(201, 'https://howlongtobeat.com/games/LittleBigPlanet_3_boxart.jpg', 'LittleBigPlanet 3', '37,99', '6', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(202, 'https://howlongtobeat.com/games/95455_Arcadegeddon.jpg', 'Arcadegeddon', '99,99', '6', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(203, 'https://howlongtobeat.com/games/Just_Cause_3_cover_art.jpg', 'Just Cause 3', '59,99', '18', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(204, 'https://howlongtobeat.com/games/Broforce_292x136.jpg', 'Broforce', '37,99', '7', 'PS4', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(205, 'https://howlongtobeat.com/games/38050_God_of_War.jpg', 'God of War', '59,99', '21', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(206, 'https://howlongtobeat.com/games/This_War_of_Mine_header.jpg', 'This War of Mine', '100,00', '11', 'PS4', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(207, 'https://howlongtobeat.com/games/98260_FIFA_22.jpg', 'FIFA 22', '200,00', '50', 'PS5', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(208, 'https://howlongtobeat.com/games/80317_Crash_Bandicoot_4_Its_About_Time.jpg', 'Crash Bandicoot 4: It\'s About Time', '200,00', '10', 'PS5', 'HISTÓRIA', '', 0, 1, '115629454420567283308'),
(209, 'https://howlongtobeat.com/games/worms-battlegrounds-logo.jpg', 'Worms Battlegrounds', '133,00', '10', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(210, 'https://howlongtobeat.com/games/61474_Naruto_to_Boruto_Shinobi_Striker.jpg', 'Naruto to Boruto: Shinobi Striker', '250,00', '7', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(211, 'https://howlongtobeat.com/games/78213_Tony_Hawks_Pro_Skater_1__2.jpg', 'Tony Hawk\'s Pro Skater 1   2', '200,00', '7', 'PS5', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(212, 'https://howlongtobeat.com/games/71931_Yakuza_Like_a_Dragon.jpg', 'Yakuza: Like a Dragon', '200,00', '45', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(213, 'https://howlongtobeat.com/games/39417_Little_Nightmares.jpg', 'Little Nightmares', '59,99', '4', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(214, 'https://howlongtobeat.com/games/69695_Need_For_Speed_Heat.jpg', 'Need For Speed Heat', '200,00', '13', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(215, 'https://howlongtobeat.com/games/68361_Granblue_Fantasy_Versus.jpg', 'Granblue Fantasy: Versus', '100,00', '5', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(216, 'https://howlongtobeat.com/games/86977_Toem.jpg', 'Toem', '37,99', '3', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(217, 'https://howlongtobeat.com/games/68270_Fall_Guys.jpg', 'Fall Guys', '0,00', '9', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(218, 'https://howlongtobeat.com/games/79775_Horizon_Forbidden_West.jpg', 'Horizon Forbidden West', '200,00', '29', 'PS5', 'COMPLETO', '', 0, 0, '115629454420567283308'),
(219, 'https://howlongtobeat.com/games/116471_Call_of_Duty_Warzone_2.0.jpg', 'Call of Duty: Warzone 2.0', '0,00', '0', 'PS5', 'HISTÓRIA', 'ogalopeida', 0, 0, '115629454420567283308'),
(220, 'https://howlongtobeat.com/games/89344_Hot_Wheels_Unleashed.jpg', 'Hot Wheels Unleashed', '47,99', '9', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(221, 'https://howlongtobeat.com/games/37862_Injustice_2.jpg', 'Injustice 2', '100,00', '6', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(222, 'https://howlongtobeat.com/games/superhot-splash-logoless.jpg', 'SUPERHOT', '37,99', '2', 'PS5', 'HISTÓRIA', '', 0, 1, '115629454420567283308'),
(223, 'https://howlongtobeat.com/games/80199_It_Takes_Two.jpg', 'It Takes Two', '90,99', '12', 'PS5', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(224, 'https://howlongtobeat.com/games/94137_Overwatch_2.png', 'Overwatch 2', '0,00', '43', 'PS5', 'HISTÓRIA', 'ogalopeida', 0, 0, '115629454420567283308'),
(225, 'https://howlongtobeat.com/games/The_Sims_4_Box_Art.jpg', 'The Sims 4', '100,00', '19', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(226, 'https://howlongtobeat.com/games/60877_Nioh_2.jpg', 'Nioh 2', '200,00', '45', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(227, 'https://howlongtobeat.com/games/47803_Lego_Harry_Potter_Collection.jpg', 'LEGO Harry Potter Collection', '129,99', '26', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(228, 'https://howlongtobeat.com/games/95410_Heavenly_Bodies.jpg', 'Heavenly Bodies', '100,00', '5', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(229, 'https://howlongtobeat.com/games/84851_Mass_Effect_Legendary_Edition.jpg', 'Mass Effect Legendary Edition', '290,00', '60', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(230, 'https://howlongtobeat.com/games/48568_BIOMUTANT.jpg', 'Biomutant', '200,00', '12', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(231, 'https://howlongtobeat.com/games/117972_Divine_Knockout.jpg', 'Divine Knockout', '59,99', '0', 'PS5', 'NÃO JOGUEI', 'ogalopeida', 0, 0, '115629454420567283308'),
(232, 'https://howlongtobeat.com/games/Batman_Arkham_Knight_Cover_Art.jpg', 'Batman: Arkham Knight', '59,99', '16', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(233, 'https://howlongtobeat.com/games/101083_UNCHARTED_Legacy_of_Thieves_Collection.jpg', 'Uncharted: Legacy of Thieves Collection', '250,00', '21', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(234, 'https://howlongtobeat.com/games/31388_Detroit_Become_Human.jpg', 'Detroit: Become Human', '59,99', '12', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(235, 'https://howlongtobeat.com/games/38003_Days_Gone.jpg', 'Days Gone', '200,00', '36', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(236, 'https://howlongtobeat.com/games/COD_Black_Ops_3.jpg', 'Call of Duty: Black Ops III', '100,00', '9', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(237, 'https://howlongtobeat.com/games/256px-TheLastGuardian.jpg', 'The Last Guardian', '100,00', '12', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(238, 'https://howlongtobeat.com/games/38001_Battlefield_1.jpg', 'Battlefield 1', '100,00', '7', 'PS4', 'HISTÓRIA', 'ogalopeida', 1, 0, '115629454420567283308'),
(239, 'https://howlongtobeat.com/games/38051_Resident_Evil_VII.jpg', 'Resident Evil 7: Biohazard', '100,00', '9', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(240, 'https://howlongtobeat.com/games/52493_Monster_Hunter_World.jpg', 'Monster Hunter: World', '79,99', '48', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(241, 'https://howlongtobeat.com/games/3537_Final_Fantasy_XV.jpg', 'Final Fantasy XV', '100,00', '28', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(242, 'https://howlongtobeat.com/games/Fallout_4.jpg', 'Fallout 4', '100,00', '27', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(243, 'https://howlongtobeat.com/games/46381_Crash_Bandicoot_N_Sane_Trilogy.jpg', 'Crash Bandicoot N. Sane Trilogy', '200,00', '15', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(244, 'https://howlongtobeat.com/games/57416_Fallout_76.jpg', 'Fallout 76', '200,00', '32', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(245, 'https://howlongtobeat.com/games/72785_Axiom_Verge_2.jpg', 'Axiom Verge 2', '100,00', '9', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(246, 'https://howlongtobeat.com/games/Bloodborne_Cover_Wallpaper.jpg', 'Bloodborne', '100,00', '33', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(247, 'https://howlongtobeat.com/games/21924_Until_Dawn.jpg', 'Until Dawn', '100,00', '8', 'PS4', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(248, 'https://howlongtobeat.com/games/TheLastofUsRemastered.jpg', 'The Last of Us Remastered', '100,00', '15', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(249, 'https://howlongtobeat.com/games/85971_Evil_Dead_The_Game.jpg', 'Evil Dead: The Game', '200,00', '4', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(250, 'https://howlongtobeat.com/games/78135_Mafia_Definitive_Edition.jpg', 'Mafia: Definitive Edition', '150,00', '11', 'PS5', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(251, 'https://howlongtobeat.com/games/91070_OlliOlli_World.jpg', 'OlliOlli World', '150,00', '6', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(252, 'https://howlongtobeat.com/games/10270_The_Witcher_3_Wild_Hunt.jpg', 'The Witcher 3: Wild Hunt', '100,00', '51', 'PS5', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(253, 'https://howlongtobeat.com/games/93426_Battlefield_2042.jpg', 'Battlefield 2042', '200,00', '61', 'PS5', 'NÃO JOGUEI', 'ogalopeida', 0, 0, '115629454420567283308'),
(254, 'https://howlongtobeat.com/games/68149_Minecraft_Dungeons.jpg', 'Minecraft Dungeons', '79,99', '5', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(255, 'https://howlongtobeat.com/games/46470_Code_Vein.png', 'Code Vein', '300,00', '26', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(256, 'https://howlongtobeat.com/games/113537_Meet_Your_Maker.jpg', 'Meet Your Maker', '150,00', '0', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(257, 'https://howlongtobeat.com/games/80125_Sackboy_A_Big_Adventure.jpg', 'Sackboy: A Big Adventure', '100,00', '10', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(258, 'https://howlongtobeat.com/games/96877_Tails_of_Iron.jpg', 'Tails of Iron', '100,00', '7', 'PS5', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(259, 'https://howlongtobeat.com/games/83361_Astros_Playroom.jpg', 'Astro\'s Playroom', '0,00', '3', 'PS5', 'COMPLETO', '', 0, 0, '115629454420567283308'),
(260, 'https://howlongtobeat.com/games/64996_Far_Cry_New_Dawn.jpg', 'Far Cry New Dawn', '70,99', '11', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(261, 'https://howlongtobeat.com/games/49957_Gran_Turismo_Sport.jpg', 'Gran Turismo Sport', '100,00', '25', 'PS5', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(262, 'https://howlongtobeat.com/games/57525_Just_Cause_4.jpg', 'Just Cause 4', '37,99', '16', 'PS5', 'COMPLETO', '', 0, 0, '115629454420567283308'),
(263, 'https://howlongtobeat.com/games/37861_Watch_Dogs_2.jpg', 'Watch Dogs 2', '200,00', '19', 'PS4', 'COMPLETO', '', 1, 0, '115629454420567283308'),
(264, 'https://howlongtobeat.com/games/Rainbow_Six_siege_photo_2014-06-14_17-51.jpg', 'Tom Clancy\'s Rainbow Six Siege', '200,00', '1339', 'PC-UBISOFT', 'COMPLETO', 'odougrazzz', 1, 0, '115629454420567283308'),
(265, 'https://howlongtobeat.com/games/256px-Dying_Light_cover.jpg', 'Dying Light', '100,00', '17', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(266, 'https://howlongtobeat.com/games/Destiny_box_art.png', 'Destiny', '100,00', '12', 'PS4', 'HISTÓRIA', '', 1, 0, '115629454420567283308'),
(267, 'https://howlongtobeat.com/games/85057_A_Game_of_Thrones_The_Board_Game.jpg', 'A Game of Thrones: The Board Game', '59,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(268, 'https://howlongtobeat.com/games/28913_Absolute_Drift.jpg', 'Absolute Drift', '7,00', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(269, 'https://howlongtobeat.com/games/86015_Alba_A_Wildlife_Adventure.jpg', 'Alba: A Wildlife Adventure', '32,99', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(270, 'https://howlongtobeat.com/games/Alien_Isolation.jpg', 'Alien: Isolation', '179,00', '19', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(271, 'https://howlongtobeat.com/games/80121_Amnesia_Rebirth.jpg', 'Amnesia: Rebirth', '88,00', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(272, 'https://howlongtobeat.com/games/76938_Ancient_Enemy.jpg', 'Ancient Enemy', '46,99', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(273, 'https://howlongtobeat.com/games/Batman_Arkham_Asylum_GOTY.jpg', 'Batman: Arkham Asylum GOTY', '80,00', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(274, 'https://howlongtobeat.com/games/11963_Batman_Arkham_City_GOTY.jpg', 'Batman: Arkham City GOTY', '90,00', '14', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(275, 'https://howlongtobeat.com/games/Bioshock_2_boxart.jpg', 'BioShock 2', '19,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(276, 'https://howlongtobeat.com/games/Official_cover_art_for_Bioshock_Infinite.jpg', 'BioShock Infinite', '19,99', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(277, 'https://howlongtobeat.com/games/57650_Bloons_TD_6.jpg', 'Bloons TD 6', '8,00', '31', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(278, 'https://howlongtobeat.com/games/Borderlands2boxart3.jpg', 'Borderlands 2', '10,00', '30', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(279, 'https://howlongtobeat.com/games/65882_Borderlands_3.jpg', 'Borderlands 3', '19,99', '23', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(280, 'https://howlongtobeat.com/games/Borderlands_The_Pre-Sequel_box_art.jpg', 'Borderlands: The Pre-Sequel!', '8,00', '18', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(281, 'https://howlongtobeat.com/games/85409_Bridge_Constructor_The_Walking_Dead.jpg', 'Bridge Constructor: The Walking Dead', '19,99', '9', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(282, 'https://howlongtobeat.com/games/57643_Bus_Simulator_18.jpg', 'Bus Simulator 18', '47,99', '48', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(283, 'https://howlongtobeat.com/games/77918_Call_of_the_Sea.jpg', 'Call of the Sea', '37,99', '6', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(284, 'https://howlongtobeat.com/games/48426_Car_Mechanic_Simulator_2018.jpg', 'Car Mechanic Simulator 2018', '60,00', '30', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(285, 'https://howlongtobeat.com/games/50294_Chess_Ultra.jpg', 'Chess Ultra', '25,00', '2', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(286, 'https://howlongtobeat.com/games/Cities_Skylines_cover_art.jpg', 'Cities: Skylines', '69,99', '26', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(287, 'https://howlongtobeat.com/games/96518_City_of_Gangsters.jpg', 'City of Gangsters', '88,00', '25', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(288, 'https://howlongtobeat.com/games/57507_Control.jpg', 'Control', '100,00', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(289, 'https://howlongtobeat.com/games/74718_Cook_Serve_Delicious_3.jpg', 'Cook, Serve, Delicious! 3?!', '37,99', '46', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(290, 'https://howlongtobeat.com/games/68209_Cristales.jpg', 'Cris Tales', '15,00', '21', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(291, 'https://howlongtobeat.com/games/68133_Genshin_Impact.jpg', 'Genshin Impact', '0,00', '57', 'PC-EPICGAMES', 'HISTÓRIA', '', 0, 0, '115629454420567283308'),
(292, 'https://howlongtobeat.com/games/94190_Dark_Deity.jpg', 'Dark Deity', '79,99', '23', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(293, 'https://howlongtobeat.com/games/Darkwood_292x136.jpg', 'Darkwood', '24,99', '18', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(294, 'https://howlongtobeat.com/games/37986_Dead_by_Daylight.jpg', 'Dead by Daylight', '49,99', '61', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(295, 'https://howlongtobeat.com/games/38061_Death_Stranding.jpg', 'Death Stranding', '79,99', '40', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(296, 'https://howlongtobeat.com/games/43894_Destiny_2.png', 'Destiny 2', '0,00', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(297, 'https://howlongtobeat.com/games/220px-Dishonored_box_art_Bethesda.jpg', 'Dishonored', '30,00', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(298, 'https://howlongtobeat.com/games/46419_Dishonored_Death_of_the_Outsider.jpg', 'Dishonored: Death of the Outsider', '90,00', '6', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(299, 'https://howlongtobeat.com/games/2709_Doom_64.jpg', 'Doom 64', '9,00', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(300, 'https://howlongtobeat.com/games/29916_Duskers.jpg', 'Duskers', '36,99', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(301, 'https://howlongtobeat.com/games/70452_Encased_A_Sci-Fi_Post-Apocalyptic_RPG.jpg', 'Encased', '10,00', '23', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(302, 'https://howlongtobeat.com/games/33974_Epistory_-_Typing_Chronicles.jpg', 'Epistory: Typing Chronicles', '42,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(304, 'https://howlongtobeat.com/games/Evoland_292x136.jpg', 'Evoland', '19,99', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(305, 'https://howlongtobeat.com/games/63648_Eximius_Seize_the_Frontline.jpg', 'Eximius: Seize the Frontline', '19,99', '14', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(306, 'https://howlongtobeat.com/games/83127_FIST_Forged_In_Shadow_Torch.jpg', 'F.I.S.T.: Forged In Shadow Torch', '89,99', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(307, 'https://howlongtobeat.com/games/250px-PC_Game_Fallout_2.jpg', 'Fallout 2', '19,99', '30', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(308, 'https://howlongtobeat.com/games/Fallout_3_cover_art.PNG', 'Fallout 3', '19,99', '22', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(309, 'https://howlongtobeat.com/games/256px-Fallout_Tactics_Box.jpg', 'Fallout Tactics: Brotherhood of Steel', '19,99', '29', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(310, 'https://howlongtobeat.com/games/250px-Fallout.jpg', 'Fallout', '19,99', '16', 'PC-EPICGAMES', ' ', '', 0, 0, '115629454420567283308'),
(311, 'https://howlongtobeat.com/games/62587_Farming_Simulator_19.jpg', 'Farming Simulator 19', '84,99', '113', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(312, 'https://howlongtobeat.com/games/77629_Filament.jpg', 'Filament', '52,99', '19', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(313, 'https://howlongtobeat.com/games/85411_First_Class_Trouble.jpg', 'First Class Trouble', '40,00', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(314, 'https://howlongtobeat.com/games/45024_For_The_King.jpg', 'For The King', '19,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(315, 'https://howlongtobeat.com/games/63546_Fort_Triumph.jpg', 'Fort Triumph', '37,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(316, 'https://howlongtobeat.com/games/3657_Fortnite.jpg', 'Fortnite', '0,00', '63', 'PC-EPICGAMES', 'HISTÓRIA', 'odougrazzz', 0, 0, '115629454420567283308'),
(317, 'https://howlongtobeat.com/games/Galactic-Civilizations_III_header.jpg', 'Galactic Civilizations III', '75,99', '23', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(318, 'https://howlongtobeat.com/games/70865_Gamedec.jpg', 'Gamedec', '57,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(319, 'https://howlongtobeat.com/games/89363_Geneforge_1-Mutagen.jpg', 'Geneforge: 1-Mutagen', '19,99', '38', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(320, 'https://howlongtobeat.com/games/69273_Gloomhaven.jpg', 'Gloomhaven', '92,99', '113', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(321, 'https://howlongtobeat.com/games/73081_Godfall.jpg', 'Godfall', '75,99', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(322, 'https://howlongtobeat.com/games/87797_Gods_Will_Fall.jpg', 'Gods Will Fall', '0,00', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(323, 'https://howlongtobeat.com/games/114518_Hell_is_Others.jpg', 'Hell is Others', '10,00', '30', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(324, 'https://howlongtobeat.com/games/92198_Hood_Outlaws_and_Legends.jpg', 'Hood: Outlaws and Legends', '10,00', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308');
INSERT INTO `jogos` (`id`, `htlb`, `nome`, `valor`, `tempo`, `plataforma`, `progresso`, `multiplayer`, `comprado`, `jogando`, `fk_jogador_id`) VALUES
(325, 'https://howlongtobeat.com/games/57066_Horizon_Chase_Turbo.jpg', 'Horizon Chase Turbo', '9,99', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(326, 'https://howlongtobeat.com/games/92590_Hundred_Days_-_Winemaking_Simulator.jpg', 'Hundred Days - Winemaking Simulator', '47,99', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(327, 'https://howlongtobeat.com/games/48446_Idle_Champions_of_the_Forgotten_Realms.jpg', 'Idle Champions of the Forgotten Realms', '0,00', '30', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(328, 'https://howlongtobeat.com/games/81044_In_Sound_Mind.jpg', 'In Sound Mind', '10,00', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(329, 'https://howlongtobeat.com/games/91814_Insurmountable.jpg', 'Insurmountable', '60,00', '6', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(330, 'https://howlongtobeat.com/games/69397_Iratus_Lord_of_the_Dead.jpg', 'Iratus: Lord of the Dead', '100,00', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(331, 'https://howlongtobeat.com/games/Jotun_header.jpg', 'Jotun', '47,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(332, 'https://howlongtobeat.com/games/57068_Jurassic_World_Evolution.jpg', 'Jurassic World Evolution', '14,99', '25', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(333, 'https://howlongtobeat.com/games/91442_Just_Die_Already.jpg', 'Just Die Already', '27,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(334, 'https://howlongtobeat.com/games/Kerbal_Space_Program.jpg', 'Kerbal Space Program', '72,99', '116', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(335, 'https://howlongtobeat.com/games/Killing_Floor_2_header.jpg', 'Killing Floor 2', '54,99', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(336, 'https://howlongtobeat.com/games/92506_Knockout_City.jpg', 'Knockout City', '0,00', '37', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(337, 'https://howlongtobeat.com/games/250px-Legobatman2_dc_super_heroes.jpg', 'LEGO Batman 2: DC Super Heroes', '89,99', '9', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(338, 'https://howlongtobeat.com/games/Lego_Batman_3_-_Beyond_Gotham_cover.jpg', 'LEGO Batman 3: Beyond Gotham', '89,99', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(339, 'https://howlongtobeat.com/games/230px-Lego_batman_cover.jpg', 'LEGO Batman: The Videogame', '89,99', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(340, 'https://howlongtobeat.com/games/73040_LEGO_Builders_Journey.jpg', 'LEGO Builder\'s Journey', '59,99', '2', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(341, 'https://howlongtobeat.com/games/45399_Mages_of_Mystralia.jpg', 'Mages of Mystralia', '37,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(342, 'https://howlongtobeat.com/games/68266_Maneater.jpg', 'Maneater', '75,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(343, 'https://howlongtobeat.com/games/MetroLastLightRedux_292x136.jpg', 'Metro: Last Light Redux', '0,00', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(344, 'https://howlongtobeat.com/games/76520_Mortal_Shell.jpg', 'Mortal Shell', '56,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(345, 'https://howlongtobeat.com/games/75031_Moving_Out.jpg', 'Moving Out', '59,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(346, 'https://howlongtobeat.com/games/62811_Mutant_Year_Zero_Road_to_Eden.jpg', 'Mutant Year Zero: Road to Eden', '89,99', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(347, 'https://howlongtobeat.com/games/82997_NBA_2K21.jpg', 'NBA 2K21', '74,99', '22', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(348, 'https://howlongtobeat.com/games/77366_Neon_Abyss.jpg', 'Neon Abyss', '100,00', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(349, 'https://howlongtobeat.com/games/36936_Nioh.jpg', 'Nioh', '240,00', '35', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(350, 'https://howlongtobeat.com/games/60050_Pathfinder_Kingmaker.jpg', 'Pathfinder: Kingmaker', '37,99', '78', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(351, 'https://howlongtobeat.com/games/44590_Prey_(2017).jpg', 'Prey', '89,99', '16', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(352, 'https://howlongtobeat.com/games/256px-Quake1cover.jpg', 'Quake', '10,00', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(353, 'https://howlongtobeat.com/games/58031_Rage_2.jpg', 'Rage 2', '120,00', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(354, 'https://howlongtobeat.com/games/101665_Recipe_for_Disaster.jpg', 'Recipe for Disaster', '52,99', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(355, 'https://howlongtobeat.com/games/39800_Redout.jpg', 'Redout', '89,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(356, 'https://howlongtobeat.com/games/68318_Remnant_From_the_Ashes.jpg', 'Remnant: From the Ashes', '30,00', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(357, 'https://howlongtobeat.com/games/77798_Ring_of_Pain.jpg', 'Ring of Pain', '37,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(358, 'https://howlongtobeat.com/games/54536_Rise_of_Industry.jpg', 'Rise of Industry', '88,99', '22', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(359, 'https://howlongtobeat.com/games/250px-Rise_of_the_Tomb_Raider.jpg', 'Rise of the Tomb Raider', '85,00', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(360, 'https://howlongtobeat.com/games/82171_Rising_Hell.jpg', 'Rising Hell', '20,00', '2', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(361, 'https://howlongtobeat.com/games/26793_Rising_Storm_2_Vietnam.jpg', 'Rising Storm 2: Vietnam', '45,99', '1', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(362, 'https://howlongtobeat.com/games/67076_Riverbond.jpg', 'Riverbond', '45,00', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(363, 'https://howlongtobeat.com/games/70213_Rogue_Company.jpg', 'Rogue Company', '0,00', '15', 'PC-EPICGAMES', 'HISTÓRIA', 'odougrazzz', 0, 0, '115629454420567283308'),
(364, 'https://howlongtobeat.com/games/rogue_legacy_indie.jpg', 'Rogue Legacy', '47,99', '16', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(365, 'https://howlongtobeat.com/games/83478_RollerCoaster_Tycoon_3_Complete_Edition.jpg', 'RollerCoaster Tycoon 3', '10,00', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(366, 'https://howlongtobeat.com/games/117548_RPG_in_a_Box.jpg', 'RPG in a Box', '59,99', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(367, 'https://howlongtobeat.com/games/runbow6.jpg', 'Runbow', '27,99', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(368, 'https://howlongtobeat.com/games/59371_Sable_(2020).jpg', 'Sable', '47,99', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(369, 'https://howlongtobeat.com/games/39397_Saints_Row_IV_Re-elected.jpg', 'Saints Row IV: Re-Elected', '100,00', '15', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(370, 'https://howlongtobeat.com/games/115294_Saturnalia.jpg', 'Saturnalia', '0,00', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(371, 'https://howlongtobeat.com/games/51233_Shadow_of_the_Tomb_Raider.png', 'Shadow of the Tomb Raider', '145,00', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(372, 'https://howlongtobeat.com/games/89786_Severed_Steel.jpg', 'Severed Steel', '20,00', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(373, 'https://howlongtobeat.com/games/38300_Shadow_Tactics_Blades_of_the_Shogun.jpg', 'Shadow Tactics: Blades of the Shogun', '100,00', '25', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(374, 'https://howlongtobeat.com/games/80051_shapezio.jpg', 'shapez', '20,00', '26', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(375, 'https://howlongtobeat.com/games/78226_Shop_Titans.jpg', 'Shop Titans', '0,00', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(376, 'https://howlongtobeat.com/games/37867_Sid_Meiers_Civilization_VI.jpg', 'Sid Meier\'s Civilization VI', '10,00', '22', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(377, 'https://howlongtobeat.com/games/40103_Slain_Back_from_Hell.jpg', 'Slain: Back from Hell', '0,00', '6', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(378, 'https://howlongtobeat.com/games/70825_Spirit_of_the_North.jpg', 'Spirit of the North', '37,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(379, 'https://howlongtobeat.com/games/StarWarsBattlefront2_PC.jpg', 'Star Wars: Battlefront II', '160,00', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(380, 'https://howlongtobeat.com/games/85736_Submerged_Hidden_Depths.jpg', 'Submerged: Hidden Depths', '60,00', '4', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(381, 'https://howlongtobeat.com/games/62224_Supraland.jpg', 'Supraland', '25,00', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(382, 'https://howlongtobeat.com/games/53337_Tannenberg.jpg', 'Tannenberg', '59,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(383, 'https://howlongtobeat.com/games/63476_Terraforming_Mars.jpg', 'Terraforming Mars', '59,99', '1', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(384, 'https://howlongtobeat.com/games/101186_The_Captain.jpg', 'The Captain', '37,99', '10', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(385, 'https://howlongtobeat.com/games/53253_The_Drone_Racing_League_Simulator.jpg', 'The Drone Racing League Simulator', '19,99', '0', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(386, 'https://howlongtobeat.com/games/TheEscapistsheader.jpg', 'The Escapists', '45,09', '20', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(387, 'https://howlongtobeat.com/games/The_Silent_Age.jpg', 'The Silent Age', '37,99', '3', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(388, 'https://howlongtobeat.com/games/The_Vanishing_of_Ethan_Carter.jpg', 'The Vanishing of Ethan Carter', '0,00', '4', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(389, 'https://howlongtobeat.com/games/53474_Thems_Fightin_Herds.jpg', 'Them\'s Fightin\' Herds', '19,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(390, 'https://howlongtobeat.com/games/65277_ToeJam_&_Earl_Back_in_the_Groove.jpg', 'ToeJam & Earl: Back in the Groove!', '29,99', '2', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(392, 'https://howlongtobeat.com/games/34457_Total_War_WARHAMMER.jpg', 'Total War: Warhammer', '252,00', '33', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(393, 'https://howlongtobeat.com/games/47252_Total_War_WARHAMMER_II.jpg', 'Total War: Warhammer II', '252,00', '42', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(394, 'https://howlongtobeat.com/games/76004_Tunche.jpg', 'Tunche', '37,99', '8', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(395, 'https://howlongtobeat.com/games/73803_Unrailed.jpg', 'Unrailed!', '59,99', '2', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(396, 'https://howlongtobeat.com/games/35857_Vampyr.jpg', 'Vampyr', '150,00', '17', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(397, 'https://howlongtobeat.com/games/58533_Warhammer_40000_Gladius_-_Relics_of_War.jpg', 'Warhammer 40,000: Gladius - Relics of War', '75,99', '9', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(398, 'https://howlongtobeat.com/games/62616_Warhammer_40000_Mechanicus.jpg', 'Warhammer 40,000: Mechanicus', '88,00', '19', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(399, 'https://howlongtobeat.com/games/84001_Warpips.jpg', 'Warpips', '49,99', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(400, 'https://howlongtobeat.com/games/77677_Wildcat_Gun_Machine.jpg', 'Wildcat Gun Machine', '37,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(401, 'https://howlongtobeat.com/games/76551_Windbound.jpg', 'Windbound', '0,00', '12', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(402, 'https://howlongtobeat.com/games/256px-Wolfenstein_The_New_Order_cover.jpg', 'Wolfenstein: The New Order', '49,99', '11', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(403, 'https://howlongtobeat.com/games/45210_Wonder_Boy_The_Dragons_Trap.PNG', 'Wonder Boy: The Dragon\'s Trap', '59,99', '5', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(404, 'https://howlongtobeat.com/games/64828_World_War_Z.jpg', 'World War Z', '75,99', '7', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(405, 'https://howlongtobeat.com/games/XCOM_2_2015.jpg', 'XCOM 2', '100,00', '33', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308'),
(406, 'https://howlongtobeat.com/games/68031_Yooka-Laylee_and_the_Impossible_Lair.jpg', 'Yooka-Laylee and the Impossible Lair', '150,00', '13', 'PC-EPICGAMES', 'NÃO JOGUEI', '', 0, 0, '115629454420567283308');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

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
