#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 01 déc. 2020 à 20:11
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `playhouse2`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_category` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classification`
--

CREATE TABLE `classification` (
  `id_classification` bigint(20) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `developper`
--

CREATE TABLE `developper` (
  `id_developper` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `history` longtext,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `developper`
--

INSERT INTO `developper` (`id_developper`, `country`, `history`, `name`) VALUES
(1, 'Japan', 'Nazca Corporation est une entreprise japonaise fondée en 1994. Son domaine d\'activité s\'établit dans le développement de jeux vidéo.', 'Nazca'),
(2, 'Japan', 'Polyphony Digital est un studio japonais de développement de jeu vidéo fondé en 1998 et basé à Tokyo. Filiale de Sony Interactive Entertainment, la société est connue pour développer les jeux de course de la série Gran Turismo, dont les ventes s\'élèvent à plus de 80 millions d\'exemplaires. Le studio est dirigé par Kazunori Yamauchi.', 'Polyphony Digital');

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

CREATE TABLE `editor` (
  `id_editor` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `history` longtext,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editor` (`id_editor`, `country`, `history`, `name`) VALUES
(1, 'Japan', 'SNK Corporation est une entreprise japonaise fondée en 1973 et domiciliée à Ōsaka, dont l\'activité est la planification, le développement et l\'édition de jeux vidéo et de systèmes de jeu vidéo, ainsi que la création et la gestion de centres de divertissement.', 'SNK'),
(2, 'Japan', 'Sony Interactive Entertainment est une filiale japonaise de Sony spécialisée dans l\'industrie vidéoludique et basée à San Mateo, en Californie. La compagnie développe, produit et commercialise des consoles de jeu et des jeux vidéo. Le succès de la gamme PlayStation en fait l\'un des principaux acteurs du marché.', 'Sony Interactive Entertainment');

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id_game` bigint(20) NOT NULL,
  `add_date` datetime NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` longtext,
  `release_date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_category` bigint(20) NOT NULL,
  `id_classification` bigint(20) NOT NULL,
  `id_developper` bigint(20) NOT NULL,
  `id_editor` bigint(20) NOT NULL,
  `id_note` bigint(20) NOT NULL,
  `id_state` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `games_platform`
--

CREATE TABLE `games_platform` (
  `id_game` bigint(20) NOT NULL,
  `id_platform` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `games_tags`
--

CREATE TABLE `games_tags` (
  `id_game` bigint(20) NOT NULL,
  `id_tag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `games_user`
--

CREATE TABLE `games_user` (
  `id_game` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `id_note` bigint(20) NOT NULL,
  `note` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `platform`
--

CREATE TABLE `platform` (
  `id_platform` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_type` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `platform_type`
--

CREATE TABLE `platform_type` (
  `id_type` bigint(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `state`
--

CREATE TABLE `state` (
  `id_state` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `id_tag` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tags`
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
(16, 'Cartoon');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `classification`
--
ALTER TABLE `classification`
  ADD PRIMARY KEY (`id_classification`);

--
-- Index pour la table `developper`
--
ALTER TABLE `developper`
  ADD PRIMARY KEY (`id_developper`);

--
-- Index pour la table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`);

--
-- Index pour la table `games`
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
-- Index pour la table `games_platform`
--
ALTER TABLE `games_platform`
  ADD KEY `FK78u3xcerlcu5utg0x49ar0sdf` (`id_platform`),
  ADD KEY `FKdmdj6gr25ya9fku4m3t7ofmax` (`id_game`);

--
-- Index pour la table `games_tags`
--
ALTER TABLE `games_tags`
  ADD KEY `FKr31yda07h63336whycc3nyxhp` (`id_tag`),
  ADD KEY `FKn5782opj9i2bcqn3hlpm9gqvu` (`id_game`);

--
-- Index pour la table `games_user`
--
ALTER TABLE `games_user`
  ADD KEY `FK3qlcptthfns2r7utjck0slma1` (`id`),
  ADD KEY `FKnb4ljihlpu2lg5rmkx7pl8u5t` (`id_game`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id_note`);

--
-- Index pour la table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`id_platform`),
  ADD KEY `FKr7w1d425o7m5w43u3h3ecg0vx` (`id_type`);

--
-- Index pour la table `platform_type`
--
ALTER TABLE `platform_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id_state`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id_tag`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classification`
--
ALTER TABLE `classification`
  MODIFY `id_classification` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `developper`
--
ALTER TABLE `developper`
  MODIFY `id_developper` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id_game` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `id_note` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `platform`
--
ALTER TABLE `platform`
  MODIFY `id_platform` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `platform_type`
--
ALTER TABLE `platform_type`
  MODIFY `id_type` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `state`
--
ALTER TABLE `state`
  MODIFY `id_state` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `FK1cqdeiumnh4rajg6spojlno4u` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_editor`),
  ADD CONSTRAINT `FK384tdgoiubrh1iu00uh7s49dx` FOREIGN KEY (`id_state`) REFERENCES `state` (`id_state`),
  ADD CONSTRAINT `FK5pwblldw3a6ibs0l4o703idgv` FOREIGN KEY (`id_classification`) REFERENCES `classification` (`id_classification`),
  ADD CONSTRAINT `FK6vd92lh70o8yu0ojqypm3arxo` FOREIGN KEY (`id_note`) REFERENCES `notes` (`id_note`),
  ADD CONSTRAINT `FKd0r49tc1crh2gi22n6ka8wrut` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `FKl3qef3b3u9npbqs968n8kvnsv` FOREIGN KEY (`id_developper`) REFERENCES `developper` (`id_developper`),
  ADD CONSTRAINT `FKqg5lm02shfa8emsyf4scp4npo` FOREIGN KEY (`id_game`) REFERENCES `category` (`id_category`);

--
-- Contraintes pour la table `games_platform`
--
ALTER TABLE `games_platform`
  ADD CONSTRAINT `FK78u3xcerlcu5utg0x49ar0sdf` FOREIGN KEY (`id_platform`) REFERENCES `platform` (`id_platform`),
  ADD CONSTRAINT `FKdmdj6gr25ya9fku4m3t7ofmax` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`);

--
-- Contraintes pour la table `games_tags`
--
ALTER TABLE `games_tags`
  ADD CONSTRAINT `FKn5782opj9i2bcqn3hlpm9gqvu` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`),
  ADD CONSTRAINT `FKr31yda07h63336whycc3nyxhp` FOREIGN KEY (`id_tag`) REFERENCES `tags` (`id_tag`);

--
-- Contraintes pour la table `games_user`
--
ALTER TABLE `games_user`
  ADD CONSTRAINT `FK3qlcptthfns2r7utjck0slma1` FOREIGN KEY (`id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKnb4ljihlpu2lg5rmkx7pl8u5t` FOREIGN KEY (`id_game`) REFERENCES `games` (`id_game`);

--
-- Contraintes pour la table `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `FKiofk5ce0vcd5y48jwmwlftkak` FOREIGN KEY (`id_platform`) REFERENCES `platform_type` (`id_type`),
  ADD CONSTRAINT `FKr7w1d425o7m5w43u3h3ecg0vx` FOREIGN KEY (`id_type`) REFERENCES `platform_type` (`id_type`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

#------------------------------------------------------------
# INSERT
#------------------------------------------------------------

ALTER TABLE `platform` DROP FOREIGN KEY `FKiofk5ce0vcd5y48jwmwlftkak`;

INSERT INTO roles (name) VALUES ('ROLE_ADMIN'), ('ROLE_USER');

INSERT INTO category (name) VALUES ('Action'), ('Plateform'), ('Action/PlateForm'), ('Action/RPG'), ('RPG'), ('JRPG'), ('MMORPG'), ('Kids'), ('Arcade'), ('Puzzle/Reflexion"'), ('Simulation'), ('Driving'), ('Sport'), ('Flipper'), ('Shooter'), ('FPS'), ('RTS'), ('Strategy'), ('Party Game'), ('Music/Dance'), ('Horror'), ('Infiltration/Spying');

INSERT INTO platform_type (name) VALUES ('Computer'), ('Arcade'), ('Console');

INSERT INTO platform (name, id_type) VALUES ('Playstation', 3), ('Playstation 2', 3), ('Playstation 3', 3), ('Playstation 4', 3), ('Playstation 5', 3), ('Nintendo Entertainement System', 3), ('Super Nintendo', 3), ('Nintendo 64', 3), ('Game Cube', 3), ('Wii', 3), ('Wii U', 3), ('Switch', 3), ('Sega Model 1', 3), ('Master System', 3), ('Mega Drive', 3), ('Mega CD', 3), ('32X', 3), ('Saturn', 3), ('Dreamcast', 3), ('FM Towns', 3), ('Atari 2600', 3), ('Atari 7800', 3), ('Jaguar', 3), ('3DO', 3), ('CDI', 3), ('Pc Engine', 3), ('Pc Engine CD-Rom', 3), ('SuperGrafX', 3), ('PC-FX', 3), ('Neo Geo', 3), ('Neo Geo CD', 3), ('Neo Geo X', 3);

INSERT INTO classification (name) VALUES ('PEGI3'), ('PEGI7'), ('PEGI12'), ('PEGI16'), ('PEGI18');

INSERT INTO notes (note) VALUES (1), (2), (3), (4), (5);

INSERT INTO state (name) VALUES ("New"), ("Mint"), ("VeryGood"), ("Good"), ("Correct"), ("Gamer");

INSERT INTO tags (title) VALUES ('Cult'), ('Family'), ('Bad'), ('Oldies'), ('Babes'), ('Cars'), ('Weird'), ('Gangsta'), ('Fun'), ('Nerdy'), ('Boring'), ('Gore'), ('Great'), ('Homebrew'), ('Poetic'), ('Cartoon');

INSERT INTO editor (name, history, country) VALUES ('SNK', "SNK Corporation est une entreprise japonaise fondée en 1973 et domiciliée à Ōsaka, dont l'activité est la planification, le développement et l'édition de jeux vidéo et de systèmes de jeu vidéo, ainsi que la création et la gestion de centres de divertissement.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Sony Interactive Entertainment', "Sony Interactive Entertainment est une filiale japonaise de Sony spécialisée dans l'industrie vidéoludique et basée à San Mateo, en Californie. La compagnie développe, produit et commercialise des consoles de jeu et des jeux vidéo. Le succès de la gamme PlayStation en fait l'un des principaux acteurs du marché.", 'Japan');

INSERT INTO editor (name, history, country) VALUES ('Nintendo', "Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Nazca', "Nazca Corporation est une entreprise japonaise fondée en 1994. Son domaine d'activité s'établit dans le développement de jeux vidéo.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Polyphony Digital', "Polyphony Digital est un studio japonais de développement de jeu vidéo fondé en 1998 et basé à Tokyo. Filiale de Sony Interactive Entertainment, la société est connue pour développer les jeux de course de la série Gran Turismo, dont les ventes s'élèvent à plus de 80 millions d'exemplaires. Le studio est dirigé par Kazunori Yamauchi.", 'Japan');

INSERT INTO developper (name, history, country) VALUES ('Nintendo', "Nintendo est une entreprise multinationale japonaise fondée en 1889 par Fusajirō Yamauchi3 près de Kyoto au Japon. Elle est spécialisée dans la fabrication de consoles de jeu vidéo, comme la Nintendo Entertainment System (NES), la Nintendo 64, la Wii et la Nintendo DS, ainsi que dans la conception de jeux vidéo tels que Super Mario ou The Legend of Zelda.", 'Japan');

INSERT INTO games (title, description, add_date, release_date, id_category, id_classification, id_editor, id_developper, id_note, id_state) VALUES ('Metal Slug', "Metal Slug est un jeu vidéo d'arcade, de type shoot 'em up ou qui peut également être désigné par run and gun, paru à l'origine sur Neo-Geo MVS. Le jeu est similaire dans son principe à Contra et mêle humour décalé et action.",
CURRENT_TIMESTAMP, '1996-04-19', 1, 4, 1, 1, 4, 2);

INSERT INTO games (title, description, add_date, release_date, id_category, id_classification, id_editor, id_developper, id_note, id_state) VALUES ('Gran Turismo', "Gran Turismo est une série de jeux vidéo de course automobile conçue par le studio japonais Polyphony Digital, dirigée par Kazunori Yamauchi et produite par Sony Computer Entertainment sur les consoles de la gamme PlayStation. Débutée en 1997, la série comprend sept épisodes principaux et cinq déclinaisons. Réputée pour le réalisme visuel et la profondeur des sensations de pilotage, c'est l'une des séries de jeux vidéo plus populaires du genre avec plus de 80 millions d'exemplaires vendus (en mai 2018).",
CURRENT_TIMESTAMP, '1997-01-01', 2, 3, 2, 2, 2, 5);

INSERT INTO tags (title) VALUES ('Cult'), ('Family'), ('Bad'), ('Oldies'), ('Babes'), ('Cars'), ('Weird'), ('Gangsta'), ('Fun'), ('Nerdy'), ('Boring'), ('Gore'), ('Great'), ('Homebrew'), ('Poetic'), ('Cartoon');

INSERT INTO games_tags VALUES (1, 1), (1, 2), (2, 3), (2, 4), (2, 5);