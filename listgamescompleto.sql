-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Abr-2023 às 21:15
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
(82, 'https://howlongtobeat.com/games/62621_SNK_40th_Anniversary_Collection.jpg', 'SNK 40th Anniversary Collection', '59,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(83, 'https://howlongtobeat.com/games/255px-Last_Blade_(cover).jpg', 'The Last Blade', '19,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(84, 'https://howlongtobeat.com/games/metal_slug_X.jpg', 'Metal Slug X', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(85, 'https://howlongtobeat.com/games/TwinkleStarSprites_frontcover.png', 'Twinkle Star Sprites', '15,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(86, 'https://howlongtobeat.com/games/225px-Real_Bout_2_(cover).jpg', 'Real Bout Fatal Fury 2: The Newcomers', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(87, 'https://howlongtobeat.com/games/61488_Breathedge.jpg', 'Breathedge', '79,99', '16', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(88, 'https://howlongtobeat.com/games/100032_Lawn_Mowing_Simulator.jpg', 'Lawn Mowing Simulator', '59,99', '23', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(89, 'https://howlongtobeat.com/games/84835_Chicken_Police.jpg', 'Chicken Police', '37,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(90, 'https://howlongtobeat.com/games/111005_Faraway_2_Jungle_Escape.jpg', 'Faraway 2: Jungle Escape', '16,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(91, 'https://howlongtobeat.com/games/115708_Doors_Paradox.jpg', 'Doors: Paradox', '46,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(92, 'https://howlongtobeat.com/games/89567_The_Amazing_American_Circus.jpg', 'The Amazing American Circus', '59,99', '12', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(93, 'https://howlongtobeat.com/games/82168_Banners_of_Ruin.jpg', 'Banners of Ruin', '37,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(94, 'https://howlongtobeat.com/games/Brothers_A_Tale_of_Two_Sons_cover_art.jpg', 'Brothers: A Tale of Two Sons', '6,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(95, 'https://howlongtobeat.com/games/63173_Desert_Child.jpg', 'Desert Child', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(96, 'https://howlongtobeat.com/games/83373_Spinch.jpg', 'Spinch', '46,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(97, 'https://howlongtobeat.com/games/WhisperingWillows_292x136.jpg', 'Whispering Willows', '19,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(98, 'https://howlongtobeat.com/games/69038_Etherborn.jpg', 'Etherborn', '52,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(99, 'https://howlongtobeat.com/games/48621_Last_Day_of_June.jpg', 'Last Day of June', '9,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(100, 'https://howlongtobeat.com/games/108241_Indiana_Jones_and_the_Last_Crusade.jpg', 'Indiana Jones and the Last Crusade', '12,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(101, 'https://howlongtobeat.com/games/82743_WRC_9.jpg', 'WRC 9: FIA World Rally Championship', '19,99', '18', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(102, 'https://howlongtobeat.com/games/250px-LOOM_Cover_Art.jpg', 'Loom', '12,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(103, 'https://howlongtobeat.com/games/105664_Heros_Hour.jpg', 'Hero\'s Hour', '34,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(104, 'https://howlongtobeat.com/games/69579_Horace_(2019).jpg', 'Horace', '11,99', '14', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(105, 'https://howlongtobeat.com/games/108020_Castle_on_the_Coast.jpg', 'Castle on the Coast', '37,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(106, 'https://howlongtobeat.com/games/99825_Defend_the_Rook.jpg', 'Defend the Rook', '34,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(107, 'https://howlongtobeat.com/games/The_Dig_artwork.jpg', 'The Dig', '12,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(108, 'https://howlongtobeat.com/games/65820_We_The_Revolution.jpg', 'We. The Revolution', '49,99', '13', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(109, 'https://howlongtobeat.com/games/Zak_McKracken_artwork.jpg', 'Zak McKracken and the Alien Mindbenders', '11,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(110, 'https://howlongtobeat.com/games/93259_Beasts_of_Maravilla_Island.jpg', 'Beasts of Maravilla Island', '19,99', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(111, 'https://howlongtobeat.com/games/69534_Recompile_(2020).jpg', 'Recompile', '45,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(112, 'https://howlongtobeat.com/games/68579_ScourgeBringer.jpg', 'ScourgeBringer', '37,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(113, 'https://howlongtobeat.com/games/64047_Fell_Seal_Arbiters_Mark.jpg', 'Fell Seal: Arbiter\'s Mark', '89,99', '37', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(114, 'https://howlongtobeat.com/games/84662_Fishing_North_Atlantic.jpg', 'Fishing: North Atlantic', '59,99', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(115, 'https://howlongtobeat.com/games/83906_Suzerain.jpg', 'Suzerain', '46,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(116, 'https://howlongtobeat.com/games/250px-Maniac_Mansion_artwork.jpg', 'Maniac Mansion', '11,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(117, 'https://howlongtobeat.com/games/Star_Wars_-_Republic_Commando_Coverart.png', 'Star Wars: Republic Commando', '19,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(118, 'https://howlongtobeat.com/games/Jabox.jpg', 'Star Wars Jedi Knight: Jedi Academy', '19,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(119, 'https://howlongtobeat.com/games/Jedi_Outcast_pc_cover.jpg', 'Star Wars Jedi Knight II: Jedi Outcast', '19,99', '13', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(120, 'https://howlongtobeat.com/games/44498_Clouds_', 'Clouds ', '32,99', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(121, 'https://howlongtobeat.com/games/91005_The_Darkside_Detective_A_Fumble_in_the_Dark.jpg', 'The Darkside Detective: A Fumble in the Dark', '46,99', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(122, 'https://howlongtobeat.com/games/47682_The_Darkside_Detective.jpg', 'The Darkside Detective', '46,00', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(123, 'https://howlongtobeat.com/games/Rain_World_header.jpg', 'Rain World', '77,99', '22', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(124, 'https://howlongtobeat.com/games/90468_8Doors_Arums_Afterlife_Adventure.jpg', '8Doors: Arum\'s Afterlife Adventure', '37,99', '9', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(125, 'https://howlongtobeat.com/games/40258_The_Metronomicon.jpg', 'The Metronomicon', '0,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(126, 'https://howlongtobeat.com/games/Samurai_Shodown_II_cover.jpg', 'Samurai Shodown II', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(127, 'https://howlongtobeat.com/games/40473_Serial_Cleaner.jpg', 'Serial Cleaner', '0,00', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(128, 'https://howlongtobeat.com/games/250px-Fatal_Fury_Special_(cover).jpg', 'Fatal Fury Special', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(129, 'https://howlongtobeat.com/games/38008_HUE.jpg', 'HUE', '27,11', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(130, 'https://howlongtobeat.com/games/74471_Metal_Unit.jpg', 'Metal Unit', '27,11', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(131, 'https://howlongtobeat.com/games/40492_Manual_Samuel.jpg', 'Manual Samuel', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(132, 'https://howlongtobeat.com/games/51841_The_Crows_Eye.jpg', 'The Crow\'s Eye', '32,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(133, 'https://howlongtobeat.com/games/225px-Metal_Slug_2_(cover).jpg', 'Metal Slug 2', '12,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(134, 'https://howlongtobeat.com/games/ProjectGianaSplashArt.jpg', 'Giana Sisters: Twisted Dreams', '6,00', '7', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(135, 'https://howlongtobeat.com/games/66375_Pumped_bmx_pro.jfif', 'Pumped BMX Pro', '5,00', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(136, 'https://howlongtobeat.com/games/47424_Death_Squared.jpg', 'Death Squared', '28,11', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(137, 'https://howlongtobeat.com/games/The_King_of_Fighters_2000_-_poster.jpg', 'The King of Fighters 2000', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(138, 'https://howlongtobeat.com/games/38775_10_Second_Ninja_X.jpg', '10 Second Ninja X', '0,00', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(139, 'https://howlongtobeat.com/games/The_King_of_Fighters_2002_(cover).jpg', 'The King of Fighters 2002', '0,00', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(140, 'https://howlongtobeat.com/games/85787_Gone_Viral.jpg', 'Gone Viral', '59,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(141, 'https://howlongtobeat.com/games/2222510-box_bbr_large.png', 'Bang Bang Racing', '16,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(142, 'https://howlongtobeat.com/games/81108_Across_The_Grooves.jpg', 'Across The Grooves', '47,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(143, 'https://howlongtobeat.com/games/67977_Astrologaster.jpg', 'Astrologaster', '20,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(144, 'https://howlongtobeat.com/games/85354_Calico.jpg', 'Calico', '22,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(145, 'https://howlongtobeat.com/games/70659_Wrc_8.jfif', 'WRC 8', '69,99', '17', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(146, 'https://howlongtobeat.com/games/250px-Escape_from_Monkey_Island_artwork.jpg', 'Escape from Monkey Island', '14,99', '10', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(147, 'https://howlongtobeat.com/games/89414_Mail_Mole.jpg', 'Mail Mole', '28,11', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(148, 'https://howlongtobeat.com/games/48142_Cat_Quest.jpg', 'Cat Quest', '8,00', '6', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(149, 'https://howlongtobeat.com/games/94633_Out_of_Line.jpg', 'Out of Line', '27,11', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(150, 'https://howlongtobeat.com/games/67694_Shattered_-_Tale_of_the_Forgotten_King.jpg', 'Shattered - Tale of the Forgotten King', '59,99', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(151, 'https://howlongtobeat.com/games/250px-The_Curse_of_Monkey_Island_artwork.jpg', 'The Curse of Monkey Island', '14,99', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(152, 'https://howlongtobeat.com/games/80383_Turnip_Boy_Commits_Tax_Evasion.jpg', 'Turnip Boy Commits Tax Evasion', '28,11', '2', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(153, 'https://howlongtobeat.com/games/98531_Guild_of_Ascension.jpg', 'Guild of Ascension', '37,99', '0', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(154, 'https://howlongtobeat.com/games/71950_Nanotale_-_Typing_Chronicles.jpg', 'Nanotale - Typing Chronicles', '49,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(155, 'https://howlongtobeat.com/games/82604_As_Far_As_The_Eye.jpg', 'As Far As The Eye', '47,99', '4', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(156, 'https://howlongtobeat.com/games/92533_Golazo_Soccer_League.jpg', 'Golazo! Soccer League', '17,99', '1', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(157, 'https://howlongtobeat.com/games/indigo-prophecy-box-art.jpg', 'Indigo Prophecy / Fahrenheit', '22,11', '8', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(158, 'https://howlongtobeat.com/games/45584_abandon_ship.jpg', 'Abandon Ship', '77,99', '20', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(159, 'https://howlongtobeat.com/games/77229_Paper_Beast.jpg', 'Paper Beast', '45,99', '3', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(160, 'https://howlongtobeat.com/games/74940_In_Other_Waters.jpg', 'In Other Waters', '46,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(161, 'https://howlongtobeat.com/games/60043_two_point_hospital.jpg', 'Two Point Hospital', '119,00', '39', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(162, 'https://howlongtobeat.com/games/51200_WRC_7.jpg', 'WRC 7: World Rally', '47,99', '15', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(163, 'https://howlongtobeat.com/games/37397_Youtubers_Life.jpg', 'Youtubers Life', '69,99', '12', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(164, 'https://howlongtobeat.com/games/73064_Tools_Up.jpg', 'Tools Up!', '37,99', '5', 'PC-AMAZON', 'NÃO JOGUEI', '', '115629454420567283308'),
(165, 'https://howlongtobeat.com/games/255px-Sports_Champions.png', 'Sports Champions', '0,00', '17', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(166, 'https://howlongtobeat.com/games/NBA_2K12_cover.jpg', 'NBA 2K12', '0,00', '60', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(167, 'https://howlongtobeat.com/games/Duke_Nukem_Forever_Box_art.jpg', 'Duke Nukem Forever', '30,00', '9', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(168, 'https://howlongtobeat.com/games/256px-Skate-3-Boxart.jpg', 'Skate 3', '0,00', '9', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(169, 'https://howlongtobeat.com/games/GranTurismo6.jpg', 'Gran Turismo 6', '50,00', '45', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(170, 'https://howlongtobeat.com/games/Battlefield_4.jpg', 'Battlefield 4 ', '49,99', '6', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(171, 'https://howlongtobeat.com/games/Just_Dance_2014_Official_NTSC_Cover_Art.jpg', 'Just Dance 2014', '0,00', '5', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(172, 'https://howlongtobeat.com/games/Plants_vs._zombies_Garden_Warfare_cover.jpg', 'Plants vs. Zombies: Garden Warfare', '0,00', '8', 'PS3', 'HISTÓRIA', '', '115629454420567283308'),
(173, 'https://howlongtobeat.com/games/FIFA_14.jpg', 'FIFA 14', '0,00', '82', 'PS3', 'HISTÓRIA', '', '115629454420567283308');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

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
