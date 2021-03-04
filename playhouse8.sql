-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2021 at 02:22 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `playhouse8`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(1, 'Action'),
(2, 'Plateform'),
(3, 'Action/PlateForm'),
(4, 'Action/RPG'),
(5, 'RPG'),
(6, 'JRPG'),
(7, 'MMORPG'),
(8, 'Kids'),
(9, 'Arcade'),
(10, 'Puzzle/Reflexion\"'),
(11, 'Simulation'),
(12, 'Driving'),
(13, 'Sport'),
(14, 'Flipper'),
(15, 'Shooter'),
(16, 'FPS'),
(17, 'RTS'),
(18, 'Strategy'),
(19, 'Party Game'),
(20, 'Music/Dance'),
(21, 'Horror'),
(22, 'Infiltration/Spying');

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

CREATE TABLE `classification` (
  `id_classification` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`id_classification`, `name`) VALUES
(1, 'PEGI3'),
(2, 'PEGI7'),
(3, 'PEGI12'),
(4, 'PEGI16'),
(5, 'PEGI18');

-- --------------------------------------------------------

--
-- Table structure for table `developper`
--

CREATE TABLE `developper` (
  `id_developper` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `history` longtext,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `developper`
--

INSERT INTO `developper` (`id_developper`, `country`, `history`, `name`) VALUES
(1, 'Japan', 'Nazca Corporation est une entreprise japonaise fondée en 1994. Son domaine d\'activité s\'établit dans le développement de jeux vidéo.', 'Nazca'),
(2, 'Japan', 'Polyphony Digital est un studio japonais de développement de jeu vidéo fondé en 1998 et basé à Tokyo. Filiale de Sony Interactive Entertainment, la société est connue pour développer les jeux de course de la série Gran Turismo, dont les ventes s\'élèvent à plus de 80 millions d\'exemplaires. Le studio est dirigé par Kazunori Yamauchi.', 'Polyphony Digital'),
(3, 'Japan', 'Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.', 'Nintendo'),
(4, 'England', 'Rocksteady Studios is a multi-award winning video-game developer based in London, England. Located in a spacious, purpose built converted factory, with full motion capture and audio studio capabilities, consisting of an energetic company formed by a core team of senior industry professionals.', 'Rocksteady Studios'),
(5, 'USA', 'NetherRealm Studios est un studio américain de développement de jeu vidéo basé à Chicago dans l\'Illinois, dirigé par Ed Boon2. Ce studio était à l\'origine Midway Studios Chicago, studio d\'original de Midway Manufacturing Company. À la suite de son acquisition par Warner Bros. lors de la faillite de Midway Games en 2009, le studio est devenu une partie de WB Games Chicago.', 'NetherRealm Studios'),
(6, 'France', 'Ubisoft (anciennement Ubi Soft Entertainment) est une entreprise française de développement, d\'édition et de distribution de jeux vidéo, créée en mars 1986 par les cinq frères Guillemot, originaires de Carentoir dans le Morbihan, en France.', 'Ubisoft'),
(7, 'USA', 'Insomniac Games est une société américaine de développement de jeu vidéo fondée en 1994 et basée à Burbank en Californie. L\'entreprise est notamment créatrice des franchises Spyro the Dragon, Ratchet and Clank et Resistance.', 'Insomniac Games'),
(8, 'USA', 'Epic Games, anciennement Epic MegaGames (aussi connue sous le nom Epic), est un studio américain de développement et un distributeur de jeux vidéo basé à Cary, en Caroline du Nord. Le studio est détenu à 40 % par le géant chinois de l\'internet Tencent mais le fondateur du studio, Tim Sweeney, conserve le plein contrôle du studio avec 51% des actions.', 'Epic Games'),
(9, 'USA', '343 Industries est un studio de développement de jeux vidéo créé par Microsoft Studios avec pour objectif de superviser le développement et la continuité de la franchise Halo, qui comprend des jeux vidéo, romans, bandes dessinées, et des contenus multimédia. Le nom du studio est inspiré du personnage 343 Guilty Spark.', '343 Industries'),
(10, 'USA', 'Electronic Arts ou EA est une société américaine fondée le 28 mai 1982 et dont le siège se situe à Redwood City en Californie1. EA est l\'un des principaux développeurs et producteurs mondiaux de jeux vidéo.', 'Electronic Arts'),
(11, 'Scotland', 'Rockstar North, anciennement appelé DMA Design entre 1988 et 2002, est un studio britannique de développement de jeu vidéo basé à Édimbourg (Ecosse) appartenant à Rockstar Games depuis 1999. Le studio est l\'auteur de Lemmings et s\'est spécialisé depuis 2001 avec le succès de Grand Theft Auto III, dans le jeu vidéo en monde ouvert et le jeu d\'action avec une composante violente et licencieuse.', 'Rockstar North'),
(12, 'Canada', 'BioWare Corp. est une société canadienne de développement de jeux vidéo basée à Edmonton et fondée en 1995. Elle est principalement connue pour avoir développé plusieurs séries de jeux vidéo de rôle : Baldur\'s Gate, Neverwinter Nights, Star Wars: Knights of the Old Republic, Dragon Age et Mass Effect.', 'BioWare'),
(13, 'England', 'Sumo Digital est un studio de développement de jeux vidéo basé à Sheffield dans le Nord de l\'Angleterre.', 'Sumo Digital'),
(14, 'Japan', 'Konami Holdings Corporation (Konami Hōrudingusu Kabushiki-gaisha) est une société japonaise de développement et d\'édition de jeux vidéo, l\'une des plus importantes et célèbres du secteur. Son siège social est basé à Tokyo (Japon). Les activités de la compagnie s\'étendent au domaine du jouet, de l\'animation ainsi qu\'à ceux du fitness, de la santé et des machines à sous. Son chiffre d\'affaires en 2019 était de 2,1 milliard d\'euros1.', 'Konami'),
(15, 'Japan', 'Amusement Vision, Ltd. était un studio de développement japonais de jeux vidéo fondé en 2000 et anciennement connu sous le nom de Sega AM4.', 'Amusement Vision'),
(16, 'USA', 'Naughty Dog est une société américaine de développement de jeu vidéo domiciliée à Santa Monica, fondée en 1984 par Andy Gavin et Jason Rubin sous le nom de Jam Software, et repris par RR Celestin en 1989 sous le nom de Naughty Dog.', 'Naughty Dog');

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id_editor` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `history` longtext,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `editor`
--

INSERT INTO `editor` (`id_editor`, `country`, `history`, `name`) VALUES
(1, 'Japan', 'SNK Corporation est une entreprise japonaise fondée en 1973 et domiciliée à Ōsaka, dont l\'activité est la planification, le développement et l\'édition de jeux vidéo et de systèmes de jeu vidéo, ainsi que la création et la gestion de centres de divertissement.', 'SNK'),
(2, 'Japan', 'Sony Interactive Entertainment est une filiale japonaise de Sony spécialisée dans l\'industrie vidéoludique et basée à San Mateo, en Californie. La compagnie développe, produit et commercialise des consoles de jeu et des jeux vidéo. Le succès de la gamme PlayStation en fait l\'un des principaux acteurs du marché.', 'Sony Interactive Entertainment'),
(3, 'Japan', 'Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.', 'Nintendo'),
(4, 'USA', 'Warner Bros. Interactive Entertainment (WBIE) est une filiale de Warner Bros. Entertainment spécialisée dans l\'édition, la conception et la distribution de jeux vidéo. Sous l\'égide de WBIE c\'est la division Warner Bros. Games qui se charge de la création, du développement et de la production des jeux dits « first-party » des studios internes.', 'Warner Bros'),
(5, 'France', 'Ubisoft (anciennement Ubi Soft Entertainment) est une entreprise française de développement, d\'édition et de distribution de jeux vidéo, créée en mars 1986 par les cinq frères Guillemot, originaires de Carentoir dans le Morbihan, en France.', 'Ubisoft'),
(6, 'USA', 'Epic Games, anciennement Epic MegaGames (aussi connue sous le nom Epic), est un studio américain de développement et un distributeur de jeux vidéo basé à Cary, en Caroline du Nord. Le studio est détenu à 40 % par le géant chinois de l\'internet Tencent mais le fondateur du studio, Tim Sweeney, conserve le plein contrôle du studio avec 51% des actions.', 'Epic Games'),
(7, 'USA', 'Xbox Game Studios, créée en 1994 sous la dénomination Microsoft Game Studios (aussi appelée Microsoft Games puis Microsoft Studios), est une société détenue par Microsoft qui développe et édite des jeux vidéo pour les plates-formes estampillées Microsoft Windows ou les consoles Xbox, Xbox 360 et Xbox One.', 'Xbox Game Studios'),
(8, 'USA', 'Electronic Arts ou EA est une société américaine fondée le 28 mai 1982 et dont le siège se situe à Redwood City en Californie1. EA est l\'un des principaux développeurs et producteurs mondiaux de jeux vidéo.', 'Electronic Arts'),
(9, 'Scotland', 'Rockstar Games est un développeur et éditeur de jeux vidéo basé à New York aux États-Unis, appartenant à Take-Two Interactive depuis le rachat en 1998 de l\'éditeur britannique de jeux vidéo BMG Interactive.', 'Rockstar Games'),
(10, 'Japan', 'Sega Corporation (Kabushiki kaisha Sega, abréviation de Service Games, couramment stylisé SEGA) est une société japonaise de développement et d\'édition de jeux vidéo, ainsi qu\'un fabricant de bornes et systèmes d\'arcade.', 'Sega'),
(11, 'Japan', 'Konami Holdings Corporation (Konami Hōrudingusu Kabushiki-gaisha) est une société japonaise de développement et d\'édition de jeux vidéo, l\'une des plus importantes et célèbres du secteur. Son siège social est basé à Tokyo (Japon). Les activités de la compagnie s\'étendent au domaine du jouet, de l\'animation ainsi qu\'à ceux du fitness, de la santé et des machines à sous. Son chiffre d\'affaires en 2019 était de 2,1 milliard d\'euros1.', 'Konami');

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id_game` bigint(20) NOT NULL,
  `add_date` datetime NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` longtext,
  `price` decimal(19,2) DEFAULT NULL,
  `release_date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_category` bigint(20) NOT NULL,
  `id_classification` bigint(20) NOT NULL,
  `id_developper` bigint(20) NOT NULL,
  `id_editor` bigint(20) NOT NULL,
  `id_note` bigint(20) NOT NULL,
  `id_state` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id_game`, `add_date`, `cover`, `description`, `price`, `release_date`, `title`, `id_category`, `id_classification`, `id_developper`, `id_editor`, `id_note`, `id_state`) VALUES
(1, '2021-03-03 11:04:49', NULL, 'Metal Slug est un jeu vidéo d\'arcade, de type shoot \'em up ou qui peut également être désigné par run and gun, paru à l\'origine sur Neo-Geo MVS. Le jeu est similaire dans son principe à Contra et mêle humour décalé et action.', NULL, '1996-04-19 00:00:00', 'Metal Slug', 1, 4, 1, 1, 4, 2),
(2, '2021-03-03 11:04:49', NULL, 'Gran Turismo est une série de jeux vidéo de course automobile conçue par le studio japonais Polyphony Digital, dirigée par Kazunori Yamauchi et produite par Sony Computer Entertainment sur les consoles de la gamme PlayStation. Débutée en 1997, la série comprend sept épisodes principaux et cinq déclinaisons. Réputée pour le réalisme visuel et la profondeur des sensations de pilotage, c\'est l\'une des séries de jeux vidéo plus populaires du genre avec plus de 80 millions d\'exemplaires vendus (en mai 2018).', NULL, '1997-01-01 00:00:00', 'Gran Turismo', 2, 3, 2, 2, 2, 5),
(4, '2019-05-21 02:00:00', '80aba18a9e56bf3f203af665624b25a8.png', 'Team Sonic Racing combines the best elements of arcade and fast-paced competitive style racing as you \nface-off with friends in intense multiplayer racing.', '99.00', '2019-05-21 02:00:00', 'Team Sonic Racing', 12, 2, 13, 10, 2, 2),
(6, '2015-06-23 02:00:00', 'batman-arkham-knight-edition-jeu-de-l-annee-ps4-595aa7d6c2ef1.jpg', 'Rocksteady Studios is a multi-award winning video-game developer based in London, England. \nLocated in a spacious, purpose built converted factory, with full motion capture and audio studio \ncapabilities, consisting of an energetic company formed by a core team \nof senior industry professionals.', '65.00', '2015-06-23 02:00:00', 'Batman: Arkham Knight', 1, 4, 4, 7, 2, 5),
(8, '2019-04-23 02:00:00', '3E2C8313-78BC-41BA-A872-53FFA3E56FC3.jpeg', 'Mortal Kombat is back and better than ever in the next evolution of the iconic franchise.\nThe all new Custom Character Variations give you unprecedented control of your fighters to make them\n your own. The new graphics engine showcases every skull-shattering, eye-popping moment, \n bringing you so close to the fight you can feel it. Featuring a roster of new and \n returning Klassic Fighters, Mortal Kombat\'s best-in-class cinematic story mode continues \n the epic saga over 25 years in the making.', '55.00', '2019-04-23 02:00:00', 'Mortal Kombat 11', 9, 5, 5, 8, 3, 3),
(10, '2020-10-29 01:00:00', 'Watch-Dogs-Legion-Reveal-07-2020-PS4.jpg', 'In Watch Dogs: Legion, near future London is facing its downfall...unless you do something about it. \nBuild a resistance, fight back, and give the city back to the people. It’s time to rise up.\n', '29.00', '2020-10-29 01:00:00', 'Watch Dogs: Legion', 7, 2, 6, 5, 1, 5),
(12, '2018-09-07 02:00:00', 'ps4-spiderman-morales.jpg', 'Starring the world’s most iconic Super Hero, Spider-Man features the acrobatic abilities, \nimprovisation and web-slinging that the wall-crawler is famous for, while also introducing elements \nnever-before-seen in a Spider-Man game. From traversing with parkour and utilizing the environment, \nto new combat and blockbuster set pieces, it’s Spider-Man unlike any you’ve played before.', '129.00', '2018-09-07 02:00:00', 'Marvel\'s Spider-Man', 3, 3, 7, 4, 5, 6),
(14, '2004-03-02 01:00:00', '51TH9DBE98L._AC_.jpg', 'Ninja Gaiden is an action-adventure hack and slash video game developed by Team Ninja \nfor the Xbox video game console.\nThe game follows the fictional story of Ryu Hayabusa, a master ninja, in his quest to recover \na stolen sword and avenge the slaughter of his clan.\n', '25.00', '2004-03-02 01:00:00', 'Ninja Gaiden', 1, 2, 14, 10, 2, 3),
(16, '2017-07-25 02:00:00', '5a6b870e92f0cbed61eee2f5ded3b388.png', 'Epic Games has a long history and is known for creating prominent games such as the Unreal Tournament \nand Gears of War series and developing the Unreal Engine. Their most recent ventures include Fortnite\nand the Epic Games digital distribution platform.', '69.00', '2017-07-25 02:00:00', 'Fortnite', 15, 1, 8, 6, 3, 5),
(18, '2003-11-07 01:00:00', '51itRIeUl0L._AC_SY445_.jpg', 'The Mushroom Kingdom just got a whole lot more hectic as Mario and friends double up for furious kart racing. \nThis time around, each kart holds two racers that can switch places at any time, so choose from a huge cast \nof favorites and pair them up any way you see fit. The character in front handles the driving duties, \n the character in the rear doles out damage with six normal items and eight special items that only \n specific characters can use. Get ready for some intense multiplayer mayhem with your favorite \n characters, including Mario, Luigi, Donkey Kong, Peach, Bowser, and Koopa.', '39.00', '2003-11-07 01:00:00', 'Mario Kart: Double Dash', 12, 1, 3, 3, 2, 4),
(20, '2019-03-15 01:00:00', '71qgd3r2aFL.jpg', 'The Division 2 is an action-shooter RPG set in an open-world. Play in co-op and PvP modes that offer \nmore variety in missions and challenges, new progression systems with unique twists and surprises, \nand fresh gaming innovations to engage players for years to come.', '19.00', '2019-03-15 01:00:00', 'Tom Clancy\'s The Division 2', 15, 3, 6, 5, 1, 2),
(22, '2019-11-08 01:00:00', 'need-for-speed-heat-ps4-e165760.jpg', 'Hustle by day and risk it all at night in Need for Speed Heat, a white-knuckle street racer, where the \nlines of the law fade as the sun starts to set. By day, Palm City hosts the Speedhunter Showdown, \na sanctioned competition where you earn Bank to customize and upgrade your high-performance cars. \nAt night, ramp up the intensity in illicit street races that build your reputation, getting you access \nto bigger races and better parts. But stay ready – cops are waiting and not all of them play fair.\n', '79.00', '2019-11-08 01:00:00', 'Need for Speed: Heat', 12, 2, 2, 8, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `games_platform`
--

CREATE TABLE `games_platform` (
  `id_game` bigint(20) NOT NULL,
  `id_platform` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games_platform`
--

INSERT INTO `games_platform` (`id_game`, `id_platform`) VALUES
(6, 4),
(6, 33),
(8, 4),
(10, 4),
(10, 34),
(12, 4),
(14, 19),
(16, 5),
(16, 18),
(18, 9),
(20, 4),
(20, 14),
(22, 4),
(22, 25),
(4, 4),
(4, 12),
(4, 35);

-- --------------------------------------------------------

--
-- Table structure for table `games_tags`
--

CREATE TABLE `games_tags` (
  `id_game` bigint(20) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `games_tags`
--

INSERT INTO `games_tags` (`id_game`, `id_tag`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(2, 5),
(6, 1),
(6, 25),
(8, 1),
(8, 7),
(8, 12),
(10, 3),
(10, 7),
(10, 8),
(12, 2),
(12, 16),
(12, 25),
(14, 1),
(14, 4),
(14, 17),
(14, 13),
(16, 3),
(16, 7),
(16, 16),
(16, 25),
(16, 27),
(18, 1),
(18, 2),
(18, 9),
(18, 20),
(20, 3),
(20, 23),
(20, 24),
(22, 6),
(22, 13),
(22, 24),
(22, 20),
(4, 1),
(4, 2),
(4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id_note` bigint(20) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id_note`, `note`) VALUES
(1, '1'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5');

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `id_platform` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_platform_type` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`id_platform`, `name`, `id_platform_type`) VALUES
(1, 'Playstation', 3),
(2, 'Playstation 2', 3),
(3, 'Playstation 3', 3),
(4, 'Playstation 4', 3),
(5, 'Playstation 5', 3),
(6, 'Nintendo Entertainement System', 3),
(7, 'Super Nintendo', 3),
(8, 'Nintendo 64', 3),
(9, 'Game Cube', 3),
(10, 'Wii', 3),
(11, 'Wii U', 3),
(12, 'Switch', 3),
(13, 'Sega Model 1', 3),
(14, 'Master System', 3),
(15, 'Mega Drive', 3),
(16, 'Mega CD', 3),
(17, '32X', 3),
(18, 'Saturn', 3),
(19, 'Dreamcast', 3),
(20, 'FM Towns', 3),
(21, 'Atari 2600', 3),
(22, 'Atari 7800', 3),
(23, 'Jaguar', 3),
(24, '3DO', 3),
(25, 'CDI', 3),
(26, 'Pc Engine', 3),
(27, 'Pc Engine CD-Rom', 3),
(28, 'SuperGrafX', 3),
(29, 'PC-FX', 3),
(30, 'Neo Geo', 3),
(31, 'Neo Geo CD', 3),
(32, 'Neo Geo X', 3),
(33, 'Xbox', 3),
(34, 'Xbox 360', 3),
(35, 'Xbox One', 3);

-- --------------------------------------------------------

--
-- Table structure for table `platform_type`
--

CREATE TABLE `platform_type` (
  `id_platform_type` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `platform_type`
--

INSERT INTO `platform_type` (`id_platform_type`, `name`) VALUES
(1, 'Computer'),
(2, 'Arcade'),
(3, 'Console');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id_state` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id_state`, `name`) VALUES
(1, 'New'),
(2, 'Mint'),
(3, 'VeryGood'),
(4, 'Good'),
(5, 'Correct'),
(6, 'Gamer');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id_tag`, `title`) VALUES
(1, 'Cult'),
(2, 'Family'),
(3, 'Bad'),
(4, 'Oldies'),
(5, 'Babes'),
(6, 'Cars'),
(7, 'Weird'),
(8, 'Gangsta'),
(9, 'Fun'),
(10, 'Nerdy'),
(11, 'Boring'),
(12, 'Gore'),
(13, 'Great'),
(14, 'Homebrew'),
(15, 'Poetic'),
(16, 'Cartoon'),
(17, 'Cult'),
(18, 'Family'),
(19, 'Bad'),
(20, 'Oldies'),
(21, 'Babes'),
(22, 'Cars'),
(23, 'Weird'),
(24, 'Gangsta'),
(25, 'Fun'),
(26, 'Nerdy'),
(27, 'Boring'),
(28, 'Gore'),
(29, 'Great'),
(30, 'Homebrew'),
(31, 'Poetic'),
(32, 'Cartoon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'testuser@gmail.com', '$2a$10$W3c3AVQENHU6J4ax0jWWa.lXpCkjHkUQ37W0BDaouL.sEZQwVaL1.', 'testuser');

-- --------------------------------------------------------

--
-- Table structure for table `user_games`
--

CREATE TABLE `user_games` (
  `user_id` bigint(20) NOT NULL,
  `id_game` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_games`
--

INSERT INTO `user_games` (`user_id`, `id_game`) VALUES
(1, 4),
(1, 6),
(1, 8),
(1, 10),
(1, 12),
(1, 14),
(1, 16),
(1, 18),
(1, 20),
(1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id_classification`);

--
-- Indexes for table `developper`
--
ALTER TABLE `developper`
  ADD PRIMARY KEY (`id_developper`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `FKd0r49tc1crh2gi22n6ka8wrut` (`id_category`),
  ADD KEY `FK5pwblldw3a6ibs0l4o703idgv` (`id_classification`),
  ADD KEY `FKl3qef3b3u9npbqs968n8kvnsv` (`id_developper`),
  ADD KEY `FK1cqdeiumnh4rajg6spojlno4u` (`id_editor`),
  ADD KEY `FK6vd92lh70o8yu0ojqypm3arxo` (`id_note`),
  ADD KEY `FK384tdgoiubrh1iu00uh7s49dx` (`id_state`);

--
-- Indexes for table `games_platform`
--
ALTER TABLE `games_platform`
  ADD KEY `FK78u3xcerlcu5utg0x49ar0sdf` (`id_platform`),
  ADD KEY `FKdmdj6gr25ya9fku4m3t7ofmax` (`id_game`);

--
-- Indexes for table `games_tags`
--
ALTER TABLE `games_tags`
  ADD KEY `FKr31yda07h63336whycc3nyxhp` (`id_tag`),
  ADD KEY `FKn5782opj9i2bcqn3hlpm9gqvu` (`id_game`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id_note`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id_platform`),
  ADD KEY `FKi9yesp92jojqfv8e05s04vka0` (`id_platform_type`);

--
-- Indexes for table `platform_type`
--
ALTER TABLE `platform_type`
  ADD PRIMARY KEY (`id_platform_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id_state`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_games`
--
ALTER TABLE `user_games`
  ADD PRIMARY KEY (`user_id`,`id_game`),
  ADD KEY `FK8ux3nt6epklxvykswx33khexj` (`id_game`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `classification`
--
ALTER TABLE `classification`
  MODIFY `id_classification` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `developper`
--
ALTER TABLE `developper`
  MODIFY `id_developper` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_game` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id_note` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `platform`
--
ALTER TABLE `platform`
  MODIFY `id_platform` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `platform_type`
--
ALTER TABLE `platform_type`
  MODIFY `id_platform_type` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id_state` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `FK1cqdeiumnh4rajg6spojlno4u` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_editor`),
  ADD CONSTRAINT `FK384tdgoiubrh1iu00uh7s49dx` FOREIGN KEY (`id_state`) REFERENCES `state` (`id_state`),
  ADD CONSTRAINT `FK5pwblldw3a6ibs0l4o703idgv` FOREIGN KEY (`id_classification`) REFERENCES `classification` (`id_classification`),
  ADD CONSTRAINT `FK6vd92lh70o8yu0ojqypm3arxo` FOREIGN KEY (`id_note`) REFERENCES `notes` (`id_note`),
  ADD CONSTRAINT `FKd0r49tc1crh2gi22n6ka8wrut` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `FKl3qef3b3u9npbqs968n8kvnsv` FOREIGN KEY (`id_developper`) REFERENCES `developper` (`id_developper`),

--
-- Constraints for table `games_platform`
--
ALTER TABLE `games_platform`
  ADD CONSTRAINT `FK78u3xcerlcu5utg0x49ar0sdf` FOREIGN KEY (`id_platform`) REFERENCES `platform` (`id_platform`),
  ADD CONSTRAINT `FKdmdj6gr25ya9fku4m3t7ofmax` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`);

--
-- Constraints for table `games_tags`
--
ALTER TABLE `games_tags`
  ADD CONSTRAINT `FKn5782opj9i2bcqn3hlpm9gqvu` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`),
  ADD CONSTRAINT `FKr31yda07h63336whycc3nyxhp` FOREIGN KEY (`id_tag`) REFERENCES `tags` (`id_tag`);

--
-- Constraints for table `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `FKi9yesp92jojqfv8e05s04vka0` FOREIGN KEY (`id_platform_type`) REFERENCES `platform_type` (`id_platform_type`);

--
-- Constraints for table `user_games`
--
ALTER TABLE `user_games`
  ADD CONSTRAINT `FK8ux3nt6epklxvykswx33khexj` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`),
  ADD CONSTRAINT `FKk85sd2rb5dpiuekcoyucllpm4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
